package com.zzl.service.type;

import com.zzl.pojo.MovieType;

import java.util.List;

public interface MovieTypeService {

    List<MovieType> getMovieTypeList();

    MovieType getMovieType(String type);

    boolean deleteMovieTypeByType(String type);

    boolean addMovieType(String type);

    boolean updateMovieType(Integer id,String type);
}
