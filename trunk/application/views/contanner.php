<?php
    $this->output->set_header('Last-Modified: ' . gmdate("D, d M Y H:i:s") . ' GMT');
    $this->output->set_header('Cache-Control: no-store, no-cache, must-revalidate, post-check=0, pre-check=0');
    $this->output->set_header('Pragma: no-cache');
    $this->output->set_header('Expires: Mon, 02 Jan 2015 05:00:00 GMT');
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta content="text/html; charset=UTF-8" http-equiv="content-type">
	<title><?php echo $title; ?></title>
	<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>jquery-easyui/themes/cupertino/easyui.css"/>
	<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>jquery-easyui/themes/icon.css"/>

    <script type="text/javascript" src="<?php echo base_url(); ?>jquery-easyui/jquery-1.7.1.min.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>jquery-easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>jquery-easyui/plugins/jquery.edatagrid.js"></script>
</head>
<body class="easyui-layout">
	<!-- 1 -->	<?php $this->load->view("jquery/j_north");?>
	<!-- 2 --><?php $this->load->view("jquery/j_right");?>
	<!-- 3 --><?php $this->load->view("jquery/j_left");?>
	<!-- 4 --><?php $this->load->view("jquery/j_mainlayout");?>
	<!-- 5 -->
	<div region="south" title="South Title" split="true" style="height:100px;padding:10px;background:#efefef;">
		<div class="easyui-layout" fit="true" style="background:#ccc;">
			<div region="center">sub center</div>
			<div region="east" split="true" style="width:200px;">sub center</div>
		</div>
	</div>
	<pre>
	<?php 
	print_r($j_left);
	
	echo "<br />Total Exec Time: " . $this->benchmark->elapsed_time('total_execution_time_start','total_execution_time_end');
	echo "<br />Base Class Load Time: " . $this->benchmark->elapsed_time('loading_time:_base_classes_start','loading_time:_base_classes_end');
	$class = $this->router->fetch_class();
	$method = $this->router->fetch_method();
	echo "<br />Controller / Method ( {$class} / {$method} ) Exec Time: " . $this->benchmark->elapsed_time('controller_execution_time_( '.$class.' / '.$method.' )_start','controller_execution_time_( '.$class.' / '.$method.' )_end');
	echo "<br />Total Query Exec Time: " . number_format($this->db->benchmark,4); // this should really be turned into a public method, as I'm querying the var $benchmark directly
	?>
	</pre>
</body>
</html>