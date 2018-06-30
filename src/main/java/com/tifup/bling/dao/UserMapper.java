package com.tifup.bling.dao;

import com.tifup.bling.model.UserModel;
import org.apache.ibatis.annotations.*;

@Mapper
public interface UserMapper {

    @Select(" SELECT * FROM user WHERE user_id=#{user_id} ")
    UserModel get(int user_id);

    @Select(" SELECT user_id FROM user WHERE username=#{username} ")
    int findName(String username);

    @Select(" SELECT count(*) FROM user WHERE username=#{username} ")
    int countName(String username);

    @Insert( " INSERT INTO user ( intime,ontime,status,username,password,email,mobile,roles,photo )" +
            " values( #{intime},#{ontime},#{status},#{username},#{password},#{email},#{mobile},#{roles},#{photo} )  " )
//    @SelectKey(statement="call identity()", keyProperty="user_id", before=false, resultType=int.class)
    @Options(useGeneratedKeys = true, keyProperty = "user_id", keyColumn = "user_id")
    int insert( UserModel userModel );

    @Update( " UPDATE user SET ( intime=#{intime}, ontime=#{ontime}, status=#{status}, username=#{username}, password=#{password}, email=#{email}, mobile=#{mobile}, roles=#{roles}, photo=#{photo} ) " )
    int update( UserModel userModel );

}
