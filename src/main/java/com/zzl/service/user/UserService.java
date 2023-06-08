package com.zzl.service.user;

import com.zzl.pojo.User;

public interface UserService {


    User userLogin(String username, String password);

    int updatePassword(String password);
    int addUser(User user);
}
