/**
 * 
 */
package com.inf.data;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

/**
 * @author tntan
 *
 */
@JsonIgnoreProperties(ignoreUnknown=true)
public class Result {
	private final boolean success;
	
	public Result(boolean success){
		this.success = success;
	}

	/**
	 * @return the success
	 */
	public boolean isSuccess() {
		return success;
	}
}
