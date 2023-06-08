package com.zzl.service.Movie;

import com.zzl.dao.movie.MovieMapper;
import com.zzl.pojo.Movie;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;


@Service
public class MovieServiceImpl implements MovieService{
    public static void main(String[] args) {

    }
    @Resource
    private MovieMapper movieMapper;

    @Override
    public List<Movie> getMovieList() {
        return movieMapper.getMovieList();
    }

    @Override
    public List<Movie> getMovieByNameOrType(String name, String type) {
        return movieMapper.getMovieByNameOrType(name,type);
    }

    @Override
    public Movie getMovie(Integer id) {
        return movieMapper.getMovieById(id);
    }

    @Override
    public boolean deleteMovieById(Integer id) {
        boolean flag = false;
        if(movieMapper.deleteMovieById(id) > 0)
            flag = true;
        return flag;
    }

    @Override
    public boolean addMovie(Movie movie) {
        boolean flag = false;
        if(movieMapper.addMovie(movie) > 0)
            flag = true;
        return flag;
    }

    @Override
    public boolean updateMovie(Movie movie) {
        boolean flag = false;
        if(movieMapper.updateMovie(movie) > 0)
            flag = true;
        return flag;
    }
}
