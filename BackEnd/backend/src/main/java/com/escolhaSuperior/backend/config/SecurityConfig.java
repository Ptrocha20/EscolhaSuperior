package com.escolhaSuperior.backend.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
@EnableWebSecurity
public class SecurityConfig {

    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
        http
            .csrf().disable() // Desativa CSRF (para testar com Postman / frontend)
            .authorizeHttpRequests()
                .requestMatchers("/api/auth/**").permitAll() // Permite login e registo sem autenticação
                .anyRequest().authenticated() // Tudo o resto requer login
            .and()
            .httpBasic(); // Usa autenticação básica (podes adaptar depois para JWT)

        return http.build();
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return NoOpPasswordEncoder.getInstance();
    }
}
