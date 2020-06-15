package org.zjm.utils;

import java.util.List;

/*@author 201-01
easyUIGrid 要求的数据格式*/
public class EasyUIDataGridResult {
	
	public long total;
	public List<?> rows;
	
	public EasyUIDataGridResult() {
	}
	public EasyUIDataGridResult(long total, List<?> rows) {
		this.total = total;
		this.rows = rows;
	}
	public long getTotal() {
		return total;
	}
	public void setTotal(long total) {
		this.total = total;
	}
	public List<?> getRows() {
		return rows;
	}
	public void setRows(List<?> rows) {
		this.rows = rows;
	}
}
