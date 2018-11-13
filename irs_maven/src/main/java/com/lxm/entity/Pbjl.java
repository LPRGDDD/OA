package com.lxm.entity;

public class Pbjl {
    private Integer pid;

    private String pdate;

    private String btime1;

    private String btime2;

    private String btime3;

    private String btime4;

    private Integer id;
    
    private String timeState1;
    
    private String timeState2;
    
    private String timeState3;
    
    private String timeState4;
    private String weekDays;
    public String getWeekDays() {
		return weekDays;
	}

	public void setWeekDays(String weekDays) {
		this.weekDays = weekDays;
	}

    
    public String getTimeState1() {
		return timeState1;
	}

	public void setTimeState1(String timeState1) {
		this.timeState1 = timeState1;
	}

	public String getTimeState2() {
		return timeState2;
	}

	public void setTimeState2(String timeState2) {
		this.timeState2 = timeState2;
	}

	public String getTimeState3() {
		return timeState3;
	}

	public void setTimeState3(String timeState3) {
		this.timeState3 = timeState3;
	}

	public String getTimeState4() {
		return timeState4;
	}

	public void setTimeState4(String timeState4) {
		this.timeState4 = timeState4;
	}

	public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getPdate() {
        return pdate;
    }

    public void setPdate(String pdate) {
        this.pdate = pdate == null ? null : pdate.trim();
    }

    public String getBtime1() {
        return btime1;
    }

    public void setBtime1(String btime1) {
        this.btime1 = btime1 == null ? null : btime1.trim();
    }

    public String getBtime2() {
        return btime2;
    }

    public void setBtime2(String btime2) {
        this.btime2 = btime2 == null ? null : btime2.trim();
    }

    public String getBtime3() {
        return btime3;
    }

    public void setBtime3(String btime3) {
        this.btime3 = btime3 == null ? null : btime3.trim();
    }

    public String getBtime4() {
        return btime4;
    }

    public void setBtime4(String btime4) {
        this.btime4 = btime4 == null ? null : btime4.trim();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

	@Override
	public String toString() {
		return "Pbjl [pid=" + pid + ", pdate=" + pdate + ", btime1=" + btime1 + ", btime2=" + btime2 + ", btime3="
				+ btime3 + ", btime4=" + btime4 + ", id=" + id + ", weekDays=" + weekDays + "]";
	}
    
}