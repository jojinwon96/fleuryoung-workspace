package com.kh.common;
import java.util.Random;

public class RanNumUtils {

	public StringBuffer ranNum() {
		StringBuffer temp =new StringBuffer();
        Random rnd = new Random();
        for(int i=0;i<10;i++)
        {
            int rIndex = rnd.nextInt(3);
            switch (rIndex) {
            case 0:
                // a-z
                temp.append((char) ((int) (rnd.nextInt(26)) + 97));
                break;
            case 1:
                // A-Z
                temp.append((char) ((int) (rnd.nextInt(26)) + 65));
                break;
            case 2:
                // 0-9
                temp.append((rnd.nextInt(10)));
                break;
            }
        }
        String AuthenticationKey = temp.toString();
        System.out.println(AuthenticationKey);
		return temp;
	}
	
	
	// 무작위 4자리 숫자 생성 - String형 반환 주의
	public static String getRanNum() {
		int ranNum = (int)((Math.random() * (9999 - 1000 + 1)) + 1000);
		return Integer.toString(ranNum);
	}
	
	// 무작위 패스워드 생성(길이 좀 줄일까 고민중)
	public static String getTempPassword() {
		char[] ch = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','0','1','2','3','4','5','6','7','8','9'};
        StringBuilder sb = new StringBuilder("");
        Random rn = new Random();
        for(int i = 0 ; i < ch.length; i++){
            sb.append(ch[rn.nextInt(ch.length)]);
        }
        return sb.toString();
	}
}
