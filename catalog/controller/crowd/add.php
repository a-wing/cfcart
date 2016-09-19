<?php
class ControllerCrowdAdd extends Controller {

	public function index() {
		
		$data['header'] = $this->load->controller('common/header');
		$data['footer'] = $this->load->controller('common/footer');

		
		$this->response->setOutput($this->load->view('crowd/add', $data));
	}
}
