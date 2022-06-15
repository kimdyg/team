package com.callor.app.persistance;

import java.util.List;

import com.callor.app.posting.model.PostingVO;

public interface GenericDao<VO, PK> {
	
	public List<VO> selectAll();
	public VO findById(PK id);
	public int insert(VO vo);
	public int update(VO vo);
	public int delete(PK id);
	List<PostingVO> getCatCode();
	
}