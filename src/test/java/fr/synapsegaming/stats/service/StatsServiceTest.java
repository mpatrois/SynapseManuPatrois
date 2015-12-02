package fr.synapsegaming.stats.service;

import static org.junit.Assert.assertTrue;
import org.apache.commons.collections.CollectionUtils;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import fr.synapsegaming.commons.service.AbstractServiceTest;

public class StatsServiceTest extends AbstractServiceTest {
	
	private static final int TOP_5 = 5;
	
	@Autowired
	StatsService statsService;
	
	@Test
    public void testGetFiveClazzMostPlayed() {
		assertTrue(statsService.getFiveClazzMostPlayed().size() == TOP_5);
    }
	
	@Test
    public void testGetFiveRaceMostPlayed() {
		assertTrue(statsService.getFiveRaceMostPlayed().size() == TOP_5);
    }
	
	@Test
    public void testGetSpecializationMostPlayed() {
		assertTrue(statsService.getFiveSpecializationMostPlayed().size() == TOP_5);
    }
	
	@Test
    public void testGetUsersWithoutAvatar() {
		assertTrue(CollectionUtils.isNotEmpty(statsService.getUsersWithoutAvatar()));
    }
	
	@Test
    public void testGetFiveUsersMostActive() {
		assertTrue(statsService.getFiveUsersMostActive().size() == TOP_5);
    }
}
