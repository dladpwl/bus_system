package org.zerock.service;


import java.util.List;

import org.zerock.domain.ReservationVO;

public interface ReservationService {
	//��ȸ
	public ReservationVO get(Long rno);
	//����
	public boolean modify(ReservationVO infoVO);
	
	public List<ReservationVO> getList();
	
	//����
	public int delete(String ajaxMsg);
	

}
