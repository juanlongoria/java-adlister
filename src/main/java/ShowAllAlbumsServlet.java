import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;


@WebServlet (name = "ShowAllAlbumsServlet", urlPatterns = "/albums")
public class ShowAllAlbumsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Albums albumsDao = DaoFactory.getAlbumsDao();
        List<Album> albums = albumsDao.all();
        req.setAttribute("albums", albums);
        req.getRequestDispatcher("/albums/index.jsp").forward(req, resp);
    }
}
