

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%              
    String name=request.getParameter("name");
    String mobile=request.getParameter("mobile");
    String email=request.getParameter("email");
    String username=request.getParameter("username");
    String password=request.getParameter("password");
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/csm tailor","root","root");
        Statement st=con.createStatement();
        int i=st.executeUpdate("insert into tailorregister values('"+name+"','"+mobile+"','"+email+"','"+username+"','"+password+"')");  
        if(i>0){
        %>
        <script>
            window.alert("Registration Successfull......");
            window.location="TailorLogin.html"
            
            
            
        </script>

        
        <%  
        }
        else{
            %>
            <Script>
              window.alert("Registration failed......");
              window.location="TailorLogin.html"  
                
            </Script>
            <%
        }
    }
    catch(Exception e){
        out.println(e);
    }





%>