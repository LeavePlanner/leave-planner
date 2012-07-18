package com.lpdb.mybatis.geo.entity;

import java.util.Date;

public class States {
    private Integer id;

    private String name;

    private String code;

    private Integer countryId;

    private Integer area;

    private Float population;

    private String language;

    private Integer largestCity;

    private Integer numberOfGeoDistricts;

    private Integer numberOfVillages;

    private Integer numberOfTowns;

    private Integer populationDensity;

    private Float literacyRate;

    private Float percentUrbanPopulation;

    private Integer sexRatio;

    private Integer sexRatioZeroToSix;

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

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code == null ? null : code.trim();
    }

    public Integer getCountryId() {
        return countryId;
    }

    public void setCountryId(Integer countryId) {
        this.countryId = countryId;
    }

    public Integer getArea() {
        return area;
    }

    public void setArea(Integer area) {
        this.area = area;
    }

    public Float getPopulation() {
        return population;
    }

    public void setPopulation(Float population) {
        this.population = population;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language == null ? null : language.trim();
    }

    public Integer getLargestCity() {
        return largestCity;
    }

    public void setLargestCity(Integer largestCity) {
        this.largestCity = largestCity;
    }

    public Integer getNumberOfGeoDistricts() {
        return numberOfGeoDistricts;
    }

    public void setNumberOfGeoDistricts(Integer numberOfGeoDistricts) {
        this.numberOfGeoDistricts = numberOfGeoDistricts;
    }

    public Integer getNumberOfVillages() {
        return numberOfVillages;
    }

    public void setNumberOfVillages(Integer numberOfVillages) {
        this.numberOfVillages = numberOfVillages;
    }

    public Integer getNumberOfTowns() {
        return numberOfTowns;
    }

    public void setNumberOfTowns(Integer numberOfTowns) {
        this.numberOfTowns = numberOfTowns;
    }

    public Integer getPopulationDensity() {
        return populationDensity;
    }

    public void setPopulationDensity(Integer populationDensity) {
        this.populationDensity = populationDensity;
    }

    public Float getLiteracyRate() {
        return literacyRate;
    }

    public void setLiteracyRate(Float literacyRate) {
        this.literacyRate = literacyRate;
    }

    public Float getPercentUrbanPopulation() {
        return percentUrbanPopulation;
    }

    public void setPercentUrbanPopulation(Float percentUrbanPopulation) {
        this.percentUrbanPopulation = percentUrbanPopulation;
    }

    public Integer getSexRatio() {
        return sexRatio;
    }

    public void setSexRatio(Integer sexRatio) {
        this.sexRatio = sexRatio;
    }

    public Integer getSexRatioZeroToSix() {
        return sexRatioZeroToSix;
    }

    public void setSexRatioZeroToSix(Integer sexRatioZeroToSix) {
        this.sexRatioZeroToSix = sexRatioZeroToSix;
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