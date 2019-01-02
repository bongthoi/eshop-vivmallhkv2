package vivmallcn.domain;

import java.util.Date;

import org.springframework.data.domain.Persistable;

public class Product_Seller implements Persistable<String>{
	
	private static final long serialVersionUID = 4886592322593759450L;
	private int productIndex;
	private String productId;		
	private String productName;		
	private String producTypeId;		
	private String productImage;		
	private String productDes;		
	private Float productPrice;		
	private String productProviderId;		
	private Date productInputDate;
	private String productguide;
	private String productDescShort;
	private String productquantity;
	private String moreinfo;
	private String producttype;
	private String orderproduct;
	private int rownum;
	private String productimglarg;
	private String typeimglarg;
	private Float newPrice;
	private int pricePercent;
	private String catePromotionId;
	private int isPromo;
	String customer_id;
	String shop_name;
	String url_shop;
	public String getUrl_shop() {
		return url_shop;
	}
	public void setUrl_shop(String url_shop) {
		this.url_shop = url_shop;
	}
	public String getShop_name() {
		return shop_name;
	}
	public void setShop_name(String shop_name) {
		this.shop_name = shop_name;
	}
	public String getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}
	public int getProductIndex() {
		return productIndex;
	}
	public void setProductIndex(int productIndex) {
		this.productIndex = productIndex;
	}
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProducTypeId() {
		return producTypeId;
	}
	public void setProducTypeId(String producTypeId) {
		this.producTypeId = producTypeId;
	}
	public String getProductImage() {
		return productImage;
	}
	public void setProductImage(String productImage) {
		this.productImage = productImage;
	}
	public String getProductDes() {
		return productDes;
	}
	public void setProductDes(String productDes) {
		this.productDes = productDes;
	}
	public Float getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(Float productPrice) {
		this.productPrice = productPrice;
	}
	public String getProductProviderId() {
		return productProviderId;
	}
	public void setProductProviderId(String productProviderId) {
		this.productProviderId = productProviderId;
	}
	public Date getProductInputDate() {
		return productInputDate;
	}
	public void setProductInputDate(Date productInputDate) {
		this.productInputDate = productInputDate;
	}
	public String getProductguide() {
		return productguide;
	}
	public void setProductguide(String productguide) {
		this.productguide = productguide;
	}
	public String getProductDescShort() {
		return productDescShort;
	}
	public void setProductDescShort(String productDescShort) {
		this.productDescShort = productDescShort;
	}
	public String getProductquantity() {
		return productquantity;
	}
	public void setProductquantity(String productquantity) {
		this.productquantity = productquantity;
	}
	public String getMoreinfo() {
		return moreinfo;
	}
	public void setMoreinfo(String moreinfo) {
		this.moreinfo = moreinfo;
	}
	public String getProducttype() {
		return producttype;
	}
	public void setProducttype(String producttype) {
		this.producttype = producttype;
	}
	public String getOrderproduct() {
		return orderproduct;
	}
	public void setOrderproduct(String orderproduct) {
		this.orderproduct = orderproduct;
	}
	public int getRownum() {
		return rownum;
	}
	public void setRownum(int rownum) {
		this.rownum = rownum;
	}
	public String getProductimglarg() {
		return productimglarg;
	}
	public void setProductimglarg(String productimglarg) {
		this.productimglarg = productimglarg;
	}
	public String getTypeimglarg() {
		return typeimglarg;
	}
	public void setTypeimglarg(String typeimglarg) {
		this.typeimglarg = typeimglarg;
	}
	public Float getNewPrice() {
		return newPrice;
	}
	public void setNewPrice(Float newPrice) {
		this.newPrice = newPrice;
	}
	public int getPricePercent() {
		return pricePercent;
	}
	public void setPricePercent(int pricePercent) {
		this.pricePercent = pricePercent;
	}
	public String getCatePromotionId() {
		return catePromotionId;
	}
	public void setCatePromotionId(String catePromotionId) {
		this.catePromotionId = catePromotionId;
	}
	public int getIsPromo() {
		return isPromo;
	}
	public void setIsPromo(int isPromo) {
		this.isPromo = isPromo;
	}
	public String getPercent_discount() {
		return percent_discount;
	}
	public void setPercent_discount(String percent_discount) {
		this.percent_discount = percent_discount;
	}
	public String getPrice_promo() {
		return price_promo;
	}
	public void setPrice_promo(String price_promo) {
		this.price_promo = price_promo;
	}
	public Float getPrice_old() {
		return price_old;
	}
	public void setPrice_old(Float price_old) {
		this.price_old = price_old;
	}
	public String getProperty() {
		return property;
	}
	public void setProperty(String property) {
		this.property = property;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	private String percent_discount;
	private String price_promo;
	private Float price_old;
	String property;
	String color;
	private String property_value;
	private String color_value;

	public String getProperty_value() {
		return property_value;
	}
	public void setProperty_value(String property_value) {
		this.property_value = property_value;
	}
	public String getColor_value() {
		return color_value;
	}
	public void setColor_value(String color_value) {
		this.color_value = color_value;
	}
	String branch;
	float num_view;
	float num_buy;
	public float getNum_view() {
		return num_view;
	}
	public void setNum_view(float num_view) {
		this.num_view = num_view;
	}
	public float getNum_buy() {
		return num_buy;
	}
	public void setNum_buy(float num_buy) {
		this.num_buy = num_buy;
	}
	private String email;
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String getId() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public boolean isNew() {
		// TODO Auto-generated method stub
		return false;
	}
	public Product_Seller(int productIndex, String productId,
			String productName, String producTypeId, String productImage,
			String productDes, Float productPrice, String productProviderId,
			Date productInputDate, String productguide,
			String productDescShort, String productquantity, String moreinfo,
			String producttype, String orderproduct, int rownum,
			String productimglarg, String typeimglarg, Float newPrice,
			int pricePercent, String catePromotionId, int isPromo,
			String customer_id, String shop_name, String url_shop,
			String percent_discount, String price_promo, Float price_old,
			String property, String color, String property_value,
			String color_value, String branch, float num_view, float num_buy,
			String email) {
		super();
		this.productIndex = productIndex;
		this.productId = productId;
		this.productName = productName;
		this.producTypeId = producTypeId;
		this.productImage = productImage;
		this.productDes = productDes;
		this.productPrice = productPrice;
		this.productProviderId = productProviderId;
		this.productInputDate = productInputDate;
		this.productguide = productguide;
		this.productDescShort = productDescShort;
		this.productquantity = productquantity;
		this.moreinfo = moreinfo;
		this.producttype = producttype;
		this.orderproduct = orderproduct;
		this.rownum = rownum;
		this.productimglarg = productimglarg;
		this.typeimglarg = typeimglarg;
		this.newPrice = newPrice;
		this.pricePercent = pricePercent;
		this.catePromotionId = catePromotionId;
		this.isPromo = isPromo;
		this.customer_id = customer_id;
		this.shop_name = shop_name;
		this.url_shop = url_shop;
		this.percent_discount = percent_discount;
		this.price_promo = price_promo;
		this.price_old = price_old;
		this.property = property;
		this.color = color;
		this.property_value = property_value;
		this.color_value = color_value;
		this.branch = branch;
		this.num_view = num_view;
		this.num_buy = num_buy;
		this.email = email;
	}
	public Product_Seller() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
