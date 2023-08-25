<?php 
class notifications extends User{
    protected $pdo;
	public function __construct($pdo){
		$this->pdo = $pdo;
	}

	public function add_todo(){}

	public function sned_notification(){}

	public function send_notification_all(){}

	public function add_todo_all(){}

	public function recive_notification(){}

	public function recive_todo(){}
}
?>