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

}
