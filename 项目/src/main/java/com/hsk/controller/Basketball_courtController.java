package com.hsk.controller;

import com.alibaba.fastjson.JSON;
import com.hsk.dto.Basketball_court;
import com.hsk.dto.Category;
import com.hsk.service.impl.Basketball_courtServiceImpl;
import com.hsk.service.impl.CategoryServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

//控制层
@Controller
@RequestMapping("/basketball_court")
public class Basketball_courtController {
    //    自动注入
    @Autowired
    Basketball_courtServiceImpl bsi;
    @Autowired
    CategoryServiceImpl csi;

    //    请求映射
    @RequestMapping("/manage")  //HandlerMapping
//    @ResponseBody
    public String doManage(Model model) throws SQLException {
//        查找basketball_court对象
        Map queryMap = new HashMap();
        List<Basketball_court> list = bsi.findByProp(queryMap);
//        查找basketball_court所在分类对象
        queryMap.put("category_name","篮球");
        List<Category> list1 = csi.findByProp(queryMap);
        Map map = new HashMap();
        map.put("success", true);
        map.put("data", list);
        map.put("cdata", list1);
        map.put("status", 200);
//        将数据添加到域对象
        model.addAttribute("content", map);
        return "/basketball_court/manage";
//        return JSON.toJSONString(map);
    }

    @RequestMapping("/delete/{court_id}")
    public String doDelete(@PathVariable String court_id) throws SQLException {
        bsi.delete(court_id);
        return "redirect:/basketball_court/manage";
    }

    @RequestMapping("/doFindByOneId") //HandlerMapping
    @ResponseBody
    public String doFindByOneId(String court_id, Model model) throws SQLException {
//        查找对象
        Basketball_court basketball_court = bsi.findOneById(court_id);
        Map map = new HashMap();
        map.put("basketball_court", basketball_court);
        //        System.out.println(basketball_court);
        //        将数据添加到域对象
//        model.addAttribute("basketball_court",basketball_court);
//        return "/basketball_court/editUI";
        return JSON.toJSONString(map);
    }

    @RequestMapping("/findByProp")
    @ResponseBody
    public String doFindByProp(String court_id, Model model) throws SQLException {
        Map map = new HashMap();
        map.put("court_id", court_id);
        System.out.println(court_id);
        List<Basketball_court> list = bsi.findByProp(map);
//        生成HashMap对象
        Map map1 = new HashMap();
//        map1.put("status", 200);
//        map1.put("success", true);
        map1.put("data", list);
//        将集合数据转换成json字符串
        System.out.println(list);
        return JSON.toJSONString(map1);
//        model.addAttribute("content",map1);
//        return "/basketball_court/manage";
    }

    @RequestMapping("/toEdit")
    public String toEdit() {
        return "basketball_court/editUI";
    }

    @RequestMapping("/toEdit/{id}")
    public String FindByOneId(@PathVariable String id, Model model) throws SQLException {
        Basketball_court basketball_court = bsi.findOneById(id);
//        System.out.println(basketball_court);
        model.addAttribute("basketball_court", basketball_court);
        return "basketball_court/editUI";
    }

    @RequestMapping("/doUpdate")
    public String doUpdate(Basketball_court basketball_court) throws SQLException {
//        //处理文件上传功能
//        // 判断所上传文件是否存在
//        if (!uploadfile.isEmpty() && uploadfile.size() > 0) {
//            //循环输出上传的文件
//            for (MultipartFile file : uploadfile) {
//                // 获取上传文件的原始名称
//                String originalFilename = file.getOriginalFilename();
//                // 设置上传文件的保存地址目录
//                String dirPath = "d:/课件/upload/";
//                File filePath = new File(dirPath);
//                // 如果保存文件的地址不存在，就先创建目录
//                if (!filePath.exists()) {
//                    filePath.mkdirs();
//                }
//                try {
//                    // 使用MultipartFile接口的方法完成文件上传到指定位置
//                    file.transferTo(new File(dirPath + originalFilename));
//                } catch (Exception e) {
//                    e.printStackTrace();
//                }
//                //将图片信息写进goods,这一步要手工完成
//                goods.setImage(originalFilename);
//                //做好图片工作后，再判断是添加还是更新操作
        System.out.println(basketball_court);
        if (basketball_court.getCourt_id().equals("")) {
            bsi.add(basketball_court);
        } else {
            bsi.update(basketball_court);
        }
        return "redirect:/basketball_court/manage";
    }

    @RequestMapping("/toBooking_basketball")
    public String toBooking_basketball() {
        return "basketball_court/booking_basketball";
    }

    @RequestMapping("/toXmdx")
    public String toXmdx() {
        return "xmdx";
    }

    @RequestMapping("/toManage_main")
    public String toManage_main(){
        return "/manager1/manage_main";
    }
}
