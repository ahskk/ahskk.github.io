package com.hsk.controller;

import com.alibaba.fastjson.JSON;
import com.hsk.dto.Category;
import com.hsk.service.impl.CategoryServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/category")
public class CategoryController {
    //    自动注入
    @Autowired
    CategoryServiceImpl csi;

    //    请求映射
    @RequestMapping("/manage")  //HandlerMapping
//    @ResponseBody
    public String doManage(Model model) throws SQLException {
        Map queryMap = new HashMap();
        List<Category> list = csi.findByProp(queryMap);
        System.out.println(list);
        Map map = new HashMap();
        map.put("success", true);
        map.put("data", list);
        map.put("status", 200);
//        将数据添加到域对象
        model.addAttribute("content",map);
        return "/category/manage";//
//        return JSON.toJSONString(map);
    }

    @RequestMapping("/getData")  //HandlerMapping
    @ResponseBody
    public String getData() throws SQLException {
        Map queryMap = new HashMap();
        List<Category> list = csi.findByProp(queryMap);
        Map map = new HashMap();
//        map.put("success", true);
        map.put("data", list);
//        map.put("status", 200);
//        将数据添加到域对象
//        model.addAttribute("content",map);
//        return "/category/manage";//
        System.out.println(JSON.toJSONString(map));
        return JSON.toJSONString(map);
    }

    @RequestMapping("/doFindByOneId") //HandlerMapping
    @ResponseBody
    public String doFindByOneId(String category_id,Model model) throws SQLException {
//        查找对象
        Category category= csi.findOneById(category_id);
        Map map = new HashMap();
        map.put("category",category);
//        System.out.println(category);
        //        将数据添加到域对象
//        model.addAttribute("category",category);
//        return "/category/editUI";
        return JSON.toJSONString(map);
    }

    @RequestMapping("/findByProp")
    @ResponseBody
    public String doFindByProp(String category_id, Model model) throws SQLException {
        Map map = new HashMap();
        map.put("category_id",category_id);
        System.out.println(category_id);
        List<Category> list = csi.findByProp(map);
//        生成HashMap对象
        Map map1 = new HashMap();
//        map1.put("status", 200);
//        map1.put("success", true);
        map1.put("data", list);
//        将集合数据转换成json字符串
        System.out.println(list);
        return JSON.toJSONString(map1);
//        model.addAttribute("content",map1);
//        return "/category/manage";
    }

    @RequestMapping("/toManage_main")
    public String toManage_main(){
        return "/manager1/manage_main";
    }

    @RequestMapping("/toEdit")
    public String toEdit() {
        return "category/editUI";
    }

    @RequestMapping("/toEdit/{category_id}")
    public String FindByOneId(@PathVariable String category_id, Model model) throws SQLException {
        Category category = csi.findOneById(category_id);
        System.out.println(category);
        model.addAttribute("category", category);
        return "category/editUI";
    }

    @RequestMapping("/doUpdate")
    public String doUpdate(Category category) throws SQLException {
        System.out.println(category);
        if (category.getCategory_id().equals("")) {
            csi.add(category);
        } else {
            csi.update(category);
        }
        return "redirect:/category/manage";
    }

    @RequestMapping("/delete/{category_id}")
    public String doDelete(@PathVariable String category_id) throws SQLException {
        csi.delete(category_id);
        return "redirect:/category/manage";
    }
}
