package org.zerock.service;

import java.util.List;

import org.zerock.domain.CustomerVO;

public interface CustomerService {

	public void register(CustomerVO customer);

	public CustomerVO get(Long cno);

	public void modifyInfo(CustomerVO customer);

	public void remove(Long cno);

	public List<CustomerVO> getList();

	public Long login(String email, String passwd);
	
	public CustomerVO getUserById(Long cno); 
	
	public int emailCheck(String email);
	
}


