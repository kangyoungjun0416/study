package bp800.product.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import bp800.product.dto.Product;

public class ProductDAO {
    Map<String, Product> products = new HashMap<>();

    public ProductDAO() {

        Product p = new Product(101, "BE01010001", "에일", "에거 라들러", "오스트리아", 3300, "2.5%", "레몬, 복숭아, 자몽, 청포도 맛", 0, 0, "egger.png");
        	products.put("101", p);
        p = new Product(102, "BE01020001", "에일", "곰표 밀맥주", "한국", 3500, "4.5%", "밀맥주의 정석", 0, 0, "bear.png");
        	products.put("102", p);
        p = new Product(103, "BE02030001", "라거", "스텔라 아르투아", "벨기에", 3000, "5%", "묵직한 쓴 맛의 라거 맥주", 0, 0, "stella.png");
        	products.put("103", p);
        p = new Product(104, "BE02040001", "라거", "버드 와이저", "미국", 3300, "5%", "라거의 정석", 0, 0, "budweiser.png");
        	products.put("104", p);
        p = new Product(105, "BE02020002", "라거", "클라우드 생 드래프트", "한국", 2500, "4.5%", "생맥주맛", 0, 0, "klouder.png");
        	products.put("105", p);
        p = new Product(106, "BE01500001", "에일", "블랑 1664", "프랑스", 3200, "5%", "향긋한 향이 특징", 0, 0, "blanc.png");
        	products.put("106", p);
        p = new Product(107, "BE02060001", "라거", "칭따오", "중국", 3200, "4.7%", "달짝 청량한 맛", 0, 0, "tsingtao.png");
        	products.put("107", p);
        p = new Product(108, "BE01030002", "에일", "호가든", "벨기에", 3000, "4.9%", "달짝 청량한 맛", 0, 0, "hoegaarden.png");
        	products.put("108", p);
        p = new Product(109, "BE02020003", "라거", "테라", "한국", 2000, "4.5%", "테라슬라", 0, 0, "terra.png");
        	products.put("109", p);
        p = new Product(110, "BE02020004", "라거", "카스", "한국", 2000, "4.5%", "국산 밀맥주의 정석", 0, 0, "cass.png");
        	products.put("110", p);
    }

    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    public Product find(String id) {
        return products.get(id);
    }
}
