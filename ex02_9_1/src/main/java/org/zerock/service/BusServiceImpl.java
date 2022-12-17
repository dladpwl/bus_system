package org.zerock.service;


import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.BusVO;
import org.zerock.mapper.BusMapper;
import lombok.AllArgsConstructor;
import lombok.Setter;
import org.zerock.domain.Criteria;



@Service
@AllArgsConstructor
public class BusServiceImpl implements BusService{
	@Setter(onMethod_ = @Autowired)
	private BusMapper mapper;
	
	@Override
	public BusVO get(String origin) {
		return mapper.read(origin);
	}
	
	@Override
	public List<BusVO> getList() {
		return mapper.getList();
		
	}
	@Override
	public List<BusVO> getList(Criteria cri){
		return mapper.getListWithPaging(cri);
	}
	


}
