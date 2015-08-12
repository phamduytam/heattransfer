<?php
class ProductController extends Controller
{
	public function actionIndex()
	{
		$this->pageTitle = 'Sản phẩm';
		$this->breadcrumb = array(
			'Sản phẩm' => ''	
			);
		$word = request()->getQuery('word', '');
		$product = new ProductAR("searchListProduct");
		if($word) $product->word = $word;
		$content = $product->searchListProduct();
		$this->render('index', compact('content', 'word'));
	}

	public function actionAdd()
	{
		$this->pageTitle = 'Sản phẩm';
		$this->breadcrumb = array(
			'Sản phẩm'	=> app()->baseUrl.'/product',
			'Add'		=> ''	
			);

		$model = new ProductAR();
		if (app()->request->getPost('ProductAR'))
		{
			// POSTデータの取得
			$data = request()->getPost('ProductAR');
			$model->attributes = $data;
			$model->alias = convert($data['name']);
			$model->created = date('Y-m-d H:i:s', time());

			if($model->validate())
			{
				$imageUploadFile = CUploadedFile::getInstance($model, 'image');
				if($imageUploadFile !== null){ // only do if file is really uploaded
					$imageFileName = time().$imageUploadFile->name;
					$model->image = $imageFileName;
				}
				if($model->save()){
					if($imageUploadFile !== null) // validate to save file
					{
						$pathImage = dirname(dirname(app()->basePath)) . app()->params['imagePath'].$imageFileName;
						$imageUploadFile->saveAs($pathImage);
						// resize
						$this->resizeImage($pathImage);
					}
					user()->setFlash('messages', 'Add successful!!');
				}

			}
		}

		// danh muc 1
		$model_cate = new Category1AR();
		$category = $model_cate->getSub1();

		// danh muc 2
		$category1 = $model_cate->getSub2();		
		$this->render('add', compact('model', 'category', 'category1'));
	}

	public function actionEdit($id)
	{
		$this->pageTitle = 'Sản phẩm';
		$this->breadcrumb = array(
			'Sản phẩm'	=> app()->baseUrl.'/product',
			'Edit'		=> ''	
			);
		$product = new ProductAR();
		$model = $product->findByPk($id);
		if(!$model)
			return ;
		if (app()->request->getPost('ProductAR'))
		{
			$data = request()->getPost('ProductAR');
			$model->attributes = $data;
			$model->alias = convert($data['name']);
			$model->created = date('Y-m-d H:i:s', time());
			$imageUploadFile = CUploadedFile::getInstance($model, 'image');
			if($imageUploadFile == null){
				$model->image = $_POST['hd_img'];
			}
			if($model->validate())
			{
				if($imageUploadFile !== null) // validate to save file
				{
					$image_old = $model->image;
					$imageFileName = time().$imageUploadFile->name;
					$model->image = $imageFileName;
					$pathImage = dirname(dirname(app()->basePath)) . app()->params['imagePath'].$imageFileName;
					$ret = $imageUploadFile->saveAs($pathImage);
					//resize
					$this->resizeImage($pathImage);
					if($ret)
						deleteImage(dirname(dirname(app()->basePath)) . app()->params['imagePath'], $image_old);
				}

				if($model->save())
					user()->setFlash('messages', 'Edit successful!!');
			}
		}

		// danh muc 1
		$model_cate = new Category1AR();
		$category = $model_cate->getSub1();

		// danh muc 2
		$category1 = $model_cate->getSub2();		

		$this->render('edit', compact('model', 'category', 'category1'));
	}
	public function actionDelete($id)
	{
		$model = ProductAR::model()->findByPk($id);
		if($model->delete())
			deleteImage(dirname(dirname(app()->basePath)) . app()->params['imagePath'], $model->image);
	}

	private function resizeImage($pathImage){
		if(is_file($pathImage)){
			$w = 576; $h = 576;
			// *** 1) Initialise / load image
			$resizeObj = new resize($pathImage);

			// *** 2) Resize image (options: exact, portrait, landscape, auto, crop)
			$resizeObj -> resizeImage($w, $h, 'portrait');

			// *** 3) Save image
			$resizeObj -> saveImage($pathImage, 100);
		}
	}
}