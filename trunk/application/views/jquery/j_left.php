<?php  
//phần bên trái của màn hình, bao gồm các menu
/*
 * 
		var myContent = $.('<?php echo base_url(); ?>barang_ctl', {}, function(data){
		    $('#tt').tabs('add', {
		           title: 'call tab',
		           content: myContent,
		           closable: true
		    })
		   );
		function callTab(){
			index++;
		    new myContent;
		};
 */
?>
	<script type="text/javascript">
		var index = 0;
		function addTab(){
			index++;
			$('#tt').tabs('add',{
				title:'New Tab ' + index,
				content:'Tab Body ' + index,
				iconCls:'icon-save',
				closable:true
			});
		}

		function getSelected(){
			var tab = $('#tt').tabs('getSelected');
			alert('Selected: '+tab.panel('options').title);
		}

		function showtSelected(title, url){
			if ($('#tt').tabs('exists', title)){  
		        $('#tt').tabs('select', title);  
		    } else { 
			$('#tt').tabs({
		          add: function(event, ui) { 
		               $(this).append(ui.panel)
		          }
		     })
		    }
		}
		</script>
	<div region="west" split="true" title="West Menu" style="width:280px;padding1:1px;overflow:hidden;">
		<div class="easyui-accordion" fit="true" border="false">
			<div title="Quản lý kỹ thuật" style="padding:10px;overflow:auto;">
				<p>content1</p>
				<p>content1</p>
				<p>content1</p>
				<p>content1</p>
				<p>content1</p>
				<p>content1</p>
				<p>content12</p>
			</div>
			<div title="Danh mục" selected="true" style="padding:10px;">
				<p><a class="easyui-linkbutton" icon="icon-add"  plain="true" href="javascript:void(0)" onclick="addTab()">add tab</a></p>
				<p><a class="easyui-linkbutton" icon="icon-remove" plain="true" href="javascript:void(0)" onclick="getSelected()">getSelected</a></p>
				<p><a class="easyui-linkbutton" icon="icon-remove" plain="true" href="javascript:void(0)" onclick="showtSelected('JSON','abc')">showtSelected</a></p>
				content2
			</div>
			<div title="Biểu mẫu báo cáo" style="padding:10px">
				content3
			</div>
			<div title="Báo cáo" style="padding:10px">
				content3
			</div>
		</div>
	</div>