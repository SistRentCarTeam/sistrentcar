package sist.com.dto;

public class RentListBean {
	private int 	rentno;
	private String  rentdate;
	private String  returndate;
	private int		carno;
	private int 	memberno;
	private int 	psgnum;
	private int 	ofcno;
	private int 	rprice;
	
	public int getRentno() {
		return rentno;
	}
	public void setRentno(int rentno) {
		this.rentno = rentno;
	}
	public String getRentdate() {
		return rentdate;
	}
	public void setRentdate(String rentdate) {
		this.rentdate = rentdate;
	}
	public String getReturndate() {
		return returndate;
	}
	public void setReturndate(String returndate) {
		this.returndate = returndate;
	}
	public int getCarno() {
		return carno;
	}
	public void setCarno(int carno) {
		this.carno = carno;
	}
	public int getMemberno() {
		return memberno;
	}
	public void setMemberno(int memberno) {
		this.memberno = memberno;
	}
	public int getPsgnum() {
		return psgnum;
	}
	public void setPsgnum(int psgnum) {
		this.psgnum = psgnum;
	}
	public int getOfcno() {
		return ofcno;
	}
	public void setOfcno(int ofcno) {
		this.ofcno = ofcno;
	}
	public int getRprice() {
		return rprice;
	}
	public void setRprice(int rprice) {
		this.rprice = rprice;
	}

}
