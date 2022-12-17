package org.zerock.domain;


import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class ReservationVO {
	
	private String rno; //예약번호
	private Date rdate; //예약날짜
	private String origin; //출발지
	private String destination; //목적지
	private String rtime;  //(출발)시간
	private String busname;
	private String seatno;
	

}
