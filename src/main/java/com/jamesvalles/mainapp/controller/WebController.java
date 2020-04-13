package com.jamesvalles.mainapp.controller;


import com.jamesvalles.mainapp.model.Posts;
import com.jamesvalles.mainapp.model.PostsList;
import com.oracle.javafx.jmx.json.JSONDocument;
import com.oracle.javafx.jmx.json.JSONReader;
import java.util.logging.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class WebController {

  Logger logger = Logger.getLogger(WebController.class.getName());



  //connect with microservice
  @RequestMapping("/")
  public ModelAndView totalInfo(){
    logger.info("Connecting to microservice.");
    ModelAndView modelAndView =new ModelAndView("index");
    RestTemplate restTemplate = new RestTemplate();
    Object total = restTemplate.getForObject("https://covidtracking.com/api/v1/us/current.json",Object.class);
    Object state = restTemplate.getForObject("https://covidtracking.com/api/v1/states/current.json",Object.class);
    modelAndView.addObject("totalInfo",total);
    modelAndView.addObject("stateInfo", state);
    return modelAndView;

  }
}
