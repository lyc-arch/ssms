package com.how2java.mapper;

import com.how2java.pojo.HllcPost;

import java.util.List;
import java.util.Map;

public interface PositionMapper {

    //查询部门信息
    List<HllcPost> listPosition();

    void deletePosition(int id);

    int findAllCout();

    List<HllcPost> list(Map<String, Object> parm);

    List<HllcPost> findPosition(Map<String, Object> map);

    int findPositionCount(String content);

    void savaPosition(HllcPost hllcPost);
}
