package com.how2java.test;


import com.how2java.pojo.HllcPost;
import com.how2java.service.PositionService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class PositionTest {

    @Autowired
    PositionService positionService;

    //测试部门列表
    @Test
    public void listtest(){

        List<HllcPost>  list = positionService.list();
    }

    //测试删除部门信息
    @Test
    public void deleteTest(){

        HllcPost hp = new HllcPost();
        hp.setPoId(1);
    }

    //测试查询部门信息
    @Test
    public void findtest(){

        String content = "3";
        int pageNum = 5;
        int offset = 1;
        Map<String,Object> map= new HashMap<String,Object>();
        map.put("content",content);
        map.put("pageNum",pageNum);
        map.put("offset",offset);

        positionService.findPosition(map);

    }

    //增加部门
    @Test
    public void addposition(){
        Date date = new Date();
        SimpleDateFormat dateFormat= new SimpleDateFormat("yyyy-MM-dd :hh:mm:ss");
        String s = dateFormat.format(date);
        System.out.println(s);


        HllcPost hllcPost = new HllcPost();
        hllcPost.setPoDate(s);
        hllcPost.setPoName("张三");
        hllcPost.setPoMessage("管理部门");
        positionService.savaPosition(hllcPost);
    }
}
