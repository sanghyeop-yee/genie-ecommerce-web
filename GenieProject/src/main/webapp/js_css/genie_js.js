// $(document).ready(()=>{
//     $(".genie_02").hide();
//     $(".genie_03").hide();
//     $(".genie_04").hide();
//     $(".genie_05").hide();
// });
// function next1(){
//     $(".genie_02").hide();
//     $(".genie_03").hide();
//     $(".genie_04").hide();
//     $(".genie_05").hide();
//     $(".genie_01").show();
// }

// function next2(){
//     $(".genie_01").hide();
//     $(".genie_03").hide();
//     $(".genie_04").hide();
//     $(".genie_05").hide();
//     $(".genie_02").show();
// }

// function next3(){
//     $(".genie_01").hide();
//     $(".genie_02").hide();
//     $(".genie_04").hide();
//     $(".genie_05").hide();
//     $(".genie_03").show();
// }

// function next4(){
//     $(".genie_01").hide();
//     $(".genie_02").hide();
//     $(".genie_03").hide();
//     $(".genie_05").hide();
//     $(".genie_04").show();
// }

// function next5(){
//     $(".genie_01").hide();
//     $(".genie_02").hide();
//     $(".genie_03").hide();
//     $(".genie_04").hide();
//     $(".genie_05").show();
// }

// function next6(){
//     location.href = '/product';
// }

$(function(){
	$("section input[type=radio]").click(function(){
		let point = $(".genie>section").index($(this).parent().parent().parent());
		if(point<5){
			// 섹션에 있는 모든 화면 숨김
			$("section").css("display",'none');
			// 섹션에 있는 다음 화면을 보여줌
			$(this).parent().parent().parent().next().css("display","block");
		}else if(point==5){
			$("#genieFrm").submit();
		}
	});

	//컨트롤러
	$(".page_order>li").click(function(){
		let idx = $(".page_order>li").index($(this));
		$("section").css("display",'none');
		$(".genie>section").eq(idx).css("display","block");
	});
});