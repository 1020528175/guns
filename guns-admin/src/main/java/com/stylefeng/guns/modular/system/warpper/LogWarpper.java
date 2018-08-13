package com.stylefeng.guns.modular.system.warpper;

import com.stylefeng.guns.core.base.warpper.BaseControllerWarpper;
import com.stylefeng.guns.core.common.constant.factory.ConstantFactory;
import com.stylefeng.guns.core.util.Contrast;
import com.stylefeng.guns.core.util.ToolUtil;

import java.io.BufferedReader;
import java.io.Reader;
import java.sql.Clob;
import java.util.Map;

/**
 * 日志列表的包装类
 *
 * @author fengshuonan
 * @date 2017年4月5日22:56:24
 */
public class LogWarpper extends BaseControllerWarpper {

    public LogWarpper(Object list) {
        super(list);
    }

    @Override
    public void warpTheMap(Map<String, Object> map) {
    	 String userid ="";
    	if(ToolUtil.isNotEmpty(map.get("USERID"))){
    		userid=  (String) map.get("USERID");
    		map.put("userName", ConstantFactory.me().getUserNameById(userid));
    	}else if(ToolUtil.isNotEmpty(map.get("userid"))){
    		userid=  (String) map.get("userid");
    		map.put("userName", ConstantFactory.me().getUserNameById(userid));
    	}
        
        

        
        	if(ToolUtil.isNotEmpty(map.get("MESSAGE"))){
        		Clob clob =(Clob)map.get("MESSAGE");
                Reader instream;
				try {
					instream = clob.getCharacterStream();
					BufferedReader br = new BufferedReader(instream);
					String str=br.readLine();
					StringBuffer sb=new StringBuffer();
					while (str!=null) {
						sb.append(str);
						str=br.readLine();						
					}
					String content=sb.toString();
			        if (ToolUtil.isNotEmpty(content) /*&& content.length() >= 100*/) {
			            map.put("message", content);
			        }
				} catch (Exception e) {
					e.printStackTrace();
				}

        	}
        	if(ToolUtil.isNotEmpty(map.get("METHOD"))){
        		Clob clob =(Clob)map.get("METHOD");
                Reader instream;
				try {
					instream = clob.getCharacterStream();
					BufferedReader br = new BufferedReader(instream);
					String str=br.readLine();
					StringBuffer sb=new StringBuffer();
					while (str!=null) {
						sb.append(str);
						str=br.readLine();						
					}
					String content=sb.toString();
			        if (ToolUtil.isNotEmpty(content) /*&& content.length() >= 100*/) {
			            map.put("METHOD", content);
			        }
			     
				} catch (Exception e) {
					e.printStackTrace();
				}

        	}
        	if(ToolUtil.isNotEmpty(map.get("message"))){
        	String message = (String) map.get("message");
            //如果信息中包含分割符号;;;   则分割字符串返给前台
            if (ToolUtil.isNotEmpty(message) && message.indexOf(Contrast.separator) != -1) {
                String[] msgs = message.split(Contrast.separator);
                map.put("regularMessage",msgs);
            }else{
                map.put("regularMessage",message);
            }}
    }

}
