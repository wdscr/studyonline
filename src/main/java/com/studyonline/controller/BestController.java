package com.studyonline.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.studyonline.model.Best;
import com.studyonline.service.BestService;

@Controller
@RequestMapping("/bestManager")
public class BestController {
	@Autowired
	BestService bs;
	
	@RequestMapping("/addbest")
	public @ResponseBody Best addbest(int cid,String src){
//		s
		Best best=new Best();
		best.setCid(cid);
		best.setSrc(src);
		try {
			 return bs.addbest(best);
		} catch (Exception e) {
			return null;
		}

	}
	
	@RequestMapping("/modifybest")
	public @ResponseBody String modifybest(@RequestParam("uuid")int id,@RequestParam("cover111") MultipartFile file,HttpServletRequest request) throws IOException {	
		Best best=new Best();
		if(!file.isEmpty()){
				String savePath = request.getServletContext().getRealPath(
						"/WEB-INF/upload/bestcover");
				File saveDir = new File(savePath);
				if (!saveDir.exists() && !saveDir.isDirectory()) {
					System.out.println(savePath + "目录不存在，需要创建");
					saveDir.mkdir();
				}
				String originalName = file.getOriginalFilename();
				String type =  originalName.substring(originalName.lastIndexOf("."));
				System.out.println("type : " + type);
				UUID uuid = UUID.randomUUID();
				String picName = uuid + type;
				System.out.println(picName);
				FileUtils.copyInputStreamToFile(file.getInputStream(), new File(savePath, picName) );
				System.out.println( picName+" 上传成功");
				best.setCid(id);
				best.setSrc("upload/bestcover/"+picName);
			}else{
				best.setSrc("11");
			}
			int flag =  bs.modifybest(best);
			if(flag>0) return best.getSrc();
			else return "error";
		}
	
	@RequestMapping("/findbest")
	public @ResponseBody List<Best> findbest(){
		try {
			 return bs.findbest();
		} catch (Exception e) {
			return null;
		}
	}
	
	@RequestMapping("/delbest")
	public @ResponseBody int delbest(int id){
		try {
			 return bs.delbest(id);
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return -1;
		}
	}
}
