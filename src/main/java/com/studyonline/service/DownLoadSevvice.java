package com.studyonline.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DownLoadSevvice {
	
	public void downloadSolve(String src,String fileName,HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //文件所在目录路径
        String filePath = request.getServletContext().getRealPath("/WEB-INF")+"/"+src;
        //得到该文件
        File file = new File(filePath);
        if(!file.exists()){
            System.out.println("Have no such file!");
            return;//文件不存在就退出方法
        }
		String Name = file.getName();
		String refstype =Name.substring(Name.lastIndexOf("."));  
        FileInputStream fileInputStream = new FileInputStream(file);
        //设置Http响应头告诉浏览器下载这个附件
        response.setHeader("Content-Disposition", "attachment;Filename=" + URLEncoder.encode(fileName+refstype,"UTF-8"));
        OutputStream outputStream = response.getOutputStream();
        byte[] bytes = new byte[2048];
        int len = 0;
        while ((len = fileInputStream.read(bytes))>0){
            outputStream.write(bytes,0,len);
        }
        fileInputStream.close();
        outputStream.close();
    }
	
}
