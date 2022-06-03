/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author allen
 */
public class AgeCalculatorServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/WEB-INF/agecalculator.jsp").forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getParameter("age") !=null) {
            try {
                String ageString = request.getParameter("age");
                int age = Integer.parseInt(ageString);
                int ageNextBirthday = age + 1;
                request.setAttribute("message", "you will be " + ageNextBirthday + " after your next birthday");
                
            }
            catch (Exception ex) {
                request.setAttribute("message", "You must give your current age.");
            }
        }
            else {
                    request.setAttribute("message", "Age is missing.");
        }
        getServletContext().getRequestDispatcher("/WEB-INF/agecalculator.jsp").forward(request, response);
    }
}
                 
            
        
        
