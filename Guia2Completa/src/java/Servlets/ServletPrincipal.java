package Servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ServletPrincipal", urlPatterns = {"/ServletPrincipal"})
public class ServletPrincipal extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String nombre = request.getParameter("nombre_product");
            String modelo = request.getParameter("modelo");
            String fabricante = request.getParameter("fabricante");
            String tv = request.getParameter("tv");
            String garantia = request.getParameter("garantia");
            String opinion = request.getParameter("opinion");
            String comentarios = request.getParameter("comentarios");

            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Registro Exitoso</title>");
            out.println("<style>");
            out.println("body { font-family: Arial, sans-serif; background-color: #f2f2f2; margin: 0; padding: 0; }");
            out.println("h1 { text-align: center; background-color: #007bff; color: #fff; padding: 10px; margin-bottom: 20px; }");
            out.println("form { max-width: 500px; margin: 0 auto; background-color: #fff; padding: 20px; border: 1px solid #ccc; border-radius: 5px; }");
            out.println("label { display: block; margin-bottom: 5px; font-weight: bold; }");
            out.println("input[type='text'], input[type='radio'], textarea { width: 100%; padding: 10px; margin-bottom: 10px; border: 1px solid #ccc; border-radius: 3px; }");
            out.println("input[type='submit'], input[type='reset'] { background-color: #007bff; color: #fff; border: none; border-radius: 3px; padding: 10px 20px; cursor: pointer; }");
            out.println("input[type='radio'] { margin-right: 5px; }");
            out.println("</style>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Registro Exitoso de Producto</h1>");
            out.println("<form>");
            out.println("<label>Nombre del producto: " + nombre + "</label><br>");
            out.println("<label>Modelo: " + modelo + "</label><br>");
            out.println("<label>Fabricante: " + fabricante + "</label><br>");
            out.println("<label>Tiempo de vida: " + tv + "</label><br>");
            out.println("<label>Garantía: " + garantia + "</label><br>");
            out.println("<label>Opinión: " + opinion + "</label><br>");
            out.println("<label>Comentarios: " + comentarios + "</label><br>");
            out.println("</form>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
