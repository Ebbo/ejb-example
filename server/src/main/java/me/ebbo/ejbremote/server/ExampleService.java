package me.ebbo.ejbremote.server;

import java.util.Map;

import javax.ejb.Remote;

/**
 * Remote interface for {@link ExampleService}.
 * 
 * @author Ebbo
 *
 */
@Remote
public interface ExampleService {

	/**
	 * Say Name
	 * 
	 * @param name
	 * @return "Hello $name!"
	 */
	public String greet(String name);

	/**
	 * Get the system properties from the server.
	 * 
	 * @return system properties as map
	 */
	public Map<Object, Object> getSystemProperties();

}
