package cc.wdiannao.demo.friutshop.service.impl;

import cc.wdiannao.demo.friutshop.daomapper.*;
import cc.wdiannao.demo.friutshop.entity.*;
import cc.wdiannao.demo.friutshop.service.ShoppingTrolleyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ShoppingTrolleyServiceImpl implements ShoppingTrolleyService {
    @Autowired
    private PackingBoxMapper packingBoxMapper;
    @Autowired
    private FruitMapper fruitMapper;
    @Autowired
    private YoghurtMapper yoghurtMapper;
    @Autowired
    private PackingBagMapper packingBagMapper;
    @Autowired
    private ShoppingTrolleyMapper shoppingTrolleyMapper;

    @Override
    public List<PackingBox> queryAllPackingBox() {
        List<PackingBox> packingBoxList = null;
        try {
            packingBoxList = packingBoxMapper.queryAllPackingBox();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
        return packingBoxList;
    }

    @Override
    public List<Fruit> queryAllFruit() {
        List<Fruit> fruitList = null;
        try {
            fruitList = fruitMapper.queryAllFruit();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
        return fruitList;
    }

    @Override
    public List<Yoghurt> queryAllYoghurt() {
        List<Yoghurt> yoghurtList = null;
        try {
            yoghurtList =  yoghurtMapper.queryAllYoghurt();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
        return yoghurtList;
    }

    @Override
    public List<PackingBag> queryAllPackingBag() {
        List<PackingBag> packingBagList = null;
        try {
            packingBagList =  packingBagMapper.queryAllPackingBag();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
        return packingBagList;
    }

    @Override
    public int insertShoppingTrolley(ShoppingTrolley shoppingTrolley) {
        try {
            shoppingTrolleyMapper.insertShoppingTrolley(shoppingTrolley);
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
        return 1;
    }


}
