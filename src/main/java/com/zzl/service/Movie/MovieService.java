package com.zzl.service.Movie;

import com.zzl.pojo.Movie;

import java.util.List;

public interface MovieService {

    List<Movie> getMovieList();

    List<Movie> getMovieByNameOrType(String name, String type);

    Movie getMovie(Integer id);

    boolean deleteMovieById(Integer id);

    boolean addMovie(Movie movie);

    boolean updateMovie(Movie movie);


}
