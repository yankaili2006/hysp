<?php

/*
	[�������] ������
	[���÷�Χ] ��Ƹ
*/


function JobSearchForm(){

	
	$tempname=$GLOBALS["PLUSVARS"]["tempname"];
	

	$key=$_GET["key"];
	

	//ģ�����
	$Temp=LoadTemp($tempname);

	$var=array (
	'key' => $key
	);

	$str=ShowTplTemp($Temp,$var);

	return $str;


}
?>