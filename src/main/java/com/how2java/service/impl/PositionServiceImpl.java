package com.how2java.service.impl;

import com.how2java.mapper.PositionMapper;
import com.how2java.pojo.HllcPost;
import com.how2java.service.PositionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service

public class PositionServiceImpl implements PositionService {


    @Autowired
    private PositionMapper positionMapper;


    @Override
    public int findAllCount() {
        return positionMapper.findAllCout();
    }


    public List<HllcPost> list() {
        List<HllcPost> po = positionMapper.listPosition();

        return po;
    }

    @Override
    public void deletePosition(int id) {

       this.positionMapper.deletePosition(id);

    }

    @Override
    public List<HllcPost> list(Map<String, Object> parm) {
        return positionMapper.list(parm);
    }

    @Override
    public List<HllcPost> findPosition(Map<String,Object> map) {
        return positionMapper.findPosition(map);
    }

    @Override
    public int findPositionCount(String content) {
        return positionMapper.findPositionCount(content);
    }

    @Override
    public void savaPosition(HllcPost hllcPost) {
        positionMapper.savaPosition(hllcPost);
    }
}
