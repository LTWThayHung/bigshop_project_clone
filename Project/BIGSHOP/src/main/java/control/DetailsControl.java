package control;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDAO;
import entity.Products;

/**
 * Servlet implementation class DetailsControl
 */
@WebServlet("/details")
public class DetailsControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DetailsControl() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String pID = request.getParameter("pid");

		ProductDAO productDAO = new ProductDAO();
		String cateID = request.getParameter("cid");

		List<Products> listProductById = productDAO.getProductByCID(cateID);

		request.getSession().setAttribute("listAllProducts", listProductById);
		Products p = productDAO.getProductByID(pID);

		request.getSession().setAttribute("details", p);

		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/single.jsp");
		requestDispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
