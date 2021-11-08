package com.kapja.home;

public class homeVo {
	private String commGrpCd;
	private String commGrpNm;
	private String commCd;
	private String commNm;
	
	public String getCommGrpCd() {
		return commGrpCd;
	}
	public void setCommGrpCd(String commGrpCd) {
		this.commGrpCd = commGrpCd;
	}
	public String getCommGrpNm() {
		return commGrpNm;
	}
	public void setCommGrpNm(String commGrpNm) {
		this.commGrpNm = commGrpNm;
	}
	public String getCommCd() {
		return commCd;
	}
	public void setCommCd(String commCd) {
		this.commCd = commCd;
	}
	public String getCommNm() {
		return commNm;
	}
	public void setCommNm(String commNm) {
		this.commNm = commNm;
	}
	
	@Override
	public String toString() {
		return "commGrpCd="+this.commGrpCd +"commGrpNm="+ this.commGrpNm + "commCd=" +this.commCd + "commNm=" +this.commNm;
	}
}
