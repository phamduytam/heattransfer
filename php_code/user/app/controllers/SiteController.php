<?php

class SiteController extends Controller
{


	/**
	 * index
	 */
	public function actionIndex()
	{
		//get image slider
		$model = new AdvertiseAR('getBanner');
		$model->status = 1;
		$model->cat_id = 2;
		$advertise = $model->getBanner();
		
		// get 1 image right
		$model->status = 1;
		$model->cat_id = 3;
		$image_right_1 = $model->getOneImage();
		
		// get 1 image right
		$model->status = 1;
		$model->cat_id = 4;
		$image_right_2 = $model->getOneImage();
		
		// get 3 image right
		$model->status = 1;
		$model->cat_id = 5;
		$model->limit = 3;
		$image_right_3 = $model->getListImage();

		//product not bat
		$model = new ProductAR();
		$model->noibat = 1;
		$noibat = $model->getList(4);
		
		//product hot
		$model = new ProductAR();
		$model->hot = 1;
		$hot = $model->getList(8);

		//title

		$tmp_model = new StaticAR();
		$title = $tmp_model->findByPk(6);
		
		// add gioi thieu san pham
		$intro_product = $tmp_model->findByPk(17); 

		$this->layout = 'main';

		$this->render('index', compact('advertise', 'noibat', 'hot', 'title',
			 'image_right_1', 'image_right_2', 'intro_product', 'image_right_3'));
	}

	/**
	 * This is the action to handle external exceptions.
	 */
	public function actionError()
	{
		if($error=Yii::app()->errorHandler->error)
		{
			if(Yii::app()->request->isAjaxRequest)
				echo $error['message'];
			else
				$this->render('error', $error);

			//favicon.icoへのリクエストはログに記録しない
			if(Yii::app()->request->getPathInfo() === 'favicon.ico')
			{
				Yii::app()->log->setRoutes(array(array(),));
			}
		}
	}

}