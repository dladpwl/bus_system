package org.zerock.mapper;

import java.util.List;

//import org.apache.ibatis.annotations.Select;
import org.zerock.domain.ReservationVO;
import org.zerock.domain.Criteria;

public interface ReservationMapper {
//@Select("select * from seat where bno > 0")
	
	
	//���� ��� ��ȸ
	public ReservationVO read(Long sno);
	//�¼� ����� ���� ����
	public int updateSeat(ReservationVO infoVO);
	
	//@Select("select * from tbl_reservation where rno > 0")
	public List<ReservationVO> getList();
	
	public List<ReservationVO> getListWithPaging(Criteria cri);
	
	//����
	public int delete(String rno);
	
	
}
