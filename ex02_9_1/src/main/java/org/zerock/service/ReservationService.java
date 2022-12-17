package org.zerock.service;


import java.util.List;

import org.zerock.domain.ReservationVO;

public interface ReservationService {
	//조회
	public ReservationVO get(Long rno);
	//수정
	public boolean modify(ReservationVO infoVO);
	
	public List<ReservationVO> getList();
	
	//삭제
	public int delete(String ajaxMsg);
	

}
