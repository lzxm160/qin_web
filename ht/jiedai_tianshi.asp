<%@language="vbscript" codepage="936"%>
<!--#include file="conn.asp" -->
<!--#include file="session.asp" -->
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=gb2312">
<title></title>
<link href="images/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<%
if trim(request.querystring("action"))="list" then












OrderBy = request("OrderBy") '当前记录的排序序号 at_no ，at_id是记录的id 我这个表里id和序号是分开的 
at_ID = request("at_ID") '当前记录id 
action = request("action") '移动方向 
paixu=request("paixu")




if paixu="up" then '上移 
		'首先判断是不是已经移动到最前 
		sql="select top 1 id from jiedai_tianshi where flag<"&OrderBy&" order by flag desc" 
		set rs=server.createobject("adodb.recordset") 
		rs.open sql,conn,1,3 
		if rs.eof then '前边没有记录 了 
		rs.close 
		set rs=nothing 
		response.write "<script>alert('错误，该条信息已经位于首位了');window.history.back();</script>" 
		response.end 
		end if 
		before_id=rs("id") '前一条记录的id 
		rs.close 
		set rs=nothing 

		'修改前一条记录的id 
		sql2="select flag from jiedai_tianshi where id="&before_id '查询前一条记录 
		set rs2=server.createobject("adodb.recordset") 
		rs2.open sql2,conn,1,3 
		before_Orderby=rs2("flag") '记录该记录的排序序号 
		rs2("flag")=OrderBy '更改该记录的排序序号 
		rs2.update 
		rs2.close 
		set rs2=nothing 
		
		sql3="select flag from jiedai_tianshi where ID="&at_ID '查询当前记录（要移动的记录） 
		set rs3=server.createobject("adodb.recordset") 
		rs3.open sql3,conn,1,3 
		rs3("flag")=before_Orderby '修改当前记录的排序序号为前一记录的序号，到此 两条记录序号交换 实现上移 
		rs3.update 
		rs3.close 
		set rs3=nothing 

elseif paixu="Down" then '下移与上移道理一样 
		sql="select top 1 id from jiedai_tianshi where flag>"&OrderBy&" order by flag asc" 
		set rs=server.createobject("adodb.recordset") 
		rs.open sql,conn,1,3 
		if rs.eof then 
		rs.close 
		set rs=nothing 
		response.write "<script>alert('错误，该条信息已经位于最后一位了');window.history.back();</script>" 
		response.end 
		end if 
		end_id=rs("ID") 
		'response.Write(end_id) 
		'response.End() 
		rs.close 
		set rs=nothing 
		
		sql2="select flag from jiedai_tianshi where ID="&end_id 
		set rs2=server.createobject("adodb.recordset") 
		rs2.open sql2,conn,1,3 
		end_Orderby=rs2("flag") 
		rs2("flag")=OrderBy 
		rs2.update 
		rs2.close 
		set rs2=nothing 
		
		sql3="select flag from jiedai_tianshi where ID="&at_ID 
		set rs3=server.createobject("adodb.recordset") 
		rs3.open sql3,conn,1,3 
		rs3("flag")=end_Orderby 
		rs3.update 
		rs3.close 
		set rs3=nothing 
end if 


















%>
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="input">
  <tr>
    <td>
<table width="100%" height="25" border="0" cellpadding="0" cellspacing="0" bordercolor="#cccccc" bgcolor="#D3E5FA">
  <tr> 
    <td style="padding-left:15"><strong><font color="#215dc6">信息管理</font></strong> 
    
    
    
    
    
    
    
    
    
    
    
    
    <%
	  set ras=server.CreateObject("adodb.recordset")
     ras.open "select * from xbz order by anclassidorder",conn,1,1
	if ras.eof and ras.bof then
	response.write "请先添加栏目。"
	response.end
	else
  %>
          <select name="anclassid" size="1" id="anclassid" onChange='javascript:window.open(this.options[this.selectedIndex].value,"_self")' style="display:none">
            
            
            <option selected value="" selected >请选择类别</option>
            
            
                        <option value="?cid=<%=ras("anclassid")%>&action=list"><%=trim(ras("anclass"))%></option>

            
            
            <%
         selclass=ras("anclassid")
        ras.movenext
        do while not ras.eof
	%>
            <option value="?cid=<%=ras("anclassid")%>&action=list"><%=trim(ras("anclass"))%></option>
            <%
        ras.movenext
        loop
		end if
        ras.close
	%>
        </select>
    
    
    
    
    
    
    
    
    
    
    
    </td>
  </tr>
</table><br>




<% 
classid=trim(request.querystring("cid"))
set rs=server.createobject("adodb.recordset")
if classid<>"" then
sql="select * from jiedai_tianshi where anclassid="&classid&" order by flag asc"
else
sql="select * from jiedai_tianshi order by flag asc"
end if
rs.open sql,conn,1,1
rs.pagesize=10

if not rs.eof then

if request.QueryString("page")<>"" then
page=cint(trim(request.querystring("page")))
else
page=1
end if

if page<1 then
    page=1
elseif page>rs.pagecount then
page=rs.pagecount
end if
rs.absolutepage=page
 %>





<%
if rs.bof then response.write("<center><br><br><br><br><br><br><font color=red>暂无</font>信息！<br><br><br><br><br><br></center>")
 for i=1 to rs.pagesize
    if rs.eof then exit for 
 %>
<table width="100%" height="25" border="0" cellpadding="0" cellspacing="0" bordercolor="#cccccc">
  <tr align="center">
    <td width="50" align="center" class="line"><%= rs("flag") %></td>
    <td width="950" align="left" class="line"><span class="style1">&nbsp;<%= rs("classid") %></span></td>
    <td width="132" align="center" class="line">&nbsp;</td>
    <td width="50" align="center" class="line"><a href="?action=edit&id=<%= rs("id") %>">[修改]</a></td>
    <td width="50" align="center" class="line"><a href="?action=del&id=<%= rs("id") %>" onClick="return window.confirm('确定删除吗?');">[删除]</a></td>
  </tr>
</table>
<br>
<% 
rs.movenext
next
else
response.write"暂无信息"
end if
%>
<table width="100%" height="25" border="0" cellpadding="0" cellspacing="0" bordercolor="#cccccc">
  <tr> 
    <td width="1122" align="center">第<%= page %>页&nbsp; 
      <% if page<>1 then %>
      <a href="?action=list&page=1&classid=<%= classid %>">首页</a> 
      <% else %>
      首页 
      <% end if %>
      &nbsp; 
      <% if page>1 then %>
      <a href="?action=list&page=<%= page-1 %>&classid=<%= classid %>">上一页</a> 
      <% else %>
      上一页 
      <% end if %>
      &nbsp; 
      <% if page<rs.pagecount then %>
      <a href="?action=list&page=<%= page+1 %>&classid=<%= classid %>">下一页</a> 
      <% else %>
      下一页 
      <% end if %>
      &nbsp; 
      <% if page<rs.pagecount then %>
      <a href="?action=list&page=<%=rs.pagecount%>&classid=<%= classid %>">末页</a> 
      <% else %>
      末页 
      <% end if %>
      &nbsp;总数<%= rs.recordcount %>条</td>
    <td width="110" align="center">转到第 
      <select name="select" onchange='javascript:window.open(this.options[this.selectedindex].value,"_self")'>
        <%for m = 1 to rs.pagecount%>
        <option value="?action=list&page=<%=m%>&classid=<%= classid %>"><%=m%></option>
        <% next %>
      </select>
    页</td>
  </tr>
</table>
</td>
  </tr>
</table>
<% end if %>
<% if trim(request.querystring("action"))="add" then
	if trim(request.form("add"))="add" then
		classid=trim(request.form("classid"))
		for i = 1 to request.form("content").count
		  scontent = scontent & request.form("content")(i)
		next
		set rs=server.createobject("adodb.recordset")
		sql="select * from jiedai_tianshi"
		rs.open sql,conn,1,3
		rs.addnew
		if request.form("flag")<>"" then
		rs("flag")=request.form("flag")
		else
		rs("flag")=100
		end if
		rs("body")=scontent
		
	rs("anclassid")=request.form("anclassid")
	if request.Form("xse")<>"" then
	rs("tpcheck")=request.form("xse")
	else
	rs("tpcheck")=0
	end if
	rs("tupian")=request.form("image")
		rs.update
		rs.requery
		rs.close
		set rs=nothing
	end if
%>
<script language="javascript" type="text/javascript">
// 验证用户名和留言
function check_add(){
if(document.form1.classid.value==""){alert("请填入您的姓名！");document.form1.classid.focus();return false;}
return true
}
</script>
<form name="form1" method="post" action="?action=add" onSubmit="return check_add()">
  <table width="100%" height="92" border="0" cellpadding="0" cellspacing="0" bordercolor="#cccccc">
    <tr> 
      <td width="77" height="30" align="right">名称:</td>
      <td><input name="classid" type="text" id="classid" size="40"> 
      　排序:
        <input name="flag" type="text" id="flag" size="8"></td>
    </tr>
    
    
   
   
<script language="javascript">

function xs(){

if (form1.xse.checked==true)
{
alle.style.display="block";
}
else{

alle.style.display="none";

}




}




</script>


   
   
   
   
    <tr>
      <td align="right">照片:</td>
      <td><input type="checkbox" name="xse" onClick="xs();" id="led" style="cursor:hand" value="1"></td>
    </tr>
    <tr id="alle" style="display:none">
      <td align="right">地址:</td>
      <td><table width="50%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><input name="image" type="text" id="image" size="40" style="height:20"></td>
            <td style="padding-left:8px"><iframe src="jiedai_up.asp" width="270" marginwidth="0" height="25" marginheight="0" scrolling="no" frameborder="0"></iframe></td>
          </tr>
      </table></td>
    </tr>
    <tr height="30" style="display:none">
      <td align="right">类型:</td>
      <td><%
	  set rs=server.CreateObject("adodb.recordset")
     rs.open "select * from xbz order by anclassidorder",conn,1,1
	if rs.eof and rs.bof then
	response.write "请先添加栏目。"
	response.end
	else
  %>
          <select name="anclassid" size="1" id="anclassid">
            <option selected value="<%=rs("anclassid")%>"><%=trim(rs("anclass"))%></option>
            <%
        dim selclass
         selclass=rs("anclassid")
        rs.movenext
        do while not rs.eof
	%>
            <option value="<%=rs("anclassid")%>"><%=trim(rs("anclass"))%></option>
            <%
        rs.movenext
        loop
		end if
        rs.close
	%>
        </select></td>
    </tr>






    
    <tr>
      <td height="30" align="center">简介:</td>
      <td>
	  <input type="hidden" name="content" value="">
	   <iframe id="ewebeditor1" src="<%=webed%>" frameborder="0" scrolling="no" width="100%" height="350"></iframe>	  </td>
    </tr>
    <tr>
      <td height="30" colspan="2" background="images/bg_title.gif" style="padding-left:50"><table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="9"></td>
        </tr>
      </table>
        <%if request.form("add")="add" then
		 response.write"<img src=images/cms-ico7.gif width=12 height=11><font color=#ff0000><b></b>信息已添加成功</font>"
		 %>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="9"></td>
          </tr>
        </table><%end if%><input type="image" name="imageField2" src="images/submit-bt.gif">
<input name="add" type="hidden" id="add" value="add"></td>
    </tr>
  </table>
</form>
<% end if %>








<%

if trim(request.querystring("action"))="edit" then

%>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td align="center" valign="top">
<% 
	if trim(request.form("add"))="add" then
		id=trim(request.querystring("id"))
		classid=trim(request.form("classid"))
		for i = 1 to request.form("content").count
		  scontent = scontent & request.form("content")(i)
		next
		set rs=server.createobject("adodb.recordset")
		sql="select * from jiedai_tianshi where id="&id
		rs.open sql,conn,1,3
		rs("body")=scontent
		rs("flag")=request.form("flag")
		
		
		
		
	rs("anclassid")=request.form("anclassid")
	rs("tpcheck")=request.form("xse")
	rs("tupian")=request.form("image")
		rs.update
		rs.requery
		rs.close
		set rs=nothing
		
		
		
	end if
	
		id=trim(request.querystring("id"))
		sql="select * from jiedai_tianshi where id="&id
		set rs=conn.execute(sql)

%>
<script language="javascript" type="text/javascript">
// 验证用户名和留言
function check_edit(){
	var notnull;
	notnull=true;
	if (document.form1.classid.value==""){
		alert("标题不能为空！");
		document.form1.classid.focus();
		notnull=false;
		}
		return notnull;
	}
</script>


			
<script language="javascript">

function xs(){

if (form1.xse.checked==true)
{
alle.style.display="block";
}
else{

alle.style.display="none";

}

}




</script>







<form name="form1" method="post" action="?action=edit&id=<%= trim(request.querystring("id")) %>" onSubmit="return check_edit()">
  <table width="100%" border="0" cellpadding="4" cellspacing="0" >
    <tr>
      <td width="77" align="right" style="padding-left:15">标题:</td>
      <td height="20" align="left"><input name="classid" type="text" id="classid" size="40" value="<%=rs("classid")%>"> 
        <input name="add" type="hidden" id="add" value="add"></td>
      </tr>
      
      
      
      
      
                <tr>
                  <td align="right">照片:</td>
            <td align="left"><input type="checkbox" name="xse" onClick="xs();" id="led" style="cursor:hand" value="1" <%if rs("tpcheck")="1" then response.write"checked"%>></td>
          </tr>
		  
		  <%if rs("tpcheck")="0" then%><tr id="alle" style="display:none">
		  <td align="right"></td>
		  <%else%><tr id="alle">
		  <td align="right"></td>
		  <%end if%>
		  
		  
            <td><table width="50%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td>
				  
				  <%if rs("tpcheck")="1" then%>
				  
				  <input name="image" type="text" id="image" size="40" style="height:20" value="<%=rs("tupian")%>">
				  
				  <%else%>
				  
				  <input name="image" type="text" id="image" size="40" style="height:20">
				  
				  <%end if%>				  </td>
                  <td style="padding-left:8px"><iframe src="jiedai_up.asp" width="270" marginwidth="0" height="25" marginheight="0" scrolling="no" frameborder="0"></iframe></td>
                </tr>
            </table></td>
          </tr>
		  <tr bordercolor="#cccccc" style="display:none">
            <td align="right">类型:</td>
		    <td><%dim rs1
	  set ras=server.CreateObject("adodb.recordset")
			   		set rs1=server.CreateObject("adodb.recordset")
					rs1.open "select * from jiedai_tianshi where id="&id,conn,1,1
					ras.open "select * from xbz order by anclassidorder",conn,1,1
					if ras.eof and ras.bof then
					response.write "请先添加栏目。"
					response.end
					else
				%>
                <select name="anclassid" size="1" id="anclassid" onChange="changelocation(document.myform.anclassid.options[document.myform.anclassid.selectedIndex].value)">
                  <%do while not ras.eof%>
                  <option value="<%=ras("anclassid")%>" <%if rs1("anclassid")=ras("anclassid") then%>selected<%end if%>><%=trim(ras("anclass"))%></option>
                  <%
					ras.movenext
					loop
					end if
					ras.close
				%>
              </select></td>
	      </tr>
      
      

      
      
      
      
      
      
      
    <tr>
      <td align="right" valign="top">简介:</td>
      <td height="323" valign="top">
      
      	  <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td height="5"></td>
            </tr>
          </table>
          <textarea name="content" style="display:none"><%=rs("body")%></textarea>
          
                <iframe id="ewebeditor1" src="<%=webed%>" frameborder="0" scrolling="no" width="100%" height="340"></iframe>
 <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="9"></td>
          </tr>
        </table>      排序:
      <input name="flag" type="text" id="flag" size="8" value="<%=rs("flag")%>"></td>
      </tr>
      
      
      
      
      
      
    <tr>
      <td align="left" valign="top" background="images/bg_title.gif" style="padding-left:50">&nbsp;</td>
      <td height="30" align="left" valign="top" background="images/bg_title.gif" style="padding-left:50">        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="9"></td>
          </tr>
        </table>
        <%if request.form("add")="add" then
		 response.write"<img src=images/cms-ico7.gif width=12 height=11><font color=#ff0000><b>"&rs("classid")&"-</b>信息已修改成功</font>"
		 %>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="9"></td>
          </tr>
        </table><%end if%>
        <input type="image" name="imageField" id="imageField" src="images/submit-bt.gif">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="5"></td>
          </tr>
        </table>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="5"></td>
          </tr>
        </table>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="5"></td>
          </tr>
        </table></td>
    </tr>
  </table>
</form>    </td>
  </tr>
</table>
<% end if %>





<% if trim(request.querystring("action"))="del" then %>
<% 
	id=trim(request.querystring("id"))
	set rs=server.createobject("adodb.recordset")
	sql="select * from jiedai_tianshi where id="&id
	rs.open sql,conn,2,3
	rs.delete
	rs.update
	rs.requery
	rs.close
	set rs=nothing
	conn.close
	set conn=nothing
	response.write("<script>alert('删除成功');location='?action=list';</script>")
end if
 %>
</body>
</html>                                                                             