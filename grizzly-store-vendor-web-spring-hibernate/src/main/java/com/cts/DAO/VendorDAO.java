package com.cts.DAO;

import java.util.List;

import com.cts.entity.Vendor;

public interface VendorDAO {
	void saveVendor(Vendor vendor);
	List<Vendor> listAllVendor();
	Vendor getVendor(int Id);
	void deleteVendor(int Id);
}
