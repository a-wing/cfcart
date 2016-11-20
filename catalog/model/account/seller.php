<?php
class ModelAccountSeller extends Model {
	
	public function addSeller($customer_id, $sellername) {

		$this->db->query("INSERT INTO " . DB_PREFIX . "seller SET customer_id = '" . (int)$customer_id . "', sellername = '" . $sellername . "'");
		
		$seller_id = $this->db->getLastId();
		
		return $seller_id;
	}
	/*
	public function getCustomer($customer_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "customer WHERE customer_id = '" . (int)$customer_id . "'");

		return $query->row;
	}
	*/
	public function checkoutSeller($customer_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "seller WHERE customer_id = '" . (int)$customer_id . "'");
		if(isset($query)){
			
		}

		return $query->row;
	}

	public function sellerProduct($customer_id, $product_id) {
		$this->db->query("UPDATE " . DB_PREFIX . "seller SET product_id = '" . (int)$product_id . "' WHERE customer_id = '" . (int)$customer_id . "'");

		return $query->row;
	}
}
