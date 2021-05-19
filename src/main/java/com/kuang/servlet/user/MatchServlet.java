package com.kuang.servlet.user;


import com.kuang.dao.drug.AnnovarDao;
import com.kuang.dao.drug.DrugDaoImpl;
import com.kuang.pojo.Drug;
import com.kuang.pojo.DrugLabel;
import com.kuang.service.drug.DrugServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class MatchServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        DrugServiceImpl drugService = new DrugServiceImpl();
        AnnovarDao annovarDao = new AnnovarDao();
        List<DrugLabel> druglabelList = drugService.getDruglabelList();
        String sampleIdParameter = req.getParameter("sampleId");
        Integer sampleId = Integer.valueOf(sampleIdParameter);
        List<String> refGenes = null;
        try {
            refGenes = annovarDao.getRefGenes(sampleId);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        List<DrugLabel> matchList = doMatch(refGenes, druglabelList);
        req.setAttribute("drugLableList", matchList);
        // send the result to front-end
        req.getRequestDispatcher("MatchList.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }


    private List<DrugLabel> doMatch(List<String> refGenes, List<DrugLabel> drugLabels) {
        List<DrugLabel> matchedLabels = new ArrayList<>();
        for (DrugLabel drugLabel : drugLabels) {
            boolean matched = false;
            for (String gene: refGenes) {
                if (drugLabel.getSummaryMarkdown().contains(gene)) {
                    matched = true;
                }
            }
            if (matched) {
                matchedLabels.add(drugLabel);
            }
        }
        return matchedLabels;
    }
}
