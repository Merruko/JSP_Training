function checkForm(){
	
	var form = document.regForm;
	var id = form.memberId.value;
	var pw1 = form.passwd.value;
	var pw2 = form.passwd_cf.value;
	var name = form.name.value;
   
    var regExId = /^[a-zA-z0-9]{4,10}$/; //영문 대소문자, 숫자조합 4자에서 10자까지
   
	if(!regExId.test(id) || id == ""){
		alert("영문 대소문자, 숫자조합 4자에서 10자까지 사용 가능 합니다");
		form.memberId.focus();
		return false;
	}else if(pw1.length < 5 || pw1.length > 12){
		alert("비밀번호는 5자에서 12자까지 사용 가능 합니다");
		form.passwd.select();
		return false;
	}else if(pw1 != pw2){
		alert("비밀번호를 동일하게 입력하세요");
		form.passwd_cf.select();
		return false;
	}else if(name == ""){
		alert("이름은 필수 입력 사항입니다.");
		form.name.focus();
		return false;
	}else{
		form.submit();
   }
}