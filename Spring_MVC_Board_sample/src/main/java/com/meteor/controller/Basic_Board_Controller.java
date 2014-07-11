package com.meteor.controller;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;





import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.meteor.bbs.BBS_wrapper;
import com.meteor.bbs.Default_bbs;

/**
 * url mapping
 * 
 * GET
 * board_name : list_view
 * board_name?type=board_write : board_write
 * board_name/b_id : board_read
 * board_name/b_id?type=board_modify : board_modify
 * POST
 * board_name?type=board_write : board write process
 * board_name/bid?type:board_remove : board remove process
 * board_name/bid?type:comment_write : board comment write process
 * board_name/bid?type:comment_delete : board comment write process
 *  
 *   
 * @author kimunseok
 *
 */


@Controller
@RequestMapping(value = "/basic_board")
public class Basic_Board_Controller {
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		BBS_wrapper bbs_wrapper = new BBS_wrapper();
		
		ArrayList<Default_bbs> bbs_list = new ArrayList<Default_bbs>();
		
		bbs_list.add( new Default_bbs( 0, "title", "writor", "2014-06-20 15:09", 1002) );
		bbs_list.add( new Default_bbs( 1, "title", "writor", "2014-06-20 15:09", 1002) );
		bbs_list.add( new Default_bbs( 2, "title", "writor", "2014-06-20 15:09", 1002) );
		
		bbs_wrapper.setB_list( bbs_list ); 
		
		model.addAttribute("blst", bbs_wrapper.getB_list() );
		
		bbs_wrapper.setPageTotal( 10 );
		bbs_wrapper.setNow_page( 1 );
		
		model.addAttribute("Pg_nate", bbs_wrapper );
		
		return "basic_board_list";
	}
	@RequestMapping(value = "11", method = RequestMethod.GET)
	public String sample_page(Locale locale, Model model) {
		
		//model.addAttribute("Pg_nate", bbs_wrapper );
		
		return "basic_board_editor";
	}
	

}
