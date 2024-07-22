package org.example.w1.menu;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.IntStream;

public enum MenuService {

    INSTANCE;

    private List<MenuVO> menus;

    MenuService() {
        //dummy
        menus = new ArrayList<MenuVO>();
        for (int i = 1; i <= 10 ; i++) {
            menus.add(new MenuVO(i,"Menu"+i, 1000* i));
        }//end for
    }

    public List<MenuVO> getMenus() {
        return menus;
    }

    //특정한 번호의 상품을 반환해 주는 기능
    public MenuVO getMenuById(int id) {

        //가짜 상품
        MenuVO menu = new MenuVO(id,"가짜상품", 5000);

        return menu;
        
    }
}
