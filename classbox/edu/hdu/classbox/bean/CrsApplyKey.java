package edu.hdu.classbox.bean;

public class CrsApplyKey {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column rel_cs_usr.CrsNo
     *
     * @mbggenerated
     */
    private String crsNo;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column rel_cs_usr.UsrNo
     *
     * @mbggenerated
     */
    private String stuNo;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column rel_cs_usr.CrsNo
     *
     * @return the value of rel_cs_usr.CrsNo
     *
     * @mbggenerated
     */
    public String getCrsNo() {
        return crsNo;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column rel_cs_usr.CrsNo
     *
     * @param crsNo the value for rel_cs_usr.CrsNo
     *
     * @mbggenerated
     */
    public void setCrsNo(String crsNo) {
        this.crsNo = crsNo == null ? null : crsNo.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column rel_cs_usr.UsrNo
     *
     * @return the value of rel_cs_usr.UsrNo
     *
     * @mbggenerated
     */
    public String getStuNo() {
        return stuNo;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column rel_cs_usr.UsrNo
     *
     * @param stuNo the value for rel_cs_usr.UsrNo
     *
     * @mbggenerated
     */
    public void setStuNo(String stuNo) {
        this.stuNo = stuNo == null ? null : stuNo.trim();
    }
}