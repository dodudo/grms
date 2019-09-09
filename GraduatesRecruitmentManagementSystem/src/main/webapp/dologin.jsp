<%--
  Created by IntelliJ IDEA.
  User: crumble
  Date: 2019/5/16
  Time: 16:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:redirect url="/StudentManaServlet">
    <c:param name="action" value="equery"/>
</c:redirect>
</body>
</html>
