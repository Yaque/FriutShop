package cc.wdiannao.demo.friutshop.service;

import cc.wdiannao.demo.friutshop.entity.*;

import java.util.List;

public interface AdministratorService {
    Administrator checkLogin(String username, String password);
    List<ShoppingTrolley> queryAllShoppingTrolley();
    int deleteById(int id);
    ShoppingTrolley selectById(int id);
    int insertFruit(Fruit fruit);
    int insertYoghurt(Yoghurt yoghurt);
    int insertPackingBox(PackingBox packingBox);
    int insertPackingBag(PackingBag packingBag);
    int deleteFruitById(int id);
    int deleteYoghurtById(int id);
    int deletePackingBoxById(int id);
    int deletePackingBagById(int id);
}
