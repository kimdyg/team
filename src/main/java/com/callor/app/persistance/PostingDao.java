package com.callor.app.persistance;

import java.util.List;

import com.callor.app.posting.model.PostingVO;

public interface PostingDao extends GenericDao<PostingVO, String>{

	public List<PostingVO> findByPosting_seq(String Posting_seq);
	public List<PostingVO> findByTitle(String title);
	public List<PostingVO> findByCont(String cont);
	public List<PostingVO> findByCars(String cars);
	public List<PostingVO> findByCat_code(String cat_code);
	public List<PostingVO> findByAddr(String addr);
	public List<PostingVO> findByAddrDtl(String addr_dtl);
	public List<PostingVO> findByGoods(String goods);
	public int postingCnt(PostingVO VO);
	public List<PostingVO> getCatCode();
	public PostingVO postingDetail(PostingVO VO);
}
