package dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import sist.com.dto.FuelBean;
import sist.com.dto.MemberBean;
import sist.com.dto.QnaBean;
import sist.com.dto.RentCarBean;
import sist.com.dto.RentListBean;
import sist.com.dto.SelectCarList;
import sist.com.dto.ZipBean;
 

public class MemberDao {
	private static SqlSessionFactory sqlSessionFactory; 
	static {
		sqlSessionFactory = SqlSessionFactoryManager.getSqlSessionFactory();
	}
	
	public static boolean memberIdCheck(String id) {
		SqlSession sqlsession=null;
		String rsId=null;
		try {
			sqlsession=sqlSessionFactory.openSession();
			rsId=sqlsession.selectOne("memberIdCheck", id);
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			try {
				if(sqlsession!=null)sqlsession.close();				
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		return rsId==null||rsId.equals("")?false:true;
	}


		public static List<ZipBean> selectZipCode(String dong) { //우편번호
			SqlSession sqlSession = null;
			try {
				sqlSession = sqlSessionFactory.openSession();
				return sqlSession.selectList("selectZipCode",dong);

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
	 

		
		public static void insertMember(MemberBean bean) { //회원가입
			SqlSession sqlSession = null;
			try {
				sqlSession = sqlSessionFactory.openSession();
				sqlSession.insert("insertMember", bean);
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
	 
		
		 
		public static boolean logincheck(String id, String password) {//로그인
			SqlSession sqlSession = null;
			try {
				sqlSession = sqlSessionFactory.openSession();
				String dbPass = sqlSession.selectOne("logincheck", id);
				return dbPass != null && dbPass.equals(password.trim());
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			return false;
		}
		
	 
	 	public static MemberBean memberInfo(String id){ //회원정보
	 		
			SqlSession sqlSession=null;
			try {
				sqlSession=sqlSessionFactory.openSession();
				return sqlSession.selectOne("memberInfo",id);
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
		
	 	
	public static MemberBean fineNo(String id){ //회원정보 찾기 위한 id로 no찾기
	 		/*int no = 48;*/
			SqlSession sqlSession=null;
			try {
				sqlSession=sqlSessionFactory.openSession();
				return sqlSession.selectOne("fineNo",id);
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
	 	
	public static MemberBean findlevel(String id){ //관리자 로그인을 위한 level찾기
 	 
		SqlSession sqlSession=null;
		try {
			sqlSession=sqlSessionFactory.openSession();
			return sqlSession.selectOne("findlevel",id);
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
	
	 	
		public static List<RentListBean> myPage_reserve(int no){ //회원 no로 회원이 예약한 리스트 뽑기
	 		System.out.println("RentListBean id= "+ no);
			SqlSession sqlSession=null;
			try {
				sqlSession=sqlSessionFactory.openSession();
				return sqlSession.selectList("myPage_reserve",no);
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
		
		public static List<QnaBean> myQnAselect(int no){
			SqlSession sqlSession=null;
			try {
				sqlSession=sqlSessionFactory.openSession();
				return sqlSession.selectList("myQnAselect",no);
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
	 
		public static List<MemberBean>selectMember(HashMap<String, Object>map){
			SqlSession sqlsession=null;		
			try {
				sqlsession=sqlSessionFactory.openSession();
				return sqlsession.selectList("selectMember",map);		
				
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}finally {
				try {
					if(sqlsession!=null)sqlsession.close();				
				} catch (Exception e2) {
					// TODO: handle exception
				}
			}//finally
			return null;
		}

		
	 
		
		public static void insertTest(FuelBean bean) {
			SqlSession sqlSession = null;
			try {
				sqlSession = sqlSessionFactory.openSession();
				sqlSession.insert("insertTest", bean);
				sqlSession.commit();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
				sqlSession.rollback();
			} finally {
				try {
					sqlSession.close();
				} catch (Exception e2) {
					// TODO: handle exception
				}
			}
		}
		
		
	 
		public static List<SelectCarList>selectRentCar(){
			SqlSession sqlSession=null;
			try {
				sqlSession=sqlSessionFactory.openSession();
				return sqlSession.selectList("selectRentCar");
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
	 

	
		public static void deleteMemberList(int no) {
			SqlSession sqlSession = null;
			try {
				sqlSession = sqlSessionFactory.openSession();
				sqlSession.delete("deleteMemberList", no);
				sqlSession.commit();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
				sqlSession.rollback();
			} finally {
				try {
					sqlSession.close();
				} catch (Exception e2) {
					// TODO: handle exception
				}
			}
		}
		
}
