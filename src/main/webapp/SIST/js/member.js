function idCheckFun(obj){
	 
	if($("input#id").val().length==0){
		alert('idCheck');
		return false;
	}
	
	$.ajax({ 
		url:'idAjax.jsp',
		type:'POST',
		dataType:'text',
		data:{id:$("input#id").val()},
		success:function(v){
			if(v.trim()=='true'){
				$("span#rsp").html("<font size=3 color='red'>이미 사용 중</font>"); //아이디 
				$("input#id").val('');
				$("input#id").focus();
			}else{
				$("span#rsp").html("<font size=3 color='blue'>사용가능</font>");
			}
			//$("span#rsp").fadeOut(4000);
		},error:function(){
			alert('error');
		}
	})
	
}
function sendPost(){
	window.open('address.jsp','id','left=300,top=100,width=400,height=400');
}
$(function(){
	$("a#idCheck").click(function(){
		idCheckFun(this);
	});
	$("input#idImg").click(function(){		
		if($("input#id").val().length==0){
			alert('ID WRITE!');
			return false;
		}
		document.idFrm.submit();
		
	});	
	$("a#here").click(function(){
		window.opener.document.joinFrm.id.value=this.name;
		self.close();
		
	});
	$("input#searchDong").click(function(){
		if($("input#dong").val().length==0){
			alert('Dong input');
			return false;
		}
		//document.searchFrm.submit();
		$("form[name='searchFrm']").submit();
	});
	
	$("a[name='addr']").click(function(){
		 
		
		window.opener.document.joinFrm.post1.value=$(this).text().trim().split("-")[0];
		window.opener.document.joinFrm.post2.value=$(this).text().trim().split("-")[1];
		window.opener.document.joinFrm.address1.value=$(this).text().trim().split("-")[2];
		self.close();
	});
	
	
	function telCheck(){
		 $("input[name='tel1']").val('');
		 $("input[name='tel2']").val('');
		 $("input[name='tel3']").val('');
		 $("input#tel1").focus();
	}
	
	
	$("input#password2").blur(function(){ //blur = 포커스를 잃었을때
		//alert(!($("input#password2").val()>0&& $("input#password1").val()==$("input#password2").val()));
		if(!($("input#password2").val()>0&& $("input#password1").val()==$("input#password2").val())){
			alert('PasswordCheck!');
			$("input#password1").val('');
			$("input#password2").val('');
			$("input#password1").focus();
			return false;
		}else{
			$("input#password").val($("input#password2").val());
		}
	});
 
	
	$("select#sel").change(function(){
		if($(this).val()=='direct'){ //disable해제시켜야함
			$("input[name='email2']").val(''); //직접입력 칸은 항상 비우기
			$("input[name='email2']").attr("disabled",false);
		}else{ //다음 네이버 등
			$("input[name='email2']").attr("disabled",true);
			$("input[name='email2']").val($("select[name='email3']").val());
		}
	});
	
	
	$("a#send").click(function(){
		//제약사항 
		  $("input[name='password']").val($("input[type='password']").val());
		$("input[name='birth']").val($("input[name='year']").val()+"/"+$("input[name='month']").val()+"/"+$("input[name='day']").val());
		
		 if($("input[name='address1']").val().length==0||$("input[name='address2']").val().length==0){ //주소검색을 아예안했거나 상세주소 안썼을시
		  alert('주소를 입력하세요!');
		$("input[name='post1']").val('');
		$("input[name='post2']").val('');
		$("input[name='address1']").val('');
		$("input[name='address2']").val('');
		return false;
	}else{
		$("input[name='address']").val($("input[name='post1']").val()+"-"+$("input[name='post2']").val()+$("input[name='address1']").val()+$("input[name='address2']").val());
		
	}  
	 
	 
	 
		 
		
		 if($("input[name='email1']").val().length==0||$("input[name='email2']").val()==0){
			alert('이메일을 입력해주세요');
			$("input[name='email1']").val('');
			$("input[name='email2']").val('');
			$("select#sel").prop("selectedIndex",0); //선택하세요 부분에 굳혀짐
			return false;
		}else{
			$("input[name='email']").val($("input[name='email1']").val()+'@'+$("input[name='email2']").val());
		} 
		
		
		
		 if($("input#tel1").val().length==0||$("input#tel2").val().length==0||$("input#tel3").val().length==0){ //핸드폰 번호
			alert('전화번호를 입력해주세요');
			$("input#tel1").val('');
			$("input#tel2").val('');
			$("input#tel3").val('');
		    return false;
		}else{
			 if(isNaN($("input#tel1").val())||isNaN($("input#tel2").val())||isNaN($("input#tel3").val())){
				   alert('숫자로 입력해주세요');
				   $("input#tel1").val('');
					$("input#tel2").val('');
					$("input#tel3").val('');
				   return false;
		}
	} 
		$("input#tel").val($("input#tel1").val()+"-"+$("input#tel2").val()+"-"+$("input#tel3").val());
 
		$("form").submit(); 
	});
	 
	
});
 

 

