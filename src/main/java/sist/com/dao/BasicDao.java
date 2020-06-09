package sist.com.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import sist.com.dto.RentListBean;
import sist.com.dto.SelectCarListBean;

@Component
public class BasicDao  extends SqlSessionDaoSupport{

	@Autowired
	protected void initDao(SqlSessionTemplate st) throws Exception {
		// TODO Auto-generated method stub
		this.setSqlSessionTemplate(st);
	}
	
	public List<SelectCarListBean>selectRentCar(HashMap<String, String>map){
		return this.getSqlSession().selectList("selectRentCar",map);
	}
	public void updateState(int no) {
		this.getSqlSession().update("updateState", no);
	}
	public void insertRentList(RentListBean bean) {
		this.getSqlSession().insert("insertRentList", bean);
	}
	public int findOfcno(int no) {
		return this.getSqlSession().selectOne("findOfcno", no);
	}
	public int findRcprice(int no) {
		return this.getSqlSession().selectOne("findRcprice", no);
	}

}





