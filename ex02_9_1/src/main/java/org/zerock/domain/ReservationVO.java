package org.zerock.domain;


import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class ReservationVO {
	
	private String rno; //�����ȣ
	private Date rdate; //���೯¥
	private String origin; //�����
	private String destination; //������
	private String rtime;  //(���)�ð�
	private String busname;
	private String seatno;
	

}
