package com.kuang.servlet.user;

import com.kuang.dao.drug.SampleDao;
import com.kuang.pojo.Sample;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ListFileServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //获取sample list
        System.out.println("sample servlet is used");
        SampleDao sampleDao = new SampleDao();
        List<Sample> samples= sampleDao.findAll();
        request.setAttribute("samples", samples);
        // send the result to front-end
        try {
            //将Map集合发送到listfile.jsp页面进行显示

            request.getRequestDispatcher("/jsp/listFile.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }




    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
