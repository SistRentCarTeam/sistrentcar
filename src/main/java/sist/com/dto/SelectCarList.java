package sist.com.dto;
public class SelectCarList {
	private int rcno;
	private String rcmodel;	
	private int rcprice;
	private String rcimg;
	private String rcstate;
	private String ofcname;
	private String naviname;
	private String fuelname;
	private String sgmtname;
	private String mname;
	public int getRcno() {
		return rcno;
	}
	public void setRcno(int rcno) {
		this.rcno = rcno;
	}
	public String getRcmodel() {
		return rcmodel;
	}
	public void setRcmodel(String rcmodel) {
		this.rcmodel = rcmodel;
	}
	public int getRcprice() {
		return rcprice;
	}
	public void setRcprice(int rcprice) {
		this.rcprice = rcprice;
	}
	public String getRcimg() {
		return rcimg;
	}
	public void setRcimg(String rcimg) {
		this.rcimg = rcimg;
	}
	public String getRcstate() {
		return rcstate;
	}
	public void setRcstate(String rcstate) {
		this.rcstate = rcstate;
	}
	public String getOfcname() {
		return ofcname;
	}
	public void setOfcname(String ofcname) {
		this.ofcname = ofcname;
	}
	public String getNaviname() {
		return naviname;
	}
	public void setNaviname(String naviname) {
		this.naviname = naviname;
	}
	public String getFuelname() {
		return fuelname;
	}
	public void setFuelname(String fuelname) {
		this.fuelname = fuelname;
	}
	public String getSgmtname() {
		return sgmtname;
	}
	public void setSgmtname(String sgmtname) {
		this.sgmtname = sgmtname;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public SelectCarList() {
		super();
	}
	public SelectCarList(int rcno, String rcmodel, int rcprice, String rcimg, String rcstate, String ofcname,
			String naviname, String fuelname, String sgmtname, String mname) {
		super();
		this.rcno = rcno;
		this.rcmodel = rcmodel;
		this.rcprice = rcprice;
		this.rcimg = rcimg;
		this.rcstate = rcstate;
		this.ofcname = ofcname;
		this.naviname = naviname;
		this.fuelname = fuelname;
		this.sgmtname = sgmtname;
		this.mname = mname;
	}
	@Override
	public String toString() {
		return "SelectCarList [rcno=" + rcno + ", rcmodel=" + rcmodel + ", rcprice=" + rcprice + ", rcimg=" + rcimg
				+ ", rcstate=" + rcstate + ", ofcname=" + ofcname + ", naviname=" + naviname + ", fuelname=" + fuelname
				+ ", sgmtname=" + sgmtname + ", mname=" + mname + "]";
	}
	
	

}