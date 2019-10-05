package com.alex.ni.model;

import io.swagger.annotations.ApiModelProperty;
import java.io.Serializable;
import java.math.BigDecimal;

public class AmsProduct implements Serializable {
    private Integer id;

    private String name;

    @ApiModelProperty(value = "种类")
    private String kind;

    @ApiModelProperty(value = "品牌")
    private String brand;

    @ApiModelProperty(value = "图片")
    private String pic;

    @ApiModelProperty(value = "0-bushi；1-shi，是否是新品")
    private Integer isNew;

    @ApiModelProperty(value = "0-bushi;1-shi，是否上架")
    private Integer isPublic;

    @ApiModelProperty(value = "排序")
    private Integer sort;

    @ApiModelProperty(value = "价格")
    private BigDecimal price;

    @ApiModelProperty(value = "单位")
    private String unit;

    @ApiModelProperty(value = "赠送成长值")
    private Integer giftGrowth;

    @ApiModelProperty(value = "赠送积分")
    private Integer giftPoint;

    @ApiModelProperty(value = "审核状态0待，1Y，2N，3打折待审核")
    private Integer status;

    private Integer isDelete;

    @ApiModelProperty(value = "销量")
    private Integer salesVolume;

    @ApiModelProperty(value = "评价数")
    private Integer commentNum;

    @ApiModelProperty(value = "库存")
    private Integer stock;

    @ApiModelProperty(value = "是否打折0否1是")
    private Integer isDiscount;

    @ApiModelProperty(value = "打折后的价格")
    private BigDecimal discountPrice;

    @ApiModelProperty(value = "详细图片")
    private String detailPic;

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

    public String getDetailPic() {
        return detailPic;
    }

    public void setDetailPic(String detailPic) {
        this.detailPic = detailPic;
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
        sb.append(", status=").append(status);
        sb.append(", isDelete=").append(isDelete);
        sb.append(", salesVolume=").append(salesVolume);
        sb.append(", commentNum=").append(commentNum);
        sb.append(", stock=").append(stock);
        sb.append(", isDiscount=").append(isDiscount);
        sb.append(", discountPrice=").append(discountPrice);
        sb.append(", detailPic=").append(detailPic);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}