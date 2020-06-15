package org.zjm.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.zjm.mapper.TbItemMapper;
import org.zjm.pojo.TbItem;
import org.zjm.pojo.TbItemExample;
import org.zjm.service.TbItemService;
import org.zjm.utils.EasyUIDataGridResult;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;


@Service
public class TbItemServiceImpl implements TbItemService {
	
	@Resource
	private TbItemMapper tbItemMapper;
	
	@Override
	public EasyUIDataGridResult getTbItemList(Integer page,Integer rows) {
		//分页插件
		PageHelper.startPage(page, rows);
		TbItemExample example = new TbItemExample();
		List<TbItem> list = tbItemMapper.selectByExample(example);
		for (int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i).toString());
		}
		PageInfo<TbItem> pageInfo= new PageInfo<>(list);
		long total = pageInfo.getTotal(); 
		EasyUIDataGridResult easyUIDataGridResult = new EasyUIDataGridResult(total, list);
		return easyUIDataGridResult;
	}

}
