package control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDAO;
import entity.Category;
import entity.Products;

/**
 * Servlet implementation class ProductControl
 */
@WebServlet("/ProductControl")
public class ProductControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductControl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Products> listAllProduct = new ArrayList<Products>();
        List<Category> listAllCategory = new ArrayList<Category>();
        
//        List<Products> listRandom4Product = new ArrayList<Products>();
//        List<Products> listKitchen = new ArrayList<Products>();
//        List<Products> listPersonCare = new ArrayList<Products>();
//        List<Products> listHoldHouse = new ArrayList<Products>();
//        List<Products> listSingle = new ArrayList<Products>();
        ProductDAO daoProduct = new ProductDAO();
        // danh sach tat ca san pham
        listAllProduct =  daoProduct.getAllProduct();
        listAllCategory =  daoProduct.getAllCategory();
        
        
//        // danh sach lay ngau nhien 4 san pham
//        listRandom4Product =  daoProduct.get4RandomProduct();
//        // danh sach san pham la kitchen
//        listKitchen = daoProduct.getKitchenProDuct();
//        //danh sach san pham la PersonCare
//        listPersonCare = daoProduct.getPersonCareProDuct();
//        // danh sach san pham la HoldHouse
//        listHoldHouse = daoProduct.getHoldHouseProDuct();
//        // danh sach ngau nhien 10 san pham ( hien thi trong single.jsp)
//        listSingle = daoProduct.get10RandomProduct();
        
//        System.out.println("size: "+listAllProduct.size());
//        System.out.println("size: "+listRandom4Product.size());
//        System.out.println("size: "+ listKitchen.size());
        req.getSession().setAttribute("listAllProducts", listAllProduct);
        req.getSession().setAttribute("listAllCategory", listAllCategory);
//        req.getSession().setAttribute("list4Product", listRandom4Product);
//        req.getSession().setAttribute("listKitchen", listKitchen);
//        req.getSession().setAttribute("listPersonCare", listPersonCare);
//        req.getSession().setAttribute("listHoldHouse", listHoldHouse);
//        req.getSession().setAttribute("listSingle", listSingle);
        
        String productId = req.getParameter("id");
//        req.setAttribute(productId, productId);
        
       
        RequestDispatcher requestDispatcher = getServletContext().getRequestDispatcher("/index.jsp");
        requestDispatcher.forward(req, resp);
    
    
    
    }
    
    
    

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
