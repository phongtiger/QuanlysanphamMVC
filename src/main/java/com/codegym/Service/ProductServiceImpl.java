package com.codegym.Service;

import com.codegym.Model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService {
    private static Map<Integer, Product> products;

    static {
        products = new HashMap<>();
        products.put(1, new Product(1, "Iphone7", "4.7in", "iphone", 1));
        products.put(2, new Product(2, "Iphone8", "4.7in", "iphone", 1));
        products.put(3, new Product(3, "IphoneX", "4.7in", "iphone", 1));
        products.put(4, new Product(4, "Iphone11", "4.7in", "iphone", 1));
        products.put(5, new Product(5, "Iphone11 max", "4.7in", "iphone", 1));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Product product) {
        products.put(product.getId(), product);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public void update(int id, Product product) {
        products.put(id, product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }

    @Override
    public ArrayList<Product> findByName(String name) {
        ArrayList<Product> list=new ArrayList<>(products.values());
        ArrayList<Product> productArrayList=new ArrayList<>();
        for (Product product : list){
            if (product.getName().equals(name)){
                productArrayList.add(product);
            }
        }
        return productArrayList;
    }
}

