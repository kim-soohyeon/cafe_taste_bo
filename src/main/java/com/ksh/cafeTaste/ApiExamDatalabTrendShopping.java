package com.ksh.cafeTaste;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class ApiExamDatalabTrendShopping {

	public static void main(String[] args) {
        String clientId = "ZaYrbnWUj13_0TxqaLKh"; // 애플리케이션 클라이언트 아이디
        String clientSecret = "TGjGLCDuum"; // 애플리케이션 클라이언트 시크릿

//        String apiUrl = "https://openapi.naver.com/v1/datalab/shopping/categories";
        
        //쇼핑인사이트 분야 내 성별 트렌드 조회
        String apiUrlGender = "https://openapi.naver.com/v1/datalab/shopping/category/gender";

        //쇼핑인사이트 분야 내 연령별 트렌드 조회
        String apiUrlAge = "https://openapi.naver.com/v1/datalab/shopping/category/age";
        
        //날짜 데이터 포맷 지정
        SimpleDateFormat  formatter04 = new SimpleDateFormat("yyyy-MM-dd");
        
        //오늘 일자 구하기
        String todate =  formatter04.format(new Date());
        System.out.println("오늘은"+todate+"입니다.");
        
        Calendar calendar = Calendar.getInstance();        
        //2일 전 일자 구하기
        calendar.add(Calendar.DAY_OF_MONTH, -2);
        Date date2 = calendar.getTime();
        String todate2 =  formatter04.format(date2);
        System.out.println("2일 전은"+todate2+"입니다.");
        
        Map<String, String> requestHeaders = new HashMap<>();
        requestHeaders.put("X-Naver-Client-Id", clientId);
        requestHeaders.put("X-Naver-Client-Secret", clientSecret);
        requestHeaders.put("Content-Type", "application/json");

//        String requestBody = "{\"startDate\":\"2017-08-01\"," +
//                "\"endDate\":\"2017-09-30\"," +
//                "\"timeUnit\":\"month\"," +
//                "\"category\":[{\"name\":\"패션의류\",\"param\":[\"50000000\"]}," +
//                              "{\"name\":\"화장품/미용\",\"param\":[\"50000002\"]}]," +
//                "\"device\":\"pc\"," +
//                "\"ages\":[\"20\",\"30\"]," +
//                "\"gender\":\"f\"}";
        
        //쇼핑인사이트 분야 내 성별 트렌드 조회 requestBody
        String reqBodyGender = "{\"startDate\":\"" + 
        		todate2 + "\"," +
                "\"endDate\":\"" +
                todate2 + "\"," +
                "\"timeUnit\":\"date\"," +
                "\"category\":\"50001081\"}";
        
        //쇼핑인사이트 분야 내 연령별 트렌드 조회 requestBody
        String reqBodyAge = "{\"startDate\":\"" + 
        		todate2 + "\"," +
                "\"endDate\":\"" +
                todate2 + "\"," +
                "\"timeUnit\":\"date\"," +
                "\"category\":\"50001081\"," +
                "\"ages\":[\"10\",\"20\",\"30\",\"40\",\"50\",\"60\"]}";
        
//      String responseBody = post(apiUrl, requestHeaders, requestBody);        
        //쇼핑인사이트 분야 내 성별 트렌드 조회 responseBody
        String resBodyGender = post(apiUrlGender, requestHeaders, reqBodyGender);
        System.out.println("쇼핑인사이트 분야 내 성별 트렌드 조회 responseBody\n" + resBodyGender);
        //쇼핑인사이트 분야 내 연령별 트렌드 조회 responseBody
        String resBodyAge = post(apiUrlAge, requestHeaders, reqBodyAge);
        System.out.println("쇼핑인사이트 분야 내 연령별 트렌드 조회 responseBody\n" + resBodyAge);

    }

    private static String post(String apiUrl, Map<String, String> requestHeaders, String requestBody) {
        HttpURLConnection con = connect(apiUrl);

        try {
            con.setRequestMethod("POST");
            for(Map.Entry<String, String> header :requestHeaders.entrySet()) {
                con.setRequestProperty(header.getKey(), header.getValue());
            }

            con.setDoOutput(true);
            try (DataOutputStream wr = new DataOutputStream(con.getOutputStream())) {
                wr.write(requestBody.getBytes());
                wr.flush();
            }

            int responseCode = con.getResponseCode();
            if (responseCode == HttpURLConnection.HTTP_OK) { // 정상 응답
                return readBody(con.getInputStream());
            } else {  // 에러 응답
                return readBody(con.getErrorStream());
            }
        } catch (IOException e) {
            throw new RuntimeException("API 요청과 응답 실패", e);
        } finally {
            con.disconnect(); // Connection을 재활용할 필요가 없는 프로세스일 경우
        }
    }

    private static HttpURLConnection connect(String apiUrl) {
        try {
            URL url = new URL(apiUrl);
            return (HttpURLConnection) url.openConnection();
        } catch (MalformedURLException e) {
            throw new RuntimeException("API URL이 잘못되었습니다. : " + apiUrl, e);
        } catch (IOException e) {
            throw new RuntimeException("연결이 실패했습니다. : " + apiUrl, e);
        }
    }

    private static String readBody(InputStream body) {
        InputStreamReader streamReader = new InputStreamReader(body, StandardCharsets.UTF_8);

        try (BufferedReader lineReader = new BufferedReader(streamReader)) {
            StringBuilder responseBody = new StringBuilder();

            String line;
            while ((line = lineReader.readLine()) != null) {
                responseBody.append(line);
            }

            return responseBody.toString();
        } catch (IOException e) {
            throw new RuntimeException("API 응답을 읽는데 실패했습니다.", e);
        }
    }
}