package fr.synapsegaming.stats.service;

import java.util.List;

import fr.synapsegaming.media.entity.Article;
import fr.synapsegaming.user.entity.Clazz;
import fr.synapsegaming.user.entity.Race;
import fr.synapsegaming.user.entity.Specialization;
import fr.synapsegaming.user.entity.User;

public interface StatsService {
	
	public List<Clazz> getFiveClazzMostPlayed();
	
	public List<Race> getFiveRaceMostPlayed();
	
	public List<Specialization> getFiveSpecializationMostPlayed();
	
	public List<User> getUsersWithoutAvatar();
	
	public List<User> getFiveUsersMostActive();
	
	
}
