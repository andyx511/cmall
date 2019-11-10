package com.alex.ni.model;

import io.swagger.annotations.ApiModelProperty;
import java.io.Serializable;

public class AmsBrandRecommend implements Serializable {
    private Integer id;

    private Integer brandId;

    private Integer isRecomend;

    private Integer sort;

    private String brandName;

    private String url;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getBrandId() {
        return brandId;
    }

    public void setBrandId(Integer brandId) {
        this.brandId = brandId;
    }

    public Integer getIsRecomend() {
        return isRecomend;
    }

    public void setIsRecomend(Integer isRecomend) {
        this.isRecomend = isRecomend;
    }

    public Integer getSort() {
        return sort;
    }

    public void setSort(Integer sort) {
        this.sort = sort;
    }

    public String getBrandName() {
        return brandName;
    }

    public void setBrandName(String brandName) {
        this.brandName = brandName;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", brandId=").append(brandId);
        sb.append(", isRecomend=").append(isRecomend);
        sb.append(", sort=").append(sort);
        sb.append(", brandName=").append(brandName);
        sb.append(", url=").append(url);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}