package com.elaparato.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.web.SecurityFilterChain;

public class WebSecurityConfig {
    public static final String ADMIN = "ROLE_administrador";
    public static final String VENDEDOR = "ROLE_vendedor";
    public static final String REPOSITOR = "ROLE_repositor";
    private final JwtAuthConverter jwtAuthConverter;

    public WebSecurityConfig(JwtAuthConverter jwtAuthConverter) {
        this.jwtAuthConverter = jwtAuthConverter;
    }

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        http.authorizeHttpRequests()
                .requestMatchers(HttpMethod.GET, "/api/**").hasRole(ADMIN)
                .requestMatchers(HttpMethod.GET, "/api/ventas/**").hasRole(VENDEDOR)
                .requestMatchers(HttpMethod.GET, "/api/productos/**").hasRole(REPOSITOR)
                .requestMatchers(HttpMethod.POST, "/api/**").hasRole(ADMIN)
                .requestMatchers(HttpMethod.POST, "/api/ventas/**").hasRole(VENDEDOR)
                .requestMatchers(HttpMethod.POST, "/api/productos/**").hasRole(REPOSITOR)
                .requestMatchers(HttpMethod.PUT, "/api/**").hasRole(ADMIN)
                .requestMatchers(HttpMethod.PUT, "/api/ventas/**").hasRole(VENDEDOR)
                .requestMatchers(HttpMethod.PUT, "/api/productos/**").hasRole(REPOSITOR)
                .anyRequest().authenticated();
        http.oauth2ResourceServer()
                .jwt()
                .jwtAuthenticationConverter(jwtAuthConverter);
        http.sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS);
        return http.build();
    }
}
