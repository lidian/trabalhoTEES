package app.controllers;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;

public class CodigoControllerTest {

	@Test public void fakeTest() {
		assertNotNull("put something real.", new CodigoController(null, null, null));
 	}
}
