package org.zerock.service;

import static org.junit.Assert.assertNotNull;

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
public class CustomerServiceTests {

	@Setter(onMethod_ = { @Autowired })
	private CustomerService service;

	@Test
	public void testExist() {

		log.info("Service Object: "+ service);
		assertNotNull(service);
	}

	@Test
	public void testRegister() {

		CustomerVO customer = new CustomerVO();
		customer.setEmail("mj0507@seoul.com");
		customer.setPasswd("1234");
		customer.setName("김민지");
		customer.setPhone("01012345678");
		service.register(customer);

		log.info("생성된 게시물의 번호: " + customer.getCno());
	}
	
	@Test
	public void testGetList() {
		service.getList().forEach(customer -> log.info(customer));
	}
	
	@Test
	public void testGet() {

		log.info(service.get(1L));
	}

	/*@Test
	public void testDelete() {

		// 게시물 번호의 존재 여부를 확인하고 테스트할 것
		log.info("REMOVE RESULT: " + service.remove("jw0809@seoul.com"));

	}

	@Test
	public void testUpdate() {

		CustomerVO customer = service.get(1L);

		if (customer == null) {
			return;
		}

		customer.setPhone("01056781234");
		log.info("MODIFY RESULT: " + service.modify(customer));
	}*/

}

