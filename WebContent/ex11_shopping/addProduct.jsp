<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- 다른 폴더에 있는 사진으로 상품 등록 한 후, 
	main_images 폴더 리프레쉬하고 새로고침까지 해줘야 뜸 -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품등록</title>
<link rel="stylesheet" href="../RESOURCES/boot_strap/css/bootstrap.min.css" />
<script type="text/javascript" src="../RESOURCES/java_script/validation.js"></script>
</head>
<body>
	<jsp:include page="menu.jsp"/>
		<div class = "jumbotron">
			<div class="container">
				<h1 class="display-3">상품 등록</h1>
			</div>
		</div>
		<div class="container">
			<form name="newProduct" action="addProduct-process.jsp" 
			class="form-horizontal" method="post" enctype="multipart/form-data">
				<div class="form-group row">
					<label class="col-sm-2">상품코드</label>
					<div class="col-sm-3"> 
						<input type ="text" id="productId" name="productId" class="form-control">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">상품명</label>
					<div class="col-sm-3"> 
						<input type ="text" id="name" name="name" class="form-control">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">가격</label>
					<div class="col-sm-3"> 
						<input type ="text" id="unitPrice" name="unitPrice" class="form-control">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">상세정보</label>
					<div class="col-sm-5"> 
					<textarea name="description" rows="2" cols="50" class="form-control"></textarea>
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">제조사</label>
					<div class="col-sm-3"> 
						<input type ="text" name="manufacturer" class="form-control">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">분류</label>
					<div class="col-sm-3"> 
						<input type ="text" name="category" class="form-control">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">재고수</label>
					<div class="col-sm-3"> 
						<input type ="text" id="unitsInStock" name="unitsInStock" class="form-control">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">상태</label>
					<div class="col-sm-3"> 
						<input type ="radio" name="condition" value="new" >신규제품
						<input type ="radio" name="condition" value="Old" >중고제품
						<input type ="radio" name="condition" value="Refurbished" >재생제품
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">이미지</label>
					<div class="col-sm-5"> 
						<input type ="file" name="productImage" class="form-control">
					</div>
				</div>
				<div class="form-group row">
					<div class="col-sm-offset-2 col-sum-10">
						<input type ="button" value="등록" class="btn btn-primary"
							   onclick="CheckAddProduct()">
					</div>
				</div>
			</form>
		</div>
</body>
</html>