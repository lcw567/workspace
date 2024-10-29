package com.kh.spring.aspect;

import java.lang.reflect.Method;
import java.util.Arrays;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.stereotype.Component;

import lombok.extern.slf4j.Slf4j;

/*
 * Aspect : 해당 클래스가 Aspect(aop객체)라는 것을 선언
 * Component : Spring이 해당 빈을 서칭할 수 있도록 선언 (Bean등록)
 */
@Slf4j
@Aspect
@Component
public class LoggingAOP {
	/*
	 *  <시점>
	 *  @Before : 대상메서드 실행 전에 Advice(추가 기능)가 실행된다.
	 *  
	 *  @After : 대상메서드 실행 후에 Advice(추가 기능)가 실행된다.
	 *  
	 *  @AfterRequest : 대상메서드가 정상적으로 반환된 후에 Advice(추가 기능)가 실행된다.
	 *  
	 *  @AfterTheowing : 대상메서드가 예외를 던진 후에 Advice(추가 기능)가 실행된다.
	 *  
	 *  @Around : 대상메서드를 감싸서 메서드를 호출 전후에 후에 Advice를 실행할 수 있다.
	 */
	
	/*
	 * <대상>
	 *  target : 특정 인터페이스와 그 자식클래스
	 *  
	 */

    // 특정 메서드나 패키지 등의 join point
    // com.kh 아래 모든 controller 패키지 하위 클래스의 모든 메서드에 전부 적용하겠다고 지점 설정.
    @Pointcut("execution(* com.kh.spring..controller.*.*(..) )") // 공백 제거 및 패키지 수정
    private void cut() {};

    // cut 메서드가 실행되는 지점 이전에 before 메서드를 실행
    // JoinPoint: pointcut 지점에 대한 정보가 들어있다.
    // 메서드의 실행이 가장 일반적인 joinpoint다
    @Before("cut()")
    public void before(JoinPoint joinPoint) {

        MethodSignature methodSignature = (MethodSignature) joinPoint.getSignature();
        Method method = methodSignature.getMethod();

        Object[] args = joinPoint.getArgs();

        log.info("========== START ===========");
        log.info("========== API Controller ===========");
        log.info("Information        :    " + methodSignature); 
        log.info("Information        :    " + method); 
        log.info("Information        :    " + Arrays.toString(args)); 

    }
    @AfterReturning(value="cut()" , returning= "obj")
    public void afterReturn(JoinPoint joinPoint, Object obj) {
    	log.info("=========== END ============");
    	log.info("Object     : " + obj);
    	
    }
    
    @Around("cut()")
    public Object displayLogInfo(ProceedingJoinPoint joinPoint) throws Throwable {
    	long start = System.currentTimeMillis(); //0
    	
    	//실행하려면 joinpoint메서드 실행
    	Object result = joinPoint.proceed();
    	
    	//실행후 서버 시간
    	long end =System.currentTimeMillis(); //1000
    	
    	long runTime = end = start; //실행시간
    	
    	log.info("------------------------------");
    	log.info("Infomation                : "+ joinPoint.getSignature());
    	log.info("Processing Time      : " + runTime + "ms");
    	return result;
    }
}