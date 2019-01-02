package vivmallcn.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import vivmallcn.domain.Industry;
import vivmallcn.domain.Product_Seller;
import vivmallcn.service.ICategory;
import vivmallcn.service.IProduct;
import vivmallcn.service.IProduct_Seller;
import vivmallcn.service.Iindustry;

@Controller
public class FE_HomeCtr {
	@Value("${image_seller_url}")
    private String image_seller_url;
	
	@Value("${link_seller_url}")
    private String link_seller_url;
	
	@Value("${PRODUCT_IN_INDUSTRY}")
	private int PRODUCT_IN_INDUSTRY;
	
	@Autowired
	private ICategory categoryService;
	
	@Autowired
	private IProduct productService;
	
	@Autowired
	private Iindustry idustryService;
	
	@Autowired
	private IProduct_Seller iProduct_Seller;
	
	
	
	@RequestMapping(value={"/","home","home/"})
	public String index(Model model)
	{
		ArrayList<Product_Seller> product_sellers=new ArrayList<Product_Seller>();
		List<Industry> industries=idustryService.findAllContainCategoryAndProduct(PRODUCT_IN_INDUSTRY);		
		
		//product_sellers=iProduct_Seller.get_product_memberhip();
		
		String[] tmp_sellers = new String[] {"PRO1611110000000053", "Ổ cứng di động", "2016-11-11_seagate.jpg", "PRO1611110000000054", "Loa Bluetooth", "2016-11-11_xiaomi.jpg", "PRO1611300000000059", "Ổ cứng lưu trữ di động Wireless", "2016-11-30_hero-left-380x250.jpg", "PRO1611300000000060", "Ninebot One A1 Xe tự cân bằng 1 bánh", "2016-11-30_NinebotA1-03.jpg", "PRO1611300000000061", "Điện thoại xiaomi 5s", "xiaomi5s.jpg", "PRO1611300000000062", "Vòng tay Xiaomi", "2016-11-30_download.jpg", "PRO1612060000000063", "Điện thoại Xiaomi Max", "xiaomimax.jpg", "PRO1612060000000064", "Điện thoại Xiaomi Mix", "2016_20_06_10_20_46_ap_resize.jpg", "PRO1702070000000066", "小米Mipad", "Mipad.jpg", "PRO1702070000000067", "Xiaomi Mi5", "2017_04_07_10_04_11_mi5.jpg", "PRO1702140000000068", "CN tab156 product", "2017_26_14_04_26_49_tab11.jpg", "PRO1703010000000069", "01 03 2017 VN", "2017_47_01_02_47_57_KTT1-02.jpg", "PRO1703010000000070", "tab VN 01 03 2017", "2017_57_01_03_57_07_tab11.jpg", "PRO1703030000000071", "seller 1 VN", "2017_47_03_04_47_57_Koala.jpg", "PRO1703030000000072", "demo 0303 VN", "2017_05_03_05_05_18_tab22.jpg", "PRO1703030000000073", "FLAG", "2017_44_03_10_44_15_11.png", "PRO1703030000000075", "Drap giường", "2017_59_03_10_59_29_11.png", "PRO1703140000000076", "014 3 2017 VN", "2017_30_14_04_30_07_Koala.jpg", "PRO1705030000000077", "Mặt nạ dừa", "2017_43_03_04_43_11_mat na dua.jpg", "PRO1705030000000078", "OPPO A57", "2017_45_03_10_45_05_OPPO1.jpg", "PRO1705030000000080", "Pin Sạc Dự Phòng", "2017_14_03_11_14_24_CH1.jpg"};
		
		for(int i=0;i<tmp_sellers.length;i=i+3){
			
			Product_Seller t=new Product_Seller();
			t.setProductId(tmp_sellers[i]);
			t.setProductName(tmp_sellers[i+1]);
			t.setProductImage(tmp_sellers[i+2]);
			
			product_sellers.add(t);
		}
		
		model.addAttribute("product_sellers",product_sellers);
		model.addAttribute("industries", industries);
		model.addAttribute("image_seller_url",image_seller_url);
		model.addAttribute("link_seller_url",link_seller_url);
		model.addAttribute("headTitle", "home.title");
		return "shop/home/index";
	}
	
	
}
