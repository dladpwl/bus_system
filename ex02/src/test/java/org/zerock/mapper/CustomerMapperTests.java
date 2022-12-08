package org.zerock.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.CustomerVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class CustomerMapperTests {
	
	@Setter(onMethod_ = @Autowired)
	private CustomerMapper mapper;
	
	@Test
	public void testGetList() {
		mapper.getList().forEach(Customer -> log.info(Customer));
	}
	
	/*@Test
	public void testInsert() {
		CustomerVO customer = new CustomerVO();
		customer.setEmail("sh0508@seoul.com");
		customer.setPasswd("1234");
		customer.setName("김선호");
		customer.setPhone("01012345678");
		mapper.insert(customer);
		log.info(customer);
	}
	
	@Test
	public void testInsertSelectKey() {
		CustomerVO customer = new CustomerVO();
		customer.setEmail("jh0214@seoul.com");
		customer.setPasswd("1234");
		customer.setName("정재현");
		customer.setPhone("01012345678");
		
		mapper.insertSelectKey(customer);
		log.info(customer);
	}
	*/
	@Test
	public void testRead() {
		// 존재하는 게시물 번호로 테스트
		CustomerVO customer = mapper.read(5L);
		log.info(customer);
	}
	
	/*@Test
	public void testDelete() {
		log.info("DELETE COUNT: " + mapper.delete(3L));
	}*/
	/*
	@Test
	public void testUpdate() {
		CustomerVO customer = new CustomerVO();
		// 실행전 존재하는 번호인지 확인할 것
		customer.setEmail("jh0214@seoul.com");
		customer.setPasswd("9876");
		customer.setPhone("01098765432");
		
		int count = mapper.updateUser(customer);
		log.info("UPDATE COUNT: " + count);
	}*/
}

