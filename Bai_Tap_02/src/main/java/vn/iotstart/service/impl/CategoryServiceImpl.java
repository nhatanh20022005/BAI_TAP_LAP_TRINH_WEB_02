package vn.iotstart.service.impl;
import java.io.File;
import java.util.List;
import vn.iotstart.dao.CategoryDao;
import vn.iotstart.dao.impl.CategoryDaoImpl;
import vn.iotstart.model.Category;
import vn.iotstart.service.CategoryService;

public class CategoryServiceImpl implements CategoryService {

	CategoryDao categoryDao = new CategoryDaoImpl();

	@Override
	public void insert(Category category) {
		categoryDao.insert(category);
		
	}

	@Override
	public void edit(Category newCategory) {
		Category oldCategory = categoryDao.get(newCategory.getId());
		oldCategory.setName(newCategory.getName());
		if (newCategory.getImages() != null) {
		// XOA ANH CU DI
		String fileName = oldCategory.getImages();
		final String dir = "D:\\upload";
		File file = new File(dir + fileName);
		if (file.exists()) {
		file.delete();
		}
		oldCategory.setImages(newCategory.getImages());
		}
		categoryDao.edit(oldCategory);

	}

	@Override
	public void delete(int id) {
		categoryDao.delete(id);
		
	}

	@Override
	public Category get(int id) {
		return categoryDao.get(id);

	}

	@Override
	public Category get(String name) {
		return categoryDao.get(name);
	}

	@Override
	public List<Category> findAll() {
		return categoryDao.findAll();

	}

	@Override
	public List<Category> search(String catename) {
		return categoryDao.search(catename);
	}

	


}
