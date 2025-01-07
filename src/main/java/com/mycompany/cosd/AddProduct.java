
package com.mycompany.cosd;

/**
 *
 * @author shantanuunde
 */
public class AddProduct {
    private String name;
    private String description;
    private int price;
    private String category;
   // private byte[] image;

    // Constructors
    public AddProduct() {
    }
    public AddProduct(String name, String description, int price, String category) {
        this.name = name;
        this.description = description;
        this.price = price;
        this.category = category;
       // this.image = image;
    }
    public AddProduct(String name, String description, int price, String category, byte[] image) {
        this.name = name;
        this.description = description;
        this.price = price;
        this.category = category;
       // this.image = image;
    }

    // Getters and setters
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }
    
}
