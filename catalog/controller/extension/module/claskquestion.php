<?php
class ControllerExtensionModuleClaskquestion extends Controller {

	public function index() {}

	public function send() {
		$this->load->language('information/contact');
		$this->load->language('extension/module/claskquestion');
		$json = array();
		if ($this->request->server['REQUEST_METHOD'] == 'POST') {
			if ((utf8_strlen($this->request->post['name']) < 3) || (utf8_strlen($this->request->post['name']) > 40)) {
				$json['error'] = $this->language->get('error_name');
			}
			if ((utf8_strlen($this->request->post['phone']) < 6) || (utf8_strlen($this->request->post['phone']) > 40)) {
				$json['error'] = $this->language->get('cl_error_phone');
			}
			if (!preg_match('/^[^\@]+@.*.[a-z]{2,15}$/i', $this->request->post['email'])) {
				$json['error'] = $this->language->get('error_email');
			}
			if (utf8_strlen($this->request->post['questions']) > 3000) {
				$json['error'] = $this->language->get('error_questions');
			}
			if (!isset($json['error'])) {

				$ask_data =
					$this->language->get('text_cl_name_from').':&nbsp;'.$this->request->post['name'].'<br />'
					.$this->language->get('text_cl_product_id').':&nbsp;'.$this->request->post['prod_id'].'<br />'
					.$this->language->get('text_cl_product_name').':&nbsp;'.$this->request->post['prod_name'].'<br />'
					.$this->language->get('text_cl_product_ulr').':&nbsp;'.$this->request->post['prod_url'].'<br />'
					.$this->language->get('text_cl_telephone').':&nbsp;'.$this->request->post['phone'].'<br />'
					.$this->language->get('text_cl_email').':&nbsp;'.$this->request->post['email'].'<br />'
					.$this->language->get('text_cl_ask_data').':&nbsp;'.$this->request->post['questions']
				;

				$mail = new Mail($this->config->get('config_mail_engine'));
				$mail->parameter = $this->config->get('config_mail_parameter');
				$mail->smtp_hostname = $this->config->get('config_mail_smtp_hostname');
				$mail->smtp_username = $this->config->get('config_mail_smtp_username');
				$mail->smtp_password = html_entity_decode($this->config->get('config_mail_smtp_password'), ENT_QUOTES, 'UTF-8');
				$mail->smtp_port = $this->config->get('config_mail_smtp_port');
				$mail->smtp_timeout = $this->config->get('config_mail_smtp_timeout');

				$mail->setTo($this->config->get('config_email'));
				$mail->setFrom($this->request->post['email']);
				$mail->setSender(html_entity_decode($this->request->post['name'], ENT_QUOTES, 'UTF-8'));
				$mail->setSubject(html_entity_decode($this->language->get('text_cl_subject').': '.$this->request->post['prod_name'], ENT_QUOTES, 'UTF-8'));
				$mail->setHtml($ask_data);
				$mail->send();

				$json['success'] = $this->language->get('text_cl_success');
			}
		}
		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}

}