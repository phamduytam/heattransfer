<?php
/**
 * Controller is the customized base controller class.
 * All controller classes for this application should extend from this base class.
 */
class Controller extends CController
{
	/**
	 * @var string the default layout for the controller view. Defaults to '//layouts/column1',
	 * meaning using a single column layout. See 'protected/views/layouts/column1.php'.
	 */
	public $layout='//layouts/main';
	/**
	 * @var array context menu items. This property will be assigned to {@link CMenu::items}.
	 */
	public $menu=array();
	/**
	 * @var array the breadcrumbs of the current page. The value of this property will
	 * be assigned to {@link CBreadcrumbs::links}. Please refer to {@link CBreadcrumbs::links}
	 * for more details on how to specify this property.
	 */
	public $breadcrumbs=array();

	public $public_controllers = array('login');

	public $sslAction = array();



	public $description = '';
	public $keyword = '';
	public $fbImage = '';


	public function init()
	{
	
	}

	protected function beforeAction($action)
	{
		if(Yii::app()->errorHandler->error['code'] == 404)
			$this->redirect("http://".$_SERVER['SERVER_NAME']);
		if(defined('USE_SSL') && USE_SSL === true && !isSSL() ){
			if(in_array($this->action->id , $this->sslAction)){
				$next = sslUrl("{$this->id}/{$this->action->id}" , $_GET);
				$this->redirect($next);
			}
		}

		return true;
	}

	protected function error($Cmessage = 'System Error' , $code = 500){
		return $this->render('//site/error' , compact('Cmessage' , 'code'));
	}

	public function getLogo()
	{
		$model = new AdvertiseAR();
		$model->cat_id = 1;
		$model->status = 1;
		$logo = $model->getLogo();
		if($logo)
			return $logo;
		return false;
	}

	public function getBanner() {
		$model = new AdvertiseAR('getBanner');
		$model->status = 1;
		$model->cat_id = 2;
		$advertise = $model->getBanner();
		return $advertise;
	}
	
	public function getImageLeft() {
		$model = new AdvertiseAR();
		$model->status = 1;
		$model->cat_id = 6;
		$image_left = $model->getListImage();
		return $image_left;
	}

	public function getDescription()
	{
		if(strlen($this->description))
			return strip_tags($this->description);
		else{
			$description = StaticAR::model()->findByPk(2);
			if ($description)
				return html_entity_decode(strip_tags($description->content), ENT_QUOTES, 'UTF-8');
		}
	}
	
	public function getThuongHieu() {
		$model = new AdvertiseAR();
		$model->status = 1;
		$model->cat_id = 7;
		$image = $model->getListImage();
		return $image;
	}

	public function getKeyWord()
	{

		if(strlen($this->keyword))
			return strip_tags($this->keyword);
		else{
			$keyword = StaticAR::model()->findByPk(3);
			if ($keyword) {
				return html_entity_decode(strip_tags($keyword->content), ENT_QUOTES, 'UTF-8');
			}
			
		}
	}

	public function getTitle()
	{
		$title = 'Heat Transfer Label';
		if($this->id == 'site')
			return 'Heat Transfer Label';
		if(strlen($this->pageTitle) && $this->id != 'site')
			return $this->pageTitle . ' - ' . $title;
		else{
			return $title;
		}	
	}

	public function getImage()
	{

		if(strlen($this->fbImage))
			return 'http://heattransferlabel.com.vn/uploads/'.$this->fbImage;
		else{
			$logo = $this->getLogo();
			if($logo)
				return 'http://heattransferlabel.com.vn/uploads/'.$logo->image;
		}	
	}

	public function getCategory() {
		$model = new Category1AR();
		$model->parent_id = 0;
		$category = $model->getCategory();
		if ($category)
			return $category;
		return false;
	}

	public function getCategory1($parent_id) {
		$model = new Category1AR();
		$model->parent_id = $parent_id;
		$category = $model->getCategory();
		if($category)
			return $category;
		return false;
	}

	/**
	 * Bai viet SEO
	 */
	public function getTintuc() {
		$model = new TintucAR();
		$tintuc = $model->getList(2);
		if($tintuc)
			return $tintuc;
		return false;
	}

	public function getKhachhang() {
		$model = new KhachHangAR();
		$khachhang = $model->getList(5);
		if($khachhang)
			return $khachhang;
		return false;
	}

	public function getContact() {
		$model = new StaticAR();

		$address = $model->findByPk(5);

		$phone = $model->findByPk(6);

		$email = $model->findByPk(7);
		
		$gioithieu = $model->findByPk(12);

		if ($address && $phone && $email)
			return array(
				'address' => $address,
				'phone' => $phone,
				'email' => $email,
				'gioithieu' => $gioithieu,
				);
		return false;
	}

	public function getSocial() {
		$model = new StaticAR();
		$google = $model->findByPk(8);

		$facebook = $model->findByPk(9);

		$twitter = $model->findByPk(10);

		if ($google && $facebook && $twitter)
			return array(
				'google' => $google,
				'facebook' => $facebook,
				'twitter' => $twitter
				);
		return false;

	}

	public function getBanChay() {
		$model = new ProductAR();
		$model->banchay = 1;
		$model->status = 1;
		$product = $model->getList(6);
		if($product)
			return $product;
		return false;
	}
	
	public function getMenu() {
		$html = '';
		$model = new Menu2AR();
		$menu = $model->findAllList();
		if(count($menu) == 0)
			return $html;
		//$menu1 = getACol($menu, 'menu1');
		//$html.= '<li><a href="#">'.$menu1['name'].'</a>';
		//$html.= '<ul id="menu-custom">';
		foreach ($menu as $v){
			$html.= '<li><a href="'.$v['link'].'">'.$v['name'].'</a></li>';
		}
		//$html.= '</ul>';
		//$html.= '</li>';
		return $html;
	}
	
	public function getChat(){
		$model = new ChatAR();
		$chat = $model->findAllListChat();
		if($chat)
			return $chat;
		return false;
	}
	
	public function getPage()
	{
		$model = new StaticAR();
		$page1 = $model->findByPk(14);

		$page2 = $model->findByPk(15);

		$page3 = $model->findByPk(16);

		if ($page1 && $page2 && $page3)
			return array(
				'page1' => $page1,
				'page2' => $page2,
				'page3' => $page3
				);
		return false;
	}
}