package com.kuang.service.drug;

import com.kuang.pojo.Drug;
import com.kuang.pojo.DrugLabel;

import java.util.List;

public interface DrugService {
    //get drug table
    public List<Drug> getDrugList();
    //get drug label
    public  List<DrugLabel> getDruglabelList();
}
