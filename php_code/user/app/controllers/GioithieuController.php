<?php
	class GioithieuController extends Controller {
		public function actionIndex(){
			$model = new StaticAR();
			$gioithieu = $model->findByPk(4);
			$this->render('index', compact('gioithieu'));
		} 
	}