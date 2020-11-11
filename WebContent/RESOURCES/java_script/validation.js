function checkForm(){
	var form = document.regForm;
	var id = form.memberId.value;
	var pw = form.passwd.value;
	var pw2 = form.passwd_cf.value;
	var name = form.name.value;
	
	var regExId = /^[0-9]{4}$/;		//4자리의 숫자만 가능 
	
	if(!regExId.test(id) || id==""){
		alert("아이디는 4자리 숫자만 가능합니다.");
		form.memberId.focus();
		return false;
	}else if(pw.length < 5 || pw.length > 12){
		alert("비밀번호는 5자에서 12자까지 입력해주세요");
		form.passwd.select();
		return false;
	}else if(pw != pw2){
		alert("비밀번호를 동일하게 입력하세요");
		form.passwd_cf.select();
	}else if(name == ""){
		alert("이름은 필수입력 사항입니다.");
		form.name.focus();
		return false;
	}else{
		form.submit();
	}
}