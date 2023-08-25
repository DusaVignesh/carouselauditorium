<?php 
class coupon extends User{
    protected $pdo;
	public function __construct($pdo){
		$this->pdo = $pdo;
	}
	public function add_coupon(){}

	public function edit_coupon(){}

	public function edit_sts(){}

	public function fetch_coupons(){}

	public function fetch_active_coupons(){}

	public function fetch_inactive_coupons(){}
}
?>