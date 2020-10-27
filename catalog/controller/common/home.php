<?php
class ControllerCommonHome extends Controller {
	public function index() {
		$this->document->setTitle($this->config->get('config_meta_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setKeywords($this->config->get('config_meta_keyword'));

		if (isset($this->request->get['route'])) {
			$this->document->addLink($this->config->get('config_url'), 'canonical');
		}

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		$this->response->setOutput($this->load->view('common/home', $data));
	}
	
	public function sendmail(){
	    $data=$_POST;
	   $email_to = $data['email'];
$mail = new Mail();

$mail->protocol = $this->config->get('config_mail_protocol');
$mail->parameter = $this->config->get('config_mail_parameter');
$mail->hostname = $this->config->get('config_smtp_host');
$mail->username = $this->config->get('config_smtp_username');
$mail->password = $this->config->get('config_smtp_password');
$mail->port = $this->config->get('config_smtp_port');
$mail->timeout = $this->config->get('config_smtp_timeout');            
$mail->setTo($email_to);
$mail->setFrom("haribabu@xmediasolution.com");
$mail->setSender("haribabu@xmediasolution.com");
$mail->setSubject($data['comment']);
$mail->setText("test message body text");

if($mail->send()){
    echo "<script>alert('Mail send successfully');window.history.back();</script>";
} else {
    
     echo "<script>alert('Mail send successfully');window.history.back();</script>";
}




	}
}
