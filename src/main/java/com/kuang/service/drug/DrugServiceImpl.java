package com.kuang.service.drug;

import com.kuang.dao.BaseDao;
import com.kuang.dao.drug.DrugDao;
import com.kuang.dao.drug.DrugDaoImpl;
import com.kuang.pojo.Drug;
import com.kuang.pojo.DrugLabel;

import java.sql.Connection;
import java.util.List;

public class DrugServiceImpl implements DrugService{
    //import dao
    private DrugDao drugDao;
    public DrugServiceImpl(){drugDao = new DrugDaoImpl();
    }
    @Override
    public List<Drug> getDrugList() {
        Connection connection = null;
        List<Drug> drugList = null;

        try{
            connection = BaseDao.getConnection();
            drugList = drugDao.getDrugList(connection);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            BaseDao.closeResource(connection,null,null);
        }
        return drugList;
    }

    @Override
    public List<DrugLabel> getDruglabelList() {
        Connection connection = null;
        List<DrugLabel> druglabelList = null;

        try{
            connection = BaseDao.getConnection();
            druglabelList = drugDao.getDrugLabelList(connection);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            BaseDao.closeResource(connection,null,null);
        }
        return druglabelList;
    }
}
