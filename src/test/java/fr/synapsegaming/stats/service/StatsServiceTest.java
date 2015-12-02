package fr.synapsegaming.stats.service;

import static org.junit.Assert.*;

import org.apache.commons.collections.CollectionUtils;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import fr.synapsegaming.commons.service.AbstractServiceTest;
import junit.framework.Assert;

public class StatsServiceTest extends AbstractServiceTest {
	
	private static final int TOP_5 = 5;
	
	@Autowired
	StatsService statsService;
	
	@Test
    public void testGetFiveClazzMostPlayed() {
		assertEquals(statsService.getFiveClazzMostPlayed().size(), TOP_5);
    }
	
	@Test
    public void testGetFiveRaceMostPlayed() {
		assertEquals(statsService.getFiveRaceMostPlayed().size(), TOP_5);
    }
	
	
	@Test
    public void testGetSpecializationMostPlayed() {
		assertEquals(statsService.getFiveSpecializationMostPlayed().size(), TOP_5);
    }
	
	@Test
    public void testGetUsersWithoutAvatar() {
		assertTrue(CollectionUtils.isNotEmpty(statsService.getUsersWithoutAvatar()));
	}
	
	@Test
    public void testGetFiveUsersMostActive() {
		assertEquals(statsService.getFiveUsersMostActive().size(), TOP_5);
    }
}
