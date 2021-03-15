package com.example.CoffeeShop.dao;

import com.example.CoffeeShop.modal.PriceProduct;
import com.example.CoffeeShop.modal.Product;
import com.example.CoffeeShop.modal.SizeProduct;
import com.example.CoffeeShop.modal.TypeProduct;
import com.example.CoffeeShop.util.ConnectionUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ProductDAO {

    public static ArrayList<Product> getAllProduct() {
        String sql = "SELECT * FROM `product` AS p " +
                "INNER JOIN typeproduct AS tp ON p.type = tp.id_type_product " +
                "INNER JOIN priceproduct AS pp ON p.id_product = pp.product_id " +
                "INNER JOIN sizeproduct AS sp ON pp.size_id = sp.id_size_product " +
                "WHERE p.actived = 1";
        ArrayList<Product> listProduct = null;
        Connection connection = null;
        try {
            // ket noi voi database
            connection = ConnectionUtils.getConnection();
            // thuc hien truy van sql
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            // thuc hien luu tat ca du lieu tu sql
            ResultSet resultSet = preparedStatement.executeQuery();
            // khoi tao 1 list chua tat ca San Pham
            listProduct = new ArrayList<Product>();
            // khoi tao 1 list chua tat ca Gia San Pham
            ArrayList<PriceProduct> listAllPrice = new ArrayList<PriceProduct>();
            while (resultSet.next()) {
                // gan id San Pham
                int idProduct = resultSet.getInt(1);
                // tao bien check
                boolean productIsExist = false;
                // duyet toan bo list san pham, kiem tra xem san pham dang duyet co ton tai trong list chua
                for (int i = 0; i < listProduct.size(); i++) {
                    if (idProduct == listProduct.get(i).getId()) {
                        productIsExist = true;
                        break;
                    }
                }
                if (!productIsExist) {
                    // khoi tao 1 product moi
                    Product product = new Product();
                    product.setId(idProduct);
                    product.setProductName(resultSet.getString(2));
                    // khoi tao 1 loai cua san pham
                    TypeProduct typeProduct = new TypeProduct();
                    typeProduct.setId(resultSet.getInt(9));
                    typeProduct.setTypeProduct(resultSet.getString(10));
                    product.setTypeProduct(typeProduct);
                    product.setSale(resultSet.getInt(4));
                    product.setImage(resultSet.getString(5));
                    product.setFavorite((resultSet.getInt(6) == 1) ? true : false);
                    product.setActived((resultSet.getInt(7) == 1) ? true : false);
                    product.setCreateDate(resultSet.getDate(8));
                    // khoi tao 1 size cua san pham
                    SizeProduct sizeProduct = new SizeProduct();
                    sizeProduct.setId(resultSet.getInt(14));
                    sizeProduct.setSizeName(resultSet.getString(15));
                    // khoi tao 1 gia tien cua 1 size cua san pham
                    PriceProduct priceProduct = new PriceProduct();
                    priceProduct.setIdProduct(idProduct);
                    priceProduct.setSizeProduct(sizeProduct);
                    priceProduct.setPrice(resultSet.getInt(13));
                    // them gia tien cua 1 size vao list chua tat ca gia san pham
                    listAllPrice.add(priceProduct);
                    // them san pham vao list tat ca san pham
                    listProduct.add(product);
                } else {
                    // khoi tao 1 size cua san pham
                    SizeProduct sizeProduct = new SizeProduct();
                    sizeProduct.setId(resultSet.getInt(14));
                    sizeProduct.setSizeName(resultSet.getString(15));
                    // khoi tao 1 gia tien cua 1 size cua san pham
                    PriceProduct priceProduct = new PriceProduct();
                    priceProduct.setIdProduct(idProduct);
                    priceProduct.setSizeProduct(sizeProduct);
                    priceProduct.setPrice(resultSet.getInt(13));
                    // them gia tien cua 1 size vao list chua tat ca gia san pham
                    listAllPrice.add(priceProduct);
                }
            }
            // duyet tat ca san pham trong list product
            for (Product p : listProduct) {
                // khoi tao 1 list chua size va price cua san pham
                ArrayList<PriceProduct> listPriceProduct = new ArrayList<PriceProduct>();
                // duyet tat ca size va price cua tat ca san pham
                for (PriceProduct pp : listAllPrice) {
                    // neu id san pham dc duyet == id cua size va price san pham
                    if (p.getId() == pp.getIdProduct()) {
                        // them size va price vao size va price san pham
                        listPriceProduct.add(pp);
                    }
                }
                // dat lai size va price la list size va price san pham
                p.setPriceProducts(listPriceProduct);
            }
            ConnectionUtils.closeQuietly(connection);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return listProduct;
    }

    public static ArrayList<Product> getAllFavoriteProduct() {
        String sql = "SELECT * FROM `product` AS p " +
                "INNER JOIN typeproduct AS tp ON p.type = tp.id_type_product " +
                "INNER JOIN priceproduct AS pp ON p.id_product = pp.product_id " +
                "INNER JOIN sizeproduct AS sp ON pp.size_id = sp.id_size_product " +
                "WHERE p.actived = 1 AND p.favorite = 1";
        ArrayList<Product> listProduct = null;
        Connection connection = null;
        try {
            // ket noi voi database
            connection = ConnectionUtils.getConnection();
            // thuc hien truy van sql
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            // thuc hien luu tat ca du lieu tu sql
            ResultSet resultSet = preparedStatement.executeQuery();
            // khoi tao 1 list chua tat ca San Pham
            listProduct = new ArrayList<Product>();
            // khoi tao 1 list chua tat ca Gia San Pham
            ArrayList<PriceProduct> listAllPrice = new ArrayList<PriceProduct>();
            Outer:
            while (resultSet.next()) {
                // gan id San Pham
                int idProduct = resultSet.getInt(1);
                // tao bien check
                boolean productIsExist = false;
                // duyet toan bo list san pham, kiem tra xem san pham dang duyet co ton tai trong list chua
                for (int i = 0; i < listProduct.size(); i++) {
                    if (idProduct == listProduct.get(i).getId()) {
                        productIsExist = true;
                        break;
                    }
                }
                if (!productIsExist) {
                    // khoi tao 1 product moi
                    Product product = new Product();
                    product.setId(idProduct);
                    product.setProductName(resultSet.getString(2));
                    // khoi tao 1 loai cua san pham
                    TypeProduct typeProduct = new TypeProduct();
                    typeProduct.setId(resultSet.getInt(9));
                    typeProduct.setTypeProduct(resultSet.getString(10));
                    product.setTypeProduct(typeProduct);
                    product.setSale(resultSet.getInt(4));
                    product.setImage(resultSet.getString(5));
                    product.setFavorite((resultSet.getInt(6) == 1) ? true : false);
                    product.setActived((resultSet.getInt(7) == 1) ? true : false);
                    product.setCreateDate(resultSet.getDate(8));
                    // khoi tao 1 size cua san pham
                    SizeProduct sizeProduct = new SizeProduct();
                    sizeProduct.setId(resultSet.getInt(14));
                    sizeProduct.setSizeName(resultSet.getString(15));
                    // khoi tao 1 gia tien cua 1 size cua san pham
                    PriceProduct priceProduct = new PriceProduct();
                    priceProduct.setIdProduct(idProduct);
                    priceProduct.setSizeProduct(sizeProduct);
                    priceProduct.setPrice(resultSet.getInt(13));
                    // them gia tien cua 1 size vao list chua tat ca gia san pham
                    listAllPrice.add(priceProduct);
                    // them san pham vao list tat ca san pham
                    listProduct.add(product);
                } else {
                    // khoi tao 1 size cua san pham
                    SizeProduct sizeProduct = new SizeProduct();
                    sizeProduct.setId(resultSet.getInt(14));
                    sizeProduct.setSizeName(resultSet.getString(15));
                    // khoi tao 1 gia tien cua 1 size cua san pham
                    PriceProduct priceProduct = new PriceProduct();
                    priceProduct.setIdProduct(idProduct);
                    priceProduct.setSizeProduct(sizeProduct);
                    priceProduct.setPrice(resultSet.getInt(13));
                    // them gia tien cua 1 size vao list chua tat ca gia san pham
                    listAllPrice.add(priceProduct);
                }
                // neu list San Pham khong co phan tu nao
//                if (listProduct.size() == 0) {
//                    // khoi tao 1 product moi
//                    Product product = new Product();
//                    product.setId(idProduct);
//                    product.setProductName(resultSet.getString(2));
//                    // khoi tao 1 loai cua san pham
//                    TypeProduct typeProduct = new TypeProduct();
//                    typeProduct.setId(resultSet.getInt(9));
//                    typeProduct.setTypeProduct(resultSet.getString(10));
//                    product.setTypeProduct(typeProduct);
//                    product.setSale(resultSet.getInt(4));
//                    product.setImage(resultSet.getString(5));
//                    product.setFavorite((resultSet.getInt(6) == 1) ? true : false);
//                    product.setActived((resultSet.getInt(7) == 1) ? true : false);
//                    product.setCreateDate(resultSet.getDate(8));
//                    // khoi tao 1 size cua san pham
//                    SizeProduct sizeProduct = new SizeProduct();
//                    sizeProduct.setId(resultSet.getInt(14));
//                    sizeProduct.setSizeName(resultSet.getString(15));
//                    // khoi tao 1 gia tien cua 1 size cua san pham
//                    PriceProduct priceProduct = new PriceProduct();
//                    priceProduct.setIdProduct(idProduct);
//                    priceProduct.setSizeProduct(sizeProduct);
//                    priceProduct.setPrice(resultSet.getInt(13));
//                    // them gia tien cua 1 size vao list chua tat ca gia san pham
//                    listAllPrice.add(priceProduct);
//                    // them san pham vao list tat ca san pham
//                    listProduct.add(product);
//                }
//                // neu list chua tat ca san pham da co san pham
//                else {
//                    // duyet lai list chua tat ca san pham
//                    for (int i = 0; i < listProduct.size(); i++) {
//                        // neu id san pham moi = id da co trong list chua tat ca san pham
//                        if (idProduct == listProduct.get(i).getId()) {
//                            // khoi tao 1 size cua san pham
//                            SizeProduct sizeProduct = new SizeProduct();
//                            sizeProduct.setId(resultSet.getInt(14));
//                            sizeProduct.setSizeName(resultSet.getString(15));
//                            // khoi tao 1 gia tien cua 1 size cua san pham
//                            PriceProduct priceProduct = new PriceProduct();
//                            priceProduct.setIdProduct(idProduct);
//                            priceProduct.setSizeProduct(sizeProduct);
//                            priceProduct.setPrice(resultSet.getInt(13));
//                            // them gia tien cua 1 size vao list chua tat ca gia san pham
//                            listAllPrice.add(priceProduct);
//                        }
//                        // neu id san pham moi != id da co trong list chua tat ca san pham
//                        else {
//                            // khoi tao 1 product moi
//                            Product product = new Product();
//                            product.setId(idProduct);
//                            product.setProductName(resultSet.getString(2));
//                            TypeProduct typeProduct = new TypeProduct();
//                            typeProduct.setId(resultSet.getInt(9));
//                            typeProduct.setTypeProduct(resultSet.getString(10));
//                            product.setTypeProduct(typeProduct);
//                            product.setSale(resultSet.getInt(4));
//                            product.setImage(resultSet.getString(5));
//                            product.setFavorite((resultSet.getInt(6) == 1) ? true : false);
//                            product.setActived((resultSet.getInt(7) == 1) ? true : false);
//                            product.setCreateDate(resultSet.getDate(8));
//                            SizeProduct sizeProduct = new SizeProduct();
//                            sizeProduct.setId(resultSet.getInt(14));
//                            sizeProduct.setSizeName(resultSet.getString(15));
//                            PriceProduct priceProduct = new PriceProduct();
//                            priceProduct.setIdProduct(idProduct);
//                            priceProduct.setSizeProduct(sizeProduct);
//                            priceProduct.setPrice(resultSet.getInt(13));
//                            // them gia tien cua 1 size vao list chua tat ca gia san pham
//                            listAllPrice.add(priceProduct);
//                            // them san pham vao list tat ca san pham
//                            listProduct.add(product);
//                            // bo qua vong lap for chay lai vong lap while
//                            continue Outer;
//                        }
//                    }
//                }
            }
            // duyet tat ca san pham trong list product
            for (Product p : listProduct) {
                // khoi tao 1 list chua size va price cua san pham
                ArrayList<PriceProduct> listPriceProduct = new ArrayList<PriceProduct>();
                // duyet tat ca size va price cua tat ca san pham
                for (PriceProduct pp : listAllPrice) {
                    // neu id san pham dc duyet == id cua size va price san pham
                    if (p.getId() == pp.getIdProduct()) {
                        // them size va price vao size va price san pham
                        listPriceProduct.add(pp);
                    }
                }
                // dat lai size va price la list size va price san pham
                p.setPriceProducts(listPriceProduct);
            }
            ConnectionUtils.closeQuietly(connection);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return listProduct;
    }

    public static Product getProductById(int id) {
        Product product = new Product();
        return product;
    }

    // Ánh hãy lấy giúp Tài list sản phẩm mới nhất trong csdl. ý tưởng làm : sắp xếp trường create_day.
    public static ArrayList<Product> getLastestProduct(){
        // code here
        return null;
    }

    // Ánh hãy lấy giúp Tài list sản phẩm bán chạy nhất trong csdl. ý tưởng làm : dựa vào trong bill, đếm ra 6 sản
    // phẩm được mua nhiều nhất.
    public static ArrayList<Product> getTopRatedProduct(){
        // code here
        return null;
    }
}
