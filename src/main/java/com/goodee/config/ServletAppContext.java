package com.goodee.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

// Spring MVC프로젝트에 관련된 설정을 하는 클래스
@Configuration

//Controller 어노테이션이 세팅되어 있는 클래스를 등록하는 어노테이션
@EnableWebMvc
//혼자서 못움직임, ComponentScan과 같이 사용

//스캔할 패키지 지정
@ComponentScan("com.goodee.controller")
//이 패키지 내 controller라는 어노테이션이 있으면 알아서 설정
public class ServletAppContext implements WebMvcConfigurer {
	//참고 : 스프링 코어에서의 설정이 아니라 스프링웹MVC에서 설정하고자 하는 클래스 선언할 경우
	// WebMvcConfigurer 인터페이스 사용
	
	//Controller의 메서드가 반환하는 jsp의 이름 앞뒤에 경로와 확장자를 붙여주도록 설정한다.
	@Override
	public void configureViewResolvers(ViewResolverRegistry registry) {
		// TODO Auto-generated method stub
		WebMvcConfigurer.super.configureViewResolvers(registry);
		registry.jsp("/WEB-INF/views/", ".jsp"); //앞뒤로 붙여줌
	}
	
	
	//정적 파일의 경로 세팅(사진, 동영상 등등)
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		// TODO Auto-generated method stub
		WebMvcConfigurer.super.addResourceHandlers(registry);
		registry.addResourceHandler("/**").addResourceLocations("/resources/");
		// /** : 전체경로 아래에 있는 모든 경로, 어떤 경로든 호출 시
		//무조건 resources 바라보겠다
	}
	
}
