package org.mybatis.dayinfo.persistence;

import org.mybatis.dayinfo.domain.GeoState;

public interface GeoStateMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(GeoState record);

    int insertSelective(GeoState record);

    GeoState selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(GeoState record);

    int updateByPrimaryKey(GeoState record);
}