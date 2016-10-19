<%-- 
    Document   : summary
    Created on : 8 Aug, 2016, 4:02:27 PM
    Author     : AYANAVA
--%>

<%@page import="retrievability.Pagination"%>
<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Summary</title>
        
        <style>
div.container {
    width: 100%;
    border: 0px solid gray;
}



nav {
    float: left;
    max-width: 500px;
    margin: 0;
    padding: 1em;
}

nav ul {
    list-style-type: none;
    padding: 0;
}
			
nav ul a {
    text-decoration: none;
}

article {
    margin-left: 700px;
    border-left: 1px solid gray;
    padding: 1em;
    overflow: hidden;
}
</style>
        
    </head>
    <body>
        <nav>
    <u1>
        <b> WRITE THE SUMMARY </b>
        <a href="index.jsp" target="_top"> SEARCH New Query </a>
        <textarea rows="25" cols="70">

        </textarea>
    
    </u1>
        </nav>
        
        
        <article>
            
            <h1> Relevant selected documents are----- </h1>
            
            <%
                HashMap <Integer, String> relevant_docs=new HashMap<Integer, String>();
                String []submit = request.getParameterValues("relevant");
if (submit != null) 
            {
                Pagination.clear_relevant_docs();
                Pagination.set_relevant_docs(submit);
                
                relevant_docs=Pagination.get_relevant_docs();
                
                
                for (int i = 0; i <relevant_docs.size(); i++) 
                {
                    out.println("<br> ");
                    out.println("<b> ");
                    out.println("<div align='center'>");
                    out.println("<b/> ");
                    out.println("<br/> ");
                    
                    out.println (relevant_docs.get(i));
                    out.println();
                }
                
                
            }

            else
            {
                Pagination.clear_relevant_docs();
                
                relevant_docs=Pagination.get_relevant_docs();
                
                
                
                for (int i = 0; i <relevant_docs.size(); i++) 
                {
                    out.println("<br/> ");
                    out.println("<div align='center'>");
                    out.println("<br/> ");
                    
                    out.println (relevant_docs.get(i));
                    out.println();
                }
                
            }
%>
  
                %>
                
            
        </article>
    </body>
</html>
