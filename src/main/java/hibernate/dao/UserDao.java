package hibernate.dao;

import hibernate.model.User;

import java.util.List;

public interface UserDao {

    public void add(User user);

    public void delete(Long id);

    public void edit(User user);

    public User getById(Long id);

    public List<User> getUsers();

}
