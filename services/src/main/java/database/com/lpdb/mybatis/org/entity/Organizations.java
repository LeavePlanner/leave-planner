package com.lpdb.mybatis.org.entity;

import java.util.Date;

public class Organizations {
    private Integer id;

    private String name;

    private Integer orgType;

    private Integer employees;

    private String tradedAs;

    private String industry;

    private String founders;

    private Integer headquarter;

    private Integer numberOfLocations;

    private String areaServed;

    private String presenceIn;

    private String lpEmailId;

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

    public Integer getOrgType() {
        return orgType;
    }

    public void setOrgType(Integer orgType) {
        this.orgType = orgType;
    }

    public Integer getEmployees() {
        return employees;
    }

    public void setEmployees(Integer employees) {
        this.employees = employees;
    }

    public String getTradedAs() {
        return tradedAs;
    }

    public void setTradedAs(String tradedAs) {
        this.tradedAs = tradedAs == null ? null : tradedAs.trim();
    }

    public String getIndustry() {
        return industry;
    }

    public void setIndustry(String industry) {
        this.industry = industry == null ? null : industry.trim();
    }

    public String getFounders() {
        return founders;
    }

    public void setFounders(String founders) {
        this.founders = founders == null ? null : founders.trim();
    }

    public Integer getHeadquarter() {
        return headquarter;
    }

    public void setHeadquarter(Integer headquarter) {
        this.headquarter = headquarter;
    }

    public Integer getNumberOfLocations() {
        return numberOfLocations;
    }

    public void setNumberOfLocations(Integer numberOfLocations) {
        this.numberOfLocations = numberOfLocations;
    }

    public String getAreaServed() {
        return areaServed;
    }

    public void setAreaServed(String areaServed) {
        this.areaServed = areaServed == null ? null : areaServed.trim();
    }

    public String getPresenceIn() {
        return presenceIn;
    }

    public void setPresenceIn(String presenceIn) {
        this.presenceIn = presenceIn == null ? null : presenceIn.trim();
    }

    public String getLpEmailId() {
        return lpEmailId;
    }

    public void setLpEmailId(String lpEmailId) {
        this.lpEmailId = lpEmailId == null ? null : lpEmailId.trim();
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