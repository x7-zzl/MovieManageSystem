package com.zzl.dao.type;

import com.zzl.pojo.MovieType;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MovieTypeMapper {
    MovieType getType(@Param("type") String type);

    List<MovieType> getTypeList();

    int deleteMovieTypeByType(@Param("type")String type);

    int addMovie(String type);

    int updateMovie(@Param("id") Integer id,@Param("type") String type);
}
