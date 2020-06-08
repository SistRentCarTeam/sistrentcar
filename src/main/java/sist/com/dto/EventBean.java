package sist.com.dto;

public class EventBean {
	private int evtno;
	private String etitle;
	private int writer;
	private String econtents;
	private String eregdate;
	
	public int getEvtno() {
		return evtno;
	}
	public void setEvtno(int evtno) {
		this.evtno = evtno;
	}
	public String getEtitle() {
		return etitle;
	}
	public void setEtitle(String etitle) {
		this.etitle = etitle;
	}
	public int getWriter() {
		return writer;
	}
	public void setWriter(int writer) {
		this.writer = writer;
	}
	public String getEcontents() {
		return econtents;
	}
	public void setEcontents(String econtents) {
		this.econtents = econtents;
	}
	public String getEregdate() {
		return eregdate;
	}
	public void setEregdate(String eregdate) {
		this.eregdate = eregdate;
	}

}
