package shopping;
import java.util.ArrayList;

public class ProductRepository {
	
	private ArrayList<Product> listOfProducts = new ArrayList<>();
	private static ProductRepository instance = new ProductRepository();
	
	public ProductRepository() {
		Product phone = new Product("P1234", "iPhone 6s", 800000);
		phone.setDescription("4.7-inch, 1334X750, Renina HD display, 8-megapi");
		phone.setCategory("Smart Phone");
		phone.setManufacturer("Apple");
		phone.setUnitsInstock(1000);
		phone.setCondition("New");
		phone.setFilename("P1234.png");
		
		Product noteBook = new Product("P1235", "gram", 1500000);
		noteBook.setDescription("13.3-inch, IPS LED display, 5rd Generate");
		noteBook.setCategory("Notebook");
		noteBook.setManufacturer("LG");
		noteBook.setUnitsInstock(1000);
		noteBook.setCondition("Refurbished");
		noteBook.setFilename("P1235.png");
		
		Product tablet = new Product("P1236", "Galaxy Tab S", 900000);
		tablet.setDescription("212.8*125.6*6.6mm, Super AMOLED display, Octa");
		tablet.setCategory("Tablet");
		tablet.setManufacturer("SAMSUNG");
		tablet.setUnitsInstock(1000);
		tablet.setCondition("Old");
		tablet.setFilename("P1236.png");
		
		listOfProducts.add(phone);
		listOfProducts.add(noteBook);
		listOfProducts.add(tablet);
	}
	
	// 객체 instance에 대한 get() 메서드
	public static ProductRepository getInstance() {
		return instance;
	}
	
	// 상품 추가
	public void addProduct(Product product) {
		listOfProducts.add(product);
	}
	
	// 목록 조회
	public ArrayList<Product> getAllProducts(){
		return listOfProducts;
	}
	
	// 특정 상품 상세 정보 조회
	public Product getProductById(String productId) {
		Product productById = null;	// 개별상품 변수
		
		for(Product product : listOfProducts) {
			if(product != null && product.getProductId() != null &&
				product.getProductId().equals(productId)) {
			productById = product;
			break;
		}
	}
	return productById;
	}
}