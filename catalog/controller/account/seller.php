<?php
class ControllerAccountSeller extends Controller {
	private $error = array();

	public function index() {
		if (!$this->customer->isLogged()) {
			$this->session->data['redirect'] = $this->url->link('account/account', '', true);

			$this->response->redirect($this->url->link('account/login', '', true));
		}
		
		$this->load->language('account/seller');
		
		$this->document->setTitle($this->language->get('heading_title'));
		
		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_seller'),
			'href' => $this->url->link('account/seller', '', true)
		);
		
		$data['text_seller'] = $this->language->get('text_seller');
		$data['text_seller_product'] = $this->language->get('text_seller_product');
		$data['text_seller_sign'] = $this->language->get('text_seller_sign');
		$data['text_sign_describe'] = $this->language->get('text_sign_describe');
			
		$data['text_seller_name'] = $this->language->get('text_seller_name');
		$data['button_sign'] = $this->language->get('button_sign');
		
		
		
		$this->load->model('account/seller');
		$seller = $this->model_account_seller->checkoutSeller($this->customer->getId());
		
		//var_dump($seller['seller_id']);
		
		if(isset($seller['seller_id'])) {
			$data['sign'] = $seller['seller_id'];
			$this->session->data['token'] = token(32);
			
			if($seller['product_id'] == "0") {
				$data['product_sign'] = $seller['product_id'];
			} else {
				$data['product_sign'] = NULL;
				$this->response->redirect($this->url->link('crowd/product', '', true));
			}
			
			
		} else {
			$data['sign'] = NULL;
		}

		if(!isset($seller['seller_id'])) {

			if(isset($_POST['seller-name'])){
			
				$sellername = $_POST['seller-name'];
				$this->load->model('account/seller');
				$seller_id = $this->model_account_seller->addSeller($this->customer->getId(), $sellername);
				
				unset($_POST['seller-name']);
				$this->response->redirect($this->url->link('account/seller', '', true));
			}
		}
	

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		$this->response->setOutput($this->load->view('account/seller', $data));
	}
}