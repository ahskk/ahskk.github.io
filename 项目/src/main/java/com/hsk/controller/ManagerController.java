package com.hsk.controller;

import com.hsk.dto.Manager;
import com.hsk.service.impl.ManagerServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;
import java.util.HashMap;

@Controller
@RequestMapping("/manager1")
public class ManagerController {
    @Autowired
    ManagerServiceImpl msi;

    @RequestMapping("/toMLogin")
    public String toMLogin(){
        return "/manager1/login";
    }

    @RequestMapping("/mLogin") //HandlerMapping
//    @ResponseBody
    public String doMLogin(@RequestParam String manager_account,
                                 @RequestParam String manager_password,
                                 HttpSession session) throws SQLException, UnsupportedEncodingException, NoSuchAlgorithmException {
        java.util.Map map = new HashMap();
        map.put("manager_account",manager_account);
        map.put("manager_password",manager_password);
        Manager manager = msi.login(map);
//        System.out.println(manager);
        if(manager != null){
            session.setAttribute("manager",manager);
            return "/manager1/manage_main";
        } else{
            return "/manager1/login";
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
        session.removeAttribute("manager");
        return "../../index";
    }

//    @RequestMapping("/toManage_main")
//    public String toManage_main(){
//        return "/manager1/manage_main";
//    }
}
