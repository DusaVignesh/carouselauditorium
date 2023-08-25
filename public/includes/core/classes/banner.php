<?php 
class banner extends User{
    protected $pdo;
	public function __construct($pdo){
		$this->pdo = $pdo;
	}
	public function add_banner(){}

	public function edit_banner(){}

	public function edit_sts(){}

	public function fetch_banners(){}

	public function fetch_active_banners(){}

	public function fetch_inactive_banners(){}
}
?>