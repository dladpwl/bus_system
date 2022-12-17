package org.zerock.service;

import java.util.List;
import org.zerock.domain.SuggestionVO;
import org.zerock.domain.Criteria;


public interface SuggestionService {
	public void register(SuggestionVO suggestion);
	public SuggestionVO get(Long bno);
	public boolean modify(SuggestionVO suggestion);
	public boolean remove(Long bno);
	public List<SuggestionVO> getList();
	public List<SuggestionVO> getList(Criteria cri);
	public int getTotal(Criteria cri);

}
