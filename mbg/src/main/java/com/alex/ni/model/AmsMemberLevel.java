package com.alex.ni.model;

import io.swagger.annotations.ApiModelProperty;
import java.io.Serializable;

public class AmsMemberLevel implements Serializable {
    private Integer id;

    private String name;

    @ApiModelProperty(value = "所需成长值")
    private Integer grouth;

    @ApiModelProperty(value = "0-100")
    private Integer discount;

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

    public Integer getGrouth() {
        return grouth;
    }

    public void setGrouth(Integer grouth) {
        this.grouth = grouth;
    }

    public Integer getDiscount() {
        return discount;
    }

    public void setDiscount(Integer discount) {
        this.discount = discount;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", name=").append(name);
        sb.append(", grouth=").append(grouth);
        sb.append(", discount=").append(discount);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}