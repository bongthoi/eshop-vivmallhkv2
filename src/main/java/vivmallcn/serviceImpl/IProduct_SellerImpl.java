package vivmallcn.serviceImpl;

import java.util.ArrayList;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;

import org.glassfish.jersey.client.ClientConfig;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import vivmallcn.domain.Product_Seller;
import vivmallcn.service.IProduct_Seller;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;



@Service
public class IProduct_SellerImpl implements IProduct_Seller {
	
	@Value("${product_seller_url}")
    private String product_seller_url;
	
	@Override
	public  ArrayList<Product_Seller> get_product_memberhip(){
		ArrayList<Product_Seller> list = new ArrayList<Product_Seller>();
		try{
			ClientConfig config = new ClientConfig();
			Client client = ClientBuilder.newClient(config);
			WebTarget target = client.target(product_seller_url);
			//read service
			String data = target.path("get_product_seller")
					.request()
					.accept(MediaType.APPLICATION_JSON).get(String.class);
		//	System.out.println("data="+data);
			if(data.length()>0){
				Gson gson = new Gson();
				list = gson.fromJson(data, new TypeToken<ArrayList<Product_Seller>>() {}.getType());	
				
				return list;
			}
		}catch(Exception ex){
			ex.printStackTrace();
		}		
		return list;
	}
}
