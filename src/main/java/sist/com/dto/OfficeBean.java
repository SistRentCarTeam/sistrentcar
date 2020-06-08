package sist.com.dto;

public class OfficeBean {
	private int ofcno;
	private String ofcname;
	private String mgrname;
	private int memno;
	private String ofctel;
	private String ofcaddr;
	
	public int getOfcno() {
		return ofcno;
	}
	public void setOfcno(int ofcno) {
		this.ofcno = ofcno;
	}
	public String getOfcname() {
		return ofcname;
	}
	public void setOfcname(String ofcname) {
		this.ofcname = ofcname;
	}
	public String getMgrname() {
		return mgrname;
	}
	public void setMgrname(String mgrname) {
		this.mgrname = mgrname;
	}
	public int getMemno() {
		return memno;
	}
	public void setMemno(int memno) {
		this.memno = memno;
	}
	public String getOfctel() {
		return ofctel;
	}
	public void setOfctel(String ofctel) {
		this.ofctel = ofctel;
	}
	public String getOfcaddr() {
		return ofcaddr;
	}
	public void setOfcaddr(String ofcaddr) {
		this.ofcaddr = ofcaddr;
	}
	@Override
	public String toString() {
		return "OfficeBean [ofcno=" + ofcno + ", ofcname=" + ofcname + ", mgrname=" + mgrname + ", memno=" + memno
				+ ", ofctel=" + ofctel + ", ofcaddr=" + ofcaddr + "]";
	}
	
	

}
