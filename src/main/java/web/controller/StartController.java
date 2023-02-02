package web.controller;


import hibernate.model.User;
import hibernate.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class StartController {

    private final UserService userService;

    @Autowired
    public StartController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/start")
    public String home(Model model) {
        List<User> listUsers = userService.getUsers();
        model.addAttribute("tableList", listUsers);
        return "startPage";
    }

}
