package util;

//接口类型：互亿无线触发短信接口，支持发送验证码短信、订单通知短信等。
// 账户注册：请通过该地址开通账户http://user.ihuyi.com/register.html
// 注意事项：
//（1）调试期间，请使用用系统默认的短信内容：您的验证码是：【变量】。请不要把验证码泄露给其他人。
//（2）请使用 APIID 及 APIKEY来调用接口，可在会员中心获取；
//（3）该代码仅供接入互亿无线短信接口参考使用，客户可根据实际需要自行编写；

import java.io.IOException;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.PostMethod;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;

//import util.StringUtil;

public class SMS {

    private static String Url = "http://106.ihuyi.com/webservice/sms.php?method=Submit";
    public static int mobile_code;
    public static String yzm;
    public static void Texting(String mobile) {

        HttpClient client = new HttpClient();
        PostMethod method = new PostMethod(Url);

        client.getParams().setContentCharset("GBK");
        method.setRequestHeader("ContentType","application/x-www-form-urlencoded;charset=GBK");

        mobile_code = (int)((Math.random()*9+1)*100000);


        // 把 mobile_code 设置为固定值 8888
        mobile_code = 8888;
        yzm = "1234";
        // mobile_code 为 短信验证码
        String content = new String("欢迎注册[六职外卖] 您的验证码是：" + mobile_code + "。请不要把验证码泄露给其他人。");


//        NameValuePair[] data = {//提交短信
//                new NameValuePair("account", "C46643721"), //查看用户名 登录用户中心->验证码通知短信>产品总览->API接口信息->APIID
//                new NameValuePair("password", "058ee6a631dd27c06ddd9cede8c44f9a"), //查看密码 登录用户中心->验证码通知短信>产品总览->API接口信息->APIKEY
//                //new NameValuePair("password", util.StringUtil.MD5Encode("密码")),
//                new NameValuePair("mobile", mobile),
//                new NameValuePair("content", content),
//        };
//        method.setRequestBody(data);
//
//        try {
//            client.executeMethod(method);
//
//            String SubmitResult =method.getResponseBodyAsString();
//
//            //System.out.println(SubmitResult);
//
//            Document doc = DocumentHelper.parseText(SubmitResult);
//            Element root = doc.getRootElement();
//
//            String code = root.elementText("code");
//            String msg = root.elementText("msg");
//            String smsid = root.elementText("smsid");
//
//            System.out.println(code);
//            System.out.println(msg);
//            System.out.println(smsid);
//
//            if("2".equals(code)){
//                System.out.println("短信提交成功");
//            }
//
//        } catch (HttpException e) {
//            // TODO Auto-generated catch block
//            e.printStackTrace();
//        } catch (IOException e) {
//            // TODO Auto-generated catch block
//            e.printStackTrace();
//        } catch (DocumentException e) {
//            // TODO Auto-generated catch block
//            e.printStackTrace();
//        }

    }
}
