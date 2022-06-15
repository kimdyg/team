package com.callor.app.posting.service;

import java.util.List;

import com.callor.app.persistance.PostingDao;
import com.callor.app.posting.model.PostingVO;

public interface PostingService extends PostingDao {

	int postingCnt(PostingVO vO);

	List<PostingVO> getCatCode();

	PostingVO postingDetail(PostingVO vO);

	
}
