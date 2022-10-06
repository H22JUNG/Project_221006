package com.goodee.config;

import org.apache.commons.dbcp2.BasicDataSource;
import org.apache.ibatis.session.ExecutorType;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
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
@ComponentScan("com.goodee")@MapperScan(basePackages = {"com.goodee.dao"}, annotationClass = org.apache.ibatis.annotations.Mapper.class)
//@MapperScan 
/*	-> MyBatis의 인터페이스 매퍼들이 있는 위치를 읽고 특정 어노테이션이 붙어 있는 경우를 읽어서
* 	   MyBatis에서 DB에 접근할 수 있는 실질적인 객체로 만들 떄 스펙으로 사용하도록 스캔하는 어노테이션
* 	-> @Mapper 어노테이션을 읽는 어노테이션  
*/


//사용할 프로퍼티 지정
@PropertySource("/META-INF/properties/db.properties") 
public class ServletAppContext implements WebMvcConfigurer{
	
	// DB Connection과 관련된 정보를 properties 에서 field로 가져오기
	@Value("${db.classname}")
	private String classname;
	
	@Value("${db.url}")
	private String url;
	
	@Value("${db.username}")
	private String username;
	
	@Value("${db.password}")
	private String password;
	
	// Controller의 메서드가 반환하는 jsp의 이름 앞뒤에 경로와 확장자를 붙여주도록 설정한다.
	@Override
	public void configureViewResolvers(ViewResolverRegistry registry) {
		// TODO Auto-generated method stub
		WebMvcConfigurer.super.configureViewResolvers(registry);
		registry.jsp("/WEB-INF/views/", ".jsp");
	}
	
	// 정적 파일의 경로 세팅
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		// TODO Auto-generated method stub
		WebMvcConfigurer.super.addResourceHandlers(registry);
		registry.addResourceHandler("/**").addResourceLocations("/resources/");
	}
	
	// 데이터 베이스 접속 정보 관리
	@Bean
	public BasicDataSource dataSource() {
		BasicDataSource source = new BasicDataSource();
		source.setDriverClassName(classname);
		source.setUrl(url);
		source.setUsername(username);
		source.setPassword(password);
		return source;
	}
	
	// 쿼리문과 접속 관리하는 객체
	@Bean("SqlSessionFactory")
	public SqlSessionFactory factory(BasicDataSource source, ApplicationContext context) throws Exception{
		SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
		// DataSource 설정
		sqlSessionFactoryBean.setDataSource(source);
		// Mapper.xml 설정
		sqlSessionFactoryBean.setMapperLocations(context.getResources("/META-INF/mapper/*.xml"));
		// Bean Alias 어노테이션 설정 위치 읽기
		sqlSessionFactoryBean.setTypeAliasesPackage("com.goodee.vo");
		// properties 설정 정보 활용
		// sqlSessionFactoryBean.setConfigurationProperties(mybatisProperties());
		
		// 설정 관련 객체 및 정보 삽입
		org.apache.ibatis.session.Configuration configuration
					= new org.apache.ibatis.session.Configuration();
		configuration.setMapUnderscoreToCamelCase(true);
		configuration.setCacheEnabled(false);
		configuration.setUseGeneratedKeys(true);
		configuration.setDefaultExecutorType(ExecutorType.REUSE);
		
		sqlSessionFactoryBean.setConfiguration(configuration);
		
		return sqlSessionFactoryBean.getObject();
	}

}