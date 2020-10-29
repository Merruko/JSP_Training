<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품등록</title>
</head>
<link rel="stylesheet" href="../RESOURCES/boot_strap/css/bootstrap.min.css">
<body>
	<jsp:include page="menu.jsp"/>
		<div class = "jumbotron">
			<div class="container">
				<h1 class="display-3">상품 등록</h1>
			</div>
		</div>
		<div class="container">
			<form name="newProduct" action="addProduct-process.jsp" class="form-horizontal" method="post">
				<div class="form-group row">
					<label class="col-sm-2">상품코드</label>
					<div class="col-sm-3"> 
						<input type ="text" name="productId" class="form-control">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">상품명</label>
					<div class="col-sm-3"> 
						<input type ="text" name="name" class="form-control">
					</div>
				</div>
				<div class="form-group row">
					<label class="col-sm-2">가격</label>
					<div class="col-sm-3"> 
						<input type ="text" name="unitPrice" class="form-control">
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
						<input type ="text" name="unitsInStock" class="form-control">
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
					<div class="col-sm-offset-2 col-sum-10">
						<input type ="submit" class="btn btn-primary" value="등록">
					</div>
				</div>
			</form>
		</div>
</body>
</html>