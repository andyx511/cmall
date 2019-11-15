package com.alex.ni.model;

import cn.afterturn.easypoi.excel.annotation.Excel;
import io.swagger.annotations.ApiModelProperty;
import java.io.Serializable;
import java.math.BigDecimal;

public class AmsProduct implements Serializable {

    @Excel(name="id")
    private Integer id;

    @Excel(name="商品名")
    private String name;

    @Excel(name="种类")
    @ApiModelProperty(value = "种类")
    private String kind;

    @Excel(name="品牌")
    @ApiModelProperty(value = "品牌")
    private String brand;

    @Excel(name="图片")
    @ApiModelProperty(value = "图片")
    private String pic;

    @Excel(name="是否是新品")
    @ApiModelProperty(value = "0-bushi；1-shi，是否是新品")
    private Integer isNew;

    @Excel(name="是否上架")
    @ApiModelProperty(value = "0-bushi;1-shi，是否上架")
    private Integer isPublic;

    @Excel(name="排序")
    @ApiModelProperty(value = "排序")
    private Integer sort;

    @Excel(name="价格")
    @ApiModelProperty(value = "价格")
    private BigDecimal price;

    @Excel(name="单位")
    @ApiModelProperty(value = "单位")
    private String unit;

    @Excel(name="赠送成长值")
    @ApiModelProperty(value = "赠送成长值")
    private Integer giftGrowth;

    @Excel(name="赠送积分")
    @ApiModelProperty(value = "赠送积分")
    private Integer giftPoint;

    @Excel(name="详细图片")
    @ApiModelProperty(value = "详细图片")
    private String detailPic;

    @Excel(name="状态")
    @ApiModelProperty(value = "审核状态0待，1Y，2N，3打折待审核")
    private Integer status;

    @Excel(name="是否删除")
    private Integer isDelete;

    @Excel(name="销量")
    @ApiModelProperty(value = "销量")
    private Integer salesVolume;

    @Excel(name="评价数")
    @ApiModelProperty(value = "评价数")
    private Integer commentNum;

    @Excel(name="库存")
    @ApiModelProperty(value = "库存")
    private Integer stock;

    @Excel(name="是否打折")
    @ApiModelProperty(value = "是否打折0否1是")
    private Integer isDiscount;

    @Excel(name="打折的价格")
    @ApiModelProperty(value = "打折后的价格")
    private BigDecimal discountPrice;

    @Excel(name="描述")
    @ApiModelProperty(value = "描述")
    private String des;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getKind() {
        return kind;
    }

    public void setKind(String kind) {
        this.kind = kind;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public Integer getIsNew() {
        return isNew;
    }

    public void setIsNew(Integer isNew) {
        this.isNew = isNew;
    }

    public Integer getIsPublic() {
        return isPublic;
    }

    public void setIsPublic(Integer isPublic) {
        this.isPublic = isPublic;
    }

    public Integer getSort() {
        return sort;
    }

    public void setSort(Integer sort) {
        this.sort = sort;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public Integer getGiftGrowth() {
        return giftGrowth;
    }

    public void setGiftGrowth(Integer giftGrowth) {
        this.giftGrowth = giftGrowth;
    }

    public Integer getGiftPoint() {
        return giftPoint;
    }

    public void setGiftPoint(Integer giftPoint) {
        this.giftPoint = giftPoint;
    }

    public String getDetailPic() {
        return detailPic;
    }

    public void setDetailPic(String detailPic) {
        this.detailPic = detailPic;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Integer getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(Integer isDelete) {
        this.isDelete = isDelete;
    }

    public Integer getSalesVolume() {
        return salesVolume;
    }

    public void setSalesVolume(Integer salesVolume) {
        this.salesVolume = salesVolume;
    }

    public Integer getCommentNum() {
        return commentNum;
    }

    public void setCommentNum(Integer commentNum) {
        this.commentNum = commentNum;
    }

    public Integer getStock() {
        return stock;
    }

    public void setStock(Integer stock) {
        this.stock = stock;
    }

    public Integer getIsDiscount() {
        return isDiscount;
    }

    public void setIsDiscount(Integer isDiscount) {
        this.isDiscount = isDiscount;
    }

    public BigDecimal getDiscountPrice() {
        return discountPrice;
    }

    public void setDiscountPrice(BigDecimal discountPrice) {
        this.discountPrice = discountPrice;
    }

    public String getDes() {
        return des;
    }

    public void setDes(String des) {
        this.des = des;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", name=").append(name);
        sb.append(", kind=").append(kind);
        sb.append(", brand=").append(brand);
        sb.append(", pic=").append(pic);
        sb.append(", isNew=").append(isNew);
        sb.append(", isPublic=").append(isPublic);
        sb.append(", sort=").append(sort);
        sb.append(", price=").append(price);
        sb.append(", unit=").append(unit);
        sb.append(", giftGrowth=").append(giftGrowth);
        sb.append(", giftPoint=").append(giftPoint);
        sb.append(", detailPic=").append(detailPic);
        sb.append(", status=").append(status);
        sb.append(", isDelete=").append(isDelete);
        sb.append(", salesVolume=").append(salesVolume);
        sb.append(", commentNum=").append(commentNum);
        sb.append(", stock=").append(stock);
        sb.append(", isDiscount=").append(isDiscount);
        sb.append(", discountPrice=").append(discountPrice);
        sb.append(", des=").append(des);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}
