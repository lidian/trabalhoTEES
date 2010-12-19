package app.repositories;

import java.util.List;

import app.models.Codigo;

public interface CodigoRepository {
	/*
	 * Delete the methods you don't want to expose
	 */
	 
	void create(Codigo entity);
	
	void update(Codigo entity);
	
	void destroy(Codigo entity);
	
	Codigo find(Long id);
	
	List<Codigo> findAll();

}
