package com.hch.shadingdb.config;

import com.hch.shadingdb.utils.DataSourceUtils;
import org.apache.shardingsphere.api.config.sharding.KeyGeneratorConfiguration;
import org.apache.shardingsphere.api.config.sharding.ShardingRuleConfiguration;
import org.apache.shardingsphere.api.config.sharding.TableRuleConfiguration;
import org.apache.shardingsphere.api.config.sharding.strategy.InlineShardingStrategyConfiguration;
import org.apache.shardingsphere.shardingjdbc.api.ShardingDataSourceFactory;

import javax.sql.DataSource;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

public class DataSourceFactory {

    private static Map<String, DataSource> createDataSourceMap() {
        Map<String, DataSource> result = new HashMap<>();
        result.put("ds_0", DataSourceUtils.createDataSource("ds_0"));
        result.put("ds_1", DataSourceUtils.createDataSource("ds_1"));
        return result;
    }

    public static DataSource getDataSource() throws SQLException {
        Map<String, DataSource> dataSourceMap = createDataSourceMap();
        TableRuleConfiguration tableRuleConfiguration = new TableRuleConfiguration("t_order");
        tableRuleConfiguration.setKeyGeneratorConfig(new KeyGeneratorConfiguration("SNOWFLAKE", "order_id"));

        ShardingRuleConfiguration shardingRuleConfiguration = new ShardingRuleConfiguration();
        shardingRuleConfiguration.getTableRuleConfigs().add(tableRuleConfiguration);

        shardingRuleConfiguration.setDefaultDatabaseShardingStrategyConfig(
                new InlineShardingStrategyConfiguration("user_id", "ds_${user_id % 2}")
        );

        return ShardingDataSourceFactory.createDataSource(dataSourceMap, shardingRuleConfiguration, new Properties());
    }
}
