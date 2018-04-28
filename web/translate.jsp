<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%--
  Created by IntelliJ IDEA.
  User: minhtuan
  Date: 4/28/18
  Time: 9:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Translate dictionnary</title>
</head>
<body>
<h1>Vietnammse dictionnary</h1>

<%! Map<String, String> list = new HashMap<>(); %>
<%

    list.put("cat", "con mèo");
    list.put("dog", "con chó ");
    list.put("book", "quyển sách ");
    list.put("pen", "bút bi ");
    list.put("watch", "đồng hồ  ");

    String search = request.getParameter("txtSearch");
    String result = list.get(search);
    if(search != null){
        out.println("Word: "+search);
        out.println("Result: "+result );
    }else{
        out.println("not found");
    }
%>

</body>
</html>
