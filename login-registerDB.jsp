<%@ page import="com.oreilly.servlet.MultipartRequest" 
	import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy,java.io.*,java.sql.*,com.DbConnect" 
	language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%
// 	String path ="D:\\Ashish K\\MySpace\\SearchMyHomeProj\\WebContent\\images\\users"; 
// 	MultipartRequest request = new MultipartRequest(request,path, 1024*1024*1024,new DefaultFileRenamePolicy());  
	String email=request.getParameter("email");	
	String username=request.getParameter("username");
	String phoneno=request.getParameter("phonetext1");
	String alterphoneno=request.getParameter("phonetext2");
	String address=request.getParameter("addresstext");
	String city=request.getParameter("citytext");
	String state=request.getParameter("statetext");
	String country=request.getParameter("countrytext");
	String pincode=request.getParameter("pincodetext");
	String password=request.getParameter("password1");
	String sharing=request.getParameter("accnttype");
	
	ResultSet rs;
	String sal= "select Email_Id from tbluser_registrations where Email_Id=?";
	PreparedStatement ps1=DbConnect.getCon().prepareStatement(sal);
	ps1.setString(1, email);
	
	rs=ps1.executeQuery();
	
	if (rs.next())
	 {
		 %>				
		  <script>
			  location.href="login-register.jsp";
			  alert("Email already exist!");
		  </script>					  
<% }
    else
	{
		PreparedStatement stm = DbConnect.getCon().prepareStatement("insert into tbluser_registrations (Name,Cell_No1,Cell_No2,Email_Id,Address,City,Pincode,State,Country,Password,AccountType) values(?,?,?,?,?,?,?,?,?,?,?)",Statement.RETURN_GENERATED_KEYS);
		stm.setString(1,username);
		stm.setString(2,phoneno);
		stm.setString(3,alterphoneno);
		stm.setString(4,email);
		stm.setString(5,address);
		stm.setString(6,city);
		stm.setString(7,pincode);
		stm.setString(8,state);
		stm.setString(9,country);
		stm.setString(10,password);
		stm.setString(11,sharing);
		System.out.println(stm);	
		int done=stm.executeUpdate();
		
// 		ResultSet rs1 = stm.getGeneratedKeys();
// 		String filepath = new String();
// 		int userid=10000;
// 		if(request.getFilesystemName("fname")!=null)
// 		{
// 			String fname =request.getFilesystemName("fname");
// 			fname = fname.substring(fname.lastIndexOf('.')).toLowerCase();
			
// 			if(rs1.next()){ userid = rs1.getInt(1); }
		
// 			String filepath1 = userid+fname;
// 			File f1 = request.getFile("fname");
// 			File rename = new File(path+filepath1);
// 			f1.renameTo(rename);
// 			filepath = rename.getName();
// 		}	
// 		else 
// 		{
// 			if(rs1.next()){ userid = rs1.getInt(1); }
// 			filepath="images/users/default.png";
// 		}
		
// 		System.out.print(filepath);
// 		PreparedStatement stm1 = DbConnect.getCon().prepareStatement("update tbluser_registrations set image=? where User_id=?");
// 		stm1.setString(1,filepath);
// 		stm1.setInt(2,userid);
// 		int p = stm1.executeUpdate();
		
		if(done>0)
		{%>	
			<script>
				alert("Registraion Successful");
				location.href="index.jsp";
			</script>
	<%	}
	} %>
</body>
</html>