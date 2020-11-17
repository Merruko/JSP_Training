function checkUpdForm(){
	
	var form = document.updateForm;
	var pw1 = form.passwd.value;
	var pw2 = form.passwd_cf.value;
	var name = form.name.value;
   
	if(pw1.length < 5 || pw1.length > 12){
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