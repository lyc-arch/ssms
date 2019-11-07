package com.how2java.service;


import com.how2java.pojo.HllcPost;

import java.util.List;
import java.util.Map;

public interface PositionService {
     
    
    int findAllCount();


    List<HllcPost> list();

    void deletePosition(int id);

    List<HllcPost> list(Map<String, Object> parm);

    List<HllcPost> findPosition(Map<String, Object> map);

    int findPositionCount(String content);

    void savaPosition(HllcPost hllcPost);
}
