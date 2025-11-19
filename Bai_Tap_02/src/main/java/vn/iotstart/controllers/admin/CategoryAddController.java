package vn.iotstart.controllers.admin;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import vn.iotstart.model.Category;
import vn.iotstart.service.CategoryService;
import vn.iotstart.service.impl.CategoryServiceImpl;
import vn.iotstart.utils.Constant;

@WebServlet(urlPatterns = { "/admin/category/add" })
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024,      // 1MB
        maxFileSize = 10 * 1024 * 1024,       // 10MB
        maxRequestSize = 50 * 1024 * 1024     // 50MB
)
public class CategoryAddController extends HttpServlet {

    private static final long serialVersionUID = 1L;

    CategoryService cateService = new CategoryServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        RequestDispatcher dispatcher =
                req.getRequestDispatcher("/views/admin/category-add.jsp");
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

    	req.setCharacterEncoding("UTF-8");

		String name = req.getParameter("name");

		String statusStr = req.getParameter("status");
		

		Category category = new Category();
		category.setName(name);
		

		String fname = "";
		String uploadPath = Constant.DIR;
		File uploadDir = new File(uploadPath);

		if (!uploadDir.exists()) {
			uploadDir.mkdir();
		}
		try {

			Part part = req.getPart("images");
			if (part.getSize() > 0) {
				String filename = Paths.get(part.getSubmittedFileName()).getFileName().toString();

				int index = filename.lastIndexOf(".");
				String ext = filename.substring(index + 1);
				fname = System.currentTimeMillis() + "." + ext;

				// upload File
				part.write(uploadPath + "/" + fname);

				// Ghi DB
				category.setImages(fname);
			} else {
				category.setImages("meo.jpg");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		cateService.insert(category);
		resp.sendRedirect(req.getContextPath() + "/admin/category");
	

    }
}
