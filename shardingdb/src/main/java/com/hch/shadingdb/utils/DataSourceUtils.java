package com.hch.shadingdb.utils;

import com.alibaba.druid.pool.DruidDataSource;

import javax.sql.DataSource;

public class DataSourceUtils {

    public static DataSource createDataSource(final String dataSourceName) {
        DruidDataSource dataSource = new DruidDataSource(true);
        String jdbcUrl =
                String.format("jdbc://localhost:3306/%s?useUnicode=true&characterEncoding=UTF-8",
                        dataSourceName);
        dataSource.setUrl(jdbcUrl);
        dataSource.setUsername("root");
        dataSource.setPassword("123456");
        return dataSource;
    }
}
