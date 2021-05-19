package com.kuang.dao.drug;


import com.kuang.dao.BaseDao;
import com.kuang.pojo.Sample;

import java.sql.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public class SampleDao {

    public int save(String uploadedBy, String filename) {
        AtomicInteger key = new AtomicInteger();

        try {
            Connection connection = BaseDao.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("insert into sample(created_at, uploaded_by, filename) values (?,?,?)", Statement.RETURN_GENERATED_KEYS);
            preparedStatement.setTimestamp(1, new Timestamp(new Date().getTime()));
            preparedStatement.setString(2, uploadedBy);
            preparedStatement.setString(3, filename);
            preparedStatement.executeUpdate();
            ResultSet generatedKeys = preparedStatement.getGeneratedKeys();
            while (generatedKeys.next()) {
                key.set(generatedKeys.getInt(1));
            }
            BaseDao.closeResource(connection,preparedStatement,generatedKeys);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return key.get();
    }

    public List<Sample> findAll() {
        List<Sample> samples = new ArrayList<>();
        try {
            Connection connection = BaseDao.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("select * from sample");
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int sampleId = resultSet.getInt("id");
                Date createdAt = new Date(resultSet.getTimestamp("created_at").getTime());
                String uploadedBy = resultSet.getString("uploaded_by");
                String filename = resultSet.getString("filename");
                Sample sample = new Sample(sampleId, createdAt, uploadedBy, filename);
                samples.add(sample);
            }
            BaseDao.closeResource(connection,preparedStatement,resultSet);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return samples;
    }

    public Sample findById(int id) {
        AtomicReference<Sample> sample = new AtomicReference<>();
        try {
            Connection connection = BaseDao.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("select id, created_at, uploaded_by from sample where id = ?");
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                int sampleId = resultSet.getInt("id");
                Date createdAt = new Date(resultSet.getTimestamp("created_at").getTime());
                String uploadedBy = resultSet.getString("uploaded_by");
                String filename = resultSet.getString("filename");
                sample.set(new Sample(sampleId, createdAt, uploadedBy, filename));
            }
            BaseDao.closeResource(connection,preparedStatement,resultSet);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return sample.get();
    }
}
