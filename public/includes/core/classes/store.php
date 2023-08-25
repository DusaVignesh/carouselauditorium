<?php 
class store extends User{
    protected $pdo;
	public function __construct($pdo){
		$this->pdo = $pdo;
	}

	public function add_store(){}

	public function edit_store(){}

	public function edit_sts(){}

	public function fetch_stores(){}

	public function fetch_active_stores(){}

	public function fetch_inactive_stores(){}
	
}
?>