<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ page
	import="com.dts.dae.dao.ProfileDAO,com.dts.dae.model.Profile,com.dts.dae.dao.SecurityDAO" %>
<%
        String target = "index.jsp?status=Invalid username and password";
        try
        {
                Profile rb = new Profile();
                String username = request.getParameter("username");
                rb.setLoginID(username);
                rb.setPassword(request.getParameter("password"));

                String role = new SecurityDAO().loginCheck(rb);

                if (role.equalsIgnoreCase("Admin"))
                {
                        target = "AdminHome.jsp?status=Welcome " + username;
                        session.setAttribute("user", username);
                        session.setAttribute("role", role);
                }
                else if (role.equalsIgnoreCase("user"))
                {
                        //int status = new SecurityDAO().checkFirstLogin(username);
                        target = "UserHome.jsp?status=Welcome " + username;
                        session.setAttribute("user", username);
                        session.setAttribute("role", role);
                }
                else
                        target = "index.jsp?status=Invalid username and password";
        }
        catch (Exception e)
        {
        }
        RequestDispatcher rd = request.getRequestDispatcher(target);
        rd.forward(request, response);
%>