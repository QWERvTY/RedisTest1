package com.redis.test;

import java.util.HashMap;
import java.util.Map;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;

public class RedisConnTest {

	public static Jedis connTest() {
		JedisPoolConfig jedisPoolConfig = new JedisPoolConfig();
		
		String host = "192.168.178.1";
		int port = 6379;
		int timeout = 1000;
		String password = "password";
		
		// Jedis pool 생성(JedisConfig, host, port, timeout. pw)
		JedisPool pool = new JedisPool(jedisPoolConfig, host, port, timeout, password);
		
		Jedis jedis = pool.getResource();
		
		return jedis;
	}
	
	public static void closeJedis(Jedis jedis) {
		if (jedis != null) {
			jedis.close();
		}
	}
	
}
