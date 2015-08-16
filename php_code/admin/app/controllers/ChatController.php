<?php

class ChatController extends Controller
{
	public function actionIndex()
	{
		$model = new ChatAR();
		$word = request()->getQuery('word', '');
		if($word) $model->word = $word;
		$content = $model->searchListChat();
		$this->breadcrumb = array(
			'Hỗ trợ trực tuyến' => ''
			);
		$this->render('index', compact('content', 'word'));
	}

	public function actionAdd()
	{
		$model = new ChatAR();
		if (app()->request->getPost('ChatAR'))
		{
			// POSTデータの取得
			$data = request()->getPost('ChatAR');
			$model->attributes = $data;
			$model->created = date('Y-m-d H:i:s', time());

			if($model->validate())
			{
				if($model->save()){
					user()->setFlash('messages', 'Add successful!!');
				}
			}
		}
		$this->breadcrumb = array(
			'Hỗ trợ trực tuyến' => url('chat'),
			'Add'		=> ''	
			);
		$this->render('add', compact('model'));
	}

	public function actionEdit($id)
	{
		$Chat = new ChatAR();
		$model = $Chat->findByPk($id);
		if(!$model)
			return ;
		if (app()->request->getPost('ChatAR'))
		{
			$data = request()->getPost('ChatAR');
			$model->attributes = $data;
			$model->created = date('Y-m-d H:i:s', time());
			if($model->validate())
			{
				if($model->save())
					user()->setFlash('messages', 'Edit successful!!');
			}
		}
		$this->breadcrumb = array(
			'Hỗ trợ trực tuyến' => url('chat'),
			'Edit'		=> ''	
			);
		$this->render('edit', compact('model'));
	}
	public function actionDelete($id)
	{
		$model = ChatAR::model()->findByPk($id);
		if($model->delete())
			return true;
	}
}