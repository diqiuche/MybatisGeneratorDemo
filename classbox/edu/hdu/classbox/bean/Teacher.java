package edu.hdu.classbox.bean;

public class Teacher {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column teacher.TeaNo
     *
     * @mbggenerated
     */
    private String teaNo;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column teacher.TeaName
     *
     * @mbggenerated
     */
    private String teaName;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column teacher.WeChatNo
     *
     * @mbggenerated
     */
    private String weChatNo;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column teacher.TeaNo
     *
     * @return the value of teacher.TeaNo
     *
     * @mbggenerated
     */
    public String getTeaNo() {
        return teaNo;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column teacher.TeaNo
     *
     * @param teaNo the value for teacher.TeaNo
     *
     * @mbggenerated
     */
    public void setTeaNo(String teaNo) {
        this.teaNo = teaNo == null ? null : teaNo.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column teacher.TeaName
     *
     * @return the value of teacher.TeaName
     *
     * @mbggenerated
     */
    public String getTeaName() {
        return teaName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column teacher.TeaName
     *
     * @param teaName the value for teacher.TeaName
     *
     * @mbggenerated
     */
    public void setTeaName(String teaName) {
        this.teaName = teaName == null ? null : teaName.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column teacher.WeChatNo
     *
     * @return the value of teacher.WeChatNo
     *
     * @mbggenerated
     */
    public String getWeChatNo() {
        return weChatNo;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column teacher.WeChatNo
     *
     * @param weChatNo the value for teacher.WeChatNo
     *
     * @mbggenerated
     */
    public void setWeChatNo(String weChatNo) {
        this.weChatNo = weChatNo == null ? null : weChatNo.trim();
    }
}