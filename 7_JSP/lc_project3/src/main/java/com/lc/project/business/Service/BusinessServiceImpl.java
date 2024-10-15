package com.lc.project.business.Service;

import org.apache.ibatis.session.SqlSession;

import com.lc.project.business.model.dao.BusinessDao;
import com.lc.project.business.model.vo.Business;
import com.lc.project.common.template.Template;

public class BusinessServiceImpl implements BusinessService {

	private BusinessDao bDao = new BusinessDao();
	
	@Override
	public Business loginBusiness(Business b) {
		SqlSession sqlSession = Template.getSqlSession();
		Business loginbs = bDao.loginBusiness(sqlSession, b);
		
		sqlSession.close();
		
		return loginbs;
	}

	@Override
	public int insertBusiness(Business b) {
		SqlSession sqlSession = Template.getSqlSession();
		int result = bDao.insertBusiness(sqlSession, b);
		
		if(result > 0) {
			sqlSession.commit();
		}else {
			sqlSession.rollback();
		}
		sqlSession.close();
		
		return result;
	}

	@Override
	public Business searchidBusiness(Business b) {
		SqlSession sqlSession = Template.getSqlSession();
		Business searchid = bDao.searchidBusiness(sqlSession, b);
		
		sqlSession.close();
		
		return searchid;
	}

	@Override
	public Business searchpwdBusiness(Business b) {
		SqlSession sqlSession = Template.getSqlSession();
		Business searchpwd = bDao.searchpwdBusiness(sqlSession, b);
		
		sqlSession.close();
		
		return searchpwd;
	}

	@Override
	public boolean updateBusiness(Business b) {
		  SqlSession sqlSession = Template.getSqlSession();
		    int result = bDao.updateBusiness(sqlSession, b);

		    if (result > 0) {
		        sqlSession.commit();
		    } else {
		        sqlSession.rollback();
		    }
		    sqlSession.close();
		    
		    return result > 0;
	}

}
