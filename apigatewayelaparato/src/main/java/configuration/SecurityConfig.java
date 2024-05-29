package configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.security.config.web.server.ServerHttpSecurity;
import org.springframework.security.web.server.SecurityWebFilterChain;

public class SecurityConfig {
    @Bean
    public SecurityWebFilterChain springSecurityFilterChain (ServerHttpSecurity http) {


        http
                .authorizeExchange()
                .anyExchange()
                .authenticated()
                .and()
                .oauth2Login(); // to redirect to oauth2 login page.


        return http.build();
    }
}
