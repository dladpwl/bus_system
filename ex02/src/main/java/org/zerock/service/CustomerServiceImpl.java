package org.zerock.service;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.CustomerVO;
import org.zerock.mapper.CustomerMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class CustomerServiceImpl implements CustomerService {

	@Setter(onMethod_ = @Autowired)
	private CustomerMapper mapper;

	@Override
	public void register(CustomerVO customer) {
		log.info("register......" + customer);
		mapper.insert(customer);
	}

	@Override
	public CustomerVO get(Long cno) {
		log.info("get......" + cno);
		return mapper.read(cno);
	}

	@Override
	public void modifyInfo(CustomerVO customer) {
		log.info("modify......" + customer);
		mapper.updateUser(customer);
	}

	@Override
	public void remove(Long cno) {
		log.info("remove...." + cno);
		mapper.delete(cno);
	}

	@Override
	public List<CustomerVO> getList() {
		log.info("getList..........");
		return mapper.getList();
	}
	
	@Override
	public Long login(String email, String passwd)  {
		log.info("login.........." + passwd);
		CustomerVO customer = mapper.getUserByEmail(email);
		if (customer.getPasswd().equals(passwd))
			return customer.getCno();
		return null;

	}
	@Override
	public CustomerVO getUserById(Long cno) {
		return mapper.getUserById(cno);
	}
	
	@Override
	public int emailCheck(String email) {
		return mapper.emailCheck(email);
	}
}

