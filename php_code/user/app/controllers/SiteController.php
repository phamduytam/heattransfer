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
		$model->cat_id = 1;
		$advertise = $model->getBanner();
		
		// get 1 image right
		$model->status = 1;
		$model->cat_id = 2;
		$image_right_1 = $model->getOneImage();
		
		// get 1 image right
		$model->status = 1;
		$model->cat_id = 3;
		$image_right_2 = $model->getOneImage();

		//product index
		$model = new ProductAR();
		$product = $model->getList(12);

		//title

		$tmp_model = new StaticAR();
		$title = $tmp_model->findByPk(6);
		
		// add gioi thieu san pham
		$intro_product = $tmp_model->findByPk(17); 

		$this->layout = 'main';

		$this->render('index', compact('advertise', 'product', 'title', 'image_right_1', 'image_right_2', 'intro_product'));
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