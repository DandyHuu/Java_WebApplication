/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

/**
 *
 * @author Dandy Huu
 */
public class Item {

    private clsMonan product;
    private int quantity;

    public Item() {
    }

    public Item(clsMonan product, int quantity) {
        this.product = product;
        this.quantity = quantity;
    }

    public clsMonan getProduct() {
        return product;
    }

    public void setProduct(clsMonan product) {
        this.product = product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

}
