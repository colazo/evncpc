<?php  
//mot cua so voi lich, co 02 button phia duwoi
?>
	<div id="w" class="easyui-window" title="Calendar" iconCls="icon-save" closed="true" modal="true" 
			style="width:500px;height:260px;padding:5px;">
		<div class="easyui-layout" fit="true">
			<div region="center" border="false" style="padding:10px;background:#fff;border:1px solid #ccc;">
				jQuery EasyUI framework help you build your web page easily.
				<br/><br/>
				click <a href="#" onclick="test()">here</a> to popup another window.
			</div>
			<div region="east" class="easyui-calendar" style="width:180px;height:180px;"></div>
			<div region="south" border="false" style="text-align:right;padding:5px 0;">
				<a class="easyui-linkbutton" iconCls="icon-ok" href="javascript:void(0)" onclick="calendarclose()">Ok</a>
				<a class="easyui-linkbutton" iconCls="icon-cancel" href="javascript:void(0)" onclick="calendarclose()">Cancel</a>
			</div>
		</div>
	</div>