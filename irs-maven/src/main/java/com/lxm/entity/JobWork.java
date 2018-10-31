package com.lxm.entity;

public class JobWork {
    private Integer joid;

    private Integer id;

    private String joname;

    private String jtdate;
    
    private String jtdate1;
    
    private String jtdate2;
    
    private String jtdate3;
    
    
    public String getJtdate1() {
		return jtdate1;
	}

	public void setJtdate1(String jtdate1) {
		this.jtdate1 = jtdate1;
	}

	public String getJtdate2() {
		return jtdate2;
	}

	public void setJtdate2(String jtdate2) {
		this.jtdate2 = jtdate2;
	}

	public String getJtdate3() {
		return jtdate3;
	}

	public void setJtdate3(String jtdate3) {
		this.jtdate3 = jtdate3;
	}

	private Integer jostate;

    public Integer getJoid() {
        return joid;
    }

    
	@Override
	public String toString() {
		return "JobWork [joid=" + joid + ", id=" + id + ", joname=" + joname + ", jtdate=" + jtdate + ", jtdate1="
				+ jtdate1 + ", jtdate2=" + jtdate2 + ", jtdate3=" + jtdate3 + ", jostate=" + jostate + "]";
	}

	public void setJoid(Integer joid) {
        this.joid = joid;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getJoname() {
        return joname;
    }

    public void setJoname(String joname) {
        this.joname = joname == null ? null : joname.trim();
    }

    public String getJtdate() {
        return jtdate;
    }

    public void setJtdate(String jtdate) {
        this.jtdate = jtdate == null ? null : jtdate.trim();
    }

    public Integer getJostate() {
        return jostate;
    }

    public void setJostate(Integer jostate) {
        this.jostate = jostate;
    }
}