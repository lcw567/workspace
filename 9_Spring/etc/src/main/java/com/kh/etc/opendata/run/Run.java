package com.kh.etc.opendata.run;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

public class Run {
    public static final String SERVICE_KEY = "IglKmdts3ch7jlQ6%2F2iA8UgCaC%2Fhc8V6ht0Nl5viY11G6DQAAE9eEHTIsZQiSfkhVXo9EDN1gbQSLkuNbVAaQg%3D%3D";
    
    public static void main(String[] args) throws IOException {
        
        String url = "http://apis.data.go.kr/B552584/ArpltnInforInqireSvc/getCtprvnRltmMesureDnsty";
        url += "?serviceKey=" + SERVICE_KEY;
        url += "&returnType=json";
        url += "&sidoName=" + URLEncoder.encode("서울", "UTF-8"); // 요청시 전달값에 한글이 있으면 인코딩후 작업후 전송하기
        
        // System.out.println(url);
        
        // HttpURLConnection 객체를 이용하여 요청을 보냄

      

        // 1. 요청하고자 하는 URL을 전달하면서 java.net.URL 객체 생성
        URL requestURL = new URL(url);
        
        // 2. 만들어진 URL 객체를 가지고 HttpURLConnection 객체를 생성
        HttpURLConnection urlConnection = (HttpURLConnection) requestURL.openConnection();
        
        // 3. 요청에 필요한 Header 정보 설정하기
        urlConnection.setRequestMethod("GET");
        
        // 4. 해당 API 서버로 요청 보낸 후 입력 데이터를 읽어오기
        BufferedReader br = new BufferedReader(new InputStreamReader(urlConnection.getInputStream()));

        String result = "";
        String line;
        while ((line = br.readLine()) != null) {
            result += line;
        }

        System.out.println(result);
        
    }
}
