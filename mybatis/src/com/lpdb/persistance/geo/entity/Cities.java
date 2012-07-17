package com.lpdb.persistance.geo.entity;

import java.util.Date;

public class Cities {
    private Integer id;

    private String name;

    private Integer districtId;

    private Integer stateId;

    private Integer unionTerritoryId;

    private Integer cityType;

    private Integer pupulation;

    private String coordinates;

    private String region;

    private String mayor;

    private String commissioner;

    private Integer density;

    private Integer area;

    private String elevation;

    private String website;

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

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getDistrictId() {
        return districtId;
    }

    public void setDistrictId(Integer districtId) {
        this.districtId = districtId;
    }

    public Integer getStateId() {
        return stateId;
    }

    public void setStateId(Integer stateId) {
        this.stateId = stateId;
    }

    public Integer getUnionTerritoryId() {
        return unionTerritoryId;
    }

    public void setUnionTerritoryId(Integer unionTerritoryId) {
        this.unionTerritoryId = unionTerritoryId;
    }

    public Integer getCityType() {
        return cityType;
    }

    public void setCityType(Integer cityType) {
        this.cityType = cityType;
    }

    public Integer getPupulation() {
        return pupulation;
    }

    public void setPupulation(Integer pupulation) {
        this.pupulation = pupulation;
    }

    public String getCoordinates() {
        return coordinates;
    }

    public void setCoordinates(String coordinates) {
        this.coordinates = coordinates == null ? null : coordinates.trim();
    }

    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region == null ? null : region.trim();
    }

    public String getMayor() {
        return mayor;
    }

    public void setMayor(String mayor) {
        this.mayor = mayor == null ? null : mayor.trim();
    }

    public String getCommissioner() {
        return commissioner;
    }

    public void setCommissioner(String commissioner) {
        this.commissioner = commissioner == null ? null : commissioner.trim();
    }

    public Integer getDensity() {
        return density;
    }

    public void setDensity(Integer density) {
        this.density = density;
    }

    public Integer getArea() {
        return area;
    }

    public void setArea(Integer area) {
        this.area = area;
    }

    public String getElevation() {
        return elevation;
    }

    public void setElevation(String elevation) {
        this.elevation = elevation == null ? null : elevation.trim();
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website == null ? null : website.trim();
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