package com.myflux;

import com.myflux.entity.Quote;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.web.client.TestRestTemplate;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.reactive.server.WebTestClient;
import org.springframework.web.client.RestTemplate;

import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;

@RunWith(SpringRunner.class)
@SpringBootTest(classes = MyFluxApplication.class, webEnvironment = SpringBootTest.WebEnvironment.DEFINED_PORT)
public class MyFluxApplicationTest {


    @Autowired
    private TestRestTemplate testRestTemplate;
    @Autowired
    private WebTestClient webTestClient;

    @Test
    public void fetchQuotes() {
//        ResponseEntity<String> forEntity = testRestTemplate.getForEntity("http://localhost:8083/hello", String.class, "");
//        System.out.println(forEntity.getStatusCode());
//        webTestClient.get()
//                .uri("/hello")
//                .accept(MediaType.TEXT_PLAIN)
//                .exchange()
//                .expectStatus().isOk();

        //        webTestClient
//                .get().uri("/quotes?size=20")
//                .accept(MediaType.APPLICATION_JSON)
//                .exchange()
//                .expectStatus().isOk()
//                .expectHeader().contentType(MediaType.APPLICATION_JSON)
//                .expectBodyList(Quote.class)
//                .hasSize(20)
//                .consumeWith(allQuotes ->
//                        assertThat(allQuotes.getResponseBody())
//                                .allSatisfy(quote -> assertThat(quote.getPrice()).isPositive())
//                );
    }

    @Test
    public void fetchQuotesAsStream() {
        List<Quote> result = webTestClient
                .get().uri("/quotes")
                .accept(MediaType.APPLICATION_STREAM_JSON)
                .exchange()
                .expectStatus().isOk()
                .returnResult(Quote.class)
                .getResponseBody()
                .take(30)
                .collectList()
                .block();

        assertThat(result).allSatisfy(quote -> assertThat(quote.getPrice()).isPositive());
    }
}
