package org.zerock.mapper;

import java.util.List;
import java.util.Map;

//import org.apache.ibatis.annotations.Select;
import org.zerock.domain.CustomerVO;

public interface CustomerMapper {
	//@Select("select * from tbl_customer where cno > 0")
	public List<CustomerVO> getList();	
	public void insert(CustomerVO customer);
	public void insertSelectKey(CustomerVO customer);
	public CustomerVO read(Long cno);
	public int delete(Long cno);
	public int emailCheck(String email);
	public void updateUser(CustomerVO customer);
	public  CustomerVO getUserByEmail(String email);
	public  CustomerVO getUserById(Long cno);
}