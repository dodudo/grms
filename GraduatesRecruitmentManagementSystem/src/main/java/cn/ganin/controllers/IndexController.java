package cn.ganin.controllers;

import cn.ganin.common.ServiceResponses;
import cn.ganin.pojo.enterprise;
import cn.ganin.services.SerarchPosition;

import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * @Author agamgn
 * @Date 2019-05-11
 **/
@Controller
@RequestMapping("/index/")
public class IndexController {


    @Autowired
    private SerarchPosition serarchPosition;

    /**
     * 首页
     * @return
     */
    @RequestMapping("home")
    public String index(HttpServletRequest request){
        String s="";
        HttpSession session = request.getSession();
        return "/home";
    }

    /**
     * 搜索页
     * @param name
     * @return
     */
    @RequestMapping("search")
    public String search(String name,HttpServletRequest request){
        HttpSession session = request.getSession();
        System.out.println(session.getAttribute("StudentData"));
        return "/result";
    }

    /**
     * 搜索response
     * @param name
     * @param response
     * @return
     */
    @RequestMapping(value = "serarch.do",method = RequestMethod.GET)
    @ResponseBody
    public ServiceResponses<PageInfo> Search(String name,HttpServletResponse response){
        response.setHeader("Access-Control-Allow-Origin", "*");

        System.out.println("搜索：");
        System.out.println("name:"+name);
        if (name==null){
            return serarchPosition.serarchpositions();
        }
        return serarchPosition.serarchposition(name);

    }

    /**
     * 公司response
     * @param id
     * @return
     */
    @RequestMapping(value = "enterprise.do",method = RequestMethod.GET)
    @ResponseBody
    public ServiceResponses<enterprise> enterprise(int id){
        return null;
    }


    /**
     * 详情页
     * @return
     */
    @RequestMapping("detail")
    public String detail(){
        return "/detail";
    }

    /**
     * 详情页内容
     * @param id
     * @param response
     * @return
     */
    @RequestMapping(value = "details.do",method = RequestMethod.GET)
    @ResponseBody
    public ServiceResponses details(Integer id,HttpServletResponse response){
        response.setHeader("Access-Control-Allow-Origin", "*");
        System.out.println(id);
        return serarchPosition.details(id);
    }


    @RequestMapping(value = "apply.do",method = RequestMethod.GET)
    @ResponseBody
    public ServiceResponses apply(Integer stuid,Integer posiId,Integer enId,Integer resumeId,HttpServletResponse response){
        response.setHeader("Access-Control-Allow-Origin", "*");
        System.out.println(stuid+":::::"+posiId+":::::"+enId+":::"+resumeId);
        return serarchPosition.apply(posiId,stuid,enId,resumeId);
    }

    @RequestMapping(value = "position.do",method = RequestMethod.GET)
    @ResponseBody
    public ServiceResponses position(Integer stuid,HttpServletResponse response){
        response.setHeader("Access-Control-Allow-Origin", "*");
        return serarchPosition.position(stuid);
    }

}
