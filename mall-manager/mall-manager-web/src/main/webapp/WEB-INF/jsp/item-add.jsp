<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style type="text/css">
.form-item {
	margin-bottom: 15px;
	width: 100%;
	float: left;
}

.form-item>label {
	min-width: 72px;
	display: inline-block;
}

.form-item input, select {
	width: 270px;
}
</style>

<div class="super-theme-example">
	<form id="itemAddForm" method="post">
		<div class="form-item">
			<label for="" class="label-top">商品标题：</label> <input id="title"name="title" class="easyui-textbox" prompt="请输入商品名称"data-options="required:true">
		</div>
		<div class="form-item">
			<label for="" class="label-top">商品卖点：</label> <input id="sellPoint" name="sellPoint" class="easyui-textbox" prompt="请输入商品名称"
				data-options="required:true,validType:'length[3,10]'">
		</div>

		<div class="form-item">
			<label for="" class="label-top">商品价格：</label> <input type="text" name="price" class="easyui-numberbox" data-options="min:0" />
		</div>
		<div class="form-item">
			<label for="" class="label-top">库存数量：</label> <input type="text" name="num" class="easyui-numberbox" data-options="min:0" />
		</div>
		<div class="form-item">
			<label for="" class="label-top">条形码：</label> <input type="text" name="barcode" class="easyui-numberbox" data-options="required:true" />
		</div>
		<div class="form-item">
			<label for="" class="label-top">文件选择：</label> <input
				class="easyui-filebox"
				data-options="buttonText:'上传图片',buttonIcon:'fa fa-upload'">
		</div>
		<div>
			<a href="javascript:void(0)" class="easyui-linkbutton warning" onclick="clearForm()">取消</a>
			<a href="javascript:void(0)" class="easyui-linkbutton success" onclick="submitForm()">添加</a>
		</div>
	</form>

	<script  type="text/javascript">
		var itemAddEditor; //页面初始化完毕后执行此方法   $(function() {     
			//创建富文本编辑器     itemAddEditor = TT.createEditor("#itemAddForm [name=desc]");     
			//初始化类目选择和图片上传器     TT.init({       fun : function(node) {         
			//根据商品的分类id取商品 的规格模板，生成规格信息。第四天内容。         TT.changeItemParam(node, "itemAddForm");       }     });   });    
		//提交表单   
		function submitForm(){     
		//有效性验证     
		if (!$('#itemAddForm').form('validate')) {
			$.messager.alert('提示', '表单还未填写完成!');
			return;
		}   
		//ajax的post方式提交表单     
		//$("#itemAddForm").serialize()将表单序列号为key-value形式的字符串     
		alert($("#itemAddForm").serialize());     
		$.post("/item/save",$("#itemAddForm").serialize(), function(data){
			if(data.status == 200){
				$("#dgTbItem").datagrid("reload");         
				$.messager.alert('操作成功', '恭喜您添加产品成功', 'warning', function() {
					$('#item-list').click();
		        });       
			}     
		});   
	}
		function clearForm() {
			$('#itemAddForm').form('reset');
		}
	</script>
</div>
