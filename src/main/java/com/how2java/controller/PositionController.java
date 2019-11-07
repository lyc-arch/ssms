package com.how2java.controller;


import com.how2java.pojo.HllcPost;
import com.how2java.service.PositionService;
import com.how2java.util.PageHolder;
import com.how2java.util.ResultData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.text.SimpleDateFormat;
import java.util.*;

/*
 * @author lyc
 * @time 2019/7/7
 *
 *
 *
 * */

@Controller
@RequestMapping("")
public class PositionController {

    @Autowired
    private PositionService positionService;


    /*
    * 刚进入部门页面的信息
    * param:curPage(curPage)
    *
    *
    *
    *
    * */
    @RequestMapping("listPosition/{curPage}/{pageNum}")
    public ModelAndView listPosition(@PathVariable int curPage,@PathVariable int pageNum){


        ModelAndView mav = new ModelAndView();
        int total = positionService.findAllCount();
        PageHolder<HllcPost> pageHolder = new PageHolder<HllcPost>(curPage,pageNum,total);
        int offset = pageHolder.getOffset();
        Map<String,Object> parm = new LinkedHashMap<String,Object>();
        parm.put("offset",offset);
        parm.put("pageNum",pageNum);
        List<HllcPost> postList = positionService.list(parm);

        pageHolder.setData(postList);

        mav.addObject("pageHolder",pageHolder);
        mav.setViewName("/company_department.jsp");

        return mav;
    }



    //部门删除
    @ResponseBody
    @RequestMapping("deletePosition")
    public ResultData<Object> deletePostion(Integer poId){


         positionService.deletePosition(poId);

        return ResultData.success();
    }

    //部门查询
    @RequestMapping("selectPosition")
    @ResponseBody
    public ResultData<Object> selectPosition(@RequestParam(value = "content",required = false)String content,
                                             @RequestParam(value = "curPage",required = false) Integer curPage,
                                             @RequestParam(value = "pageNum",required = false) Integer pageNum){


        int  total = positionService.findPositionCount(content);
        PageHolder pageHolder =  new PageHolder(curPage,pageNum,total);
        Map<String,Object> map = new HashMap<String,Object>();
        map.put("content",content);
        map.put("pageNum",pageNum);
        map.put("offset",pageHolder.getOffset());
        List<HllcPost> list = positionService.findPosition(map);
        pageHolder.setData(list);

        return ResultData.success(pageHolder);
    }

    //增加部门
    @RequestMapping("savePosition")
    @ResponseBody
    public ResultData<Object> savePosition(HllcPost hllcPost){

        Date date = new Date();
        SimpleDateFormat dateFormat= new SimpleDateFormat("yyyy-MM-dd");
        String s = dateFormat.format(date);
        hllcPost.setPoDate(s);
        positionService.savaPosition(hllcPost);


        return ResultData.success();
    }
}
