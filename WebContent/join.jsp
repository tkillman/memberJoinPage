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
		아이디 : <input type="text" name="id" size="20"><input type="button" onclick="checkId()" value="체크"><br />
		비밀번호 : <input type="password" name="pw" size="20"><br />
		비밀번호 확인 : <input type="password" name="pw_check" size="20"><br />
		이름 : <input type="text" name="name" size="20"><br />
		메일 : <input type="text" name="eMail" size="20"><br />
		주소 : <input type="text" name="address" size="50"><br />
		<input type="hidden" id ="idcheck" name="idcheck" value=<%=session.getAttribute("idch")%>>
		<input type="hidden" name="checkMsg" value=<%=session.getAttribute("checkMsg")%>>
		<input type="button" value="회원가입" onclick="infoConfirm()">&nbsp;&nbsp;&nbsp; <input type="reset" value="취소" onclick="javascript:window.location='login.jsp'">
	</form>
	
	 <script src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
     <script type="text/javascript">
    
     $(function(){
    	  
    	if($('#idcheck').attr('value')==1){
    		alert("아이디가 존재합니다.");
    	}
    	
    	if($('#idcheck').attr('value')==2){
    		alert("아이디가 사용 가능.");
    	}
    	
    	  });
    	 
     console.log($('#idcheck').attr('value'));
   
     
     </script>
	
	
	
	
	
	
	
	아이디가 존재하는가 ? : 1 존재, 2 사용가능 : <%=session.getAttribute("idch")%>
	아이디가 체크 했는가? : 1 체크 함 나머지 체크 안함 :<%=session.getAttribute("checkMsg")%>
</body>
</html>