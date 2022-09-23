$(document).ready(()=>{
    $(".box-wrapper2").hide();
    $(".box-wrapper3").hide();
    $(".qna-wrapper").hide();
    $(".exchange-wrapper").hide();
});
function detail1(){
    $(".box-wrapper2").hide();
    $(".box-wrapper3").hide();
    $(".box-wrapper1").show();
}
function detail2(){
    $(".box-wrapper1").hide();
    $(".box-wrapper3").hide();
    $(".box-wrapper2").show();
}
function detail3(){
    $(".box-wrapper1").hide();
    $(".box-wrapper2").hide();
    $(".box-wrapper3").show();
}

function content1(){
    $(".review-wrapper").show();
    $(".qna-wrapper").hide();
    $(".exchange-wrapper").hide();
}
function content2(){
    $(".review-wrapper").hide();
    $(".qna-wrapper").show();
    $(".exchange-wrapper").hide();
}
function content3(){
    $(".review-wrapper").hide();
    $(".qna-wrapper").hide();
    $(".exchange-wrapper").show();
}