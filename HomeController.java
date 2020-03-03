package com.redis.test;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import redis.clients.jedis.Jedis;

@Controller
public class HomeController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		System.out.println("<< Home >>");
		
		Jedis jedis = RedisConnTest.connTest();
		List<Map> list = new ArrayList<Map>();
		
		for (int i = 1; ; i++) {
			Map<String, String> map = null;
			String num = "";
			if (i < 10) {
				num = "00" + i;
			} else if (i < 100 ) {
				num = "0" + i;
			} else {
				num = "" + i;
			}
			
			map = jedis.hgetAll(num);
			if (map == null || map.size() == 0) break;
			
			list.add(map);
//			model.addAttribute("map" + num, map);
//			System.out.println(map);
		}
		
		model.addAttribute("list", list);
		System.out.println(list);
		
		jedis.close();
		return "home";
	}
	
}
