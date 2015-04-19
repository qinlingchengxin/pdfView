<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 15-4-19
  Time: 下午4:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.net.URLDecoder" %>
<%
    String filePath = request.getParameter("filePath");
    String fileName = URLDecoder.decode(request.getParameter("fileName"),"UTF-8");
%>
<html>
<head>
    <title></title>
    <script src="js/jquery-1.8.3.min.js" type="text/javascript"></script>
    <script src="js/pdfobject.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            new PDFObject({ url: "file/<%=filePath%>/<%=fileName%>" }).embed();
        })
    </script>
</head>
<body>
</body>
</html>