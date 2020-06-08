package sist.com.dto;

public class NoticeBean {
	private int    ntcno;
	private String ntitle;
	private int    writer;
	private String ncontents;
	private String nregdate;
	
	public int getNtcno() {
		return ntcno;
	}
	public void setNtcno(int ntcno) {
		this.ntcno = ntcno;
	}
	public String getNtitle() {
		return ntitle;
	}
	public void setNtitle(String ntitle) {
		this.ntitle = ntitle;
	}
	public int getWriter() {
		return writer;
	}
	public void setWriter(int writer) {
		this.writer = writer;
	}
	public String getNcontents() {
		return ncontents;
	}
	public void setNcontents(String ncontents) {
		this.ncontents = ncontents;
	}
	public String getNregdate() {
		return nregdate;
	}
	public void setNregdate(String nregdate) {
		this.nregdate = nregdate;
	}
	@Override
	public String toString() {
		return "NoticeBean [ntcno=" + ntcno + ", ntitle=" + ntitle + ", writer=" + writer + ", ncontents=" + ncontents
				+ ", nregdate=" + nregdate + "]";
	}
	
}
