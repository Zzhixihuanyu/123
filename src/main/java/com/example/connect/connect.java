package com.example.connect;

import java.util.List;
import java.util.Set;

import redis.clients.jedis.Jedis;

public class connect {
public static void main(String[] args)
{
	Jedis jedis = new Jedis("localhost",6379);
	jedis.auth("123456");
	System.out.println(jedis.ping());
	jedis.lpush("A11","b1");
	jedis.lpush("A11","b2");
	jedis.lpush("A11","b3");
	List<String> list = jedis.lrange("A11", 0, 2);
	for(int i=0;i<list.size();i++)
	{
		System.out.println(list.get(i));
	}
	Set<String> keys=jedis.keys("*");
	for(String k : keys)
	{
		System.out.println(k);
	}
}
}
