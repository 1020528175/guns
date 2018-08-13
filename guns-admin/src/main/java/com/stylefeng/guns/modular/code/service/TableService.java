package com.stylefeng.guns.modular.code.service;

import com.baomidou.mybatisplus.mapper.SqlRunner;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * 获取数据库所有的表
 *
 * @author fengshuonan
 * @date 2017-12-04-下午1:37
 */
@Service
public class TableService {

    @Value("${spring.datasource.db-name}")
    private String dbName;

    /**
     * 获取当前数据库所有的表信息
     */
    public List<Map<String, Object>> getAllTables() {
        String sql = "select t.table_name as tableName,c.COMMENTS as tableComment from all_tables t left join all_tab_comments c on t.TABLE_NAME=c.TABLE_NAME and t.OWNER=c.OWNER where t.owner='"+dbName+"' order by t.table_name";
        return SqlRunner.db().selectList(sql);
    }
}
