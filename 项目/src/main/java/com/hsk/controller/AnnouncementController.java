package com.hsk.controller;

import com.alibaba.fastjson.JSON;
import com.hsk.dto.Announcement;
import com.hsk.service.impl.AnnouncementServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

@Controller
@RequestMapping("/announcement")
public class AnnouncementController {
    @Autowired
    AnnouncementServiceImpl asi;

    @RequestMapping("/announcement_manage") //HandlerMapping
//    @ResponseBody
    public String doAnnouncement_manage(Model model) throws SQLException {
        java.util.Map queryMap = new HashMap();
        List<Announcement> list = asi.findByProp(queryMap);
        System.out.println("list:\n"+list);
        java.util.Map map = new HashMap();
        map.put("success",true);
        map.put("data",list);
        map.put("status",200);
        model.addAttribute("content",map);
        return "/announcement/announcement_manage";
//        return JSON.toJSONString(map);
    }

    @RequestMapping("/getannoutcement") //HandlerMapping
    @ResponseBody
    public String doGetannoutcement(Model model) throws SQLException {
        java.util.Map queryMap = new HashMap();
        List<Announcement> list = asi.findByProp(queryMap);
        System.out.println(list);
        java.util.Map map = new HashMap();
        map.put("success",true);
        map.put("data",list);
        map.put("status",200);
//        model.addAttribute("content",map);
//        return "/announcement/announcement_manage";
        return JSON.toJSONString(map);
    }

    @RequestMapping("/toAnnouncement_add")
    public String toAnnouncement_add() {
        return "/announcement/announcement_add";
    }

    @RequestMapping("/toAnnouncement_edit/{id}")
    public String FindByOneId(@PathVariable String id, Model model) throws SQLException {
        Announcement announcement = asi.findOneById(id);
//        System.out.println(announcement);
        model.addAttribute("announcement", announcement);
        return "/announcement/announcement_edit";
    }
    
    @RequestMapping("/delete/{announcement_id}")
    public String doDelete(@PathVariable String announcement_id) throws SQLException {
        asi.delete(announcement_id);
        return "redirect:/announcement/announcement_manage";
    }

    @RequestMapping("/doUpdate")
    public String doUpdate(Announcement announcement) throws SQLException {
        System.out.println(announcement);
        if (announcement.getAnnouncement_id().equals("")) {
            asi.add(announcement);
        } else {
            asi.update(announcement);
        }
        return "redirect:/announcement/announcement_manage";
    }

    @RequestMapping("/doAdd")
    @ResponseBody
    public String doAdd(Announcement announcement) throws SQLException {
        System.out.println(announcement);
        if(asi.add(announcement)){
            return "yes";
        }else{
            return "no";
        }
    }

    @RequestMapping("/toManage_main")
    public String toManage_main(){
        return "/manager1/manage_main";
    }

    @RequestMapping("/toAnnouncement_main")
    public String toAnnouncement_main(){
        return "/announcement/announcement_main";
    }
}

