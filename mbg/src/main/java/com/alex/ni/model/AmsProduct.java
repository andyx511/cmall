package com.alex.ni.model;

import io.swagger.annotations.ApiModelProperty;
import java.io.Serializable;
import java.math.BigDecimal;

public class AmsProduct implements Serializable {
    @ApiModelProperty(value = "赠送积分")
    private Integer id;

    @ApiModelProperty(value = "0-yes;1-no，是否上架")
    private String isPublic;

    private String name;

    @ApiModelProperty(value = "种类")
    private String kind;

    @ApiModelProperty(value = "品牌")
    private String brand;

    @ApiModelProperty(value = "图片")
    private String pic;

    @ApiModelProperty(value = "0-是；1-不是，是否是新品")
    private String isNew;

    @ApiModelProperty(value = "排序")
    private Integer sort;

    @ApiModelProperty(value = "价格")
    private BigDecimal price;

    @ApiModelProperty(value = "单位")
    private String unit;

    @ApiModelProperty(value = "赠送成长值")
    private String giftGrowth;

    @ApiModelProperty(value = "赠送积分")
    private String giftPoint;

    @ApiModelProperty(value = "详细图片")
    private String detailPic;

    private String status;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getIsPublic() {
        return isPublic;
    }

    public void setIsPublic(String isPublic) {
        this.isPublic = isPublic;
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

    public String getIsNew() {
        return isNew;
    }

    public void setIsNew(String isNew) {
        this.isNew = isNew;
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

    public String getGiftGrowth() {
        return giftGrowth;
    }

    public void setGiftGrowth(String giftGrowth) {
        this.giftGrowth = giftGrowth;
    }

    public String getGiftPoint() {
        return giftPoint;
    }

    public void setGiftPoint(String giftPoint) {
        this.giftPoint = giftPoint;
    }

    public String getDetailPic() {
        return detailPic;
    }

    public void setDetailPic(String detailPic) {
        this.detailPic = detailPic;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", isPublic=").append(isPublic);
        sb.append(", name=").append(name);
        sb.append(", kind=").append(kind);
        sb.append(", brand=").append(brand);
        sb.append(", pic=").append(pic);
        sb.append(", isNew=").append(isNew);
        sb.append(", sort=").append(sort);
        sb.append(", price=").append(price);
        sb.append(", unit=").append(unit);
        sb.append(", giftGrowth=").append(giftGrowth);
        sb.append(", giftPoint=").append(giftPoint);
        sb.append(", detailPic=").append(detailPic);
        sb.append(", status=").append(status);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}