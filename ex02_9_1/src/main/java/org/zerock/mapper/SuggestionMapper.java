package org.zerock.mapper;

import java.util.List;
//import org.apache.ibatis.annotations.Select;
import org.zerock.domain.SuggestionVO;
import org.apache.ibatis.annotations.Param;
import org.zerock.domain.Criteria;

public interface SuggestionMapper {
	//@Select("select * from suggestion where bno > 0")
	public List<SuggestionVO> getList();
	
	public List<SuggestionVO> getListWithPaging(Criteria cri);

	public void insert(SuggestionVO suggestion);
	
	public Integer insertSelectKey(SuggestionVO suggestion);
	
	public SuggestionVO read(Long bno);
	
	public int delete(Long bno);
	
	public int update(SuggestionVO suggestion);
	
	public int getTotalCount(Criteria cri);
    
	public void updateReplyCnt(@Param("bno") Long bno, @Param("amount") int amount);
	}
