package fr.synapsegaming.stats.service.impl;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fr.synapsegaming.media.dao.ArticleDao;
import fr.synapsegaming.media.service.impl.ArticleServiceImpl;
import fr.synapsegaming.stats.service.StatsService;
import fr.synapsegaming.user.dao.ClazzDao;
import fr.synapsegaming.user.dao.RaceDao;
import fr.synapsegaming.user.dao.SpecializationDao;
import fr.synapsegaming.user.dao.UserDao;
import fr.synapsegaming.user.entity.Clazz;
import fr.synapsegaming.user.entity.Race;
import fr.synapsegaming.user.entity.Specialization;
import fr.synapsegaming.user.entity.User;

@Service("StatService")
@Transactional
public class StatsServiceImpl implements StatsService{

	 private static final int TOP_5 = 5;
	 private static final Logger LOGGER = Logger
	            .getLogger(ArticleServiceImpl.class);

    @Autowired
    private UserDao userDao;
    
    @Autowired
    private ClazzDao clazzDao;
    
    @Autowired
    private SpecializationDao specificazionDao;
    
    @Autowired
    private RaceDao raceDao;
	
	@Override
	public List<Clazz> getFiveClazzMostPlayed() {
		// TODO Auto-generated method stub
		return clazzDao.listClassMostPlayed(TOP_5);
	}

	@Override
	public List<Race> getFiveRaceMostPlayed() {
		return raceDao.listRaceMostPlayed(TOP_5);
	}

	@Override
	public List<Specialization> getFiveSpecializationMostPlayed() {
		return specificazionDao.getSpecializationMostPlayed(TOP_5);
	}

	@Override
	public List<User> getUsersWithoutAvatar() {
		return userDao.listUsersWithoutAvatar();
	}

	@Override
	public List<User> getFiveUsersMostActive() {
		return userDao.listUsersMostActive(TOP_5);
	}

}
