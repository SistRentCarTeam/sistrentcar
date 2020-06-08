package sist.com.dto;
public class MemberBean {
	private int memno;
	private String memid;
	private String mempw;
	private String mname;
	private String madress;
	private String memtel;
	private String memail;
	private String mbirth;
	private String mlevel;
	
	public int getMemno() {
		return memno;
	}
	public void setMemno(int memno) {
		this.memno = memno;
	}
	public String getMemid() {
		return memid;
	}
	public void setMemid(String memid) {
		this.memid = memid;
	}
	public String getMempw() {
		return mempw;
	}
	public void setMempw(String mempw) {
		this.mempw = mempw;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMadress() {
		return madress;
	}
	public void setMadress(String madress) {
		this.madress = madress;
	}
	public String getMemtel() {
		return memtel;
	}
	public void setMemtel(String memtel) {
		this.memtel = memtel;
	}
	public String getMemail() {
		return memail;
	}
	public void setMemail(String memail) {
		this.memail = memail;
	}
	public String getMbirth() {
		return mbirth;
	}
	public void setMbirth(String mbirth) {
		this.mbirth = mbirth;
	}
	public String getMlevel() {
		return mlevel;
	}
	public void setMlevel(String mlevel) {
		this.mlevel = mlevel;
	}
	@Override
	public String toString() {
		return "MemberBean [memno=" + memno + ", memid=" + memid + ", mempw=" + mempw + ", mname=" + mname
				+ ", madress=" + madress + ", memtel=" + memtel + ", memail=" + memail + ", mbirth=" + mbirth
				+ ", mlevel=" + mlevel + "]";
	}

}
