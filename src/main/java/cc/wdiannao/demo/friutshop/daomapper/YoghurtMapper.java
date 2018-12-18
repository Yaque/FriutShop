package cc.wdiannao.demo.friutshop.daomapper;

import cc.wdiannao.demo.friutshop.entity.Yoghurt;

import java.util.List;

public interface YoghurtMapper {
    List<Yoghurt> queryAllYoghurt() throws Exception;
    int insertYoghurt(Yoghurt yoghurt) throws Exception;
    int deleteYoghurtById(int id) throws Exception;
}
