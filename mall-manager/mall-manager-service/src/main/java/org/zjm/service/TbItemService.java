package org.zjm.service;

import org.zjm.pojo.TbItem;
import org.zjm.utils.EasyUIDataGridResult;
import org.zjm.utils.FjnyResult;

public interface TbItemService {
	//获取商品列表
	public EasyUIDataGridResult getTbItemList(Integer page,Integer rows);
	
	//添加商品
	public FjnyResult saveTbItem(TbItem tbItem);
}
