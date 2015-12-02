package fr.synapsegaming.stats.service;

import java.util.List;

import fr.synapsegaming.user.entity.Clazz;
import fr.synapsegaming.user.entity.Race;
import fr.synapsegaming.user.entity.Specialization;
import fr.synapsegaming.user.entity.User;

/**
 * <b>StatsService</b> is the public interface for Stats
 * 
 * @author Patrois_Vincent
 * 
 */
public interface StatsService {
	
	/**
     * List the top 5 clazzs most played
     * 
     * @return a list of Clazz
     */
	public List<Clazz> getFiveClazzMostPlayed();
	
	
	/**
     * List the top 5 races most played
     * 
     * @return a list of Race
     */
	public List<Race> getFiveRaceMostPlayed();
	
	
	/**
     * List the top 5 specialization most played
     * 
     * @return a list of Specialization
     */
	public List<Specialization> getFiveSpecializationMostPlayed();
	
	
	/**
     * List all the users without Avatar
     * 
     * @return a list of User
     */
	public List<User> getUsersWithoutAvatar();
	
	
	/**
     * List the top 5 most active users
     * 
     * @return a list of User
     */
	public List<User> getFiveUsersMostActive();
	
	
}
