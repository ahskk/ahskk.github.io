package com.hsk.dto;

public class Manager {
    String manager_id;           //管理员编号，数据库自动生成
    String manager_account;    //管理员账号
    String manager_password;   //管理员密码

    public String getManager_id() {
        return manager_id;
    }

    public void setManager_id(String manager_id) {
        this.manager_id = manager_id;
    }

    public String getManager_account() {
        return manager_account;
    }

    public void setManager_account(String manager_account) {
        this.manager_account = manager_account;
    }

    public String getManager_password() {
        return manager_password;
    }

    public void setManager_password(String manager_password) {
        this.manager_password = manager_password;
    }

    @Override
    public String toString() {
        return "Manager{" +
                "manager_id='" + manager_id + '\'' +
                ", manager_account='" + manager_account + '\'' +
                ", manager_password='" + manager_password + '\'' +
                '}';
    }
}
