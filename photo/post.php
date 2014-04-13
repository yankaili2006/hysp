<?php
define("ROOTPATH", "../");
include(ROOTPATH."includes/common.inc.php");
include("language/".$sLan.".php");
include("includes/photo.inc.php");

$act = $_POST['act'];

switch($act){


	//发布时读取参数列
	case "proplist" :
		
		$catid=$_POST["catid"];
		$nowid=$_POST["nowid"];

		if($nowid!="" && $nowid!="0"){
			$msql->query("select * from {P}_photo_con where  id='$nowid'");
			if($msql->next_record()){
				$prop1=$msql->f('prop1');
				$prop2=$msql->f('prop2');
				$prop3=$msql->f('prop3');
				$prop4=$msql->f('prop4');
				$prop5=$msql->f('prop5');
				$prop6=$msql->f('prop6');
				$prop7=$msql->f('prop7');
				$prop8=$msql->f('prop8');
				$prop9=$msql->f('prop9');
				$prop10=$msql->f('prop10');
				$prop11=$msql->f('prop11');
				$prop12=$msql->f('prop12');
				$prop13=$msql->f('prop13');
				$prop14=$msql->f('prop14');
				$prop15=$msql->f('prop15');
				$prop16=$msql->f('prop16');
			}
		}

		$str="<table width='100%'   border='0' align='center'  cellpadding='2' cellspacing='1' >";
		$i=1;
		$msql->query("select * from {P}_photo_prop where catid='$catid' order by xuhao");
		while($msql->next_record()){
		$propname=$msql->f('propname');
		$pn="prop".$i;
			$str.="<tr>"; 
			  $str.="<td width='80' height='30' align='center' >".$propname."</td>";
			  $str.="<td height='30' >"; 
			  $str.="<input type='text' name='".$pn."' value='".$$pn."' class='input' style='width:399px;' />";
			  $str.="</td>";
			  $str.="</tr>";

		$i++;
		}
		$str.="</table>";
		
		echo $str;
		exit;

	break;


	//图片管理-增加分类
	case "addcat" :
	
		$newcat=htmlspecialchars($_POST["newcat"]);
		
		//权限
		SecureMember();
		$memberid=$_COOKIE["MEMBERID"];
		if(SecureFunc("157")==false){
			echo "0";
			exit;
		}
		
		$msql->query("select max(xuhao) from {P}_photo_pcat where memberid='$memberid'");
		if($msql->next_record()){
			$newxuhao=$msql->f('max(xuhao)')+1;
		}

		$msql->query("insert into {P}_photo_pcat set 
		`memberid`='$memberid',
		`pid`='0',
		`xuhao`='$newxuhao',
		`cat`='$newcat'
		");
		
		$catid=$msql->instid();
		
		$str="<tr class='list' id='tr_".$catid."'>
		<td width='50' align='center'>".$catid."</td><td>
		<input id='catxuhao_".$catid."' name='xuhao' type='text' class='input'  value='".$newxuhao."' size='3' />
		<input id='cat_".$catid."' name='cat' type='text' class='input'  value='".$newcat."' size='30' /></td><td>
		<span id='gcat_".$catid."' class='cat_del'>".$strDelete."</span>	
		<span id='gcat_".$catid."' class='cat_modify'>".$strModify."</span> 
		</td>
		</tr>";

		echo $str;
		exit;

	break;



	//图片管理-修改分类
	case "modicat" :
	
		$catid=htmlspecialchars($_POST["catid"]);
		$cat=htmlspecialchars($_POST["cat"]);
		$xuhao=htmlspecialchars($_POST["xuhao"]);
		
		//权限
		SecureMember();
		$memberid=$_COOKIE["MEMBERID"];
		if(SecureFunc("157")==false){
			echo $strNoRights;
			exit;
		}
		
		$msql->query("update {P}_photo_pcat set cat='$cat',xuhao='$xuhao' where catid='$catid' and memberid='$memberid'");
		

		echo "OK";
		exit;

	break;


	//图片管理-删除分类
	case "delcat" :
	
		$catid=htmlspecialchars($_POST["catid"]);
		
		//权限
		SecureMember();
		$memberid=$_COOKIE["MEMBERID"];
		if(SecureFunc("157")==false){
			echo $strNoRights;
			exit;
		}

		$msql->query("delete from {P}_photo_pcat where catid='$catid' and memberid='$memberid'");
	
		echo "OK";
		exit;

	break;


	//发布
	case "photofabu":
		
		SecureMember();
		$memberid=$_COOKIE["MEMBERID"];



		//jform是在iframe中实现的，需要给中文提示加上编码
		$Meta="<meta http-equiv='Content-Type' content='text/html; charset=utf-8'>";


		//权限
		
		if(SecureFunc("151")==false){
			echo $Meta.$strNoRights;
			exit;
		}

		//免审核权限
		if(SecureFunc("153")==true){
			$iffb=1;
		}else{
			$iffb=0;
		}


		$title=htmlspecialchars($_POST["title"]);
		$catid=htmlspecialchars($_POST["catid"]);
		$pcatid=htmlspecialchars($_POST["pcatid"]);
		$author=htmlspecialchars($_POST["author"]);
		$source=htmlspecialchars($_POST["source"]);
		$memo=htmlspecialchars($_POST["memo"]);
		$prop1=htmlspecialchars($_POST["prop1"]);
		$prop2=htmlspecialchars($_POST["prop2"]);
		$prop3=htmlspecialchars($_POST["prop3"]);
		$prop4=htmlspecialchars($_POST["prop4"]);
		$prop5=htmlspecialchars($_POST["prop5"]);
		$prop6=htmlspecialchars($_POST["prop6"]);
		$prop7=htmlspecialchars($_POST["prop7"]);
		$prop8=htmlspecialchars($_POST["prop8"]);
		$prop9=htmlspecialchars($_POST["prop9"]);
		$prop10=htmlspecialchars($_POST["prop10"]);
		$prop11=htmlspecialchars($_POST["prop11"]);
		$prop12=htmlspecialchars($_POST["prop12"]);
		$prop13=htmlspecialchars($_POST["prop13"]);
		$prop14=htmlspecialchars($_POST["prop14"]);
		$prop15=htmlspecialchars($_POST["prop15"]);
		$prop16=htmlspecialchars($_POST["prop16"]);
		$prop17=htmlspecialchars($_POST["prop17"]);
		$prop18=htmlspecialchars($_POST["prop18"]);
		$prop19=htmlspecialchars($_POST["prop19"]);
		$prop20=htmlspecialchars($_POST["prop20"]);
		$tags=$_POST["tags"];
		$spe_selec=$_POST["spe_selec"];
		$pic=$_FILES["jpg"];

		//分类path
		$msql->query("select catpath from {P}_photo_cat where catid='$catid'");
		if($msql->next_record()){
			$catpath=$msql->f('catpath');
		}

		$catArr=explode(":",$catpath);
		$bigcatid=intval($catArr[0]);

		//公共分类发布授权校验
		$secureset=SecureClass("156");
		if($_POST["catid"]!="0" && !strstr($secureset,":".$bigcatid.":")){
			echo $Meta.$strNoRights;
			exit;
		}

		
		//校验处理
		if($pic["size"]<=0){
			echo $Meta.$strPhotoNTC5;
			exit;
		}


		if($title==""){
			echo $Meta.$strPhotoNTC1;
			exit;
		}
		if(strlen($title)>200){
			echo $Meta.$strPhotoNTC2;
			exit;
		}

		
		if(strlen($body)>65000){
			echo $Meta.$strPhotoNTC3;
			exit;
		}
		
		

		//图片上传
		if($pic["size"]>0){
			$nowdate=date("Ymd",time());
			$picpath=ROOTPATH."photo/pics/".$nowdate;
			@mkdir($picpath,0777);
			$updir="photo/pics/".$nowdate;
			$arr=PhotoUploadImage($pic["tmp_name"],$pic["type"],$pic["size"],$updir);
			if($arr[0]!="err"){
				$src=$arr[3];
			}else{
				echo $Meta.$arr[1];
				exit;
			}
		}else{
			$src="";
		}


		//标签处理
		for($t=0;$t<sizeof($tags);$t++){
			if($tags[$t]!=""){
				$tagstr.=$tags[$t].",";
			}
		}

		//专题分类
		$count_pro = count ($spe_selec);
		for ($i = 0; $i < $count_pro; $i ++) {
			$projid = $spe_selec[$i];
			$projpath .= $projid.":";
		}

		$dtime=time();

		
		
		$msql->query("insert into {P}_photo_con set
		catid='$catid',
		catpath='$catpath',
		pcatid='$pcatid',
		title='$title',
		body='$body',
		dtime='$dtime',
		xuhao='0',
		cl='0',
		tj='0',
		iffb='$iffb',
		ifbold='0',
		ifred='',
		`type`='',
		src='$src',
		uptime='$dtime',
		author='$author',
		source='$source',
		memberid='$memberid',
		proj='$projpath',
		tags='$tagstr',
		secure='0',
		prop1='$prop1',
		prop2='$prop2',
		prop3='$prop3',
		prop4='$prop4',
		prop5='$prop5',
		prop6='$prop6',
		prop7='$prop7',
		prop8='$prop8',
		prop9='$prop9',
		prop10='$prop10',
		prop11='$prop11',
		prop12='$prop12',
		prop13='$prop13',
		prop14='$prop14',
		prop15='$prop15',
		prop16='$prop16',
		prop17='$prop17',
		prop18='$prop18',
		prop19='$prop19',
		prop20='$prop20',
		memo='$memo'
		");

		$id=$msql->instid();

		//积分计算
		MemberCentUpdate($memberid,"151");

		echo "OK";
		exit;

	break;





	//修改
	case "photomodify":
		
		SecureMember();
		$memberid=$_COOKIE["MEMBERID"];

		//jform是在iframe中实现的，需要给中文提示加上编码
		$Meta="<meta http-equiv='Content-Type' content='text/html; charset=utf-8'>";


		//权限
		if(SecureFunc("152")==false){
			echo $Meta.$strNoRights;
			exit;
		}

		//免审核权限
		if(SecureFunc("153")==true){
			$iffb=1;
		}else{
			$iffb=0;
		}




		$id=$_POST["id"];
		$title=htmlspecialchars($_POST["title"]);
		$catid=htmlspecialchars($_POST["catid"]);
		$pcatid=htmlspecialchars($_POST["pcatid"]);
		$author=htmlspecialchars($_POST["author"]);
		$source=htmlspecialchars($_POST["source"]);
		$memo=htmlspecialchars($_POST["memo"]);
		$prop1=htmlspecialchars($_POST["prop1"]);
		$prop2=htmlspecialchars($_POST["prop2"]);
		$prop3=htmlspecialchars($_POST["prop3"]);
		$prop4=htmlspecialchars($_POST["prop4"]);
		$prop5=htmlspecialchars($_POST["prop5"]);
		$prop6=htmlspecialchars($_POST["prop6"]);
		$prop7=htmlspecialchars($_POST["prop7"]);
		$prop8=htmlspecialchars($_POST["prop8"]);
		$prop9=htmlspecialchars($_POST["prop9"]);
		$prop10=htmlspecialchars($_POST["prop10"]);
		$prop11=htmlspecialchars($_POST["prop11"]);
		$prop12=htmlspecialchars($_POST["prop12"]);
		$prop13=htmlspecialchars($_POST["prop13"]);
		$prop14=htmlspecialchars($_POST["prop14"]);
		$prop15=htmlspecialchars($_POST["prop15"]);
		$prop16=htmlspecialchars($_POST["prop16"]);
		$prop17=htmlspecialchars($_POST["prop17"]);
		$prop18=htmlspecialchars($_POST["prop18"]);
		$prop19=htmlspecialchars($_POST["prop19"]);
		$prop20=htmlspecialchars($_POST["prop20"]);
		$tags=$_POST["tags"];
		$spe_selec=$_POST["spe_selec"];
		$pic=$_FILES["jpg"];


		//分类path
		$msql->query("select catpath from {P}_photo_cat where catid='$catid'");
		if($msql->next_record()){
			$catpath=$msql->f('catpath');
		}

		$catArr=explode(":",$catpath);
		$bigcatid=intval($catArr[0]);

		//公共分类发布授权校验
		$secureset=SecureClass("156");
		if($_POST["catid"]!="0" && !strstr($secureset,":".$bigcatid.":")){
			echo $Meta.$strNoRights;
			exit;
		}

		if($title==""){
			echo $Meta.$strPhotoNTC1;
			exit;
		}
		if(strlen($title)>200){
			echo $Meta.$strPhotoNTC2;
			exit;
		}
		
		if(strlen($body)>65000){
			echo $Meta.$strPhotoNTC3;
			exit;
		}


		//图片上传
		if($pic["size"]>0){
			$nowdate=date("Ymd",time());
			$picpath=ROOTPATH."photo/pics/".$nowdate;
			@mkdir($picpath,0777);
			$updir="photo/pics/".$nowdate;

			$arr=PhotoUploadImage($pic["tmp_name"],$pic["type"],$pic["size"],$updir);
			if($arr[0]!="err"){
				$src=$arr[3];
				
				//删除原图
				$msql->query("select src from {P}_photo_con where memberid='$memberid' and id='$id'");
				if($msql->next_record()){
					$oldsrc=$msql->f('src');
				}
				if(file_exists(ROOTPATH.$oldsrc) && $oldsrc!="" && !strstr($oldsrc,"../")){
					unlink(ROOTPATH.$oldsrc);
				}

				//更新记录
				$msql->query("update {P}_photo_con set src='$src' where memberid='$memberid' and id='$id'");
			
			}else{
				echo $Meta.$arr[1];
				exit;
			}
		}



		//标签处理
		for($t=0;$t<sizeof($tags);$t++){
			if($tags[$t]!=""){
				$tagstr.=$tags[$t].",";
			}
		}

		//专题分类
		$count_pro = count ($spe_selec);
		for ($i = 0; $i < $count_pro; $i ++) {
			$projid = $spe_selec[$i];
			$projpath .= $projid.":";
		}

		$dtime=time();

		$msql->query("update {P}_photo_con set 
		catid='$catid',
		catpath='$catpath',
		pcatid='$pcatid',
		title='$title',
		body='$body',
		uptime='$dtime',
		iffb='$iffb',
		tags='$tagstr',
		author='$author',
		source='$source',
		proj='$projpath',
		prop1='$prop1',
		prop2='$prop2',
		prop3='$prop3',
		prop4='$prop4',
		prop5='$prop5',
		prop6='$prop6',
		prop7='$prop7',
		prop8='$prop8',
		prop9='$prop9',
		prop10='$prop10',
		prop11='$prop11',
		prop12='$prop12',
		prop13='$prop13',
		prop14='$prop14',
		prop15='$prop15',
		prop16='$prop16',
		prop17='$prop17',
		prop18='$prop18',
		prop19='$prop19',
		prop20='$prop20',
		memo='$memo'

		where memberid='$memberid' and id='$id'");


		echo "OK";
		exit;

	break;

	
	//增加内容翻页
	case "addpage" :
		
		$nowid=$_POST["nowid"];

		//权限
		SecureMember();
		$memberid=$_COOKIE["MEMBERID"];
		if(SecureFunc("152")==false){
			echo $strNoRights;
			exit;
		}


		//主记录属主匹配校验
		$msql->query("select id from {P}_photo_con where id='$nowid' and memberid='$memberid'");
		if($msql->next_record()){
		}else{
			echo $strNoRights;
			exit;
		}

		$xuhao=0;
		if($nowid!="" && $nowid!="0"){
			$msql->query("select max(xuhao) from {P}_photo_pages where photoid='$nowid'");
			if($msql->next_record()){
				$xuhao=$msql->f('max(xuhao)');
			}
			$xuhao=$xuhao+1;
			$msql->query("insert into {P}_photo_pages set photoid='$nowid',xuhao='$xuhao' ");
		}
		echo "OK";
		exit;

	break;

	
	//内容翻页显示
	case "photopageslist" :
		
		$nowid=$_POST["nowid"];
		$pageinit=$_POST["pageinit"];

		$str="<ul>";
		$str.="<li id='p_0' class='pages'>1</li>";

		$i=2;
		$id=0;
		$msql->query("select id from {P}_photo_pages where photoid='$nowid' order by xuhao");
		while($msql->next_record()){
			$id=$msql->f('id');
			$str.="<li id='p_".$id."' class='pages'>".$i."</li>";
			$i++;
		}
		
		//判断新增状态
		if($pageinit!="new"){
			$id=$pageinit;
		}

		$str.="<li id='addpage' class='addbutton'>".$strPhotoPagesAdd."</li>";
		if($pageinit!="0"){
			$str.="<li id='pagedelete' class='addbutton'>".$strPhotoPagesDel."</li>";
			$str.="<li id='backtomodi' class='addbutton'>".$strBack."</li>";
		}
		
		$str.="</ul><input id='photopagesid' name='photopagesid' type='hidden' value='".$id."'>";
		echo $str;
		exit;

	break;


	//会员管理获取组图
	case "getimg" :
		
		$nowid=$_POST["nowid"];
		$photopageid=$_POST["photopageid"];

		if($photopageid=="-1"){

			$src="";

		}elseif($photopageid=="0"){
			
			$msql->query("select src from {P}_photo_con where id='$nowid'");
			if($msql->next_record()){
				$src=$msql->f('src');
			}

		}else{

			$msql->query("select src from {P}_photo_pages where id='$photopageid'");
			if($msql->next_record()){
				$src=$msql->f('src');
			}else{
				$src="";
			}

		}

		echo $src;
		exit;

	break;	



	//删除一个分页
	case "pagedelete" :

		$delpagesid=$_POST["delpagesid"];
		$nowid=$_POST["nowid"];

		//权限
		SecureMember();
		$memberid=$_COOKIE["MEMBERID"];
		if(SecureFunc("152")==false){
			echo "NORIGHTS";
			exit;
		}

		//主记录属主匹配校验
		$msql->query("select id from {P}_photo_con where id='$nowid' and memberid='$memberid'");
		if($msql->next_record()){
		}else{
			echo "NORIGHTS";
			exit;
		}

		
		$i=0;
		$msql->query("select id from {P}_photo_pages where photoid='$nowid' order by xuhao");
		while($msql->next_record()){
			$id[$i]=$msql->f('id');
			if($id[$i]==$delpagesid){
				if($i==0){
					$lastid=0;
				}else{
					$lastid=$id[$i-1];
				}
				
			}
			$i++;
		}

		if($lastid==0 && $i>1){
			$lastid=$id[1];
		}


		//删除图片 
		$msql->query("select src from {P}_photo_pages where id='$delpagesid'");
		if($msql->next_record()){
			$oldsrc=$msql->f('src');
			if(file_exists(ROOTPATH.$oldsrc) && $oldsrc!="" && !strstr($oldsrc,"../")){
				unlink(ROOTPATH.$oldsrc);
			}
		}

		

		//更新数据
		$msql->query("delete from  {P}_photo_pages where id='$delpagesid'");
		
		echo $lastid;
		exit;

	break;




	
	//上传组图
	case "contentmodify" :

		$photopagesid=$_POST["photopagesid"];
		$pic=$_FILES["jpg"];
		$id=$_POST["id"];

		$Meta="<meta http-equiv='Content-Type' content='text/html; charset=utf-8'>";


		//权限
		SecureMember();
		$memberid=$_COOKIE["MEMBERID"];
		
		if(SecureFunc("152")==false){
			echo $Meta.$strNoRights;
			exit;
		}
		
		if(SecureFunc("153")==true){
			$iffb=1;
		}else{
			$iffb=0;
		}


		//主记录属主匹配校验
		$msql->query("select id from {P}_photo_con where id='$id' and memberid='$memberid'");
		if($msql->next_record()){
		}else{
			echo $Meta.$strNoRights;
			exit;
		}



		//校验处理
		if($pic["size"]<=0){
			echo $Meta.$strPhotoNTC5;
			exit;
		}

		//更新图片
		if($pic["size"]>0){
			$nowdate=date("Ymd",time());
			$picpath=ROOTPATH."photo/pics/".$nowdate;
			@mkdir($picpath,0777);
			$uppath="photo/pics/".$nowdate;
			
			$arr=PhotoUploadImage($pic["tmp_name"],$pic["type"],$pic["size"],$uppath);
			if($arr[0]!="err"){
				$src=$arr[3];
			}else{
				echo $Meta.$arr[1];
				exit;
			}

			$msql->query("select src from {P}_photo_pages where id='$photopagesid'");
			if($msql->next_record()){
				$oldsrc=$msql->f('src');
			}
			if(file_exists(ROOTPATH.$oldsrc) && $oldsrc!="" && !strstr($oldsrc,"../")){
				unlink(ROOTPATH.$oldsrc);
			}

			$msql->query("update {P}_photo_pages set src='$src' where id='$photopagesid'");
			$msql->query("update {P}_photo_con set iffb='$iffb' where id='$id'");

		}


		echo "OK";
		exit;

	break;




	//详情翻页
	case "contentpages" :

		$photoid=$_POST["photoid"];
		
		$str="<li id='p_0' class='pages'>1</li>";

		$i=2;
		$id=0;
		$msql->query("select id from {P}_photo_pages where photoid='$photoid' order by xuhao");
		while($msql->next_record()){
			$id=$msql->f('id');
			$str.="<li id='p_".$id."' class='pages'>".$i."</li>";
			$i++;
		}
		
		echo $str;
		exit;
	
	
	break;




	//获取组图
	case "getcontent" :
		
		$photoid=$_POST["photoid"];
		$photopageid=$_POST["photopageid"];
		$RP=$_POST["RP"];

		if($photopageid=="0"){
			
			$msql->query("select src from {P}_photo_con where id='$photoid'");
			if($msql->next_record()){
				$src=$msql->f('src');
			}

		}else{

			$msql->query("select src from {P}_photo_pages where id='$photopageid'");
			if($msql->next_record()){
				$src=$msql->f('src');
			}

		}

		echo $src;
		exit;

	break;	


	


	//点评后获取最新一条
	case "getnewcomment" :
	
		$rid=$_POST["rid"];
		$RP=$_POST["RP"];
		
		$fsql->query("select * from {P}_comment where iffb='1' and catid='2' and pid='0' and rid='$rid' order by dtime desc limit 0,1");
		if($fsql->next_record()){
			$id=$fsql->f('id');
			$memberid=$fsql->f('memberid');
			$title=$fsql->f('title');
			$body=$fsql->f('body');
			$dtime=$fsql->f('dtime');
			$uptime=$fsql->f('uptime');
			$cl=$fsql->f('cl');
			$lastname=$fsql->f('lastname');
			$pj1=$fsql->f('pj1');

			$count=0;

			$body=strip_tags($body);


			//是否匿名

			if($memberid=="-1"){
				$pname=$strGuest;
				$nowface="1";
				$memberurl="#";
			}else{
				$tsql->query("select * from {P}_member where memberid='$memberid'");
				if($tsql->next_record()){
					$pname=$tsql->f("pname");
					$nowface=$tsql->f("nowface");
				}
				$memberurl=$RP."member/home.php?mid=".$memberid;
			}

					
			$dtime=date("Y-m-d",$dtime);
			$title=csubstr($title,0,20);
			$body=csubstr($body,0,120)." ...";

			$link=$RP."comment/html/?".$id.".html";
			$face=$RP."member/face/".$nowface.".gif";
			$pjstr=pstarnums($pj1,$RP);

			$var=array (
			'title' => $title, 
			'dtime' => $dtime, 
			'pname' => $pname, 
			'body' => $body, 
			'count' => $count, 
			'cl' => $cl, 
			'link' => $link,
			'memberurl' => $memberurl, 
			'lastname' => $lastname,
			'face' => $face, 
			'pjstr' => $pjstr, 
			'target' => $target
			);
			
			//模版解释
			$Temp=LoadCommonTemp("tpl_photo_comment.htm");
			$TempArr=SplitTblTemp($Temp);
			$str=ShowTplTemp($TempArr["list"],$var);
		}
		
		echo $str;
		exit;

	break;	


	//支持投票
	case "zhichi" :
	
		$photoid=$_POST["photoid"];
		
		if(!isLogin()){
			echo "L0";
			exit;
		}
		
		$memberid=$_COOKIE["MEMBERID"];
		$mstr="|".$memberid."|";
		$msql->query("select tplog,zhichi,memberid from {P}_photo_con where id='$photoid'");
		if($msql->next_record()){
			$tplog=$msql->f('tplog');
			$zhichi=$msql->f('zhichi');
			$mid=$msql->f('memberid');
		}
		if(strstr($tplog,$mstr)){
			echo "L1";
			exit;
		}else{
			$tplog=$tplog.$mstr;
		}

		$msql->query("update {P}_photo_con set zhichi=zhichi+1,tplog='$tplog' where id='$photoid'");

		//被支持者积分计算
		MemberCentUpdate($mid,"152");
		
		$num=$zhichi+1;
		echo $num;
		exit;

	break;	




	//反对投票
	case "fandui" :
	
		$photoid=$_POST["photoid"];
		
		if(!isLogin()){
			echo "L0";
			exit;
		}
		
		$memberid=$_COOKIE["MEMBERID"];
		$mstr="|".$memberid."|";
		$msql->query("select tplog,fandui,memberid from {P}_photo_con where id='$photoid'");
		if($msql->next_record()){
			$tplog=$msql->f('tplog');
			$fandui=$msql->f('fandui');
			$mid=$msql->f('memberid');
		}
		if(strstr($tplog,$mstr)){
			echo "L1";
			exit;
		}else{
			$tplog=$tplog.$mstr;
		}

		$msql->query("update {P}_photo_con set fandui=fandui+1,tplog='$tplog' where id='$photoid'");

		//被反对者积分计算
		MemberCentUpdate($mid,"153");
		
		$num=$fandui+1;
		echo $num;
		exit;

	break;


	//加入收藏
	case "addfav" :
	
		$photoid=$_POST["photoid"];
		$url=$_POST["url"];
		
		if(!isLogin()){
			echo "L0";
			exit;
		}
		
		$memberid=$_COOKIE["MEMBERID"];
		
		$msql->query("select title from {P}_photo_con where id='$photoid'");
		if($msql->next_record()){
			$title=$msql->f('title');
		}

		$msql->query("select id from {P}_member_fav where url='$url' and memberid='$memberid'");
		if($msql->next_record()){
			echo "L1";
			exit;
		}

		$msql->query("insert into {P}_member_fav set title='$title',url='$url',memberid='$memberid'");
		
		echo "OK";
		exit;

	break;




	//判断是否版主，决定是否显示版主功能链接
	case "ifbanzhu" :
		
		$photoid=$_POST["photoid"];

		if(!isLogin()){
			echo "NO";
			exit;
		}


		$msql->query("select catpath from {P}_photo_con where id='$photoid'");
		if($msql->next_record()){
			$catpath=$msql->f('catpath');
		}
		$arr=explode(":",$catpath);
		$bigcatid=intval($arr[0]);


		//没有分类的内容校验个人专区版主权限
		if($bigcatid=="" || $bigcatid=="0"){
			$bigcatid="PERSON";
		}

		
		$secureset=SecureBanzhu("159");

		if(strstr($secureset,":".$bigcatid.":")){
			echo "YES";
			exit;
		}else{
			echo "NO";
			exit;
		}

	break;



	//版主推荐
	case "banzhutj" :

		$photoid=$_POST["photoid"];
		if(!isLogin()){
			echo $strNoRights;
			exit;
		}

		//权限校验
		$msql->query("select catpath,tj,memberid from {P}_photo_con where id='$photoid'");
		if($msql->next_record()){
			$catpath=$msql->f('catpath');
			$tj=$msql->f('tj');
			$mid=$msql->f('memberid');
		}
		$arr=explode(":",$catpath);
		$bigcatid=intval($arr[0]);

		
		//没有分类的内容校验个人专区版主权限
		if($bigcatid=="" || $bigcatid=="0"){
			$bigcatid="PERSON";
		}

		
		$secureset=SecureBanzhu("159");

		if(!strstr($secureset,":".$bigcatid.":")){
			echo $strNoRights;
			exit;
		}

		//校验是否已经推荐(防止重复加分)
		if($tj!="0"){
			echo $strPhotoNTC6;
			exit;
		}

		
		$msql->query("update {P}_photo_con set tj='1' where id='$photoid'");


		//积分计算
		MemberCentUpdate($mid,"154");

		echo "OK";
		exit;

	break;


	//版主删除
	case "banzhudel" :

		$photoid=$_POST["photoid"];
		$koufen=$_POST["koufen"];

		if(!isLogin()){
			echo $strNoRights;
			exit;
		}

		//权限校验
		$msql->query("select catpath,memberid from {P}_photo_con where id='$photoid'");
		if($msql->next_record()){
			$catpath=$msql->f('catpath');
			$mid=$msql->f('memberid');
		}
		$arr=explode(":",$catpath);
		$bigcatid=intval($arr[0]);

		
		//没有分类的内容校验个人专区版主权限
		if($bigcatid=="" || $bigcatid=="0"){
			$bigcatid="PERSON";
		}

		
		$secureset=SecureBanzhu("159");

		if(!strstr($secureset,":".$bigcatid.":")){
			echo $strNoRights;
			exit;
		}


		//删除
		//删除原图
		$fsql->query("select src from {P}_photo_con where id='$photoid'");
		if($fsql->next_record()){
			$oldsrc=$fsql->f('src');
			if(file_exists(ROOTPATH.$oldsrc) && $oldsrc!="" && !strstr($oldsrc,"../")){
				@unlink(ROOTPATH.$oldsrc);
			}
		}

		//删除组图
		$fsql->query("select src from {P}_photo_pages where photoid='$photoid'");
		while($fsql->next_record()){
			$oldsrc=$fsql->f('src');
			if(file_exists(ROOTPATH.$oldsrc) && $oldsrc!="" && !strstr($oldsrc,"../")){
				@unlink(ROOTPATH.$oldsrc);
			}
		}

		
		//删除分页记录
		$fsql->query("delete from {P}_photo_pages where photoid='$photoid'");

		//删除主记录
		$fsql->query("delete from {P}_photo_con where id='$photoid'");

		
		//积分计算
		if($koufen=="yes"){
			MemberCentUpdate($mid,"155");
		}


		echo "OK";
		exit;

	break;

}
?>