package com.goodee.config;

import javax.servlet.Filter;

import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

//전체 환경 설정을 해주는 엔트리 클래스
//다이나믹웹프로젝트의 여러가지 설정 담고있는 추상클래스 : AbstractAnnotationConfigDispatcherServletInitializer
//프로젝트 실행하면 얘를 상속받은 클래스를 먼저 탐색함
public class SpringConfigClass extends AbstractAnnotationConfigDispatcherServletInitializer{
//자바소스 설정
	
	// 프로젝트에서 사용할 Bean들을 정의하기 위한 클래스를 지정한다.
	@Override
	protected Class<?>[] getRootConfigClasses() {
		//?:와일드카드, 어떤 값이든 입력받을 수 있음
		// TODO Auto-generated method stub
		return new Class[] {RootAppContext.class};
		//임시적으로 써야하는 Bean들을 설정해주기 위한 클래스의 위치 지정
		//저 안에서도 Bean객체 선언 가능
	}

	//Spring MVC프로젝트를 구성할 때 필요한
	//모든 설정 정보를 담고 있는 클래스를 지정한다
	@Override
	protected Class<?>[] getServletConfigClasses() {
		// TODO Auto-generated method stub
		return new Class[] {ServletAppContext.class};
	}

	
	//얘네는 그냥 servlet에서 제공하는 스펙
	//DispatcherServlet에 매핑할 요청 주소를 세팅, 거의 고정
	@Override
	protected String[] getServletMappings() {
		// TODO Auto-generated method stub
		return new String[] {"/"};
		//사용자가 접근할 때 어떤 url로 접근?
		// -> localhost8080/프로젝트명 에서 localhost8080이 "/" 로 압축
	}
	
	//파라미터 인코딩 필터 전역으로 설정
	protected Filter[] getServletRilters() {
		CharacterEncodingFilter encodingFilter = new CharacterEncodingFilter();
		encodingFilter.setEncoding("UTF-8");
		return new Filter[] {encodingFilter};
	}

}
