package com.codegym.Service;

import com.codegym.Model.Product;

import java.util.ArrayList;
import java.util.List;

public interface ProductService {
    List<Product> findAll();

    void save(Product product);

    Product findById(int id);

    void update(int id, Product product);

    void remove(int id);
    ArrayList<Product> findByName(String name);
}
