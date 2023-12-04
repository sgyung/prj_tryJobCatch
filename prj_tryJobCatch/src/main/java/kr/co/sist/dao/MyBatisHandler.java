package kr.co.sist.dao;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MyBatisHandler {
	private static MyBatisHandler mbH;
	private static SqlSessionFactory ssf;
	
	private MyBatisHandler() {
		org.apache.ibatis.logging.LogFactory.useLog4J2Logging();
	}
	
	public static MyBatisHandler getInstance() {
		if(mbH == null) {
			mbH = new MyBatisHandler();
		}
		return mbH;
	}
	
	private SqlSessionFactory myBatisBuilder(String configFile) {
		if(ssf == null) {
			try {
				
				Reader reader = Resources.getResourceAsReader(configFile);
				ssf = new SqlSessionFactoryBuilder().build(reader);
				
				if( reader != null ) { reader.close();}
				
			} catch (IOException e) {
				e.printStackTrace();
			} 
		}
		return ssf;
	}

	public SqlSession getMyBatisHandler(String config, boolean autoCommit) {
		SqlSession ss = null;
		
		ss = myBatisBuilder(config).openSession(autoCommit);
		
		return ss;
	}//getMyBatisHandler
	
	public void closeHandler( SqlSession ss ) {
		if( ss != null ) { ss.close(); }
		
	}//closeHandler
	
}
