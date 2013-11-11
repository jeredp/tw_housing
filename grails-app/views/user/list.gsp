<%--
  Created by IntelliJ IDEA.
  User: ThoughtWorks
  Date: 11/11/13
  Time: 3:22 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
  <title>Whatup?</title>
</head>
<body>
    <g:link controller="user" action="create">Create User</g:link>
    <g:each in="${userList}" var="user" >
        <div>${user.name}
        <g:each in="${user.addresses}" var="address">
            ${address.city}, ${address.state}
        </g:each>
        </div>
    </g:each>
</body>
</html>