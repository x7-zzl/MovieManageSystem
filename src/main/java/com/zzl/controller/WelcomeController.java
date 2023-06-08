package com.zzl.controller;

import com.zzl.pojo.Movie;
import com.zzl.pojo.MovieType;
import com.zzl.pojo.NewType;
import com.zzl.pojo.News;
import com.zzl.service.Movie.MovieService;
import com.zzl.service.News.NewsService;
import com.zzl.service.type.MovieTypeService;
import com.zzl.service.type.NewTypeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class WelcomeController {
    @Resource
    private NewTypeService newTypeService;
    public int getNewTypeCount(){
        List<NewType> newTypeList = newTypeService.getNewTypeList();
        return newTypeList.size();
    }

    @Resource
    private NewsService newsService;
    public int getNewsCount(){
        List<News> newsList = newsService.getNewsList();
        return newsList.size();
    }
    @Resource
    private MovieTypeService movieTypeService;
    public int getMovieTypeCount(){
        List<MovieType> movieTypeList = movieTypeService.getMovieTypeList();
        return movieTypeList.size();
    }
    @Resource
    private MovieService movieService;
    public int getMoviesCount(){
        List<Movie> movieList = movieService.getMovieList();
        return movieList.size();
    }


    @RequestMapping("welcome")
    public String welcome(HttpSession session, Model model){
        model.addAttribute("newsCount",getNewsCount());
        model.addAttribute("moviesCount",getMoviesCount());
        model.addAttribute("movieTypeCount",getMovieTypeCount());
        model.addAttribute("newsTypeCount",getNewTypeCount());
        return "welcome";
    }

}
