package com.lwb.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Transfer {
    private Integer hrTransferId;

    private Integer RoleId;

    private Integer deptId;

    private Integer hrRecordId;

    private String hrTransferTransfertype;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date hrTransferDate;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date hrTransferEffectivedate;

    private String hrTransferBeforetheunit;

    private String hrTransferAftertheunit;

    private String hrTransferFormerposition;

    private String hrTransferAfterthejob;

    private String hrTransferCause;

    private String hrTransferRemark;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date hrTransferModification;

    private String hrTransferUsername;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date hrTransferCurrenttime;
    private String hrTransferBefore;
    private String hrTransferAfter;
    
    
    
   

	

	@Override
	public String toString() {
		return "Transfer [hrTransferId=" + hrTransferId + ", RoleId=" + RoleId + ", deptId=" + deptId + ", hrRecordId="
				+ hrRecordId + ", hrTransferTransfertype=" + hrTransferTransfertype + ", hrTransferDate="
				+ hrTransferDate + ", hrTransferEffectivedate=" + hrTransferEffectivedate + ", hrTransferBeforetheunit="
				+ hrTransferBeforetheunit + ", hrTransferAftertheunit=" + hrTransferAftertheunit
				+ ", hrTransferFormerposition=" + hrTransferFormerposition + ", hrTransferAfterthejob="
				+ hrTransferAfterthejob + ", hrTransferCause=" + hrTransferCause + ", hrTransferRemark="
				+ hrTransferRemark + ", hrTransferModification=" + hrTransferModification + ", hrTransferUsername="
				+ hrTransferUsername + ", hrTransferCurrenttime=" + hrTransferCurrenttime + ", hrTransferBefore="
				+ hrTransferBefore + ", hrTransferAfter=" + hrTransferAfter + "]";
	}

	public Transfer() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Transfer(Integer hrTransferId, Integer roleId, Integer deptId, Integer hrRecordId,
			String hrTransferTransfertype, Date hrTransferDate, Date hrTransferEffectivedate,
			String hrTransferBeforetheunit, String hrTransferAftertheunit, String hrTransferFormerposition,
			String hrTransferAfterthejob, String hrTransferCause, String hrTransferRemark, Date hrTransferModification,
			String hrTransferUsername, Date hrTransferCurrenttime, String hrTransferBefore, String hrTransferAfter) {
		super();
		this.hrTransferId = hrTransferId;
		RoleId = roleId;
		this.deptId = deptId;
		this.hrRecordId = hrRecordId;
		this.hrTransferTransfertype = hrTransferTransfertype;
		this.hrTransferDate = hrTransferDate;
		this.hrTransferEffectivedate = hrTransferEffectivedate;
		this.hrTransferBeforetheunit = hrTransferBeforetheunit;
		this.hrTransferAftertheunit = hrTransferAftertheunit;
		this.hrTransferFormerposition = hrTransferFormerposition;
		this.hrTransferAfterthejob = hrTransferAfterthejob;
		this.hrTransferCause = hrTransferCause;
		this.hrTransferRemark = hrTransferRemark;
		this.hrTransferModification = hrTransferModification;
		this.hrTransferUsername = hrTransferUsername;
		this.hrTransferCurrenttime = hrTransferCurrenttime;
		this.hrTransferBefore = hrTransferBefore;
		this.hrTransferAfter = hrTransferAfter;
	}

	public String getHrTransferBefore() {
		return hrTransferBefore;
	}

	public void setHrTransferBefore(String hrTransferBefore) {
		this.hrTransferBefore = hrTransferBefore;
	}

	public String getHrTransferAfter() {
		return hrTransferAfter;
	}

	public void setHrTransferAfter(String hrTransferAfter) {
		this.hrTransferAfter = hrTransferAfter;
	}

	public Integer getHrTransferId() {
        return hrTransferId;
    }

    public void setHrTransferId(Integer hrTransferId) {
        this.hrTransferId = hrTransferId;
    }

 

    public Integer getDeptId() {
        return deptId;
    }

    public void setDeptId(Integer deptId) {
        this.deptId = deptId;
    }



    public Integer getRoleId() {
		return RoleId;
	}

	public void setRoleId(Integer roleId) {
		RoleId = roleId;
	}



	public Integer getHrRecordId() {
		return hrRecordId;
	}

	public void setHrRecordId(Integer hrRecordId) {
		this.hrRecordId = hrRecordId;
	}

	public String getHrTransferTransfertype() {
        return hrTransferTransfertype;
    }

    public void setHrTransferTransfertype(String hrTransferTransfertype) {
        this.hrTransferTransfertype = hrTransferTransfertype;
    }

    public Date getHrTransferDate() {
        return hrTransferDate;
    }

    public void setHrTransferDate(Date hrTransferDate) {
        this.hrTransferDate = hrTransferDate;
    }

    public Date getHrTransferEffectivedate() {
        return hrTransferEffectivedate;
    }

    public void setHrTransferEffectivedate(Date hrTransferEffectivedate) {
        this.hrTransferEffectivedate = hrTransferEffectivedate;
    }

    public String getHrTransferBeforetheunit() {
        return hrTransferBeforetheunit;
    }

    public void setHrTransferBeforetheunit(String hrTransferBeforetheunit) {
        this.hrTransferBeforetheunit = hrTransferBeforetheunit == null ? null : hrTransferBeforetheunit.trim();
    }

    public String getHrTransferAftertheunit() {
        return hrTransferAftertheunit;
    }

    public void setHrTransferAftertheunit(String hrTransferAftertheunit) {
        this.hrTransferAftertheunit = hrTransferAftertheunit == null ? null : hrTransferAftertheunit.trim();
    }

    public String getHrTransferFormerposition() {
        return hrTransferFormerposition;
    }

    public void setHrTransferFormerposition(String hrTransferFormerposition) {
        this.hrTransferFormerposition = hrTransferFormerposition == null ? null : hrTransferFormerposition.trim();
    }

    public String getHrTransferAfterthejob() {
        return hrTransferAfterthejob;
    }

    public void setHrTransferAfterthejob(String hrTransferAfterthejob) {
        this.hrTransferAfterthejob = hrTransferAfterthejob == null ? null : hrTransferAfterthejob.trim();
    }

    public String getHrTransferCause() {
        return hrTransferCause;
    }

    public void setHrTransferCause(String hrTransferCause) {
        this.hrTransferCause = hrTransferCause == null ? null : hrTransferCause.trim();
    }

    public String getHrTransferRemark() {
        return hrTransferRemark;
    }

    public void setHrTransferRemark(String hrTransferRemark) {
        this.hrTransferRemark = hrTransferRemark == null ? null : hrTransferRemark.trim();
    }

    public Date getHrTransferModification() {
        return hrTransferModification;
    }

    public void setHrTransferModification(Date hrTransferModification) {
        this.hrTransferModification = hrTransferModification;
    }

    public String getHrTransferUsername() {
        return hrTransferUsername;
    }

    public void setHrTransferUsername(String hrTransferUsername) {
        this.hrTransferUsername = hrTransferUsername == null ? null : hrTransferUsername.trim();
    }

    public Date getHrTransferCurrenttime() {
        return hrTransferCurrenttime;
    }

    public void setHrTransferCurrenttime(Date hrTransferCurrenttime) {
        this.hrTransferCurrenttime = hrTransferCurrenttime;
    }
}