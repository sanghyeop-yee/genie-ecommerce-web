<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>

</style>
<script>	
	$(document).ready(function(){
		$("#check2").hide();
		$("#check3").hide();	
	});
	
	function selBox(item){
		var text = $(item).text();
		$("#sel1").val(text)
		$("#check1").hide();
		$("#check2").show();
	}
	
	function selBox2(item){
		var text = $(item).text();
		$("#sel2").val(text)
		$("#check2").hide();
		$("#check3").show();
	}
	
	function selBox3(item){
		var text = $(item).text();
		$("#sel3").val(text)
	}

</script>

<main class="main">

	<div class="responsive-wrapper">

		<div>	
			<input type="text" id="sel1" style="width:100px;">
			<input type="text" id="sel2" style="width:100px;">
			<input type="text" id="sel3" style="width:100px;">
		
		</div>
		
		<ul id="check1">
			<li><a href="#" onclick="selBox(this)">male</a></li>
			<li><a href="#" onclick="selBox(this)">female</a></li>
		</ul>
		
		<ul id="check2">
			<li><a href="#" onclick="selBox2(this)">adult</a></li>
			<li><a href="#" onclick="selBox2(this)">adolescent</a></li>
			<li><a href="#" onclick="selBox2(this)">children</a></li>
		</ul>
		
		<ul id="check3">
			<li><a href="#" onclick="selBox3(this)">married</a></li>
			<li><a href="#" onclick="selBox3(this)">single</a></li>
		</ul>
		
		
		
	</div>
</main>