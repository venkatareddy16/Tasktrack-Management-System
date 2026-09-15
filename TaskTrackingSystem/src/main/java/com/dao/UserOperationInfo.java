package com.dao;

import com.model.UserModel;

public interface UserOperationInfo {
    boolean createUser(UserModel u);  //for registration of user
    boolean validateUser(String useremail,String userpassword); //for login the user to check the valid user is login
    String getUserFullName(String useremail);
}
