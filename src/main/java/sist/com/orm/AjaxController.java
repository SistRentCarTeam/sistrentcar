package sist.com.orm;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import sist.com.dao.BasicDao;

@RestController
public class AjaxController {

	@Autowired
	private BasicDao dao;
	
	
}
