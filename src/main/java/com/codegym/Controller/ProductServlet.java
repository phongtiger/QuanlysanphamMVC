package com.codegym.Controller;

import com.codegym.Model.Product;
import com.codegym.Service.ProductService;
import com.codegym.Service.ProductServiceImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class ProductServlet extends HttpServlet {
    private ProductService productService = new ProductServiceImpl();
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        System.out.println(action);
        if(action == null){
            action = "";
        }
        switch (action){
//            case "create":
//                showCreateForm(request, response);
//                break;
//            case "edit":
//                showEditForm(request, response);
//                break;
//            case "delete":
//                showDeleteForm(request, response);
//                break;
//            case "view":
//                viewCustomer(request, response);
//                break;
            default:
                listCustomers(request, response);
                break;
        }
    }

    private void listCustomers(HttpServletRequest request, HttpServletResponse response) {
        List<Product> customers = this.productService.findAll();
        request.setAttribute("products", customers);

        RequestDispatcher dispatcher = request.getRequestDispatcher("product/list.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
