package com.zzl.dao.user;

import com.zzl.pojo.User;

public interface UserMapper {

    User getLoginUser(String username);

    int updatePassword(String password);
    int addUser(User user);
}
