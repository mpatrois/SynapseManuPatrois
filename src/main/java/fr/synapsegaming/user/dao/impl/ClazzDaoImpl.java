package fr.synapsegaming.user.dao.impl;

import java.util.Collections;
import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import fr.synapsegaming.commons.dao.AbstractDao;
import fr.synapsegaming.user.dao.ClazzDao;
import fr.synapsegaming.user.dao.UserDao;
import fr.synapsegaming.user.entity.Clazz;

@Repository("ClazzDao")
public class ClazzDaoImpl extends AbstractDao<Clazz, Long> implements ClazzDao {

    /**
     * The logger
     */
    private static final Logger LOGGER = Logger.getLogger(ClazzDaoImpl.class);

    /**
     * {@inheritDoc}
     */
    @SuppressWarnings("unchecked")
    @Override
    public List<Clazz> listClassForRace(long idRace) {
        Session session = this.getSession();
        try {
            Query query = session.createQuery("from Clazz c join fetch c.raceClasses rc join fetch rc.race r where r.id = :idRace");
            query.setParameter("idRace", idRace);
            return query.list();
        } catch (Exception e) {
            LOGGER.warn(e);
            LOGGER.warn("Pas de race saisie");
            return Collections.emptyList();
        } finally {
            session.close();
        }

    }

    
    @SuppressWarnings("unchecked")
	@Override
	public List<Clazz> listClassMostPlayed(int nbClazz) {
		Session session = this.getSession();
        try {
        	
//        	SELECT * 
//        	FROM classes
//        	INNER JOIN users ON classes.id_class = users.id_class
//        	GROUP BY classes.id_class
//        	ORDER BY COUNT( classes.id_class ) DESC 
        	
//        	Query query = session.createQuery("select new Persons(count(*) as cnt, p.id, p.name, p.city) group by p.city order by count(*);");
//        	FROM School s 
//        	ORDER BY (
//        	  SELECT count(st) FROM Student st WHERE s.ID = st.School.ID 
//        	)
//        	Query query = session.createQuery("from Clazz c order by size(c.users)");
//            Query query = session.createQuery("from Clazz c order by size(c.users)");
            Query query = session.createSQLQuery("SELECT classes.* FROM users INNER JOIN classes ON classes.id_class = users.id_class GROUP BY id_class ORDER BY COUNT( * ) DESC ").addEntity(Clazz.class);
//        	Query query = session.createQuery("from Clazz c order by size(c.users)");
//            Query query = session.createQuery("from Clazz c join fetch c.users cu join fetch cu.id r where r.id = :idRace");
//            from Clazz c join fetch c.raceClasses rc join fetch rc.race r where r.id = :idRace
        	
//        	Query query = session.createQuery("from Clazz c order (SELECT count(st) FROM Clazz st WHERE s.id = st.School.id )");
            query.setMaxResults(nbClazz);
            return query.list();
        } catch (Exception e) {
            LOGGER.warn(e);
            return Collections.emptyList();
        } finally {
            session.close();
        }
	}

}
