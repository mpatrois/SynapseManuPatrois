package fr.synapsegaming.user.dao.impl;

import java.util.Collections;
import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import fr.synapsegaming.commons.dao.AbstractDao;
import fr.synapsegaming.user.dao.RaceDao;
import fr.synapsegaming.user.entity.Clazz;
import fr.synapsegaming.user.entity.Race;

@Repository("RaceDao")
public class RaceDaoImpl extends AbstractDao<Race, Long> implements RaceDao {
	
	private static final Logger LOGGER = Logger.getLogger(RaceDaoImpl.class);
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Race> listRaceMostPlayed(int nbRace) {
		Session session = this.getSession();
        try {
        	
        	Query query = session.createQuery("from Race r order by size(r.users) desc");
//            Query query = session.createSQLQuery("SELECT races.* FROM users INNER JOIN races ON races.id_race = users.id_race GROUP BY id_race ORDER BY COUNT( * ) DESC ").addEntity(Race.class);
            query.setMaxResults(nbRace);
            return query.list();
        } catch (Exception e) {
            LOGGER.warn(e);
            return Collections.emptyList();
        } finally {
            session.close();
        }
	}

	
}
