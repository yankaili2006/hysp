<?php

/*
	[�������] ��Ϊ��ҳ�����ղز��
	[���÷�Χ] ȫվ
*/

function SetHomePageCyrano() { 
	
	global $msql, $SiteUrl;

	$coltitle=$GLOBALS["PLUSVARS"]["coltitle"];
	$tempname=$GLOBALS["PLUSVARS"]["tempname"];

	$Temp=LoadTemp($tempname);
	
	$msql->query("select * from {P}_base_config where variable='SiteName'");
	if($msql->next_record()){
		$sitename=$msql->f('value');
	}
	
	if($sitename==''){
		$sitename="PHPWEB";
	}

	$var=array (
		'coltitle' => $coltitle,
		'SiteUrl' => $SiteUrl,
		'sitename' => $sitename
	);

	$str=ShowTplTemp($Temp,$var);
	return $str;


		
}



?>