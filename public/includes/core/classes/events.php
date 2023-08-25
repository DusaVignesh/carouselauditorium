<?php 
class events extends User{
    protected $pdo;
	public function __construct($pdo){
		$this->pdo = $pdo;
	}

	public function add_event(){}

	public function edit_event(){}

	public function edit_sts(){}

	public function fetch_events(){}

	public function fetch_active_events(){}

	public function fetch_inactive_events(){}
}
?>