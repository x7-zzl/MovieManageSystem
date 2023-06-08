package com.zzl.service.user;

import com.zzl.dao.user.UserMapper;
import com.zzl.pojo.User;

public class UserServiceImpl implements UserService {

    private UserMapper userMapper;

    public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    @Override
    public User userLogin(String username, String password) {
        User user = null;
        user =  userMapper.getLoginUser(username);
        if(null != user){
            if(!user.getPassword().equals(password))
                user = null;
        }
        return user;
    }

    @Override
    public int updatePassword(String password) {
        return userMapper.updatePassword(password);
    }

    @Override
    public int addUser(User user) {
        return userMapper.addUser(user);
    }
}
