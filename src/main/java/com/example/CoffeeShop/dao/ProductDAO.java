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

    // Ánh sửa trong indexController rồi á
    public static ArrayList<Product> getLastestProduct(){
        String sql = "SELECT * FROM `product` AS p \n" +
                "INNER JOIN typeproduct AS tp ON p.type = tp.id_type_product\n" +
                "INNER JOIN priceproduct AS pp ON p.id_product = pp.product_id \n" +
                "INNER JOIN sizeproduct AS sp ON pp.size_id = sp.id_size_product \n" +
                "ORDER BY create_date DESC " ;
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


    // Xem cho ánh sql nhé !! ánh chọn product từ productincart đếm thuộc tính bought á
    // lấy limit 4 sản phẩm nha
    // phẩm được mua nhiều nhất.
    public static ArrayList<Product> getTopRatedProduct(){
        String sql = "SELECT *\n" +
                "FROM `product` AS p INNER JOIN productsincart AS pandc ON p.id_product = pandc.product_id\n" +
                "INNER JOIN cart AS c ON pandc.cart_id = c.id_cart\n" +
                "INNER JOIN bill AS b ON c.id_cart = b.cart_id \n" +
                "ORDER BY bought DESC\n" +
                "LIMIT 4" ;
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
}
