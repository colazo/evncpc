<?php  
//phần khung nhìn chính của màn hình
?>
    <script>
		$(function(){
			$('#tt2').datagrid({
				title:'My Title',
				iconCls:'icon-save',
				width:600,
				height:350,
				nowrap: false,
				striped: true,
				fit: true,
				url:'<?php echo base_url(); ?>datagrid_data.json',
				//url:'<?php echo base_url(); ?>home/read_tongketru',
				sortName: 'code',
				sortOrder: 'desc',
				idField:'code',
				frozenColumns:[[
	                {field:'ck',checkbox:true},
	                {title:'code',field:'code',width:80,sortable:true}
				]],
				columns:[[
			        {title:'Base Information',colspan:3},
					{field:'opt',title:'Operation',width:100,align:'center', rowspan:2,
						formatter:function(value,rec){
							return '<span style="color:red">Edit Delete</span>';
						}
					}
				],[
					{field:'name',title:'Name',width:120},
					{field:'addr',title:'Address',width:120,rowspan:2,sortable:true},
					{field:'col4',title:'Col41',width:150,rowspan:2}
				]],
				pagination:true,
				rownumbers:true
			});
		});
	</script>
	<div region="center" title="Main Title" style="overflow:hidden;">
		<div id="tt" class="easyui-tabs" fit="true" border="false">
			<div title="Giới thiệu" style="padding:20px;overflow:hidden;"> 
				<div style="margin-top:20px;">
					<h3>Chương trình Quản lý kỹ thuật - Ngành điện.</h3>
					<li>Giúp các nhà Quản lý dễ dàng theo dõi và phát triển.</li> 
					<li>Tác giả: Bùi Thế Dũng - EVNCPC.ĐLPC.ĐLES (mailto: dung059@gmail.com).</li>
					<br>
					<li>using easyui you don't write many javascript code, instead you defines user-interface by writing some HTML markup.</li> 
					<li>easyui is very easy but powerful.</li> 
				</div>
			</div>
			<div title="Tab2" closable="true" style="padding:20px;">This is Tab2 width close button.</div>
			<div title="JSON" iconCls="icon-reload" closable="false" style="overflow:hidden;padding:5px;">
				<table id="tt2"></table> 
			</div>
<?php  
//phần tong ke tru cua khung chính của màn hình
?>
<!-- load tabs countries -->	<?php $this->load->view("jquery/j_countries");?>
<?php  
//phần dataủa màn hình
?>
        <script type="text/javascript" charset="utf-8">
            $(document).ready(function(){
                $('#datatables').dataTable({
                    "sPaginationType":"full_numbers",
                    "aaSorting":[[2, "desc"]],
                    "bJQueryUI":true
                });
            })
            
        </script>
			<div title="Databases" iconCls="icon-reload" closable="false" style="overflow:hidden;padding:5px;">
	<table id="datatables" class="display">
                <thead>
                    <tr>
                        <th>Country</th>
                        <th>Population</th>
                        <th>Internet Users</th>
                        <th>Penetration (% Population)</th>
                        <th>World % Users</th>
                    </tr>
                </thead>
	<!-- 2 -->	<?php //$this->load->view("user/home_view");?>
                <tbody>
                </tbody>
        </table>
			</div>
<?php  
//phần dataủa màn hình
?>
			<div title="EXT" iconCls="icon-reload" closable="false" style="overflow:hidden;padding:5px;">
	<!-- 1 -->	<?php $this->load->view("jquery/ci_extjs_crud_view");?>
			</div>
<?php  
//=================================================
?>
		</div>
	</div>
