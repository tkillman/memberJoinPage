<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<title>Insert title here</title>
<script language="JavaScript" src="members.js" charset='UTF-8'></script>
</head>
<body>


	<form action="joinOk.jsp" method="post" name="reg_frm">
		���̵� : <input type="text" name="id" size="20"><input type="button" onclick="checkId()" value="üũ"><br />
		��й�ȣ : <input type="password" name="pw" size="20"><br />
		��й�ȣ Ȯ�� : <input type="password" name="pw_check" size="20"><br />
		�̸� : <input type="text" name="name" size="20"><br />
		���� : <input type="text" name="eMail" size="20"><br />
		�ּ� : <input type="text" name="address" size="50"><br />
		<input type="hidden" id ="idcheck" name="idcheck" value=<%=session.getAttribute("idch")%>>
		<input type="hidden" name="checkMsg" value=<%=session.getAttribute("checkMsg")%>>
		<input type="button" value="ȸ������" onclick="infoConfirm()">&nbsp;&nbsp;&nbsp; <input type="reset" value="���" onclick="javascript:window.location='login.jsp'">
	</form>
	
	 <script src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
     <script type="text/javascript">
    
     $(function(){
    	  
    	if($('#idcheck').attr('value')==1){
    		alert("���̵� �����մϴ�.");
    	}
    	
    	if($('#idcheck').attr('value')==2){
    		alert("���̵� ��� ����.");
    	}
    	
    	  });
    	 
     console.log($('#idcheck').attr('value'));
   
     
     </script>
	
	
	
	
	
	
	
	���̵� �����ϴ°� ? : 1 ����, 2 ��밡�� : <%=session.getAttribute("idch")%>
	���̵� üũ �ߴ°�? : 1 üũ �� ������ üũ ���� :<%=session.getAttribute("checkMsg")%>
</body>
</html>