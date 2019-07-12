package com.saipeng.controller;

import com.saipeng.pojo.Person;
import com.saipeng.service.PersonService;
import com.saipeng.utils.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/per")
public class PersonController {
    @Autowired
    private PersonService  personService;

    @RequestMapping("/getList")
    public String getList(HttpServletRequest request,@RequestParam(defaultValue="1",value = "page")Integer page,
                          Person per){

        Map<Object, Object> map = new HashMap<Object,Object>();
        /*
         * page(HttpServletRequest request,
         * String url,
         *  Integer pageSize,
         *   List<?> list,
         *   Integer listCount,
         *  Integer page,
         *  Map<?, ?> searchMap
         */
        String url="/per/getList";
        Integer pageSize=2;
        Integer startIndex=(page-1)*pageSize;
        map.put("startIndex",startIndex);
        map.put("pageSize",pageSize);

        if(per.getName()!=null && !"".equals(per.getName().trim())){
            map.put("name",per.getName().trim());
        }

        List<Person> listPerson=personService.getConditionPersonListByMap(map);
        System.out.println(listPerson);

        Integer listCount=personService.getConditionPersonCountByMap(map);
        System.out.println(listCount);
        if(per.getName()!=null){
            request.setAttribute("name",per.getName().trim());
        }
        PageUtil.page(request,url,pageSize,listPerson,listCount,page,map);

        return "list";
    }

    @RequestMapping("/toAdd")
    public String toAdd(){
        return "add";
    }

    @RequestMapping("/save")
    public String save(Person per){
        personService.addOnePerson(per);
        return "redirect:getList";
    }
    //查看
    @RequestMapping("/tolook")
    public String tolook(String id, Model model){
       Person per=personService.getById(id);
        model.addAttribute("per",per);
        return "upon";
    }

}
