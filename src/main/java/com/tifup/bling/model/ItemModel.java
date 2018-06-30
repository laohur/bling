package com.tifup.bling.model;

import java.io.Serializable;
import java.util.Date;

public class ItemModel implements Serializable {
    private static final long serialVersionUID = 1L;
    //item_id,product_id,category_id,intime,ontime,price,inventory,status,name,title,brand,image,description

    public ItemModel() {
        super();
    }
    public int getItem_id() {
        return item_id;
    }

    public void setItem_id(int product_id) {        this.item_id = item_id;    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }

    public Date getIntime() {
        return intime;
    }

    public void setIntime(Date intime) {
        this.intime = intime;
    }

    public Date getOntime() {
        return ontime;
    }

    public void setOntime(Date ontime) {
        this.ontime = ontime;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getInventory() {
        return inventory;
    }

    public void setInventory(int inventory) {
        this.inventory = inventory;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public ItemModel(int product_id, int category_id, Date intime, Date ontime, int price, int inventory, int status, String name, String brand, String title, String image, String description) {
        this.product_id = product_id;
        this.category_id = category_id;
        this.intime = intime;
        this.ontime = ontime;
        this.price = price;
        this.inventory = inventory;
        this.status = status;
        this.name = name;
        this.brand = brand;
        this.title = title;
        this.image = image;
        this.description = description;
    }

    int item_id;
    int product_id;
    int category_id;
    Date intime;
    Date ontime;
    int price;
    int inventory;
    int status;
    String name;
    String brand;
    String title;
    String image;
    String description;

}
