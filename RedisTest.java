package com.redis.test;

import java.util.HashMap;
import java.util.Map;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;

public class RedisTest {

	public static void main(String[] args) {
		JedisPoolConfig jedisPoolConfig = new JedisPoolConfig();
		
		String host = "192.168.178.1";
		int port = 6379;
		int timeout = 1000;
		String password = "password";
		
		// Jedis pool 생성(JedisConfig, host, port, timeout. pw)
		JedisPool pool = new JedisPool(jedisPoolConfig, host, port, timeout, password);
		
		Jedis jedis = pool.getResource();
		
		String foo = jedis.get("foo");
		Map<String, String> map001 = new HashMap<String, String>();
		map001 = jedis.hgetAll("001");
		
		jedis.set("key1", "value11");
		System.out.println(jedis.get("key1"));
		
		System.out.println(jedis.get("efe@f$3")); // 해당 내용이 없는 경우 null
		
//		jedis.del("key1");
//		System.out.println(jedis.get("key1"));
		
		System.out.println("foo : " + foo);

		System.out.println("Map : " + map001);
		
		
		if(jedis != null) {
			jedis.close();
		}
		pool.close();
	}

}
