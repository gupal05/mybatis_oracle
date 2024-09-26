package com.yh.zero.services;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yh.zero.dto.UserDto;

@Service
public class Authentication {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public void test(UserDto user) {
		System.out.println("-------시작-------");
		int result = this.sqlSession.insert("auth.testIns", user);
		if(result != 0) {
			System.out.println(this.sqlSession.selectList("auth.testSel"));
		}else {
			System.out.println("실패");
		}
		System.out.println("-------종료-------");
	}
}
