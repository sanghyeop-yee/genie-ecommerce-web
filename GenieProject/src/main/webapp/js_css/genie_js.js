$(document).ready(()=>{
    $(".genie_02").hide();
    $(".genie_03").hide();
    $(".genie_04").hide();
    $(".genie_05").hide();
});
function next1(){
    $(".genie_02").hide();
    $(".genie_03").hide();
    $(".genie_04").hide();
    $(".genie_05").hide();
    $(".genie_01").show();
}

function next2(){
    $(".genie_01").hide();
    $(".genie_03").hide();
    $(".genie_04").hide();
    $(".genie_05").hide();
    $(".genie_02").show();
}

function next3(){
    $(".genie_01").hide();
    $(".genie_02").hide();
    $(".genie_04").hide();
    $(".genie_05").hide();
    $(".genie_03").show();
}

function next4(){
    $(".genie_01").hide();
    $(".genie_02").hide();
    $(".genie_03").hide();
    $(".genie_05").hide();
    $(".genie_04").show();
}

function next5(){
    $(".genie_01").hide();
    $(".genie_02").hide();
    $(".genie_03").hide();
    $(".genie_04").hide();
    $(".genie_05").show();
}

function next6(){
    location.href = '/product';
}