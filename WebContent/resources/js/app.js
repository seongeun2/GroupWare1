//2번째 지정 결재 팝업창
function apPop(){
	var w = 800;
	var h = 500;
	window.open("/GroupWare/orgChart/insa?app=1", "수신지정",'width='+w+',height='+h+',scrollbars=no,status=1')

}

//3번째 지정 결재 팝업창
function apPop2(){
	var w = 800;
	var h = 500;
	window.open("/GroupWare/orgChart/insa?app=2", "수신지정",'width='+w+',height='+h+',scrollbars=no,status=1')

}

// 체크박스 선택 시 부모창으로 값 전달
function check(name2,id2,app){
	//2번째 결재자
	if(app==1){
		window.opener.document.getElementById("name22").innerHTML = name2;	
		opener.document.getElementById("id2").value = id2;
		opener.document.getElementById("name2").value = name2;
	//3번째 결재자
	}else if(app=2){
		window.opener.document.getElementById("name33").innerHTML = name2;	
		opener.document.getElementById("id3").value = id2;
		opener.document.getElementById("name3").value = name2;
	}
	window.close();
}


//반려
function docReturn(num){
	location.href ="docReturn?docNo="+num;

}
