<?php  
//phần khung nhìn chính của màn hình
?>
	<script type="text/javascript">
		$(function(){
			$('#tt3').edatagrid({
				title:'My Title',
				iconCls:'icon-save',
				width:600,
				height:350,
				striped: true,
				fit: true,
				//url: '<?php echo base_url(); ?>jquery/read_countries',
				//url: '<?php echo base_url(); ?>countries.json',
				saveUrl: '<?php echo base_url(); ?>home/create_tongketru',
				updateUrl: '<?php echo base_url(); ?>home/update_tongketru',
				destroyUrl: '<?php echo base_url(); ?>home/delete_tongketru',
				pagination:true,
				rownumbers:true,
			});
		});
	</script>
			<div title="Countries" iconCls="icon-reload" closable="false" style="overflow:hidden;padding:5px;">
				<table id="tt3" toolbar="#toolbar" fitColumns="true" singleSelect="true">
					<thead>
					<tr>
						<th field="id" width="50" editor="{type:'validatebox',options:{required:true}}">ID</th>
						<th field="country_name" width="50" editor="{type:'validatebox',options:{validType:'email'}}">Tên Quốc gia</th>
						<th field="abc" width="50" editor="text">ABC</th>
						<th field="vietnamese" width="50" editor="{type:'validatebox',options:{required:true}}">Tên Việt</th>
						<th field="CountryCode" width="50" editor="text">3 CODE</th>
					</tr>
					</thead>
				</table>
				<div id="toolbar">
					<a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="javascript:$('#tt3').edatagrid('addRow')">New</a>
					<a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="javascript:$('#tt3').edatagrid('destroyRow')">Destroy</a>
					<a href="#" class="easyui-linkbutton" iconCls="icon-save" plain="true" onclick="javascript:$('#tt3').edatagrid('saveRow')">Save</a>
					<a href="#" class="easyui-linkbutton" iconCls="icon-undo" plain="true" onclick="javascript:$('#tt3').edatagrid('cancelRow')">Cancel</a>
				</div>
			</div>
