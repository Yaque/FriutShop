package cc.wdiannao.demo.friutshop.controller;

import cc.wdiannao.demo.friutshop.entity.*;
import cc.wdiannao.demo.friutshop.service.AdministratorService;
import cc.wdiannao.demo.friutshop.service.ShoppingTrolleyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/admin")
@SessionAttributes("administrator")
public class AdministratorController {
    @Autowired
    private AdministratorService administratorService;
    @Autowired
    private ShoppingTrolleyService shoppingTrolleyService;

    @RequestMapping("/login")
    public String login() {
        return "admin/login";
    }

    @RequestMapping("/checkLogin")
    public String checkLogin(Administrator administrator, Model model) {
        administrator = administratorService.checkLogin(administrator.getUsername(), administrator.getPassword());
        if (administrator != null) {
            model.addAttribute("administrator", administrator);
            return "redirect:/admin/getListOrder";
        }
        return "admin/login";
    }

    @RequestMapping("/getListOrder")
    public String getListOrder(HttpSession httpSession, Model model) {
        Administrator administrator = (Administrator) httpSession.getAttribute("administrator");
        if (administrator == null) {
//            System.out.println(administrator);
            return "/admin/login";
        }
        List<ShoppingTrolley> shoppingTrolleyList = administratorService.queryAllShoppingTrolley();
        if (shoppingTrolleyList == null) {
            return "error";
        }
        model.addAttribute("shoppingTrolleyList", shoppingTrolleyList);
//        System.out.println(shoppingTrolleyList);
        return "admin/listorder";
    }

    @RequestMapping("/delete/{id}")
    public String delete(HttpSession httpSession, @PathVariable("id") int id) {
        Administrator administrator = (Administrator) httpSession.getAttribute("administrator");
        if (administrator == null) {
//            System.out.println(administrator);
            return "/admin/login";
        }
        administratorService.deleteById(id);
        return "redirect:/admin/getListOrder";
    }

    @RequestMapping("/getOrderDetial/{id}")
    public String getOrderDetial(HttpSession httpSession, @PathVariable("id") int id) {
        Administrator administrator = (Administrator) httpSession.getAttribute("administrator");
        if (administrator == null) {
//            System.out.println(administrator);
            return "/admin/login";
        }
        ShoppingTrolley shoppingTrolley = administratorService.selectById(id);
        httpSession.setAttribute("shoppingTrolley", shoppingTrolley);
        System.out.println("X" + shoppingTrolley);
        return "admin/orderdetial";
    }

    @RequestMapping("/logout")
    public String logout(HttpSession httpSession) {
        Administrator administrator = (Administrator) httpSession.getAttribute("administrator");
        if (administrator == null) {
//            System.out.println(administrator);
            return "/admin/login";
        }
        httpSession.invalidate();
        return "admin/login";
    }

    @RequestMapping("/getAllGood")
    public String getAllGood(HttpSession httpSession, Model model) {
        Administrator administrator = (Administrator) httpSession.getAttribute("administrator");
        if (administrator == null) {
//            System.out.println(administrator);
            return "/admin/login";
        }
        List<PackingBox> packingBoxList = shoppingTrolleyService.queryAllPackingBox();
        List<Fruit> fruitList = shoppingTrolleyService.queryAllFruit();
        List<Yoghurt> yoghurtList = shoppingTrolleyService.queryAllYoghurt();
        List<PackingBag> packingBagList = shoppingTrolleyService.queryAllPackingBag();
        model.addAttribute("packingBoxList", packingBoxList);
        model.addAttribute("fruitList", fruitList);
        model.addAttribute("yoghurtList", yoghurtList);
        model.addAttribute("packingBagList", packingBagList);

        return "admin/admingood";
    }

    @RequestMapping("/deleteGood")
    public String deleteGood(HttpSession httpSession, String id, String number) {
        Administrator administrator = (Administrator) httpSession.getAttribute("administrator");
        if (administrator == null) {
//            System.out.println(administrator);
            return "/admin/login";
        }
        switch (number) {
            case "0":
                administratorService.deletePackingBoxById(Integer.valueOf(id));
                break;
            case "1":
                administratorService.deleteFruitById(Integer.valueOf(id));
                break;
            case "2":
                administratorService.deleteYoghurtById(Integer.valueOf(id));
                break;
            case "3":
                administratorService.deletePackingBagById(Integer.valueOf(id));
                break;
        }
        return "redirect:/admin/getAllGood";
    }

    @RequestMapping("/addGoodFruit")
    public String addGoodFruit(HttpSession httpSession, Fruit fruit) {
        Administrator administrator = (Administrator) httpSession.getAttribute("administrator");
        if (administrator == null) {
//            System.out.println(administrator);
            return "/admin/login";
        }
        if (administratorService.insertFruit(fruit) == 0) {
            return "admin/error";
        }
        return "redirect:/admin/getAllGood";
    }

    @RequestMapping("/addGoodPackingBox")
    public String addGoodPackingBox(HttpSession httpSession, PackingBox packingBox) {
        Administrator administrator = (Administrator) httpSession.getAttribute("administrator");
        if (administrator == null) {
//            System.out.println(administrator);
            return "/admin/login";
        }
        if (administratorService.insertPackingBox(packingBox) == 0) {
            return "admin/error";
        }
        return "redirect:/admin/getAllGood";
    }

    @RequestMapping("/addGoodPackingBag")
    public String addGoodPackingBag(HttpSession httpSession, PackingBag packingBag) {
        Administrator administrator = (Administrator) httpSession.getAttribute("administrator");
        if (administrator == null) {
//            System.out.println(administrator);
            return "/admin/login";
        }
        if (administratorService.insertPackingBag(packingBag) == 0) {
            return "admin/error";
        }
        return "redirect:/admin/getAllGood";
    }

    @RequestMapping("/addGoodYoghurt")
    public String addGoodYoghurt(HttpSession httpSession, Yoghurt yoghurt) {
        Administrator administrator = (Administrator) httpSession.getAttribute("administrator");
        if (administrator == null) {
//            System.out.println(administrator);
            return "/admin/login";
        }
        if (administratorService.insertYoghurt(yoghurt) == 0) {
            return "admin/error";
        }
        return "redirect:/admin/getAllGood";
    }
    @RequestMapping("/goodFruit")
    public String goodFruit(HttpSession httpSession) {
        Administrator administrator = (Administrator) httpSession.getAttribute("administrator");
        if (administrator == null) {
//            System.out.println(administrator);
            return "/admin/login";
        }
        return "admin/addgoodfruit";
    }

    @RequestMapping("/goodPackingBox")
    public String goodPackingBox(HttpSession httpSession) {
        Administrator administrator = (Administrator) httpSession.getAttribute("administrator");
        if (administrator == null) {
//            System.out.println(administrator);
            return "/admin/login";
        }
        return "admin/addgoodpackingbox";
    }

    @RequestMapping("/goodPackingBag")
    public String goodPackingBag(HttpSession httpSession) {
        Administrator administrator = (Administrator) httpSession.getAttribute("administrator");
        if (administrator == null) {
//            System.out.println(administrator);
            return "/admin/login";
        }
        return "admin/addgoodpackingbag";
    }

    @RequestMapping("/goodYoghurt")
    public String goodYoghurt(HttpSession httpSession) {
        Administrator administrator = (Administrator) httpSession.getAttribute("administrator");
        if (administrator == null) {
//            System.out.println(administrator);
            return "/admin/login";
        }
        return "admin/addgoodyoghurt";
    }
}
