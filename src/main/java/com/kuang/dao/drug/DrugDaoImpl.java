package com.kuang.dao.drug;

import com.kuang.dao.BaseDao;
import com.kuang.pojo.Drug;
import com.kuang.pojo.DrugLabel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DrugDaoImpl implements DrugDao{
    @Override
    public List<DrugLabel> getDrugLabelList(Connection connection) throws SQLException {
        PreparedStatement pstm = null;
        ResultSet resultSet = null;
        ArrayList<DrugLabel> druglabels = new ArrayList<DrugLabel>();

        if (connection!=null){
            String sql = "select * from drug_label";
            Object[] params = {};
            resultSet = BaseDao.execute(connection, sql,params, resultSet,pstm );

            while (resultSet.next()){
                String id = resultSet.getString("id");
                String name = resultSet.getString("name");
                String objCls = resultSet.getString("obj_cls");
                Boolean alternateDrugAvailable = resultSet.getBoolean("alternate_drug_Available");
                Boolean dosingInformation = resultSet.getBoolean("dosing_information");
                String prescribingMarkdown = resultSet.getString("prescribing_markdown");
                String source = resultSet.getString("source");
                String textMarkdown = resultSet.getString("text_markdown");
                String summaryMarkdown = resultSet.getString("summary_markdown");
                String raw = resultSet.getString("raw");
                String drugId = resultSet.getString("drug_id");
                DrugLabel druglabel = new DrugLabel(id, name, objCls, alternateDrugAvailable, dosingInformation, prescribingMarkdown, source, textMarkdown, summaryMarkdown, raw, drugId );
                druglabels.add(druglabel);
            }
            BaseDao.closeResource(null,pstm,resultSet);
        }
        return druglabels;
    }

    @Override
    public List<Drug> getDrugList(Connection connection) throws SQLException {
        PreparedStatement pstm = null;
        ResultSet resultSet = null;
        ArrayList<Drug> drugs = new ArrayList<Drug>();

        if (connection!=null){
            String sql = "select * from drug";
            Object[] params = {};
            resultSet = BaseDao.execute(connection, sql,params, resultSet,pstm );

            while (resultSet.next()){
                String id = resultSet.getString("id");
                String name = resultSet.getString("name");
                String objCls = resultSet.getString("obj_cls");
                String drugUrl = resultSet.getString("drug_url");
                boolean biomarker = resultSet.getBoolean("biomarker");
                Drug drug = new Drug(id, name, biomarker, drugUrl, objCls);
                drugs.add(drug);
            }
            BaseDao.closeResource(null,pstm,resultSet);
        }
        return drugs;
    }
}
