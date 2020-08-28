package com.myflux.router;

import com.myflux.handler.QuoteHandler;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.MediaType;
import org.springframework.web.reactive.function.server.RouterFunctions;
import org.springframework.web.reactive.function.server.RouterFunction;
import org.springframework.web.reactive.function.server.ServerResponse;

import static org.springframework.web.reactive.function.server.RequestPredicates.*;

@Configuration
public class QuoteRouter {

    @Bean
    public RouterFunction<ServerResponse> route(QuoteHandler quoteHandler) {
        return RouterFunctions
                .route(GET("/hello").and(accept(MediaType.TEXT_PLAIN)), quoteHandler::hello)
                .andRoute(POST("/echo").and(accept(MediaType.TEXT_PLAIN).and(contentType(MediaType.TEXT_PLAIN))), quoteHandler::echo)
                .andRoute(GET("/quotes").and(accept(MediaType.APPLICATION_JSON)), quoteHandler::fetchQuotes)
                .andRoute(GET("/quotes").and(accept(MediaType.APPLICATION_STREAM_JSON)), quoteHandler::streamQuotes);
    }
}
