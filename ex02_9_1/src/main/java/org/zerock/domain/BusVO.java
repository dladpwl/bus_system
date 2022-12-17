package org.zerock.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor


public class BusVO {
	private String origin;
	private String destination;
	private String time;
	private String busname;

}
