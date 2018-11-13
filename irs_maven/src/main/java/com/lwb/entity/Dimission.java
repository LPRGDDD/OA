package com.lwb.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Dimission {
    private Integer hrDimissionId;

    private Integer deptId;

    private Integer hrRecordId;

    private String hrDimissionDuty;

    private String hrDimissionLeavetype;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date hrDimissionApplicationdate;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date hrDimissionDeparturedate;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date hrDimissionCutoffdate;

    private String hrDimissionMonthly;

    private String hrDimissionProcedure;

    private String hrDimissionWhy;

    private String hrDimissionRemark;

    private String hrDimissionUsername;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date hrDimissionCurrenttime;

    public Integer getHrDimissionId() {
        return hrDimissionId;
    }

    public void setHrDimissionId(Integer hrDimissionId) {
        this.hrDimissionId = hrDimissionId;
    }

    public Integer getDeptId() {
        return deptId;
    }

    public void setDeptId(Integer deptId) {
        this.deptId = deptId;
    }

    public Integer getHrRecordId() {
		return hrRecordId;
	}

	public void setHrRecordId(Integer hrRecordId) {
		this.hrRecordId = hrRecordId;
	}

	public String getHrDimissionDuty() {
        return hrDimissionDuty;
    }

    public void setHrDimissionDuty(String hrDimissionDuty) {
        this.hrDimissionDuty = hrDimissionDuty == null ? null : hrDimissionDuty.trim();
    }

    public String getHrDimissionLeavetype() {
		return hrDimissionLeavetype;
	}

	public void setHrDimissionLeavetype(String hrDimissionLeavetype) {
		this.hrDimissionLeavetype = hrDimissionLeavetype;
	}

	public Date getHrDimissionApplicationdate() {
        return hrDimissionApplicationdate;
    }

    public void setHrDimissionApplicationdate(Date hrDimissionApplicationdate) {
        this.hrDimissionApplicationdate = hrDimissionApplicationdate;
    }

    public Date getHrDimissionDeparturedate() {
        return hrDimissionDeparturedate;
    }

    public void setHrDimissionDeparturedate(Date hrDimissionDeparturedate) {
        this.hrDimissionDeparturedate = hrDimissionDeparturedate;
    }

    public Date getHrDimissionCutoffdate() {
        return hrDimissionCutoffdate;
    }

    public void setHrDimissionCutoffdate(Date hrDimissionCutoffdate) {
        this.hrDimissionCutoffdate = hrDimissionCutoffdate;
    }

    public String getHrDimissionMonthly() {
        return hrDimissionMonthly;
    }

    public void setHrDimissionMonthly(String hrDimissionMonthly) {
        this.hrDimissionMonthly = hrDimissionMonthly == null ? null : hrDimissionMonthly.trim();
    }

    public String getHrDimissionProcedure() {
        return hrDimissionProcedure;
    }

    public void setHrDimissionProcedure(String hrDimissionProcedure) {
        this.hrDimissionProcedure = hrDimissionProcedure == null ? null : hrDimissionProcedure.trim();
    }

    public String getHrDimissionWhy() {
        return hrDimissionWhy;
    }

    public void setHrDimissionWhy(String hrDimissionWhy) {
        this.hrDimissionWhy = hrDimissionWhy == null ? null : hrDimissionWhy.trim();
    }

    public String getHrDimissionRemark() {
        return hrDimissionRemark;
    }

    public void setHrDimissionRemark(String hrDimissionRemark) {
        this.hrDimissionRemark = hrDimissionRemark == null ? null : hrDimissionRemark.trim();
    }

    public String getHrDimissionUsername() {
        return hrDimissionUsername;
    }

    public void setHrDimissionUsername(String hrDimissionUsername) {
        this.hrDimissionUsername = hrDimissionUsername == null ? null : hrDimissionUsername.trim();
    }

    public Date getHrDimissionCurrenttime() {
        return hrDimissionCurrenttime;
    }

    public void setHrDimissionCurrenttime(Date hrDimissionCurrenttime) {
        this.hrDimissionCurrenttime = hrDimissionCurrenttime;
    }

	public Dimission(Integer hrDimissionId, Integer deptId, Integer hrRecordId, String hrDimissionDuty,
			String hrDimissionLeavetype, Date hrDimissionApplicationdate, Date hrDimissionDeparturedate,
			Date hrDimissionCutoffdate, String hrDimissionMonthly, String hrDimissionProcedure, String hrDimissionWhy,
			String hrDimissionRemark, String hrDimissionUsername, Date hrDimissionCurrenttime) {
		super();
		this.hrDimissionId = hrDimissionId;
		this.deptId = deptId;
		this.hrRecordId = hrRecordId;
		this.hrDimissionDuty = hrDimissionDuty;
		this.hrDimissionLeavetype = hrDimissionLeavetype;
		this.hrDimissionApplicationdate = hrDimissionApplicationdate;
		this.hrDimissionDeparturedate = hrDimissionDeparturedate;
		this.hrDimissionCutoffdate = hrDimissionCutoffdate;
		this.hrDimissionMonthly = hrDimissionMonthly;
		this.hrDimissionProcedure = hrDimissionProcedure;
		this.hrDimissionWhy = hrDimissionWhy;
		this.hrDimissionRemark = hrDimissionRemark;
		this.hrDimissionUsername = hrDimissionUsername;
		this.hrDimissionCurrenttime = hrDimissionCurrenttime;
	}

	public Dimission() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Dimission [hrDimissionId=" + hrDimissionId + ", deptId=" + deptId + ", hrRecordId=" + hrRecordId
				+ ", hrDimissionDuty=" + hrDimissionDuty + ", hrDimissionLeavetype=" + hrDimissionLeavetype
				+ ", hrDimissionApplicationdate=" + hrDimissionApplicationdate + ", hrDimissionDeparturedate="
				+ hrDimissionDeparturedate + ", hrDimissionCutoffdate=" + hrDimissionCutoffdate
				+ ", hrDimissionMonthly=" + hrDimissionMonthly + ", hrDimissionProcedure=" + hrDimissionProcedure
				+ ", hrDimissionWhy=" + hrDimissionWhy + ", hrDimissionRemark=" + hrDimissionRemark
				+ ", hrDimissionUsername=" + hrDimissionUsername + ", hrDimissionCurrenttime=" + hrDimissionCurrenttime
				+ "]";
	}

	
    
}