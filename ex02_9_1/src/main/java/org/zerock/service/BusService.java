package org.zerock.service;

import java.util.List;
import org.zerock.domain.BusVO;
import org.zerock.domain.Criteria;

public interface BusService {

	public List<BusVO> getList();
	
	public BusVO get(String origin);
	public List<BusVO> getList(Criteria cri);
}
