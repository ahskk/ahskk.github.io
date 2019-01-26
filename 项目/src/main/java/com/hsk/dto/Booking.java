package com.hsk.dto;

import java.sql.Date;

public class Booking {
    String order_id;    //预订编号，数据库自动生成
    String user_id; //用户编号，必填
    String realname;  //预订人姓名，必填
    String phone; //预订人电话，必填
    String category_name;    //场地类型，必填
    String court_name; //场地名称，必填
    Date create_date;  //订单创建日期，必填
    Date booking_date; //预订日期，必填
    String booking_time;  //预订时间段，必填
    int booking_price; //预订价格，必填

    public String getOrder_id() {
        return order_id;
    }

    public void setOrder_id(String order_id) {
        this.order_id = order_id;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getCategory_name() {
        return category_name;
    }

    public void setCategory_name(String category_name) {
        this.category_name = category_name;
    }

    public String getCourt_name() {
        return court_name;
    }

    public void setCourt_name(String court_name) {
        this.court_name = court_name;
    }

    public Date getCreate_date() {
        return create_date;
    }

    public void setCreate_date(Date create_date) {
        this.create_date = create_date;
    }

    public Date getBooking_date() {
        return booking_date;
    }

    public void setBooking_date(Date booking_date) {
        this.booking_date = booking_date;
    }

    public String getBooking_time() {
        return booking_time;
    }

    public void setBooking_time(String booking_time) {
        this.booking_time = booking_time;
    }

    public int getBooking_price() {
        return booking_price;
    }

    public void setBooking_price(int booking_price) {
        this.booking_price = booking_price;
    }

    @Override
    public String toString() {
        return "Booking{" +
                "order_id='" + order_id + '\'' +
                ", user_id='" + user_id + '\'' +
                ", realname='" + realname + '\'' +
                ", phone='" + phone + '\'' +
                ", category_name='" + category_name + '\'' +
                ", court_name='" + court_name + '\'' +
                ", create_date=" + create_date +
                ", booking_date=" + booking_date +
                ", booking_time='" + booking_time + '\'' +
                ", booking_price=" + booking_price +
                '}';
    }
}
