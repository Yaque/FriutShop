package cc.wdiannao.demo.friutshop.service;

import cc.wdiannao.demo.friutshop.entity.*;

import java.util.List;

public interface ShoppingTrolleyService {
    List<PackingBox> queryAllPackingBox();
    List<Fruit> queryAllFruit();
    List<Yoghurt> queryAllYoghurt();
    List<PackingBag> queryAllPackingBag();
    int insertShoppingTrolley(ShoppingTrolley shoppingTrolley);
}
