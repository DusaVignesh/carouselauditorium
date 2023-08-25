<?php 
class deals extends User{
    protected $pdo;
	public function __construct($pdo){
		$this->pdo = $pdo;
	}
	public function add_deals(){}

	public function edit_deals(){}

	public function edit_sts(){}

	public function fetch_dealss(){}

	public function fetch_active_deals(){}

	public function fetch_inactive_deals(){}
}
?>