<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Enumeration" %>
<%@ page import="shopping.Product, shopping.ProductRepository" %>

<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>

<%
	request.setCharacterEncoding("UTF-8");

	String realFolder = "C:\\workspace\\JSP_Training\\WebContent\\RESOURCES\\main_images";
	int maxSize = 5 * 1024 * 1024;
	String encType = "UTF-8";
	DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
	
	MultipartRequest multi = new MultipartRequest(request, realFolder, 
												maxSize, encType, policy);
	
	String productId = multi.getParameter("productId");
	String name = multi.getParameter("name");
	String unitPrice = multi.getParameter("unitPrice");
	String description = multi.getParameter("description");
	String manufacturer = multi.getParameter("manufacturer");
	String category = multi.getParameter("category");
	String unitsInStock = multi.getParameter("unitsInStock");
	String condition = multi.getParameter("condition");
	
	Integer price;
	if(unitPrice.isEmpty())
		price = 0;
	else
		price = Integer.parseInt(unitPrice);

	long stock;
	if(unitsInStock.isEmpty())
		stock = 0;
	else
		stock = Long.valueOf(unitsInStock);
	
	Enumeration<String> files = multi.getFileNames();
	String fname = files.nextElement();
	String fileName = multi.getFilesystemName(fname);
	
	ProductRepository dao = ProductRepository.getInstance();
	
	Product newProduct = new Product();
	newProduct.setProductId(productId);
	newProduct.setPname(name);
	newProduct.setUnitPrice(price);
	newProduct.setDescription(description);
	newProduct.setManufacturer(manufacturer);
	newProduct.setCategory(category);
	newProduct.setUnitsInstock(stock);
	newProduct.setCondition(condition);
	newProduct.setFilename(fileName);
	
	dao.addProduct(newProduct);
	response.sendRedirect("products.jsp");
	
%>