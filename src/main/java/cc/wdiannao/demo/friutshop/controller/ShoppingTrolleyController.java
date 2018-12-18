package cc.wdiannao.demo.friutshop.controller;

import cc.wdiannao.demo.friutshop.entity.*;
import cc.wdiannao.demo.friutshop.service.ShoppingTrolleyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/shopping")
@SessionAttributes("shoppingTrolley")
public class ShoppingTrolleyController {
    @Autowired
    private ShoppingTrolleyService shoppingTrolleyService;

    @RequestMapping("/selectPackingBox")
    public String selectPackingBox(Model model) {
        List<PackingBox> packingBoxList = shoppingTrolleyService.queryAllPackingBox();
        if (packingBoxList == null) {
            return "error";
        }
        model.addAttribute("packingBoxList", packingBoxList);
        return "shopping/packingbox";
    }

    @RequestMapping("/submitPackingBox")
    public String submitPackingBox(ShoppingTrolley shoppingTrolley, HttpServletRequest httpServletRequest) {
        double sumPreice = 0.0;
        String packingBoxs = "";
        List<PackingBox> packingBoxList = shoppingTrolleyService.queryAllPackingBox();
        if (packingBoxList == null) {
            return "error";
        }
        for (PackingBox packingBox:packingBoxList) {
            String strNumber = httpServletRequest.getParameter(String.valueOf(packingBox.getId()));
            if (!strNumber.equals("0")) {
                sumPreice = sumPreice + Double.valueOf(strNumber) * packingBox.getPrice();
                packingBoxs = packingBoxs + packingBox.toString() + "一共 " + strNumber + " 个" + ":";
            }
        }
        shoppingTrolley.setSumPrice(sumPreice);
        shoppingTrolley.setPackingBoxs(packingBoxs);
        System.out.println(sumPreice + packingBoxs);
        return "redirect:/shopping/selectFruit";
    }

    @RequestMapping("/selectFruit")
    public String selectFruit(Model model) {
        List<Fruit> fruitList = shoppingTrolleyService.queryAllFruit();
        if (fruitList == null) {
            return "error";
        }
        model.addAttribute("fruitList", fruitList);
        return "shopping/fruit";
    }

    @RequestMapping("/submitFruit")
    public String submitFruit(ShoppingTrolley shoppingTrolley, HttpServletRequest httpServletRequest) {
        double sumPreice = shoppingTrolley.getSumPrice();
        String fruits = "";
        List<Fruit> fruitList = shoppingTrolleyService.queryAllFruit();
        if (fruitList == null) {
            return "error";
        }
        for (Fruit fruit:fruitList) {
            String strNumber = httpServletRequest.getParameter(String.valueOf(fruit.getId()));
            if (!strNumber.equals("0")) {
                sumPreice = sumPreice + Double.valueOf(strNumber) * fruit.getPrice();
                fruits = fruits + fruit.toString() + "一共 " + strNumber + " 份" + ":";
            }
        }
        shoppingTrolley.setSumPrice(sumPreice);
        shoppingTrolley.setFruits(fruits);
        System.out.println(sumPreice + fruits);
        return "redirect:/shopping/selectYoghurt";
    }

    @RequestMapping("/selectYoghurt")
    public String selectYoghurt(Model model) {
        List<Yoghurt> yoghurtList = shoppingTrolleyService.queryAllYoghurt();
        if (yoghurtList == null) {
            return "error";
        }
        model.addAttribute("yoghurtList", yoghurtList);
        return "shopping/yoghurt";
    }

    @RequestMapping("/submitYoghurt")
    public String submitYoghurt(ShoppingTrolley shoppingTrolley, HttpServletRequest httpServletRequest) {
        double sumPreice = shoppingTrolley.getSumPrice();
        String yoghurts = "";
        List<Yoghurt> yoghurtList = shoppingTrolleyService.queryAllYoghurt();
        if (yoghurtList == null) {
            return "error";
        }
        for (Yoghurt yoghurt:yoghurtList) {
            String strNumber = httpServletRequest.getParameter(String.valueOf(yoghurt.getId()));
            if (!strNumber.equals("0")) {
                sumPreice = sumPreice + Double.valueOf(strNumber) * yoghurt.getPrice();
                yoghurts = yoghurts + yoghurt.toString() + "一共 " + strNumber + " 份" + ":";
            }
        }
        shoppingTrolley.setSumPrice(sumPreice);
        shoppingTrolley.setYoghurts(yoghurts);
        System.out.println(sumPreice + yoghurts);
        return "redirect:/shopping/selectPackingBag";
    }

    @RequestMapping("/selectPackingBag")
    public String selectPackingBag(Model model) {
        List<PackingBag> packingBagList = shoppingTrolleyService.queryAllPackingBag();
        if (packingBagList == null) {
            return "error";
        }
        model.addAttribute("packingBagList", packingBagList);
        return "shopping/packingbag";
    }

    @RequestMapping("/submitPackingBag")
    public String submitPackingBag(ShoppingTrolley shoppingTrolley, HttpServletRequest httpServletRequest) {
        double sumPreice = shoppingTrolley.getSumPrice();
        String packingBags = "";
        List<PackingBag> packingBagList = shoppingTrolleyService.queryAllPackingBag();
        if (packingBagList == null) {
            return "error";
        }
        for (PackingBag packingBag:packingBagList) {
            String strNumber = httpServletRequest.getParameter(String.valueOf(packingBag.getId()));
            if (!strNumber.equals("0")) {
                sumPreice = sumPreice + Double.valueOf(strNumber) * packingBag.getPrice();
                packingBags = packingBags + packingBag.toString() + "一共 " + strNumber + " 个" + ":";
            }
        }
        shoppingTrolley.setSumPrice(sumPreice);
        shoppingTrolley.setPackingBags(packingBags);
        System.out.println(sumPreice + packingBags);
        return "shopping/sendmessage";
    }

    @RequestMapping("/submitMessage")
    public String submitMessage(ShoppingTrolley shoppingTrolley, @RequestParam("phoneNumber") String phoneNumber,
                                @RequestParam("message") String message) {
        shoppingTrolley.setPhoneNumber(phoneNumber);
        shoppingTrolley.setMessage(message);
        if (phoneNumber.equals("")) {
            return "shopping/phoneerror";
        }
        if (shoppingTrolleyService.insertShoppingTrolley(shoppingTrolley) == 0) {
            return "error";
        }
        System.out.println(shoppingTrolley.toString());
        return "success";
    }
}
