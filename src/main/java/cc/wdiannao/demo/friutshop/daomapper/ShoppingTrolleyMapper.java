package cc.wdiannao.demo.friutshop.daomapper;

import cc.wdiannao.demo.friutshop.entity.ShoppingTrolley;

import java.util.List;

public interface ShoppingTrolleyMapper {
    List<ShoppingTrolley> queryAllShoppingTrolley() throws Exception;
    int insertShoppingTrolley(ShoppingTrolley shoppingTrolley) throws Exception;
    int deleteById(int id) throws Exception;
    ShoppingTrolley selectById(int id) throws Exception;
}
