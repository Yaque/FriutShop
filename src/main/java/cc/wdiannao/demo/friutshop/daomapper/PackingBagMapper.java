package cc.wdiannao.demo.friutshop.daomapper;

import cc.wdiannao.demo.friutshop.entity.PackingBag;

import java.util.List;

public interface PackingBagMapper {
    List<PackingBag> queryAllPackingBag() throws Exception;
    int insertPackingBag(PackingBag packingBag) throws Exception;
    int deletePackingBagById(int id) throws  Exception;
}
