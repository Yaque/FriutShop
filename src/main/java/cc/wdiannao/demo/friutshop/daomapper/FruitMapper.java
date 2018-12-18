package cc.wdiannao.demo.friutshop.daomapper;

import cc.wdiannao.demo.friutshop.entity.Fruit;

import java.util.List;

public interface FruitMapper {
    List<Fruit> queryAllFruit() throws Exception;
    int insertFruit(Fruit fruit) throws Exception;
    int deleteFruitById(int id) throws Exception;
}
