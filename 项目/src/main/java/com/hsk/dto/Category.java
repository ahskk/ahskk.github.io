package com.hsk.dto;

public class Category {
    String category_id;   //类型编号，数据库自动生成
    String category_name; //类型名称，必填

    public String getCategory_id() {
        return category_id;
    }

    public void setCategory_id(String category_id) {
        this.category_id = category_id;
    }

    public String getCategory_name() {
        return category_name;
    }

    public void setCategory_name(String category_name) {
        this.category_name = category_name;
    }

    @Override
    public String toString() {
        return "Category{" +
                "category_id='" + category_id + '\'' +
                ", category_name='" + category_name + '\'' +
                '}';
    }
}
