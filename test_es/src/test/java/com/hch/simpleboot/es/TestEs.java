package com.hch.simpleboot.es;

import org.elasticsearch.action.admin.indices.delete.DeleteIndexRequest;
import org.elasticsearch.action.bulk.BulkRequest;
import org.elasticsearch.action.bulk.BulkResponse;
import org.elasticsearch.action.delete.DeleteRequest;
import org.elasticsearch.action.delete.DeleteResponse;
import org.elasticsearch.action.get.GetRequest;
import org.elasticsearch.action.get.GetResponse;
import org.elasticsearch.action.index.IndexRequest;
import org.elasticsearch.action.index.IndexResponse;
import org.elasticsearch.action.search.SearchRequest;
import org.elasticsearch.action.search.SearchResponse;
import org.elasticsearch.action.support.master.AcknowledgedResponse;
import org.elasticsearch.action.update.UpdateRequest;
import org.elasticsearch.action.update.UpdateResponse;
import org.elasticsearch.client.RequestOptions;
import org.elasticsearch.client.RestHighLevelClient;
import org.elasticsearch.client.indices.CreateIndexRequest;
import org.elasticsearch.client.indices.CreateIndexResponse;
import org.elasticsearch.client.indices.GetIndexRequest;
import org.elasticsearch.common.unit.TimeValue;
import org.elasticsearch.common.xcontent.XContentType;
import org.elasticsearch.index.query.QueryBuilders;
import org.elasticsearch.index.query.TermQueryBuilder;
import org.elasticsearch.search.SearchHit;
import org.elasticsearch.search.builder.SearchSourceBuilder;
import org.elasticsearch.search.fetch.subphase.FetchSourceContext;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.test.context.SpringBootTest;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

@SpringBootTest
public class TestEs {

    @Autowired
    @Qualifier("restHighLevelClient")
    private RestHighLevelClient client;

    @Test
    void testCreateIndex() throws IOException {
        CreateIndexRequest request = new CreateIndexRequest("test1");
        CreateIndexResponse createIndexResponse = client.indices().create(request, RequestOptions.DEFAULT);
        System.out.println(createIndexResponse);
    }

    @Test
    void testExistIndex() throws IOException {
        GetIndexRequest request = new GetIndexRequest("test1");
        boolean exists = client.indices().exists(request, RequestOptions.DEFAULT);
        System.out.println(exists);
    }

    @Test
    void deleteIndex() throws IOException {
        DeleteIndexRequest request = new DeleteIndexRequest("test1");
        AcknowledgedResponse delete = client.indices().delete(request, RequestOptions.DEFAULT);
        System.out.println(delete.isAcknowledged());
    }

    @Test
    void testIndexDoc() throws IOException {
        IndexRequest request = new IndexRequest("test1");

        request.id("1");
        request.timeout(TimeValue.timeValueSeconds(1));
        //request.timeout("1s");

        request.source("{json}", XContentType.JSON);

        IndexResponse indexResponse = client.index(request, RequestOptions.DEFAULT);
        System.out.println(indexResponse.toString());
        System.out.println(indexResponse.status());


    }

    @Test
    void testExists() throws IOException {
        GetRequest getRequest = new GetRequest("test1");
        getRequest.fetchSourceContext(new FetchSourceContext(false));
        getRequest.storedFields("_none_");

        boolean exists = client.exists(getRequest, RequestOptions.DEFAULT);
        System.out.println(exists);
    }

    @Test
    void getDocInfo() throws IOException {
        GetRequest getRequest = new GetRequest("test1", "1");

        GetResponse response = client.get(getRequest, RequestOptions.DEFAULT);
        System.out.println(response.getSourceAsString());
        System.out.println(response);

    }

    @Test
    void updateRequest() throws IOException {
        UpdateRequest updateRequest = new UpdateRequest("test1", "1");
        updateRequest.timeout("1s");

        updateRequest.doc("jsonString", XContentType.JSON);
        UpdateResponse response = client.update(updateRequest, RequestOptions.DEFAULT);
        System.out.println(response.status());
    }

    @Test
    void testDeleteDoc() throws IOException {
        DeleteRequest request = new DeleteRequest("test1");

        request.timeout("1s");

        DeleteResponse response = client.delete(request, RequestOptions.DEFAULT);
        System.out.println(response.status());

    }

    @Test
    void testBatchBulk() throws IOException {
        BulkRequest bulkRequest = new BulkRequest();
        bulkRequest.timeout("10s");
        List<Object> list = new ArrayList<>();
        list.add(""); //...
        for (int i = 0; i < list.size(); i++) {
            bulkRequest.add(new IndexRequest("test1")
                .id("" + (i + 1))
                .source("listEleJson", XContentType.JSON)
            );
        }

        BulkResponse bulkResponse = client.bulk(bulkRequest, RequestOptions.DEFAULT);
        System.out.println(bulkResponse.status());
    }

    // 查询
    // SearchRequest 搜索请求
    // SearchSourceBuilder 条件构造
    // HighlightBuilder 高亮构造
    // TermQueryBuilder 精确查询
    // MatchAllQueryBuilder 全部匹配查询构造
    @Test
    void selectDoc() throws IOException {
        SearchRequest searchRequest = new SearchRequest("test1");
        SearchSourceBuilder builder = new SearchSourceBuilder();
        TermQueryBuilder termQueryBuilder = QueryBuilders.termQuery("name", "张三");
        //QueryBuilders.matchAllQuery();
        builder.query(termQueryBuilder)
                .timeout(new TimeValue(1, TimeUnit.MILLISECONDS));
        searchRequest.source(builder);
        SearchResponse searchResponse = client.search(searchRequest, RequestOptions.DEFAULT);
        System.out.println(searchResponse.getHits());

        for (SearchHit hit : searchResponse.getHits().getHits()) {
            System.out.println(hit.getSourceAsMap());
        }

    }
}
