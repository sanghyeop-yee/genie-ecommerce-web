$(document).ready(()=>{
    $(".box-wrapper2").hide();
    $(".box-wrapper3").hide();
    $(".qna-wrapper").hide();
    $(".exchange-wrapper").hide();
});

function detail1(imgName){
    document.getElementsByClassName('box1')[0].style.backgroundImage = 'url('+imgName+')';
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

// ------------------------------------구매하기 버튼 클릭시------------------------------------------
