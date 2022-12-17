package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import lombok.Setter;
import org.zerock.domain.ReservationVO;
import org.zerock.mapper.ReservationMapper;

@Service
@AllArgsConstructor
public class ReservationImpl implements ReservationService {
	
	@Setter(onMethod_ = @Autowired)
	private ReservationMapper mapper;
	
	@Override
	public List<ReservationVO> getList() {
		return mapper.getList();
	}

	@Override
	public ReservationVO get(Long rno) {
		// TODO Auto-generated method stub
		return mapper.read(rno);
	}

	@Override
	public boolean modify(ReservationVO infoVO) {
		// TODO Auto-generated method stub
		return mapper.updateSeat(infoVO) ==1;
	}
	@Override
	public int delete(String rno) {
		return mapper.delete(rno);
	}

}
