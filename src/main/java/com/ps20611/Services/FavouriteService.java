package com.ps20611.Services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ps20611.Admin_DAO.Favorite_DAO;
import com.ps20611.Entity.Account_Entity;
import com.ps20611.Entity.Favourite_Entity;
import com.ps20611.Entity.Product_Entity;
@Service
public class FavouriteService {
    
    @Autowired
    private Favorite_DAO favouriteRepository;

    public void saveFavourite(int id, String accountId, int productId) {
        Favourite_Entity favourite = new Favourite_Entity();
        
        favourite.setId(id);
        
        Account_Entity account = new Account_Entity();
        account.setUsername(accountId);
        favourite.setAccount_id(account);

        Product_Entity product = new Product_Entity();
        product.setId(productId);
        favourite.setProduct_id(product);

        // Lưu vào cơ sở dữ liệu
        favouriteRepository.save(favourite);
    }
}
