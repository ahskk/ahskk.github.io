package com.hsk.controller;

import com.alibaba.fastjson.JSON;
import com.hsk.dto.User;
import com.hsk.service.impl.UserServiceImpl;
import com.hsk.util.Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    UserServiceImpl usi;

//    @RequestMapping("/toManage")
//    public String toManage(){
//        return "/user/manage";
//    }
    
    @RequestMapping("/manage") //HandlerMapping
//    @ResponseBody
    public String domanage(Model model) throws SQLException {
        java.util.Map queryMap = new HashMap();
        List<User> list = usi.findByProp(queryMap);
        java.util.Map map = new HashMap();
        map.put("success",true);
        map.put("data",list);
        map.put("status",200);
//        将数据添加到域对象
        model.addAttribute("content", map);
        //视图信息，根据视图解析规则拼接具体页面信息
        return "/user/manage";
//        return JSON.toJSONString(map);
    }

    @RequestMapping("/getData") //HandlerMapping
    @ResponseBody
    public String getData() throws SQLException {
        Map queryMap = new HashMap();
        List<User> list = usi.findByProp(queryMap);
        Map map = new HashMap();
//        map.put("success", true);
        map.put("data", list);
//        map.put("status", 200);
        return JSON.toJSONString(map);
    }

//    @RequestMapping("/add") //HandlerMapping
//    @ResponseBody
//    public String doAdd(User user) throws SQLException {
//        String page = "";
////        根据对象的id属性的值进行判断，如果没有，则添加
//        if (usi.add(user)) {
//            page = "redirect:/user/manage";
//        } else {
//            page = "/user/addUI";
//        }
//        return page;
//    }

    @RequestMapping("/delete/{user_id}")
    public String doDelete(@PathVariable String user_id) throws SQLException {
        usi.delete(user_id);
        return "redirect:/user/manage";
    }

    @RequestMapping("/doFindByOneId") //HandlerMapping
    @ResponseBody
    public String doFindByOneId(String id) throws SQLException {
//        查找对象
        User user= usi.findOneById(id);
        Map map = new HashMap();
//        System.out.println(user);
        map.put("user",user);
        return JSON.toJSONString(map);
    }
    
    @RequestMapping("/findByProp")
//    @ResponseBody
    public String doFindByProp(User user,
                               String beginDate,String endDate,Model model) throws SQLException {
        Map map = new HashMap();
        if(beginDate==""){
            map.put("beginDate",null);
        }else{
            map.put("beginDate",beginDate);
        }
        if(endDate==""){
            map.put("endDate",null);
        }else{
            map.put("endDate",endDate);
        }
        List<User> list = usi.findByProp(map);
//        生成HashMap对象
        Map map1 = new HashMap();
//        map1.put("status", 200);
//        map1.put("success", true);
        map1.put("data", list);
//        将集合数据转换成json字符串
//        return JSON.toJSONString(map1);
        model.addAttribute("content",map1);
        return "/user/manage";
    }

    @RequestMapping("/toLogin")
    public String toLogin(){
        return "/user/loginUI";
    }

    @RequestMapping("/login") //HandlerMapping
//    @ResponseBody
    public String doLogin(@RequestParam String username,
                          @RequestParam String password,
                          HttpSession session) throws SQLException, UnsupportedEncodingException, NoSuchAlgorithmException {
        java.util.Map map = new HashMap();
        map.put("username",username);
//        map.put("password",password);
        map.put("password",Utils.EncoderByMd5(password));
        User user = usi.login(map);
//        System.out.println(user);
        if(user != null){
            session.setAttribute("user",user);
            return "../../index";
        } else{
            return "/user/loginUI";
        }
//        if(usi.login(map)){
//            return "yes";
//        }else{
//            return "no";
//        }
    }

    @RequestMapping("/logOff") //HandlerMapping
//    @ResponseBody
    public String doLogOff(HttpSession session) throws SQLException{
//        java.util.Map map = new HashMap();
//        map.put("username",username);
//        map.put("password",password);
//        User user = usi.login(map);
//        System.out.println(user);
//        User user=(User)session.getAttribute("user");
//        if(user != null){
            session.removeAttribute("user");
            return "../../index";
//        } else{
//            return "/user/loginUI";
//        }
//        if(usi.login(map)){
//            return "yes";
//        }else{
//            return "no";
//        }
    }
//
//    @RequestMapping("/toManagerLogin")
//    public String toManagerLogin(){
//        return "/manager/login";
//    }

//    @RequestMapping("/managerLogin") //HandlerMapping
////    @ResponseBody
//    public String doManagerLogin(@RequestParam String username,
//                          @RequestParam String password,
//                          HttpSession session) throws SQLException, UnsupportedEncodingException, NoSuchAlgorithmException {
//        java.util.Map map = new HashMap();
//        map.put("username",username);
//        map.put("password",password);
//        User user = usi.login(map);
////        System.out.println(user);
//        if(user != null){
//            session.setAttribute("user",user);
//            return "/manager/manage_main";
//        } else{
//            return "/manager/login";
//        }
////        if(usi.login(map)){
////            return "yes";
////        }else{
////            return "no";
////        }
//    }

//    @RequestMapping("/isExist/{username}")
//    @ResponseBody
//    public String isExist(@PathVariable String username) throws SQLException {
//        java.util.Map map = new HashMap();
//        map.put("username", username);
//        if(usi.isExist(map)){
//            return "yes";
//        }else{
//            return "no";
//        }
//    }

    @RequestMapping("/isExist")
    @ResponseBody
    public String isExist(@RequestParam String username) throws SQLException {
        java.util.Map map = new HashMap();
        map.put("username", username);
//        Map map1 = new HashMap();
        if(usi.isExist(map)){
            return "yes";
        }else{
            return "no";
        }
//        System.out.println(map1);
//        JSON.toJSONString(map1);
    }
    
    @RequestMapping("/toRegiste")
    public String toRegiste() {
        return "user/registe";
    }
    
    @RequestMapping("/toEdit/{id}") //HandlerMapping
//    @ResponseBody
    public String FindByOneId(@PathVariable String id, Model model) throws SQLException {
        User user = usi.findOneById(id);
//        Map map = new HashMap();
//        map.put("success",true);
//        map.put("data",user);
//        map.put("status", 200);
        model.addAttribute("user", user);
        return "user/editUI";
//        return JSON.toJSONString(map);
    }

    @PostMapping("/doRegiste")
    public String doRegiste(User user,Model model) throws SQLException, UnsupportedEncodingException, NoSuchAlgorithmException {
        System.out.println(user);
        user.setPassword(Utils.EncoderByMd5(user.getPassword()));
        usi.add(user);
        model.addAttribute("user", user);
        return "../../index";
    }

    @PostMapping("/doUpdate")
    public String doUpdate(User user) throws SQLException, IOException, NoSuchAlgorithmException {
////        获取user对象原图片名称
//        String originalFilename = user.getLogo();
//        // 判断所上传文件是否存在
//        MultipartFile file = uploadfile.get(0);
////      file.getOriginalFilename().equals("")表示没有修改或选择图片
//        if (!file.getOriginalFilename().equals("")) {
////         获取上传文件的原始名称，单个图片上传，取第一个元素
//            originalFilename = file.getOriginalFilename();
////            设置图片存放目录
//            String dirPath = "d:/upload/";
//            File filePath = new File(dirPath);
//            // 如果保存文件的地址不存在，就先创建目录
//            if (!filePath.exists()) {
//                filePath.mkdirs();
//            }
//            // 使用MultipartFile接口的方法完成文件上传到指定位置
////            1 文件复制到目标处
//            file.transferTo(new File(dirPath + originalFilename));
//        }
////        System.out.println("befor:"+user);
////        System.out.println(originalFilename);
////        2 回写图片信息进对象，以便持久化
//        user.setLogo(originalFilename);
////        完成加密
//        user.setPassword(user.getPassword());
        System.out.println(user);
////        判断ID的情况，如果是空串，则是新增动作，否则是修改动作
        user.setPassword(Utils.EncoderByMd5(user.getPassword()));
        if (user.getUser_id().equals("")) {
            usi.add(user);
        } else {
            usi.update(user);
        }
        return "../../index";
    }

    @RequestMapping("/toManage_main")
    public String toManage_main(){
        return "/manager1/manage_main";
    }
}
