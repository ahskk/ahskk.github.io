package com.hsk.controller;

import com.alibaba.fastjson.JSON;
import com.hsk.dto.Tennis_court;
import com.hsk.dto.Category;
import com.hsk.service.impl.Tennis_courtServiceImpl;
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

//控制层
@Controller
@RequestMapping("/tennis_court")
public class Tennis_courtController {
    //    自动注入
    @Autowired
    Tennis_courtServiceImpl tsi;
    @Autowired
    CategoryServiceImpl csi;

    //    请求映射
    @RequestMapping("/manage")  //HandlerMapping
//    @ResponseBody
    public String doManage(Model model) throws SQLException {
//        查找tennis_court对象
        Map queryMap = new HashMap();
        List<Tennis_court> list = tsi.findByProp(queryMap);
//        查找tennis_court所在分类对象
        queryMap.put("category_name","网球");
        List<Category> list1 = csi.findByProp(queryMap);
        Map map = new HashMap();
        map.put("success", true);
        map.put("data", list);
        map.put("cdata", list1);
        map.put("status", 200);
//        将数据添加到域对象
        model.addAttribute("content", map);
        return "/tennis_court/manage";
//        return JSON.toJSONString(map);
    }

    @RequestMapping("/delete/{court_id}")
    public String doDelete(@PathVariable String court_id) throws SQLException {
        tsi.delete(court_id);
        return "redirect:/tennis_court/manage";
    }

    @RequestMapping("/doFindByOneId") //HandlerMapping
    @ResponseBody
    public String doFindByOneId(String court_id, Model model) throws SQLException {
//        查找对象
        Tennis_court tennis_court = tsi.findOneById(court_id);
        Map map = new HashMap();
        map.put("tennis_court", tennis_court);
        //        System.out.println(tennis_court);
        //        将数据添加到域对象
//        model.addAttribute("tennis_court",tennis_court);
//        return "/tennis_court/editUI";
        return JSON.toJSONString(map);
    }

    @RequestMapping("/findByProp")
    @ResponseBody
    public String doFindByProp(String court_id, Model model) throws SQLException {
        Map map = new HashMap();
        map.put("court_id", court_id);
        System.out.println(court_id);
        List<Tennis_court> list = tsi.findByProp(map);
//        生成HashMap对象
        Map map1 = new HashMap();
//        map1.put("status", 200);
//        map1.put("success", true);
        map1.put("data", list);
//        将集合数据转换成json字符串
        System.out.println(list);
        return JSON.toJSONString(map1);
//        model.addAttribute("content",map1);
//        return "/tennis_court/manage";
    }

    @RequestMapping("/toEdit")
    public String toEdit() {
        return "tennis_court/editUI";
    }

    @RequestMapping("/toEdit/{id}")
    public String FindByOneId(@PathVariable String id, Model model) throws SQLException {
        Tennis_court tennis_court = tsi.findOneById(id);
//        System.out.println(tennis_court);
        model.addAttribute("tennis_court", tennis_court);
        return "tennis_court/editUI";
    }

    @RequestMapping("/doUpdate")
    public String doUpdate(Tennis_court tennis_court) throws SQLException {
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
        System.out.println(tennis_court);
        if (tennis_court.getCourt_id().equals("")) {
            tsi.add(tennis_court);
        } else {
            tsi.update(tennis_court);
        }
        return "redirect:/tennis_court/manage";
    }

    @RequestMapping("/toBooking_tennis")
    public String toBooking_tennis() {
        return "tennis_court/booking_tennis";
    }

    @RequestMapping("/toManage_main")
    public String toManage_main(){
        return "/manager1/manage_main";
    }
}
