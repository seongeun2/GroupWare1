//2��° ���� ���� �˾�â
function apPop(){
	var w = 800;
	var h = 500;
	window.open("/GroupWare/orgChart/insa?app=1", "��������",'width='+w+',height='+h+',scrollbars=no,status=1')

}

//3��° ���� ���� �˾�â
function apPop2(){
	var w = 800;
	var h = 500;
	window.open("/GroupWare/orgChart/insa?app=2", "��������",'width='+w+',height='+h+',scrollbars=no,status=1')

}

// üũ�ڽ� ���� �� �θ�â���� �� ����
function check(name2,id2,app){
	//2��° ������
	if(app==1){
		window.opener.document.getElementById("name22").innerHTML = name2;	
		opener.document.getElementById("id2").value = id2;
		opener.document.getElementById("name2").value = name2;
	//3��° ������
	}else if(app=2){
		window.opener.document.getElementById("name33").innerHTML = name2;	
		opener.document.getElementById("id3").value = id2;
		opener.document.getElementById("name3").value = name2;
	}
	window.close();
}


//�ݷ�
function docReturn(num){
	location.href ="docReturn?docNo="+num;

}