<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

var vinput=document.getElementsByTagName("input");
var vtbody=document.getElementById('tbody');
var vId = 1;
function testadd(){
	var i0 = vinput[0].value;
	var i1 = vinput[1].value;


var oTr=document.createElement('tr'); //<tr></tr>
var oTd=document.createElement('td');//<td></td>
    oTd.innerHTML=vId++;       // <td>1</td>
    oTr.appendChild(oTd); //将oTd放在oTr的下一级<tr><td>1</td></tr>
    
    oTd=document.createElement('td');//<td></td>
    oTd.innerHTML=i0;//<td>姓名</td>
    oTr.appendChild(oTd);//<tr><td>1</td><td>姓名</td></tr>
    
    oTd=document.createElement('td');//<td></td>
    oTd.innerHTML=i1;//<td>姓名</td>
    oTr.appendChild(oTd);//<tr><td>1</td><td>姓名</td><td>年龄</td></tr>
    
    oTd=document.createElement('td');
    oTd.innerHTML='<a href="#">删除</a>&nbsp;&nbsp;<a href="#">修改</a>';
    var atag=oTd.getElementsByTagName("a");
    atag[0].onclick=testdelete;
    atag[1].onclick=testupdate;
    oTr.appendChild(oTd);
   

     document.getElementById('tbody').appendChild(oTr);

//     document.getElementById('tbody').innerHTML=document.getElementById('tbody').innerHTML+
//     	"<tr><td>"+ vId++ +"</td><td>"+i0+"</td><td>"+i1+"</td><td>"+"<a href='#'>删除</a>&nbsp;&nbsp;"+"<a href='#'>修改</a></td></tr>"
    	}
var testupdate=function(){
    var thistd = this.parentNode; //找到最后一个td
    var tAge = thistd.previousSibling;
    var tName = tAge.previousSibling;
    var tId = tName.previousSibling.innerHTML;
    tAge.innerHTML="<input type='text' id='tAge"+tId+"' value='"+tAge.innerHTML+"'>";
    tName.innerHTML="<input type='text' id='tName"+tId+"' value='"+tName.innerHTML+"'>";
    thistd.innerHTML="<a href='javascript:;'>保存</a>";
    thistd.getElementsByTagName('a')[0].onclick=function(){
    	tAge.innerHTML=document.getElementById('tAge'+tId).value;
    	tName.innerHTML=document.getElementById('tName'+tId).value;
    	thistd.innerHTML='<a href="javascript:;">删除</a>&nbsp;&nbsp;<a href="javascript:;">修改</a>';
        var atag=thistd.getElementsByTagName('a');
        atag[0].onclick=testdelete; //将方法赋值给onclick
        atag[1].onclick=testupdate;
    }
}
var testdelete=function(){
	var temp = this.parentNode.parentNode;
	temp.style.backgroundColor="yellow";
	if(confirm('是否删除此行')){
		document.getElementById('tbody').removeChild(temp);
		
	}else{
		temp.remveAttribute('style');
	}
}
var testselect=function(){
	var fin = vinput[2].value;
	var temp = document.getElementsByTagName("tr");
	var len=temp.length;
	for(var i=1;i<len;i++)
	temp[i].removeAttribute('style');
	if(fin==''){
		return
	}
	for(var i=1;i<len;i++)
	{
		
	 if(temp[i].childNodes[1].innerHTML==fin)
		 temp[i].style.backgroundColor="red";
	}
	
	
}

    	</script>
</head>
<body>
<div>
记录列表<br><br>
姓名：<input type="text" placeholder="必填非数字"/>
年龄：<input type="text" placeholder="必填数字"/>
<button onclick="testadd()" >添加</button><br><br>
姓名：<input type="text" placeholder="姓名"/>
<button onclick="testselect()">搜素</button><br><br>
<table style="border: 1px solid black;width:600px;">
      <thead>
           <tr>
              <th style="width: 15%;text-align: left">ID</th>
              <th style="width: 33%;text-align: left">姓名</th>
              <th style="width: 33%;text-align: left">年龄</th>
              <th style="width: 15%;text-align: left">操作</th>
           </tr>
      </thead>
      <tbody id = "tbody"></tbody>
</table>
</div>
</body>
</html>