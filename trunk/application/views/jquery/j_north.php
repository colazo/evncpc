<?php  
//phần bên tren của màn hình, bao gồm các menu
?>
	<script>
	function calendaropen(){
		$('#w').window('open');
	}
	function calendarclose(){
		$('#w').window('close');
	}
	</script>
	<div region="north" title="Chương trình Quản lý kỹ thuật - Ngành điện" split="true" style="height:100px;padding:10px;">
		<div class="easyui-layout" fit="true" style="background:#efefef;">
		<div region="center" style="background:#C9EDCC;">
			<div style="background:#C9EDCC;padding:5px;width:95%;">
				<a href="javascript:void(0)" id="mb1" class="easyui-menubutton" menu="#mm1" iconCls="icon-edit">Edit</a>
				<a href="javascript:void(0)" id="mb2" class="easyui-menubutton" menu="#mm2" iconCls="icon-help">Help</a>
				<a href="javascript:void(0)" class="easyui-linkbutton" onclick="calendaropen()">Calendar</a>	
			</div>
			<div id="mm1" style="width:150px;">
				<div iconCls="icon-undo">Undo</div>
				<div iconCls="icon-redo">Redo</div>
				<div class="menu-sep"></div>
					<div>Cut</div>
					<div>Copy</div>
					<div>Paste</div>
					<div class="menu-sep"></div>
				<div>
				<span>Toolbar</span>
				<div style="width:150px;">
					<div>Address</div>
					<div>Link</div>
					<div>Navigation Toolbar</div>
					<div>Bookmark Toolbar</div>
					<div class="menu-sep"></div>
					<div>New Toolbar...</div>
				</div>
			</div>
			<div iconCls="icon-remove">Delete</div>
				<div>Select All</div>
			</div>
			<div id="mm2" style="width:100px;">
				<div>Help</div>
				<div>Update</div>
				<div>About</div>
			</div>
		</div>
		<div region="east" split="true" style="background:#C9EDCC;width:200px;">
				<a>Hi, <strong><?php echo $this->username; ?></strong>!<br/><?php echo anchor('/auth/logout/', 'Logout'); ?>
					Test<?php echo anchor('/jquery/layout/', 'layout'); ?></a>
		</div>	
	</div>
	</div>
	<!--window with calendar --><?php $this->load->view("jquery/window_w_calendar");?>
	