package cc.wdiannao.demo.friutshop.service.impl;

import cc.wdiannao.demo.friutshop.daomapper.*;
import cc.wdiannao.demo.friutshop.entity.*;
import cc.wdiannao.demo.friutshop.service.AdministratorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdministratorServiceImpl implements AdministratorService {

    @Autowired
    private AdministratorMapper administratorMapper;
    @Autowired
    private ShoppingTrolleyMapper shoppingTrolleyMapper;
    @Autowired
    private FruitMapper fruitMapper;
    @Autowired
    private YoghurtMapper yoghurtMapper;
    @Autowired
    private PackingBoxMapper packingBoxMapper;
    @Autowired
    private PackingBagMapper packingBagMapper;

    @Override
    public Administrator checkLogin(String username, String password) {
        Administrator administrator = null;
        try {
            administrator = administratorMapper.findByUsername(username);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
        if (administrator != null && administrator.getPassword().equals(password)) {
            return administrator;
        }
        return null;
    }

    @Override
    public List<ShoppingTrolley> queryAllShoppingTrolley() {
        List<ShoppingTrolley> shoppingTrolleyList = null;
        try {
            shoppingTrolleyList = shoppingTrolleyMapper.queryAllShoppingTrolley();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
        return shoppingTrolleyList;
    }

    @Override
    public int deleteById(int id) {
        try {
            shoppingTrolleyMapper.deleteById(id);
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
        return 1;
    }

    @Override
    public ShoppingTrolley selectById(int id) {
        ShoppingTrolley shoppingTrolley = null;
        try {
            shoppingTrolley = shoppingTrolleyMapper.selectById(id);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
        return shoppingTrolley;
    }

    @Override
    public int insertFruit(Fruit fruit) {
        try {
            fruitMapper.insertFruit(fruit);
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
        return 1;
    }

    @Override
    public int insertYoghurt(Yoghurt yoghurt) {
        try {
            yoghurtMapper.insertYoghurt(yoghurt);
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
        return 1;
    }

    @Override
    public int insertPackingBox(PackingBox packingBox) {
        try {
            packingBoxMapper.insertPackingBox(packingBox);
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
        return 1;
    }

    @Override
    public int insertPackingBag(PackingBag packingBag) {
        try {
            packingBagMapper.insertPackingBag(packingBag);
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
        return 1;
    }

    @Override
    public int deleteFruitById(int id) {
        try {
            fruitMapper.deleteFruitById(id);
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
        return 1;
    }

    @Override
    public int deleteYoghurtById(int id) {
        try {
            yoghurtMapper.deleteYoghurtById(id);
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
        return 1;
    }

    @Override
    public int deletePackingBoxById(int id) {
        try {
            packingBoxMapper.deletePackingBoxById(id);
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
        return 1;
    }

    @Override
    public int deletePackingBagById(int id) {
        try {
            packingBagMapper.deletePackingBagById(id);
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
        return 1;
    }

}
