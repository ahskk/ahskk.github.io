package com.hsk.dto;

public class Basketball_court {
    String court_id;    //场地编号，数据库自动生成
    String category_id; //类型编号，必填
    String court_name;  //场地名称，必填
    int court_price; //场地单价，必填

    public String getCourt_id() {
        return court_id;
    }

    public void setCourt_id(String court_id) {
        this.court_id = court_id;
    }

    public String getCategory_id() {
        return category_id;
    }

    public void setCategory_id(String category_id) {
        this.category_id = category_id;
    }

    public String getCourt_name() {
        return court_name;
    }

    public void setCourt_name(String court_name) {
        this.court_name = court_name;
    }

    public int getCourt_price() {
        return court_price;
    }

    public void setCourt_price(int court_price) {
        this.court_price = court_price;
    }

    @Override
    public String toString() {
        return "Basketball_court{" +
                "court_id='" + court_id + '\'' +
                ", category_id='" + category_id + '\'' +
                ", court_name='" + court_name + '\'' +
                ", court_price=" + court_price +
                '}';
    }
}
