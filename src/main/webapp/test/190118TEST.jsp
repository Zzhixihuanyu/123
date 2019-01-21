<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
var tbody=document.getElementById("tbody");
var Id=1;
var testadd=function(){
	var name=document.getElementsByName("name");
	var oTr = document.createElement("tr");
	var oTd = document.createElement("td");
	oTd.innerHTML=Id++;
	oTr.appendChild(oTd);
	
	oTd = document.createElement("td");
	oTd.innerHTML=name[0].value;
	oTr.appendChild(oTd);
	
	var name=document.getElementsByName("sex");
	oTd = document.createElement("td");
	for(var i=0;i<name.length;i++){
	    if(name[i].checked)
		oTd.innerHTML=name[i].value;
	}
	oTr.appendChild(oTd);
	var hobby=document.getElementsByName("hobby");
	var flag = 0;
	for(var i=0;i<hobby.length;i++)
		{
		if(hobby[i].checked){
			if(flag==0){
			oTd = document.createElement("td");
		oTd.innerHTML=hobby[i].value;
		oTr.appendChild(oTd);
		flag=1;
			}
			else
			oTd.innerText=oTd.innerText +hobby[i].value;
		}
		}
	var location=document.getElementById("location");
	var index = location.selectedIndex;
	oTd = document.createElement("td");
	oTd.innerHTML=location[index].value;
	oTr.appendChild(oTd);
	oTd = document.createElement("td");
	oTd.innerHTML='<a href="#">删除</a>&nbsp;&nbsp;<a href="javascript:;">修改</a>'
 var atage=oTd.getElementsByTagName("a");
	
    atage[0].onclick=testdelete;
  atage[1].onclick=testupdate;
    oTr.appendChild(oTd);
	document.getElementById('tbody').appendChild(oTr);

};
var testdelete = function(){
	var temp=this.parentNode.parentNode;
	temp.style.backgroundColor="yellow";
	if(confirm("是否删除本行"))
		{
		document.getElementById('tbody').removeChild(temp);
		}else{
			temp.removeAttribute('style');
		}
	
};
 var select = function(){
	var v = document.getElementsByName("select");
	var name = v[0].value;
	var l = document.getElementById("select");
	var temp=document.getElementsByTagName("tr");
	var len = temp.length;
	for(var i=0;i<len;i++)
		{
		temp[i].removeAttribute("style");
		}
	for(var i=1;i<len;i++)
		{

		if((l.value==0||l.value==temp[i].childNodes[4].innerHTML)&&name==temp[i].childNodes[1].innerHTML)
			temp[i].style.backgroundColor="red";
		}
}
var testupdate = function(){ 
	var thist = this.parentNode;
	
	var location = thist.previousSibling;
	var hobby = location.previousSibling;
	var sex = hobby.previousSibling;
	var name= sex.previousSibling;
	var tId=name.previousSibling.innerHTML;
	 name.innerHTML = "<input type='text' id='name"+tId+"' value='"+name.innerHTML+"'>";
	
	
	
	 sex.innerHTML="<input type='radio' name='sex"+tId+"' value='男'>男<input type='radio' name='sex"+tId+"' value='女'/>女";
     hobby.innerHTML="<input type='checkbox' name='hobby"+tId+"' value ='跑步'/>跑步<input type='checkbox' name='hobby"+tId+"' value ='游泳'/>游泳<input type='checkbox' name='hobby"+tId+"' value ='羽毛球'/>羽毛球";
     location.innerHTML="<select id='location"+tId+"'><option value='北京'  >北京</option><option value='南京'  >南京</option></select>";
    thist.innerHTML="<a href='javascript:;'>保存</a>";
   thist.getElementsByTagName("a")[0].onclick=function(){
	   console.log("-------------")
	   name.innerHTML=document.getElementById("name"+tId).value;
		var temp=document.getElementsByName("sex"+tId);
		for(var i=0;i<temp.length;i++){
		    if(temp[i].checked)
			sex.innerHTML=temp[i].value;
		}
		temp=document.getElementsByName("hobby"+tId);
		console.log(temp[2].value);
		var flag = 0;
		alert(temp.length)
		for(var i=0;i<temp.length;i++)
			{
			alert(temp[i].checked);
			var T;
			if(temp[i].checked){
		    alert(temp[i].value)
				if(flag==0){
					T=temp[i].value;
				    flag=1;
				}
				else
					T=T +temp[i].value;
				}
			}
		
		hobby.innerHTML=T;
	    location.innerHTML=document.getElementById("location"+tId).value;
	    thist.innerHTML='<a href="#">删除</a>&nbsp;<a href="#">修改</a>';
	    var atage=thist.getElementsByTagName("a");
		
	    atage[0].onclick=testdelete;
    	atage[1].onclick=testupdate;
			}
   }


</script>
</head>
<body>
<div>
记录列表<br><br>
姓名：<input type="text" name="name" /><br>
性别：<input type="radio" name="sex" value="男"/>男&nbsp;
<input type="radio" name="sex" value="女"/>女<br>
爱好：<input type="checkbox" name="hobby" value ="跑步">跑步
    <input type="checkbox" name="hobby" value ="游泳">游泳
    <input type="checkbox" name="hobby" value ="羽毛球">羽毛球<br>
地址：<select id="location">
    <option value="北京"  >北京</option>
    <option value="南京"  >南京</option>
</select>
<textarea name="comment" rows = "5" cols = "20" ></textarea><br>
<button onclick="testadd()">添加</button><br><br>
姓名：<input type="text" name="select" placeholder="姓名"/>
地址：<select id="select">
     <option value="0">全部</option>
    <option value="北京">北京</option>
    <option value="南京">南京</option>
</select>
<button onclick="select()">搜索</button><br>
<table style="border: 1px solid black;width:600px;">
<thead>
   <tr>
              <th style="width: 5%;text-align: left">ID</th>
              <th style="width: 10%;text-align: left">姓名</th>
              <th style="width: 10%;text-align: left">性别</th>
              <th style="width: 30%;text-align: left">爱好</th>
              <th style="width: 10%;text-align: left">地址</th>
              <th style="width: 35%;text-align: left">操作</th>
   </tr>
</thead>
<tbody id="tbody"></tbody>
</table>
</div>
</body>
</html>