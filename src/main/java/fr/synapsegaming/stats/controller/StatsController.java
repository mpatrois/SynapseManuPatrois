package fr.synapsegaming.stats.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import fr.synapsegaming.commons.controller.AbstractController;
import fr.synapsegaming.media.service.ArticleService;
import fr.synapsegaming.stats.service.StatsService;

/**
* <b>StatsController</b> route every action made from the "Stats" page
* 
* @author PATROIS_VINCENT
* 
*/
@Controller("StatsController")
@SessionAttributes(value = { "resources", "userResources" })
@RequestMapping("/stats")
public class StatsController extends AbstractController{
	
	private static final String PROMS_HTTP_ATTRIBUTE = null;
	
	@Autowired
    private StatsService statsService;

	@RequestMapping(method = RequestMethod.GET)
    public ModelAndView stats() {
         page = new ModelAndView("Stats");
		 page.addObject("userWithoutAvatar",statsService.getUsersWithoutAvatar());
         page.addObject("fiveClazzMostPlayed",statsService.getFiveClazzMostPlayed());
         page.addObject("fiveRaceMostPlayed",statsService.getFiveRaceMostPlayed());
         page.addObject("fiveSpecializationMostPlayed",statsService.getFiveSpecializationMostPlayed());
         page.addObject("fiveUserMostActive",statsService.getFiveUsersMostActive());
         return page;
        }    
}
