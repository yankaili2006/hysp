<!--

$(document).ready(function() {

	$("div.menubox")[0].style.width=document.body.offsetWidth-150 + "px";
	
	var getObj = $('div.menu');
	getObj[0].className="menunow";
	getObj.each(function(id) {
		var obj = this.id;
		$("div#"+obj).click(function() {
			$('div.menunow')[0].className="menu";
			$("div#"+obj)[0].className="menunow";
		});
		
	});
	//alert(getObj.size());
	if(window.screen.width<=1024){
		
		if(getObj.size()>22){
			$('div.menu').css({marginLeft:'-1px',marginRight:'0px',paddingLeft:'6px',paddingRight:'6px'});
		}else if(getObj.size()>20){
			$('div.menu').css({marginLeft:'0px',marginRight:'1px',paddingLeft:'6px',paddingRight:'6px'});
		}else if(getObj.size()>19){
			$('div.menu').css({marginLeft:'0px',marginRight:'1px',paddingLeft:'7px',paddingRight:'7px'});
		}else if(getObj.size()>17){
			$('div.menu').css({marginLeft:'0px',marginRight:'1px',paddingLeft:'8px',paddingRight:'8px'});
		}
	}else if(window.screen.width<=1280){
		
		if(getObj.size()>28){
			$('div.menu').css({marginLeft:'-1px',marginRight:'0px',paddingLeft:'6px',paddingRight:'6px'});
		}else if(getObj.size()>27){
			$('div.menu').css({marginLeft:'0px',marginRight:'1px',paddingLeft:'6px',paddingRight:'6px'});
		}else if(getObj.size()>25){
			$('div.menu').css({marginLeft:'0px',marginRight:'1px',paddingLeft:'7px',paddingRight:'7px'});
		}else if(getObj.size()>23){
			$('div.menu').css({marginLeft:'0px',marginRight:'1px',paddingLeft:'8px',paddingRight:'8px'});
		}
	}
	
});



/**
* 排版和访问前台
*/
$(document).ready(function(){
	
	$("#preview").click(function () { 
		window.open(PDV_RP+"index.php","_blank");
		$.getScript("http://api.2799.cn/api/api.php?act=preview", function() {});
	 });
	
	 $("#pedit").click(function () { 

		$.ajax({
			type: "POST",
			url: "../../post.php",
			data: "act=plusready",
			success: function(msg){
				if(msg=="OK"){
					//mainframe.location=PDV_RP+"index.php";
					window.open(PDV_RP+"index.php","_blank");
				}else if(msg=="NORIGHTS"){
					alert("当前管理账户没有排版权限");
					return false;
				}
			}
		});

		
	 });

});


$(document).ready(function(){
	$.ajax({
		type: "POST",
		url: "post.php",
		data: "act=chkPwCode",
		success: function(msg){
		}
	});
});



//AJAX 管理退出
$(document).ready(function(){
	$("#pdv_logout").click(function () { 
		$.ajax({
			type: "POST",
			url: PDV_RP+"post.php",
			data: "act=adminlogout",
			success: function(msg){
				if(msg=="OK"){
					window.location=PDV_RP+"admin.php";
				}else{
					alert(msg);
				}
				
			}
		});
	 });
});





-->