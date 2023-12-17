package kr.co.sist.common;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class DataEncrypt {
	
	private static DataEncrypt dataEncrypt;
	
	private DataEncrypt() {
		
	}//DataEncrypt
	
	public static DataEncrypt getInstance() {
		if( dataEncrypt == null ) {
			dataEncrypt = new DataEncrypt();
		}//end if
		return dataEncrypt;
	}//getInstance
	
	public String sha256(String str) {
		
		MessageDigest md = null;
		try {
			md = MessageDigest.getInstance("SHA-256");
			md.update(str.getBytes());
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}//end catch
		
		byte[] pw = md.digest();
		StringBuilder sb = new StringBuilder();
		for( int i = 0; i < pw.length; i++) {
			sb.append(String.format("%02X", pw[i])); //%02X(2자리 16진수(0~F))
		}//end for
		
		return sb.toString();
	}//sha256
}//class
