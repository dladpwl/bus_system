package org.zerock.mapper;

import java.util.List;
//import org.apache.ibatis.annotations.Select;
import org.zerock.domain.NoticeVO;
import org.zerock.domain.Criteria;

public interface NoticeMapper {
	//@Select("select * from notice where bno > 0")
	public List<NoticeVO> getList();
	public List<NoticeVO> getListWithPaging(Criteria cri);

	public void insert(NoticeVO notice);
	public void insertSelectKey(NoticeVO notice);
	
	public NoticeVO read(Long bno);
	public int delete(Long bno);
	
	public int update(NoticeVO notice);
	public int getTotalCount(Criteria cri);

}
