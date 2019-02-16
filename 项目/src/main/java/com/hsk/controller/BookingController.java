package com.hsk.controller;

import com.alibaba.fastjson.JSON;
import com.hsk.dto.Booking;
import com.hsk.dto.PageBean;
import com.hsk.dto.User;
import com.hsk.service.impl.BookingServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.sql.SQLException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/booking")
public class BookingController {
    @Autowired
    BookingServiceImpl service;

    @RequestMapping("/manage") //HandlerMapping
//    @ResponseBody
    public String domanage(Model model) throws SQLException {
        java.util.Map queryMap = new HashMap();
        List<Booking> list = service.findByProp(queryMap);
        java.util.Map map = new HashMap();
        map.put("success", true);
        map.put("data", list);
        map.put("status", 200);
        model.addAttribute("content", map);
//        model.addAttribute("pagemsg", service.findByPage(currentPage));
        return "/booking/manage";
//        return JSON.toJSONString(map);
    }

    @RequestMapping("/booking_message") //HandlerMapping
    //    @ResponseBody
    public String doBooking_message(Model model, HttpSession session) throws SQLException {
//        System.out.println("ddd");
        java.util.Map queryMap = new HashMap();
        User user = (User) session.getAttribute("user");
        queryMap.put("user_id", user.getUser_id());
//        System.out.println(queryMap);
        List<Booking> list = service.findByProp(queryMap);
        Booking booking = list.get(list.size() - 1);
        System.out.println(booking);
        model.addAttribute("content", booking);
        return "/booking/booking_message";
    }

    @RequestMapping("/add") //HandlerMapping
    @ResponseBody
    public String doAdd(Booking booking, HttpSession session) throws SQLException {
        System.out.println(booking);
//        添加预订用户信息
        User user = (User) session.getAttribute("user");
        booking.setUser_id(user.getUser_id());
        booking.setRealname(user.getRealname());
        booking.setPhone(user.getPhone());
        System.out.println(booking);
//        根据对象的id属性的值进行判断，如果没有，则添加
        if (service.add(booking)) {
            return "yes";
        } else {
            return "no";
        }
    }

    //    管理员限制场次
    @RequestMapping("/managerAdd") //HandlerMapping
    @ResponseBody
    public String domanagerAdd(Booking booking) throws SQLException {
        System.out.println(booking);
//        添加预订用户信息
        booking.setUser_id("0");
        booking.setRealname("0");
        booking.setPhone("0");
        System.out.println(booking);
//        根据对象的id属性的值进行判断，如果没有，则添加
        if (service.add(booking)) {
            return "yes";
        } else {
            return "no";
        }
    }


    @RequestMapping("/cancel/{order_id}")
    public String doCancel(@PathVariable String order_id) throws SQLException {
        service.delete(order_id);
        return "booking/booking_main";
    }

    @RequestMapping("/deleted/{order_id}")
    public String doDeleted(@PathVariable String order_id) throws SQLException {
        service.delete(order_id);
        return "redirect:/booking/booking_history_findByProp";
    }

    @RequestMapping("/delete/{order_id}")
    public String doDelete(@PathVariable String order_id) throws SQLException {
        service.delete(order_id);
        return "redirect:/booking/manage";
    }

    @RequestMapping("/doFindByOneId") //HandlerMapping
    @ResponseBody
    public String doFindByOneId(String order_id) throws SQLException {
//        查找对象
        Booking booking = service.findOneById(order_id);
        Map map = new HashMap();
//        System.out.println(booking);
        map.put("booking", booking);
        return JSON.toJSONString(map);
    }

//    @RequestMapping("/findByProp")
////    @ResponseBody
//    public String doFindByProp(String category_name, String beginDate, String endDate,
//                               String beginBookingDate, String endBookingDate,
//                               Model model) throws SQLException {
//        Map map = new HashMap();
//        if (category_name == "") {
//            map.put("category_name", null);
//        } else {
//            map.put("category_name", category_name);
//        }
//        System.out.println(map);
//        if (beginDate == "") {
//            map.put("beginDate", null);
//        } else {
//            map.put("beginDate", beginDate);
//        }
//        if (endDate == "") {
//            map.put("endDate", null);
//        } else {
//            map.put("endDate", endDate);
//        }
//        if (beginBookingDate == "") {
//            map.put("beginBookingDate", null);
//        } else {
//            map.put("beginBookingDate", beginBookingDate);
//        }
//        if (endBookingDate == "") {
//            map.put("endBookingDate", null);
//        } else {
//            map.put("endBookingDate", endBookingDate);
//        }
//        List<Booking> list = service.findByProp(map);
////        生成HashMap对象
//        Map map1 = new HashMap();
////        map1.put("status", 200);
////        map1.put("success", true);
//        map1.put("data", list);
////        将集合数据转换成json字符串
////        return JSON.toJSONString(map1);
//        model.addAttribute("content", map1);
//        return "/booking/manage";
//    }

    @RequestMapping("/findByProp")
//    @ResponseBody
    public String doFindByProp(String category_name, String beginDate, String endDate,
                               String beginBookingDate, String endBookingDate,
                               @RequestParam(value = "currentPage", defaultValue = "1", required = false) int currentPage,
                               @RequestParam(value = "Category_name", required = false) String Category_name,
                               @RequestParam(value = "BeginDate", required = false) String BeginDate,
                               @RequestParam(value = "EndDate", required = false) String EndDate,
                               @RequestParam(value = "BeginBookingDate", required = false) String BeginBookingDate,
                               @RequestParam(value = "EndBookingDate", required = false) String EndBookingDate,
                               Model model) throws SQLException {
        Map map = new HashMap();
//        String def = "a";
        if (Category_name == null) {
            if (category_name == "") {
                map.put("category_name", null);
            } else {
                map.put("category_name", category_name);
            }
        } else {
            if (Category_name == "") {
                map.put("category_name", null);
            } else {
                map.put("category_name", Category_name);
            }
        }
//        System.out.println(map);
        if (BeginDate == null) {
            if (beginDate == "") {
                map.put("beginDate", null);
            } else {
                map.put("beginDate", beginDate);
            }
        } else {
            if (BeginDate == "") {
                map.put("beginDate", null);
            } else {
                map.put("beginDate", BeginDate);
            }
        }
        if (EndDate == null) {
            if (endDate == "") {
                map.put("endDate", null);
            } else {
                map.put("endDate", endDate);
            }
        } else {
            if (EndDate == "") {
                map.put("endDate", null);
            } else {
                map.put("endDate", EndDate);
            }
        }
        if (BeginBookingDate == null) {
            if (beginBookingDate == "") {
                map.put("beginBookingDate", null);
            } else {
                map.put("beginBookingDate", beginBookingDate);
            }
        } else {
            if (BeginBookingDate == "") {
                map.put("beginBookingDate", null);
            } else {
                map.put("beginBookingDate", BeginBookingDate);
            }
        }
        if (EndBookingDate == null) {
            if (endBookingDate == "") {
                map.put("endBookingDate", null);
            } else {
                map.put("endBookingDate", endBookingDate);
            }
        } else {
            if (EndBookingDate == "") {
                map.put("endBookingDate", null);
            } else {
                map.put("endBookingDate", EndBookingDate);
            }
        }

//        每页显示的数据
        int pageSize = 10;
//        封装总记录数
        int totalCount = service.selectCount(map);
        System.out.println("totalCount:" + totalCount);
        //封装总页数
        double tc = totalCount;
        Double totalPage = Math.ceil(tc / pageSize);//向上取整

        map.put("start", (currentPage - 1) * pageSize);
        map.put("size", pageSize);

        List<Booking> list = service.findByProp(map);
//        生成HashMap对象
        Map map1 = new HashMap();
//        map1.put("status", 200);
//        map1.put("success", true);
        map1.put("data", list);
        map1.put("totalCount", totalCount);
        map1.put("pageSize", pageSize);
        map1.put("totalPage", totalPage.intValue());
        map1.put("currPage", currentPage);
//        将集合数据转换成json字符串
//        return JSON.toJSONString(map1);
        model.addAttribute("content", map1);
        model.addAttribute("condition", map);
        System.out.println(map);

//        model.addAttribute("pagemsg", service.findByPage(currentPage));
        return "/booking/manage";
    }


    @RequestMapping("/toBooking_main")
    public String toBooking_main() {
        return "/booking/booking_main";
    }

    @RequestMapping("/confirm") //HandlerMapping
    //    @ResponseBody
    public String doConfirm(Model model, HttpSession session) throws SQLException {
//        System.out.println("ddd");
        java.util.Map queryMap = new HashMap();
        User user = (User) session.getAttribute("user");
        queryMap.put("user_id", user.getUser_id());
//        System.out.println(queryMap);
        List<Booking> list = service.findByProp(queryMap);
        Booking booking = list.get(list.size() - 1);
        System.out.println(booking);
//        System.out.println(list);
//        java.util.Map map = new HashMap();
//        map.put("success",true);
//        map.put("data",booking);
//        map.put("status",200);
        model.addAttribute("content", booking);
        return "/booking/confirm";
//        return JSON.toJSONString(map);

//        List<Booking> list = service.findByProp(map);
//            Booking booking3 = list.get(list.size()-1);
//            System.out.println(booking3);
//            Map map2 = new HashMap();
//            map2.put("data",booking3);
//            map2.put("success","yes");
//            System.out.println(map2);
//            model.addAttribute("content",map2);
//            return "/booking/booking_message";
    }

    //    判断是否有预订记录
    @RequestMapping("/checkBookingHistory")
    @ResponseBody
    public String doCheckBookingHistory(String category_name, String curYear,
                                        String curMonth, String curDate, String endDate,
                                        HttpSession session, Model model) throws SQLException {
        Map map = new HashMap();
        String beginBookingDate = curYear + "-" + curMonth + "-" + curDate;
        String endBookingDate = curYear + "-" + curMonth + "-" + endDate;
        System.out.println("查询时间段：" + beginBookingDate + " to " + endBookingDate);
        User user = (User) session.getAttribute("user");
        map.put("user_id", user.getUser_id());
        map.put("beginBookingDate", beginBookingDate);
        map.put("endBookingDate", endBookingDate);
        map.put("category_name", category_name);
        List<Booking> list = service.findByProp(map);
        System.out.println("list:" + list);
        if (list.size() == 0) {
            System.out.println("null");
        }
        Map map1 = new HashMap();
        map1.put("success", true);
        map1.put("data", list);
        map1.put("status", 200);
//        model.addAttribute("content",map1);
//        return "/booking/manage";
        return JSON.toJSONString(map1);
    }

    //    获取所选日期对应的预订信息
//    测试： http://localhost:8080/booking/getVenueDeTailByDate?category_name=篮球&&curYear=2018&&curMonth=9&&curDate=20
    @RequestMapping("/getVenueDeTailByDate")
    @ResponseBody
    public String doGetVenueDeTailByDate(String category_name, String curYear,
                                         String curMonth, String curDate,
                                         Model model) throws SQLException {
        String bookingDate = curYear + "-" + curMonth + "-" + curDate;
        System.out.println(bookingDate);
        Map map = new HashMap();
        map.put("category_name", category_name);
        map.put("bookingDate", bookingDate);
        List<Booking> list = service.findByProp(map);
        System.out.println(list);
        Map map1 = new HashMap();
        map1.put("success", true);
        map1.put("data", list);
        map1.put("status", 200);
//        model.addAttribute("content",map1);
//        return "/booking/manage";
        return JSON.toJSONString(map1);
    }

    @RequestMapping("/booking_history") //HandlerMapping
//    @ResponseBody
    public String doBooking_history(Model model, HttpSession session) throws SQLException {
//        System.out.println("ddd");
        java.util.Map queryMap = new HashMap();
        User user = (User) session.getAttribute("user");
        queryMap.put("user_id", user.getUser_id());
//        System.out.println(queryMap);
        List<Booking> list = service.findByProp(queryMap);
//        System.out.println(list);
        java.util.Map map = new HashMap();
        map.put("success", true);
        map.put("data", list);
        map.put("status", 200);
        model.addAttribute("content", map);
        return "/booking/booking_history";
//        return JSON.toJSONString(map);
    }

    @RequestMapping("/booking_history_findByProp") //HandlerMapping
//    @ResponseBody
    public String doBooking_history_findByProp(String category_name, String beginDate, String endDate,
                                               String beginBookingDate, String endBookingDate, Model model,
                                               @RequestParam(value = "currentPage", defaultValue = "1", required = false) int currentPage,
                                               @RequestParam(value = "Category_name", required = false) String Category_name,
                                               @RequestParam(value = "BeginDate", required = false) String BeginDate,
                                               @RequestParam(value = "EndDate", required = false) String EndDate,
                                               @RequestParam(value = "BeginBookingDate", required = false) String BeginBookingDate,
                                               @RequestParam(value = "EndBookingDate", required = false) String EndBookingDate,
                                               HttpSession session) throws SQLException {
//        System.out.println("ddd");
        Map map = new HashMap();
        if (Category_name == null) {
            if (category_name == "") {
                map.put("category_name", null);
            } else {
                map.put("category_name", category_name);
            }
        } else {
            if (Category_name == "") {
                map.put("category_name", null);
            } else {
                map.put("category_name", Category_name);
            }
        }
//        System.out.println(map);
        if (BeginDate == null) {
            if (beginDate == "") {
                map.put("beginDate", null);
            } else {
                map.put("beginDate", beginDate);
            }
        } else {
            if (BeginDate == "") {
                map.put("beginDate", null);
            } else {
                map.put("beginDate", BeginDate);
            }
        }
        if (EndDate == null) {
            if (endDate == "") {
                map.put("endDate", null);
            } else {
                map.put("endDate", endDate);
            }
        } else {
            if (EndDate == "") {
                map.put("endDate", null);
            } else {
                map.put("endDate", EndDate);
            }
        }
        if (BeginBookingDate == null) {
            if (beginBookingDate == "") {
                map.put("beginBookingDate", null);
            } else {
                map.put("beginBookingDate", beginBookingDate);
            }
        } else {
            if (BeginBookingDate == "") {
                map.put("beginBookingDate", null);
            } else {
                map.put("beginBookingDate", BeginBookingDate);
            }
        }
        if (EndBookingDate == null) {
            if (endBookingDate == "") {
                map.put("endBookingDate", null);
            } else {
                map.put("endBookingDate", endBookingDate);
            }
        } else {
            if (EndBookingDate == "") {
                map.put("endBookingDate", null);
            } else {
                map.put("endBookingDate", EndBookingDate);
            }
        }

        User user = (User) session.getAttribute("user");
        map.put("user_id", user.getUser_id());
//        每页显示的数据
        int pageSize = 10;
//        封装总记录数
        int totalCount = service.selectCount(map);
        System.out.println("totalCount:" + totalCount);
        //封装总页数
        double tc = totalCount;
        Double totalPage = Math.ceil(tc / pageSize);//向上取整

        map.put("start", (currentPage - 1) * pageSize);
        map.put("size", pageSize);
        System.out.println(currentPage+"  "+"  "+pageSize);
//        java.util.Map queryMap = new HashMap();

//        System.out.println(queryMap);
        List<Booking> list = service.findByProp(map);
//        System.out.println(list);
        java.util.Map map1 = new HashMap();
        map1.put("success", true);
        map1.put("data", list);
        map1.put("status", 200);

        map1.put("totalCount", totalCount);
        map1.put("pageSize", pageSize);
        map1.put("totalPage", totalPage.intValue());
        map1.put("currPage", currentPage);

        model.addAttribute("content", map1);
        model.addAttribute("condition", map);
        return "/booking/booking_history";
//        return JSON.toJSONString(map);
    }

    @RequestMapping("/toManage_main")
    public String toManage_main() {
        return "/manager1/manage_main";
    }
}
