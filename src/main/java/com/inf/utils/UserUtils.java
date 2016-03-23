package com.inf.utils;

import org.apache.commons.codec.digest.DigestUtils;

public class UserUtils {
	public static String MD5(String text){
		return DigestUtils.md5Hex(text);
	}
}
