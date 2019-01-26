package com.hsk.dto;

import java.sql.Date;

public class Announcement {
    String announcement_id;    //公告编号，数据库自动生成
    String announcement_title; //公告标题，必填
    String announcement_content;  //公告内容，必填
    Date create_date;  //公告创建日期，必填

    public String getAnnouncement_id() {
        return announcement_id;
    }

    public void setAnnouncement_id(String announcement_id) {
        this.announcement_id = announcement_id;
    }

    public String getAnnouncement_title() {
        return announcement_title;
    }

    public void setAnnouncement_title(String announcement_title) {
        this.announcement_title = announcement_title;
    }

    public String getAnnouncement_content() {
        return announcement_content;
    }

    public void setAnnouncement_content(String announcement_content) {
        this.announcement_content = announcement_content;
    }

    public Date getCreate_date() {
        return create_date;
    }

    public void setCreate_date(Date create_date) {
        this.create_date = create_date;
    }

    @Override
    public String toString() {
        return "Announcement{" +
                "announcement_id='" + announcement_id + '\'' +
                ", announcement_title='" + announcement_title + '\'' +
                ", announcement_content='" + announcement_content + '\'' +
                ", create_date=" + create_date +
                '}';
    }
}
