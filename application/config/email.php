<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| Email
| -------------------------------------------------------------------------
| This file lets you define parameters for sending emails.
| Please see the user guide for info:
|
|	http://codeigniter.com/user_guide/libraries/email.html
|
*/
$config['mailtype'] = 'html';
$config['charset'] = 'utf-8';
$config['newline'] = "\r\n";

$config['protocol']='smtp';
$config['smtp_host']='ssl://smtp.googlemail.com'; //(SMTP server)
$config['smtp_port']='465'; //(SMTP port)
$config['smtp_timeout']='30';
$config['smtp_user']='dung059';// (user@gmail.com)
$config['smtp_pass']='10062009'; //(gmail password)
$config['charset']='utf-8';
$config['newline']="\r\n";

/* End of file email.php */
/* Location: ./application/config/email.php */