package org.zerock.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.Criteria;
import org.zerock.domain.NoticeVO;
import org.zerock.mapper.NoticeMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class NoticeServiceImpl implements NoticeService {
	@Setter(onMethod_ = @Autowired)
	private NoticeMapper mapper;
	
	@Override
	public void register(NoticeVO notice) {
		log.info("register......" + notice);
		mapper.insertSelectKey(notice);
	}
	
	@Override
	public NoticeVO get(Long bno) { 
		log.info("get......" + bno);
	    return mapper.read(bno);
	}
	
	@Override
	public boolean modify(NoticeVO notice) { 
		log.info("modify......" + notice); 
		return mapper.update(notice) == 1;
	}
	
	@Override
	public boolean remove(Long bno) {
		log.info("remove...." + bno);
	    return mapper.delete(bno) == 1;
	}
	
	@Override
	public List<NoticeVO> getList() { 
		log.info("getList..........");
		return mapper.getList();
	} 
	
	@Override
	public List<NoticeVO> getList(Criteria cri) {
		log.info("getList..........");
		return mapper.getListWithPaging(cri);
	}
	
	@Override
	public int getTotal(Criteria cri) {

		log.info("get total count");
		return mapper.getTotalCount(cri);
	}
}

