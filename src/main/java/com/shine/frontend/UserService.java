package com.shine.frontend;


import com.shine.frontend.model.User;

public interface UserService {
    void save(User user);

    User findByUsername(String username);
}
