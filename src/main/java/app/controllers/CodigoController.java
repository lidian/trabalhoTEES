package app.controllers;

import java.util.ArrayList;
import java.util.List;

import app.models.Codigo;
import app.repositories.CodigoRepository;
import br.com.caelum.vraptor.Delete;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Put;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;
import br.com.caelum.vraptor.validator.Validations;

@Resource
public class CodigoController {

	private final Result result;
	private final CodigoRepository repository;
	private final Validator validator;
	
	public CodigoController(Result result, CodigoRepository repository, Validator validator) {
		this.result = result;
		this.repository = repository;
		this.validator = validator;
	}
	
	@Get
	@Path("/codigos")
	public List<Codigo> index() {
		return repository.findAll();
	}
	
	@Post
	@Path("/codigos")
	public void create(Codigo codigo) {
		validator.validate(codigo);
		/*
		validator.checking(new Validations(){{
	        that(!codigo.getNome().isEmpty(), "error","nomeIsRequired");
	    }});
		*/
		validator.onErrorUsePageOf(this).newCodigo();
		
		repository.create(codigo);
		result.redirectTo(this).index();
	}
	
	@Get
	@Path("/codigos/new")
	public Codigo newCodigo() {
		return new Codigo();
	}
	
	@Put
	@Path("/codigos")
	public void update(Codigo codigo) {
		validator.validate(codigo);
		validator.onErrorUsePageOf(this).edit(codigo);
		repository.update(codigo);
		result.redirectTo(this).index();
	}
	
	@Get
	@Path("/codigos/{codigo.id}/edit")
	public Codigo edit(Codigo codigo) {
		return repository.find(codigo.getId());
	}

	@Get
	@Path("/codigos/{codigo.id}")
	public Codigo show(Codigo codigo) {
		return repository.find(codigo.getId());
	}

	@Delete
	@Path("/codigos/{codigo.id}")
	public void destroy(Codigo codigo) {
		repository.destroy(repository.find(codigo.getId()));
		result.redirectTo(this).index();  
	}
	
}
