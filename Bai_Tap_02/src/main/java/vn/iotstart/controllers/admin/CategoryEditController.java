package vn.iotstart.controllers.admin;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;
import java.util.List;

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

@WebServlet("/admin/category/edit")
@MultipartConfig(fileSizeThreshold = 1024 * 1024, // 1MB
		maxFileSize = 1024 * 1024 * 10, // 10MB
		maxRequestSize = 1024 * 1024 * 50 // 50MB
)
public class CategoryEditController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private CategoryService categoryService = new CategoryServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));

		Category category = categoryService.get(id);
		req.setAttribute("category", category);

		RequestDispatcher rd = req.getRequestDispatcher("/views/admin/category-edit.jsp");
		rd.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		String name = req.getParameter("name");
		String oldImage = req.getParameter("oldImage");
		
		Part filePart = req.getPart("imageFile");
		String fileName = oldImage;

		if (filePart != null && filePart.getSize() > 0) {

			fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();

			File uploadDir = new File(Constant.DIR);
			if (!uploadDir.exists()) {
				uploadDir.mkdirs();
			}

			filePart.write(Constant.DIR + File.separator + fileName);
		}

		Category category = new Category();
		category.setId(id);
		category.setName(name);
		category.setImages(fileName);
	
		categoryService.edit(category);

		resp.sendRedirect(req.getContextPath() + "/admin/category");

	}

}
