package cz.jiripinkas.jba.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cz.jiripinkas.jba.entity.Blog;
import cz.jiripinkas.jba.entity.Item;
import cz.jiripinkas.jba.entity.User;
import cz.jiripinkas.jba.repository.BlogRepository;
import cz.jiripinkas.jba.repository.ItemRepository;
import cz.jiripinkas.jba.repository.UserRepository;

@Service
public class UserService {

	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private BlogRepository blogReposiroty;
	
	@Autowired
	private ItemRepository itemReposiroty;
	
	
	
	public List<User> findAll(){
		return userRepository.findAll();
	}
	
	public User findOne(int id){
		return userRepository.findOne(id);
	}
	
	public User findOneWithBlogs(int id){
		User user = userRepository.findOne(id);
		List<Blog> blogs = blogReposiroty.findByUser(user);
		for(Blog blog: blogs){
			List<Item> items = itemReposiroty.findByBlog(blog);
			blog.setItems(items);
		}
		user.setBlogs(blogs);
		return user;
	}
}
