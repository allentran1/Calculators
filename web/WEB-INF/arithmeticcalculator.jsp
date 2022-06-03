<%-- 
    Document   : arithmeticcalculator
    Created on : 1-Jun-2022, 3:44:53 PM
    Author     : allen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Arithmetic Calculator</title>
    </head>
    <body>
        <h1>Arithmetic Calculator</h1>
        <form method="POST">
            First: <input type="number" name="first">
            <br>
            Second: <input type="number" name="second">
            <br>
            <input type="submit" name="add" value="+">
            <input type="submit" name="subtract" value="-">
            <input type="submit" name="multiply" value="*">
            <input type="submit" name="mod" value="%">
            <br>
        </form>
        
        <% 
            String add = request.getParameter("add");
            String subtract = request.getParameter("subtract");
            String multiply = request.getParameter("multiply");
            String mod = request.getParameter("mod");
            String number1 = request.getParameter("first");
            String number2 = request.getParameter("second");
            int total;
            
            if (number1 == null || number2 == null || number1.isEmpty() || number2.isEmpty()) {
                out.println("RESULT:---");
            } else if (!number1.isEmpty() && !number2.isEmpty() && (add !=null)) {
                int no1 = Integer.parseInt(number1);
                int no2 = Integer.parseInt(number2);
                total = no1 + no2;
                out.println("RESULT:" + total);
            } else if (!number1.isEmpty() && !number2.isEmpty() && (subtract !=null)) {
                int no1 = Integer.parseInt(number1);
                int no2 = Integer.parseInt(number2);
                total = no1 - no2;
                out.println("RESULT:" + total);
            } else if (!number1.isEmpty() && !number2.isEmpty() && (multiply !=null)) {
                int no1 = Integer.parseInt(number1);
                int no2 = Integer.parseInt(number2);
                total = no1 * no2;
                out.println("RESULT:" + total);
            } else if (!number1.isEmpty() && !number2.isEmpty() && (mod !=null)) {
                int no1 = Integer.parseInt(number1);
                int no2 = Integer.parseInt(number2);
                total = no1 % no2;
                out.println("RESULT:" + total);
            }
        %>
    </body>
</html>
