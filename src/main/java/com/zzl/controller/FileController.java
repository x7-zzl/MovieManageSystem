package com.zzl.controller;

import com.zzl.pojo.Movie;
import com.zzl.service.Movie.MovieService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
public class FileController {
    @Resource
    private MovieService movieService;
    private Movie movie = new Movie();
   
    @RequestMapping("/addMovie")
    public String AddMovie(String name,String type, String synopsis){
        movie.setName(name);
        movie.setSynopsis(synopsis);
        movie.setType(type);
        movieService.addMovie(movie);
        return "redirect:/movieList.html";
    }




}

