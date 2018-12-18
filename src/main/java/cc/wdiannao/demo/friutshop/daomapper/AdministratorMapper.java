package cc.wdiannao.demo.friutshop.daomapper;

import cc.wdiannao.demo.friutshop.entity.Administrator;

import java.util.List;

public interface AdministratorMapper {
    Administrator findByUsername(String username) throws Exception;
}
