package dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import sist.com.dto.NoticeBean;
import sist.com.dto.OfficeBean;

import sist.com.dto.FuelBean;
import sist.com.dto.NoticeBean;
import sist.com.dto.RentCarBean;
import sist.com.dto.SelectCarListBean;




public class RentCarDAO {
	private static SqlSessionFactory sqlSessionFactory;
	static{
		sqlSessionFactory = SqlSessionFactoryManager.getSqlSessionFactory();
	}
	
	public static List<OfficeBean> selectOffice(){

			SqlSession sqlSession = null;
			try {
				sqlSession = sqlSessionFactory.openSession();
				return sqlSession.selectList("selectOffice");
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			} finally {
				try {
					sqlSession.close();
				} catch (Exception e2) {
					// TODO: handle exception
				}
			}
			return null;
	}
	
	public static List<NoticeBean> selectnotice(HashMap<String, Object>map) {
		SqlSession sqlSession=null;
		try {
			sqlSession=sqlSessionFactory.openSession();
			return sqlSession.selectList("selectnotice",map);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			try {
				if(sqlSession!=null)sqlSession.close();				
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		return null;
	}
	
	public static void insertnotice(NoticeBean bean) {
		SqlSession sqlSession=null;
		try {
			sqlSession=sqlSessionFactory.openSession();
			sqlSession.insert("insertnotice",bean);
			sqlSession.commit();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			sqlSession.rollback();
		}finally {
			try {
				if(sqlSession!=null)sqlSession.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
	}
	public static int getRow(HashMap<String, Object>map) {
		SqlSession sqlSession=null;
		try {
			sqlSession=sqlSessionFactory.openSession();
			return sqlSession.selectOne("getRow",map);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			try {
				if(sqlSession!=null)sqlSession.close();				
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		return 0;
	}
	//�삁�빟
	public static List<SelectCarListBean>seachRentCar(HashMap<String, Object>map){
		return sqlSessionFactory.openSession().selectList("seachRentCar",map);
	}
	
	public static void updateState(int no) {
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			sqlSession.update("updateState", no);
			sqlSession.commit();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			sqlSession.rollback();
		} finally {
			try {
				if(sqlSession!=null)sqlSession.close();				
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
	}
	
}
