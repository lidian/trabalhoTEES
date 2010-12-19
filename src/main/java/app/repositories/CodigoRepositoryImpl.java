package app.repositories;

import javax.persistence.EntityManager;

import br.com.caelum.vraptor.ioc.Component;
import app.models.Codigo;

@Component
public class CodigoRepositoryImpl 
    extends Repository<Codigo, Long>
    implements CodigoRepository {

	public CodigoRepositoryImpl(EntityManager entityManager) {
		super(entityManager);
	}
}
