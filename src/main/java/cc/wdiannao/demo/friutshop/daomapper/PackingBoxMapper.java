package cc.wdiannao.demo.friutshop.daomapper;

import cc.wdiannao.demo.friutshop.entity.PackingBox;

import java.util.List;

public interface PackingBoxMapper {
    List<PackingBox> queryAllPackingBox() throws Exception;
    int insertPackingBox(PackingBox packingBox) throws Exception;
    int deletePackingBoxById(int id) throws Exception;
}
