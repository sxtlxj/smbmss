package com.kuang.dao.drug;

import com.kuang.pojo.Drug;
import com.kuang.pojo.DrugLabel;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

public interface DrugDao {
    //get the drug
    public List<Drug> getDrugList(Connection connection) throws SQLException;
    //get the drug label
    public List<DrugLabel> getDrugLabelList(Connection connection) throws SQLException;
}
