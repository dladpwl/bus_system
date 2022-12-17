package org.zerock.mapper;

import java.util.List;
import org.zerock.domain.BusVO;
import org.zerock.domain.Criteria;

public interface BusMapper {
	public BusVO read(String origin);
	public List<BusVO> getList();
	public List<BusVO> getListWithPaging(Criteria cri);
	
	
	
	
}
