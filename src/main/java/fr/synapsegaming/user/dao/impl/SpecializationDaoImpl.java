package fr.synapsegaming.user.dao.impl;

import java.util.Collections;
import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import fr.synapsegaming.commons.dao.AbstractDao;
import fr.synapsegaming.user.dao.SpecializationDao;
import fr.synapsegaming.user.entity.Race;
import fr.synapsegaming.user.entity.Specialization;

@Repository("SpecializationDao")
public class SpecializationDaoImpl extends AbstractDao<Specialization, Long>
implements SpecializationDao {

    /**
     * The logger
     */
    private static final Logger LOGGER = Logger
            .getLogger(SpecializationDaoImpl.class);

    /**
     * {@inheritDoc}
     */
    @SuppressWarnings("unchecked")
    @Override
    public List<Specialization> listSpecsForClass(long idClass) {
        Session session = this.getSession();
        try {
            Query query = session
                    .createQuery("from Specialization s join fetch s.clazz c where c.id = :idClass");
            query.setParameter("idClass", idClass);
            return query.list();
        } catch (Exception e) {
            LOGGER.warn(e);
            LOGGER.warn("Pas de classe saisie");
            return Collections.emptyList();
        } finally {
            session.close();
        }
    }

    @SuppressWarnings("unchecked")
	@Override
	public List<Specialization> getSpecializationMostPlayed(int nbSpecialization) {
		Session session = this.getSession();
        try {
        	Query query = session.createQuery("from Specialization s order by size(s.users) desc");
//            Query query = session.createSQLQuery("SELECT specializations.* FROM users INNER JOIN specializations ON specializations.id_spec = users.id_spec GROUP BY id_spec ORDER BY COUNT( * ) DESC ").addEntity(Specialization.class);
            query.setMaxResults(nbSpecialization);
            return query.list();
        } catch (Exception e) {
            LOGGER.warn(e);
            return Collections.emptyList();
        } finally {
            session.close();
        }
	}
}
