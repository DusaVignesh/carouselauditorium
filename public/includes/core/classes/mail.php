<?php 
class mail extends User{
    protected $pdo;
	public function __construct($pdo){
		$this->pdo = $pdo;
	}

	public function send_mail(){}

	public function recive_mail(){}

	public function change_mail_sts(){}
}
?>