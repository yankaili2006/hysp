<?php

/*
	[�������] �ֲ����xml
	[���÷�Χ] ȫվ
*/

function AdvsLbXml () { 

	global $msql;

	$tempname=$GLOBALS["PLUSVARS"]["tempname"];
	$groupid=$GLOBALS["PLUSVARS"]["groupid"];
	$w=$GLOBALS["PLUSVARS"]["w"];
	$h=$GLOBALS["PLUSVARS"]["h"];
	
	//ģ�����
	$Temp=LoadTemp($tempname);

	$var=array (
	'groupid' => $groupid, 
	'w' => $w, 
	'h' => $h
	);
	
	$str=ShowTplTemp($Temp,$var);

	return $str;

	
}



?>