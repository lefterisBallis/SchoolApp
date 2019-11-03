
package dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import model.Trainer;
import org.springframework.stereotype.Repository;

@Repository     //--------Annotation gia dao----------
public class TrainerDao {
    
    //Injectcted database connection:
    @PersistenceContext
    private EntityManager em;

@Transactional    //--------Annotation gia tis methodous pou peirazoun th vash----------
public void insert(Trainer trainer){
    em.persist(trainer);
}

@Transactional
public List<Trainer> getTrainerList(){
    List<Trainer> result = em.createNamedQuery("Trainer.findAll").getResultList();
    return result;
}







}
