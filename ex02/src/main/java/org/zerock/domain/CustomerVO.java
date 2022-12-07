package org.zerock.domain;

import java.util.Date;

import lombok.Data;

@Data
public class CustomerVO {
	  private long cno;
	  private String email;
	  private String passwd;
	  private String name;
	  private String phone;

}
