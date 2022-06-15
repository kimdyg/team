package com.callor.app.posting.web;

import java.awt.image.BufferedImage;
import java.io.File;
import java.util.List;

import javax.imageio.ImageIO;
import javax.servlet.ServletContext;

import org.imgscalr.Scalr;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.callor.app.config.QualifierConfig;
import com.callor.app.posting.model.PostingFileVO;
import com.callor.app.posting.model.PostingVO;
import com.callor.app.posting.service.PostingFileService;
import com.callor.app.posting.service.PostingService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/posting")
public class PostingController {

	@Autowired 
	protected ServletContext context; 
	
	@Qualifier(QualifierConfig.SERVICE.POSTING) 
	private final PostingService postingService;
	
	@Qualifier(QualifierConfig.SERVICE.POSTINGFILE)
	private final PostingFileService postingFileService;
	
	
	 public PostingController(
			 PostingService postingService, PostingFileService postingFileService) {
		 this.postingService = postingService;
		this.postingFileService = postingFileService;
	}
	
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public String list(Model model) {
		
		List<PostingVO> postingList = postingService.selectAll();
		model.addAttribute("posting", postingList);
		model.addAttribute("LAYOUT", "POSTING-LIST");
		return null;
	}
	
	
	@RequestMapping(value = "/addPostingForm", method = RequestMethod.GET)
	public String posting(Model model, PostingVO VO) {
		
		List<PostingVO> postingVO = postingService.selectAll();
		List<PostingVO> catCodeList = postingService.getCatCode();
		
		model.addAttribute("LAYOUT", postingVO);
		model.addAttribute("catCodeList", catCodeList);
		
		
		return "posting";
	}
	@RequestMapping(value = "/insertPosting", method = RequestMethod.POST)
	public String posting(PostingVO VO, PostingFileVO fVO) {
		int postingCnt = postingService.postingCnt(VO);
		VO.setPosting_seq(postingCnt);
		
		postingService.insert(VO);
		return "redirect:/posting/detail?posting_seq="+VO.getPosting_seq();
	}

	@RequestMapping(value = "/insertPosting", method = RequestMethod.GET)
	public String posting() {
		return "detail";
	}
	@RequestMapping(value = "/we", method = RequestMethod.GET)
	public String we() {
		return "we";
	}

	@RequestMapping(value = "/map3", method = RequestMethod.GET)
	public String map() {
		return "map3";
	}

	@RequestMapping(value = "/detail")
	public String detail(PostingVO VO, Model model) {
		PostingVO posting = postingService.postingDetail(VO);
		
		List<PostingVO> catCodeList = postingService.getCatCode();
		model.addAttribute("catCodeList", catCodeList);
		model.addAttribute("posting", posting);
			
		return "detail";
	}
	
	private void makeThumbnail2(String filePath, String fileName) throws Exception {
		 String ext = fileName.substring(fileName.lastIndexOf(".")+1);
		 // 저장된 원본파일로부터 BufferedImage 객체를 생성합니다. 
		 BufferedImage srcImg = ImageIO.read(new File(filePath + fileName)); 
		 // 썸네일의 너비와 높이 입니다. 
		 
		 int dw = 1200, dh = 800;
		 if(srcImg.getWidth() > srcImg.getHeight()) {

			 int test = srcImg.getWidth()/ srcImg.getHeight();
			 
			 dw = dh * test;
			 
		 }
		 if(srcImg.getHeight() > srcImg.getWidth()) {
			 dw = 600;
			 
			 int test = srcImg.getHeight() /srcImg.getWidth();
			 
			 dh = dw * test;
		 }
		
		 BufferedImage destImg = Scalr.resize(srcImg, dw, dh);

		 String thumbName = filePath + "Fit_" + fileName; 
		 
		 File thumbFile = new File(thumbName); 

		 ImageIO.write(destImg, ext, thumbFile); 
	 }
	
}
