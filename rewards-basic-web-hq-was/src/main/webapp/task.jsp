<%@ page import="org.jbpm.task.query.TaskSummary" %>
<%@ page import="java.util.List" %>
<html>
<head>
<title>Task management</title>
</head>
<body>
<% String user = request.getParameter("user"); %>
<p><%= user %>'s Task</p>
<table border="1">
<th>Task Name</th>
<th>Task Id</th>
<th>ProcessInstance Id</th>
<th>Action</th>
<% for (TaskSummary task : (List<TaskSummary>)request.getAttribute("taskList")) { %>
<tr>
<td><%= task.getName() %></td>
<td><%= task.getId() %></td>
<td><%= task.getProcessInstanceId() %></td>
<td><a href="task?user=<%= user %>&taskId=<%= task.getId() %>&cmd=approve">Approve</a></td>
</tr>
<% } %>
</table>
</body>
</html>