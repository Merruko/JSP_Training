function checkAddForm(){
	
	var form = document.regForm;
	var id = form.memberId.value;
	var pw1 = form.passwd.value;
	var pw2 = form.passwd_cf.value;
	var name = form.name.value;
   
    var regExId = /^[a-zA-z0-9]{4,10}$/; // 영문 대소문자, 숫자조합 4자에서 10자까지
   
	if(!regExId.test(id) || id == ""){
		alert("英文・数字の組み合わせで4文字から10文字まで使えます。");
		form.memberId.focus();
		return false;
	}else if(pw1.length < 5 || pw1.length > 12){
		alert("パスワードは5文字から12文字まで使えます。");
		form.passwd.select();
		return false;
	}else if(pw1 != pw2){
		alert("二つのパスワードを同じく入力してください。");
		form.passwd_cf.select();
		return false;
	}else if(name == ""){
		alert("氏名を入力してください。");
		form.name.focus();
		return false;
	}else{
		form.submit();
    }
   
}