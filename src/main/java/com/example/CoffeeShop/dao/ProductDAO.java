package com.example.CoffeeShop.dao;

import com.example.CoffeeShop.modal.PriceProduct;
import com.example.CoffeeShop.modal.Product;
import com.example.CoffeeShop.modal.SizeProduct;
import com.example.CoffeeShop.modal.TypeProduct;
import com.example.CoffeeShop.util.ConnectionUtils;

import java.sql.*;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class ProductDAO {
    static int productDisplay = 6;
    static int favoriteProductDisplay = 8;
    static int saleProductDisplay = 5;
    static int relatedProductDisplay = 4;

    public static List<Product> getAllProductWithType(int idType) {
        String type = (idType == 0) ? "" : "AND p.type= ?";
        String sql = "SELECT * FROM `product` AS p " +
                "INNER JOIN typeproduct AS tp ON p.type = tp.id_type_product " +
                "INNER JOIN priceproduct AS pp ON p.id_product = pp.product_id " +
                "INNER JOIN sizeproduct AS sp ON pp.size_id = sp.id_size_product " +
                "WHERE p.actived = 1 " + type;
        List<Product> listProduct = null;
        Connection connection = null;
        try {
            // ket noi voi database
            connection = ConnectionUtils.getConnection();
            // thuc hien truy van sql
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            if (type.length() > 0){
                preparedStatement.setInt(1,idType);
            }
            // thuc hien luu tat ca du lieu tu sql
            ResultSet resultSet = preparedStatement.executeQuery();
            // khoi tao 1 list chua tat ca San Pham
            listProduct = new ArrayList<Product>();
            // khoi tao 1 list chua tat ca Gia San Pham
            List<PriceProduct> listAllPrice = new ArrayList<PriceProduct>();
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
    public static List<Product> getProductPage(int idType, int indexPage){
        int fromIndex = productDisplay * (indexPage - 1);
        int toIndex = (fromIndex + productDisplay > getAllProductWithType(idType).size()) ? getAllProductWithType(idType).size() : fromIndex + productDisplay ;
        return getAllProductWithType(idType).subList(fromIndex,toIndex);
    }
    public static int numberOfPage(int idType){
        return (int) Math.ceil((double)getAllProductWithType(idType).size()/ productDisplay);
    }
    public static List<Product> getAllFavoriteProduct() {
        String sql = "SELECT * FROM `product` AS p " +
                "INNER JOIN typeproduct AS tp ON p.type = tp.id_type_product " +
                "INNER JOIN priceproduct AS pp ON p.id_product = pp.product_id " +
                "INNER JOIN sizeproduct AS sp ON pp.size_id = sp.id_size_product " +
                "WHERE p.actived = 1 AND p.favorite = 1";
        List<Product> listProduct = null;
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
            List<PriceProduct> listAllPrice = new ArrayList<PriceProduct>();
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
                // nếu product chưa tồn tại thì mình thực hiện cu lệnh if còn không là else
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
                // khoi tao 1 list chua size va price 4cua san pham
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
        int display = (listProduct.size() > favoriteProductDisplay ? favoriteProductDisplay : listProduct.size());
        return listProduct.subList(0,display);
    }
    public static Product getProductById(int id) {
        String sql = "SELECT * FROM `product` AS p \n" +
                "INNER JOIN typeproduct AS tp ON p.type = tp.id_type_product \n" +
                "INNER JOIN priceproduct AS pp ON p.id_product = pp.product_id \n" +
                "INNER JOIN sizeproduct AS sp ON pp.size_id = sp.id_size_product \n" +
                "WHERE p.actived = 1 AND p.id_product = ?";
        Connection connection = null;
        Product product = new Product();
        try {
            // ket noi voi database
            connection = ConnectionUtils.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1,id);
            ResultSet resultSet = preparedStatement.executeQuery();
            ArrayList<PriceProduct> listPriceProduct = new ArrayList<PriceProduct>();
            boolean productExist = false;
            while (resultSet.next()) {
                if (!productExist){
                    productExist = true;
                    product.setId(resultSet.getInt("id_product"));
                    product.setProductName(resultSet.getString("product_name"));
                    // khoi tao 1 loai cua san pham
                    TypeProduct typeProduct = new TypeProduct();
                    typeProduct.setId(resultSet.getInt("type"));
                    typeProduct.setTypeProduct(resultSet.getString("type_product"));
                    product.setTypeProduct(typeProduct);
                    product.setSale(resultSet.getInt("sale"));
                    product.setImage(resultSet.getString("image"));
                    product.setFavorite((resultSet.getInt("favorite") == 1) ? true : false);
                    product.setActived((resultSet.getInt("actived") == 1) ? true : false);
                    product.setCreateDate(resultSet.getDate("create_date"));
                    // khoi tao 1 size cua san pham
                    SizeProduct sizeProduct = new SizeProduct();
                    sizeProduct.setId(resultSet.getInt("size_id"));
                    sizeProduct.setSizeName(resultSet.getString("size_name"));
                    // khoi tao 1 gia tien cua 1 size cua san pham
                    PriceProduct priceProduct = new PriceProduct();
                    priceProduct.setIdProduct(resultSet.getInt("id_product"));
                    priceProduct.setSizeProduct(sizeProduct);
                    priceProduct.setPrice(resultSet.getInt("price"));
                    // them gia tien cua 1 size vao list chua tat ca gia san pham
                    listPriceProduct.add(priceProduct);
                }
                else {
                    // khoi tao 1 size cua san pham
                    SizeProduct sizeProduct = new SizeProduct();
                    sizeProduct.setId(resultSet.getInt("size_id"));
                    sizeProduct.setSizeName(resultSet.getString("size_name"));
                    // khoi tao 1 gia tien cua 1 size cua san pham
                    PriceProduct priceProduct = new PriceProduct();
                    priceProduct.setIdProduct(resultSet.getInt("id_product"));
                    priceProduct.setSizeProduct(sizeProduct);
                    priceProduct.setPrice(resultSet.getInt("price"));
                    // them gia tien cua 1 size vao list chua tat ca gia san pham
                    listPriceProduct.add(priceProduct);
                }
            }
            product.setPriceProducts(listPriceProduct);
            ConnectionUtils.closeQuietly(connection);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return product;
    }
    // Ánh sửa trong indexController rồi á
    public static List<Product> getLastestProduct(){
        String sql = "SELECT * FROM `product` AS p INNER JOIN typeproduct " +
                "AS tp ON p.type = tp.id_type_product INNER JOIN priceproduct " +
                "AS pp ON p.id_product = pp.product_id INNER JOIN sizeproduct " +
                "AS sp ON pp.size_id = sp.id_size_product ORDER BY p.create_date DESC" ;
        List<Product> listProduct = null;
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
                // sap xep theo size ( s - m - l )
                Collections.sort(listPriceProduct, new Comparator<PriceProduct>() {
                    @Override
                    public int compare(PriceProduct o1, PriceProduct o2) {
                        return o1.getSizeProduct().getId() - o2.getSizeProduct().getId();
                    }
                });
                // dat lai size va price la list size va price san pham
                p.setPriceProducts(listPriceProduct);
            }
            ConnectionUtils.closeQuietly(connection);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        int display = (listProduct.size() > productDisplay ? productDisplay : listProduct.size());
        return listProduct.subList(0,display);
    }
    public static List<Integer> getListIdProductTopRated(){
        String sql = "SELECT pic.product_id, SUM(pic.quantity) AS \"tong_so_luong\" " +
                "FROM `productsincart` AS pic WHERE bought = 1 GROUP BY pic.product_id " +
                "ORDER BY tong_so_luong DESC";
        List<Integer> listIdProduct = null;
        Connection connection = null;
        try {
            // ket noi voi database
            connection = ConnectionUtils.getConnection();
            // thuc hien truy van sql
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            // thuc hien luu tat ca du lieu tu sql
            ResultSet resultSet = preparedStatement.executeQuery();
            // khoi tao 1 list chua tat ca San Pham
            listIdProduct = new ArrayList<Integer>();
            // khoi tao 1 list chua tat ca Gia San Pham
            while (resultSet.next()) {
                listIdProduct.add(resultSet.getInt("product_id"));
            }
            ConnectionUtils.closeQuietly(connection);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return listIdProduct;
    }

    // Xem cho ánh sql nhé !! ánh chọn product từ productincart đếm thuộc tính bought á
    // lấy limit 4 sản phẩm nha
    // phẩm được mua nhiều nhất.
    public static List<Product> getTopRatedProduct(){
        List<Product> listProduct = new ArrayList<Product>();
        List<Integer> listIdProduct = getListIdProductTopRated();
        for (Integer id: listIdProduct) {
            listProduct.add(getProductById(id));
        }
        int sub = (listProduct.size() > 6 ? 6 : listProduct.size());
        return listProduct.subList(0,sub);
    }
    public static List<Product> getReviewProduct(){
        List<Product> listProduct = new ArrayList<Product>(getAllProductWithType(0));
        Collections.shuffle(listProduct);
        int display = (listProduct.size() > productDisplay ? productDisplay : listProduct.size());
        return listProduct.subList(0,display);
    }
    public static List<Product> getListRelatedProduct(int idType){
        List<Product> listProduct = new ArrayList<Product>(getAllProductWithType(idType));
        Collections.shuffle(listProduct);
        int display = (listProduct.size() > relatedProductDisplay ? relatedProductDisplay : listProduct.size());
        return listProduct.subList(0,display);
    }
    public static List<Product> getAllSaleProduct() {
        String sql = "SELECT * FROM `product` AS p " +
                "INNER JOIN typeproduct AS tp ON p.type = tp.id_type_product " +
                "INNER JOIN priceproduct AS pp ON p.id_product = pp.product_id " +
                "INNER JOIN sizeproduct AS sp ON pp.size_id = sp.id_size_product " +
                "WHERE p.actived = 1 AND p.sale > 0";
        List<Product> listProduct = null;
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
            List<PriceProduct> listAllPrice = new ArrayList<PriceProduct>();
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
                // nếu product chưa tồn tại thì mình thực hiện cu lệnh if còn không là else
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
                // khoi tao 1 list chua size va price 4cua san pham
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
        int display = (listProduct.size() > saleProductDisplay ? saleProductDisplay : listProduct.size());
        return listProduct.subList(0,display);
    }
    public static List<Product> fakeData(){
        List<Product> productList = new ArrayList<Product>();
        for (int i = 0; i < 33; i++){
            Product product = new Product();
            ArrayList<PriceProduct> listPriceProduct = new ArrayList<PriceProduct>();
            product.setId(i);
            product.setProductName("product" + i);
            // khoi tao 1 loai cua san pham
            TypeProduct typeProduct = new TypeProduct();
            typeProduct.setId(i);
            typeProduct.setTypeProduct("type" + i);
            product.setTypeProduct(typeProduct);
            product.setSale((i%2 == 0) ? 0 : 5);
            product.setImage("img/latest-product/lp-1.jpg");
            product.setFavorite(true);
            product.setActived(true);
            // khoi tao 1 size cua san pham
            SizeProduct sizeProduct = new SizeProduct();
            sizeProduct.setId(i);
            sizeProduct.setSizeName("S");
            // khoi tao 1 gia tien cua 1 size cua san pham
            PriceProduct priceProduct = new PriceProduct();
            priceProduct.setIdProduct(i);
            priceProduct.setSizeProduct(sizeProduct);
            priceProduct.setPrice(50000);
            // them gia tien cua 1 size vao list chua tat ca gia san pham
            listPriceProduct.add(priceProduct);
            product.setPriceProducts(listPriceProduct);
            product.setCreateDate(Date.valueOf(LocalDate.now()));
            productList.add(product);
        }

        return productList;
    }

    public static List<Product> getProductPageFake(int indexPage){
        int fromIndex = productDisplay * (indexPage - 1);
        int toIndex = (fromIndex + productDisplay > fakeData().size()) ? fakeData().size() : fromIndex + productDisplay ;
        return fakeData().subList(fromIndex,toIndex);
    }

    public static int numberOfPageFake(){
        return (int) Math.ceil(fakeData().size()/ productDisplay);
    }

    public static void main(String[] args) {
        System.out.println(getLastestProduct());
    }
}
