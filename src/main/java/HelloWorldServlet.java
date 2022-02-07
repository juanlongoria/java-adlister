import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet(name = "HelloWorldServlet", urlPatterns = "/hello")
public class HelloWorldServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String name = request.getParameter("name");
        if (name == null) {
            name = "World";
        }
        request.setAttribute("name", name);
        request.getRequestDispatcher("/hello.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String color = req.getParameter("color");

        if(color.equalsIgnoreCase("green")){
            resp.sendRedirect("http://codeup.com");
        } else {
            resp.sendRedirect("/hello");
        }

        resp.setContentType("text/html");
        String name = req.getParameter("name");
//        String title = "Hello, World!";

        PrintWriter out = resp.getWriter();

//        out.println("<h1>" + title + "</h1>");

        if(name == null) {
            out.println("Hello World!");
        } else {
            out.println("<h1>Hello, " + name + "!</h1>");
        }
    }
}
