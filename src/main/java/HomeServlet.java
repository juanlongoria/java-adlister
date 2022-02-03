import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
@WebServlet(name = "HomeServlet", urlPatterns = "/home")
public class HomeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        // Allows us to write HTML syntax in a string to present to the user.
        // Throws an IOException.
        PrintWriter out = response.getWriter();
        out.println("<h1>Hello World!</h1>");
        //        out.println("<h1>Hello World!</h1>");


        // Get the data that is being passed along with the parameter of "email".
        String email = request.getParameter("email");
        out.println("<h1>" + email + "</h1>");

        // Gives access to the session of the user. No arguments needed.
        request.getSession();

        // Allows us to add a value to the request. Used to pass data from our servlet to our view.
        //        ArrayList<Products> results = new ArrayList<Products>();
        // We can then use "results" in our html file to have access to the data we passed along.
        //        request.setAttribute("results", results);

        // Redirects us to a new URL pattern.
        response.sendRedirect("/test-redirect");
        //        response.sendRedirect("/test-redirect");


    }
}
