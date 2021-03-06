package edu.hdu.classbox.mapper;

import edu.hdu.classbox.bean.TmApply;
import edu.hdu.classbox.bean.TmApplyExample;
import edu.hdu.classbox.bean.TmApplyKey;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TmApplyMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table rel_tm_usr
     *
     * @mbggenerated
     */
    int countByExample(TmApplyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table rel_tm_usr
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(TmApplyKey key);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table rel_tm_usr
     *
     * @mbggenerated
     */
    int insert(TmApply record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table rel_tm_usr
     *
     * @mbggenerated
     */
    int insertSelective(TmApply record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table rel_tm_usr
     *
     * @mbggenerated
     */
    List<TmApply> selectByExample(TmApplyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table rel_tm_usr
     *
     * @mbggenerated
     */
    TmApply selectByPrimaryKey(TmApplyKey key);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table rel_tm_usr
     *
     * @mbggenerated
     */
    int updateByExampleSelective(@Param("record") TmApply record, @Param("example") TmApplyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table rel_tm_usr
     *
     * @mbggenerated
     */
    int updateByExample(@Param("record") TmApply record, @Param("example") TmApplyExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table rel_tm_usr
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(TmApply record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table rel_tm_usr
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(TmApply record);
}