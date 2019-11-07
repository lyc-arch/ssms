package com.how2java.pojo;


public class HllcPost {

  private int poId;
  private String poName;
  private String poDate;
  private String poPeople;
  private String poMessage;

  @Override
  public String toString() {
    return "HllcPost{" +
            "poId=" + poId +
            ", poName='" + poName + '\'' +
            ", poDate='" + poDate + '\'' +
            ", poPeople='" + poPeople + '\'' +
            ", poMessage='" + poMessage + '\'' +
            '}';
  }

  public int getPoId() {
    return poId;
  }

  public void setPoId(int poId) {
    this.poId = poId;
  }


  public String getPoName() {
    return poName;
  }

  public void setPoName(String poName) {
    this.poName = poName;
  }


  public String getPoDate() {
    return poDate;
  }

  public void setPoDate(String poDate) {
    this.poDate = poDate;
  }


  public String getPoPeople() {
    return poPeople;
  }

  public void setPoPeople(String poPeople) {
    this.poPeople = poPeople;
  }


  public String getPoMessage() {
    return poMessage;
  }

  public void setPoMessage(String poMessage) {
    this.poMessage = poMessage;
  }

}
