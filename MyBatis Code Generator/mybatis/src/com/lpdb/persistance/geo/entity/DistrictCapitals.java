package com.lpdb.persistance.geo.entity;

import java.util.Date;

public class DistrictCapitals {
    private Integer id;

    private Integer districtId;

    private Integer cityId;

    private Integer capitalType;

    private Date capitalFromDate;

    private Date capitalToDate;

    private String description;

    private Date createDate;

    private Date updateDate;

    private Boolean deleted;

    private Boolean active;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getDistrictId() {
        return districtId;
    }

    public void setDistrictId(Integer districtId) {
        this.districtId = districtId;
    }

    public Integer getCityId() {
        return cityId;
    }

    public void setCityId(Integer cityId) {
        this.cityId = cityId;
    }

    public Integer getCapitalType() {
        return capitalType;
    }

    public void setCapitalType(Integer capitalType) {
        this.capitalType = capitalType;
    }

    public Date getCapitalFromDate() {
        return capitalFromDate;
    }

    public void setCapitalFromDate(Date capitalFromDate) {
        this.capitalFromDate = capitalFromDate;
    }

    public Date getCapitalToDate() {
        return capitalToDate;
    }

    public void setCapitalToDate(Date capitalToDate) {
        this.capitalToDate = capitalToDate;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    public Boolean getDeleted() {
        return deleted;
    }

    public void setDeleted(Boolean deleted) {
        this.deleted = deleted;
    }

    public Boolean getActive() {
        return active;
    }

    public void setActive(Boolean active) {
        this.active = active;
    }
}