package sist.com.dto;

public class RentCarBean {
	private int rcno;
	private String rcmodel;
	private int rcprice;
	private String rcimg;
	private String rcstate;
	private int ofcno;
	private int navino;
	private int fuelno;
	private int sgmtno;
	private int makerno;
	
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
	public int getOfcno() {
		return ofcno;
	}
	public void setOfcno(int ofcno) {
		this.ofcno = ofcno;
	}
	public int getNavino() {
		return navino;
	}
	public void setNavino(int navino) {
		this.navino = navino;
	}
	public int getFuelno() {
		return fuelno;
	}
	public void setFuelno(int fuelno) {
		this.fuelno = fuelno;
	}
	public int getSgmtno() {
		return sgmtno;
	}
	public void setSgmtno(int sgmtno) {
		this.sgmtno = sgmtno;
	}
	public int getMakerno() {
		return makerno;
	}
	public void setMakerno(int makerno) {
		this.makerno = makerno;
	}
	public RentCarBean() {
		super();
	}
	public RentCarBean(int rcno, String rcmodel, int rcprice, String rcimg, String rcstate, int ofcno, int navino,
			int fuelno, int sgmtno, int makerno) {
		super();
		this.rcno = rcno;
		this.rcmodel = rcmodel;
		this.rcprice = rcprice;
		this.rcimg = rcimg;
		this.rcstate = rcstate;
		this.ofcno = ofcno;
		this.navino = navino;
		this.fuelno = fuelno;
		this.sgmtno = sgmtno;
		this.makerno = makerno;
	}
	
	public RentCarBean(int ofcno) {
		super();
		this.ofcno = ofcno;
	}
	@Override
	public String toString() {
		return "RentCarBean [rcno=" + rcno + ", rcmodel=" + rcmodel + ", rcprice=" + rcprice + ", rcimg=" + rcimg
				+ ", rcstate=" + rcstate + ", ofcno=" + ofcno + ", navino=" + navino + ", fuelno=" + fuelno
				+ ", sgmtno=" + sgmtno + ", makerno=" + makerno + "]";
	}
	
}
