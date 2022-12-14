<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
#formbody{
	padding-top: 10px;
	padding-left: 100px;
	padding-right: 100px;
}
.content-wrapper{
	overflow-y:scroll;
	-ms-overflow-style: none;
}
.content-wrapper::-webkit-scrollbar{
  display:none;
}

/*---------------------------------*/
#main {
  margin-left: 100px;
  margin-right: 100px;
}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

#formSubmit{
		padding:10px 100px 10px 100px;
		display:block;
		margin:50px auto;
		font-size: 17px;
		background: #3385ff;
		color: #fff;
		border:none;
		border-radius: 10px;
		transition: ease .40s;
	}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: none;
  padding: 20px;
}

.col-25 {
  float: left;
  width: 25%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}

.col-65 {
  float: left;
  width: 65%;
  margin-top: 6px;
}

.row{
	margin-bottom: 10px;
}

input[type=checkbox]{
	margin-right: 5px;
}

input[type=text]{
	margin-bottom: 5px;
}

#mbticheck{
	padding-top: 13px;
}



/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}
</style>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
	$(function(){
		
		//----------------------------------
		$("#productFrm").submit(function(){
			//???????????????
			//?????????
			if($("#product_name").val()==""){
				alert("???????????? ???????????????.");
				return false;
			}
			//??????
			if($("#product_price").val()==""){
				alert("??????????????? ???????????????.");
				return false;
			}
			//????????????
			if($("#product_info").val()==""){
				alert("??????????????? ???????????????.");
				return false;
			}
			//????????????
			if($("#product_quantity").val()==""){
				alert("??????????????? ???????????????.");
				return false;
			}
			//?????????1
			if($("#product_image1").val()==""){
				alert("???????????????(1)??? ???????????????.");
				return false;
			}
			//?????????2
			if($("#product_image2").val()==""){
				alert("???????????????(2)??? ???????????????.");
				return false;
			}
			//?????????3
			if($("#product_image3").val()==""){
				alert("???????????????(3)??? ???????????????.");
				return false;
			}
			//????????????
			if($("input:checkbox[name=categoryList]:checked").length<1){
				alert("??????????????? ???????????????.")
				return false;
			}
			if($("input:checkbox[name=categoryList]:checked").length>2 ){
				alert("??????????????? 2??? ????????? ???????????????.")
				return false;
			}
			//??????
			if($("input:checkbox[name=tagList]:checked").length<4){
				alert("????????? ???????????????.")
				return false;
			}
			if($("input:checkbox[name=tagList]:checked").length>8){
				alert("????????? ?????? 2??? ????????? ???????????????.")
				return false;
			}
			//mbti
			if($("input:checkbox[name=mbtiList]:checked").length<1){
				alert("MBTI??? ???????????????.")
				return false;
			}
			if($("input:checkbox[name=mbtiList]:checked").length>4){
				alert("MBTI??? 4??? ????????? ???????????????.")
				return false;
			}
			//---??????????????? ???------------------------
			//console.log(111)
			return true;
		});
		
	});
</script>

<%@ include file="../inc/sellerNav.jsp"%>

  <!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<div class="content-header">
			<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
				<h1 class="m-0"></h1> <!--????????????-->
				</div><!-- /.col -->
				<div class="col-sm-6">
				<ol class="breadcrumb float-sm-right">
					<li class="breadcrumb-item"><a href="/seller/sellerMain">Home</a></li>
					<li class="breadcrumb-item active">Main</li>
				</ol>
				</div><!-- /.col -->
			</div><!-- /.row -->
			</div><!-- /.container-fluid -->
		</div>
		
		<!-- Main content -->
		<div id="main">
			<div class="card card-primary card-outline">	
				<div class="content" id="formbody">
					<div class="container">
						<form method="post" action="/seller/productWrite" id="productFrm">
							<div class="row">
								<div class="col-25">
									<label for="product_name" style="font-size: 20px; color:#047bff; margin-bottom: 0px;">????????????</label>
								</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-25">
									<label for="product_name">?????????</label>
								</div>
								<div class="col-75">
									<input type="text" id="product_name" name="product_name" value="${pvo.product_name}"/>
								</div>
							</div>
								
							<div class="row">
								<div class="col-25">
									<label for="product_price">????????????</label>
								</div>
								<div class="col-75">
									<input type="text" id="product_price" name="product_price"  value="${pvo.product_price}"/>
								</div>
							</div>
								
							<div class="row">
								<div class="col-25">
									<label for="product_quantity">????????????</label>
								</div>
								<div class="col-75">
									<input type="text" id="product_quantity" name="product_quantity" value="${pvo.product_quantity}"/>
								</div>
							</div>
								
							<div class="row">
								<div class="col-25">
									<label for="product_image">???????????????</label>
								</div>
								<div class="col-75" id="proimage">
									<input type="text" name="product_image1" id="product_image1" value="${pvo.product_image1 }"/>
									<input type="text" name="product_image2" id="product_image2" value="${pvo.product_image2 }"/>
									<input type="text" name="product_image3" id="product_image3" value="${pvo.product_image3 }"/>
								</div>
							</div>	
							<div class="row">
								<div class="col-25">
									<label for="product_info">????????????</label>
								</div>
								<div class="col-75">
									<textarea rows="4" id="product_info" name="product_info">${pvo.product_info}</textarea>
								</div>
							</div>
							<hr>
							<div class="row">
								<div class="col-25">
									<label for="category">????????????</label>
								</div>
								<div class="col-75">
									<label><span><input type="checkbox" name="categoryList" value="??????" <c:if test="${fn:indexOf(pvo.product_category,'??????' )>=0}">checked</c:if>>??????</span></label>
									<label><span><input type="checkbox" name="categoryList" value="?????????" <c:if test="${fn:indexOf(pvo.product_category,'?????????' )>=0}">checked</c:if>/>?????????</span></label>
									<label><span><input type="checkbox" name="categoryList" value="??????" <c:if test="${fn:indexOf(pvo.product_category,'??????' )>=0}">checked</c:if>/>??????</span></label>
									<label><span><input type="checkbox" name="categoryList" value="?????????" <c:if test="${fn:indexOf(pvo.product_category,'?????????' )>=0}">checked</c:if>/>?????????</span></label>
									<label><span><input type="checkbox" name="categoryList" value="???????????????" <c:if test="${fn:indexOf(pvo.product_category,'???????????????' )>=0}">checked</c:if>/>???????????????</span></label>
									<label><span><input type="checkbox" name="categoryList" value="??????" <c:if test="${fn:indexOf(pvo.product_category,'??????' )>=0}">checked</c:if>/>??????</span></label>
									<label><span><input type="checkbox" name="categoryList" value="??????" <c:if test="${fn:indexOf(pvo.product_category,'??????' )>=0}">checked</c:if>/>??????</span></label>
									<label><span><input type="checkbox" name="categoryList" value="????????????" <c:if test="${fn:indexOf(pvo.product_category,'????????????' )>=0}">checked</c:if>/>????????????</span></label>
									<label><span><input type="checkbox" name="categoryList" value="??????" <c:if test="${fn:indexOf(pvo.product_category,'??????' )>=0}">checked</c:if>/>??????</span></label>
									<label><span><input type="checkbox" name="categoryList" value="?????????" <c:if test="${fn:indexOf(pvo.product_category,'?????????' )>=0}">checked</c:if>/>?????????</span></label>
									<label><span><input type="checkbox" name="categoryList" value="??????" <c:if test="${fn:indexOf(pvo.product_category,'??????' )>=0}">checked</c:if>/>??????</span></label>
									<label><span><input type="checkbox" name="categoryList" value="?????????" <c:if test="${fn:indexOf(pvo.product_category,'?????????' )>=0}">checked</c:if>/>?????????</span></label>
								</div>
							</div>	
							<hr>
							<div class="row">
								<div class="col-25">
									<label for="product_tag">??????</label>
								</div>
								<div class="col-75">
									<li><label for="subTag">??????</label></li>
									<label><span><input type="checkbox" name="tagList" value="?????????" <c:if test="${fn:indexOf(pvo.product_tag,'?????????' )>=0}">checked</c:if>/>?????????</span></label>
									<label><span><input type="checkbox" name="tagList" value="?????????" <c:if test="${fn:indexOf(pvo.product_tag,'?????????' )>=0}">checked</c:if>/>?????????</span></label>
									<label><span><input type="checkbox" name="tagList" value="??????" <c:if test="${fn:indexOf(pvo.product_tag,'??????' )>=0}">checked</c:if>/>??????</span></label>
									<label><span><input type="checkbox" name="tagList" value="??????/??????" <c:if test="${fn:indexOf(pvo.product_tag,'??????/??????' )>=0}">checked</c:if>/>??????/??????</span></label>
									<label><span><input type="checkbox" name="tagList" value="??????/??????" <c:if test="${fn:indexOf(pvo.product_tag,'??????/??????' )>=0}">checked</c:if>/>??????/??????</span></label>
									<label><span><input type="checkbox" name="tagList" value="????????????" <c:if test="${fn:indexOf(pvo.product_tag,'????????????' )>=0}">checked</c:if>/>????????????</span></label>
									<label><span><input type="checkbox" name="tagList" value="??????/??????" <c:if test="${fn:indexOf(pvo.product_tag,'??????/??????' )>=0}">checked</c:if>/>??????/??????</span></label>
								</div>
							</div>
						
							<div class="row">
								<div class="col-25">
									<label for="product_tag" style="opacity:0%">??????</label>
								</div>
								<div class="col-75">
									<li><label for="subTag">???????????????</label></li>
									<label><span><input type="checkbox" name="tagList" value="??????" <c:if test="${fn:indexOf(pvo.product_tag,'??????' )>=0}">checked</c:if>/>??????</span></label>
									<label><span><input type="checkbox" name="tagList" value="??????" <c:if test="${fn:indexOf(pvo.product_tag,'??????' )>=0}">checked</c:if>/>??????</span></label>
									<label><span><input type="checkbox" name="tagList" value="??????" <c:if test="${fn:indexOf(pvo.product_tag,'??????' )>=0}">checked</c:if>/>??????</span></label>
									<label><span><input type="checkbox" name="tagList" value="??????" <c:if test="${fn:indexOf(pvo.product_tag,'??????' )>=0}">checked</c:if>/>??????</span></label>
									<label><span><input type="checkbox" name="tagList" value="??????" <c:if test="${fn:indexOf(pvo.product_tag,'??????' )>=0}">checked</c:if>/>??????</span></label>
									<label><span><input type="checkbox" name="tagList" value="??????" <c:if test="${fn:indexOf(pvo.product_tag,'??????' )>=0}">checked</c:if>/>??????</span></label>
									<label><span><input type="checkbox" name="tagList" value="??????" <c:if test="${fn:indexOf(pvo.product_tag,'??????' )>=0}">checked</c:if>/>??????</span></label>
								</div>
							</div>
			
							<div class="row">
								<div class="col-25">
									<label for="product_tag" style="opacity:0%">??????</label>
								</div>
								<div class="col-75">
									<li><label for="subTag">??????</label></li>
									<label><span><input type="checkbox" name="tagList" value="10?????????" <c:if test="${fn:indexOf(pvo.product_tag,'10?????????' )>=0}">checked</c:if>/>10?????????</span></label>
									<label><span><input type="checkbox" name="tagList" value="20???" <c:if test="${fn:indexOf(pvo.product_tag,'20???' )>=0}">checked</c:if>/>20???</span></label>
									<label><span><input type="checkbox" name="tagList" value="30???" <c:if test="${fn:indexOf(pvo.product_tag,'30???' )>=0}">checked</c:if>/>30???</span></label>
									<label><span><input type="checkbox" name="tagList" value="40???" <c:if test="${fn:indexOf(pvo.product_tag,'40???' )>=0}">checked</c:if>/>40???</span></label>
									<label><span><input type="checkbox" name="tagList" value="50???" <c:if test="${fn:indexOf(pvo.product_tag,'50???' )>=0}">checked</c:if>/>50???</span></label>
									<label><span><input type="checkbox" name="tagList" value="60?????????" <c:if test="${fn:indexOf(pvo.product_tag,'60?????????' )>=0}">checked</c:if>/>60?????????</span></label>
								</div>
							</div>
					
							<div class="row">
								<div class="col-25">
									<label for="product_tag" style="opacity:0%">??????</label>
								</div>
								<div class="col-75">
									<li><label for="subTag">??????</label></li>
									<label><span><input type="checkbox" name="tagList" value="??????" <c:if test="${fn:indexOf(pvo.product_tag,'??????' )>=0}">checked</c:if>/>??????</span></label>
									<label><span><input type="checkbox" name="tagList" value="??????" <c:if test="${fn:indexOf(pvo.product_tag,'??????' )>=0}">checked</c:if>/>??????</span></label>
								</div>
							</div>
							<hr>	
							<div class="row">
								<div class="col-25">
									<label for="category">MBTI</label>
								</div>
								<div class="col-75" id="mbticheck">
									<p class="subTag">E : ????????? (?????????,?????????) / I : ????????? (??????,?????????)</p>
									<label><span><input type="checkbox" name="mbtiList" value="E" <c:if test="${fn:indexOf(pvo.product_mbti,'E' )>=0}">checked</c:if>/>E</span></label>
									<label><span><input type="checkbox" name="mbtiList" value="I" <c:if test="${fn:indexOf(pvo.product_mbti,'I' )>=0}">checked</c:if>/>I</span></label>
									<p class="subTag">S : ????????? (?????????,?????????) / N : ????????? (?????????,?????????)</p>
									<label><span><input type="checkbox" name="mbtiList" value="S" <c:if test="${fn:indexOf(pvo.product_mbti,'S' )>=0}">checked</c:if>/>S</span></label>
									<label><span><input type="checkbox" name="mbtiList" value="N" <c:if test="${fn:indexOf(pvo.product_mbti,'N' )>=0}">checked</c:if>/>N</span></label>
									<p class="subTag">T : ????????? (?????????,?????????) / F : ????????? (?????????,?????????)</p>
									<label><span><input type="checkbox" name="mbtiList" value="T" <c:if test="${fn:indexOf(pvo.product_mbti,'T' )>=0}">checked</c:if>/>T</span></label>
									<label><span><input type="checkbox" name="mbtiList" value="F" <c:if test="${fn:indexOf(pvo.product_mbti,'F' )>=0}">checked</c:if>/>F</span></label>
									<p class="subTag">J : ????????? (?????????,?????????) / P : ????????? (?????????,?????????)</p>
									<label><span><input type="checkbox" name="mbtiList" value="J" <c:if test="${fn:indexOf(pvo.product_mbti,'J' )>=0}">checked</c:if>/>J</span></label>
									<label><span><input type="checkbox" name="mbtiList" value="P" <c:if test="${fn:indexOf(pvo.product_mbti,'P' )>=0}">checked</c:if>/>P</span></label>
								</div>
							</div>
							<div class="row">
								<input type="submit" id="formSubmit" value="????????????"/>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>		
		<!-- /.content -->
	</div>

  <%@ include file="../inc/sellerFooter.jsp"%>

<!-- REQUIRED SCRIPTS -->

<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="/js_css/dist/js/adminlte.min.js"></script>



			
			<!-- 
			<div class="content-main">
				<div class="container">
					<p>????????????</p>
					<form method="post" action="/seller/productEditOk" id="productFrm">
					<input type="hidden" name="product_id" value="${pvo.product_id }"/>
						<ul class="proFrm">
							<div id="nameDiv">
								<p>?????????</p>
								<input type="text" id="product_name" name="product_name" value="${pvo.product_name}"/>
							</div>
							<div id="priceDiv">
								<p>????????????</p>
								<input type="text" id="product_price" name="product_price" value="${pvo.product_price}"/>
							</div>
							<div id="infoDiv">
								<p>????????????</p>
								<textarea rows="4" id="product_info" name="product_info" >${pvo.product_info}</textarea>
							</div>
							<div id="countDiv">
								<p>????????????</p>
								<input type="text" id="product_quantity" name="product_quantity" value="${pvo.product_quantity}"/>
							</div>
							<div id="imageDiv">
								<p>???????????????</p>
								<input type="text" name="product_image1" id="product_image1" value="${pvo.product_image1 }"/>
								<input type="text" name="product_image2" id="product_image2" value="${pvo.product_image2 }"/>
								<input type="text" name="product_image3" id="product_image3" value="${pvo.product_image3 }"/>
							</div>
							<div id="cateDiv">
								<p>????????????</p>
								<label><input type="checkbox" name="categoryList" value="??????" <c:if test="${fn:indexOf(pvo.product_category,'??????' )>=0}">checked</c:if>>??????</label>
								<label><input type="checkbox" name="categoryList" value="?????????" <c:if test="${fn:indexOf(pvo.product_category,'?????????' )>=0}">checked</c:if>/>?????????</label>
								<label><input type="checkbox" name="categoryList" value="??????" <c:if test="${fn:indexOf(pvo.product_category,'??????' )>=0}">checked</c:if>/>??????</label>
								<label><input type="checkbox" name="categoryList" value="?????????" <c:if test="${fn:indexOf(pvo.product_category,'?????????' )>=0}">checked</c:if>/>?????????</label>
								<label><input type="checkbox" name="categoryList" value="???????????????" <c:if test="${fn:indexOf(pvo.product_category,'???????????????' )>=0}">checked</c:if>/>???????????????</label>
								<label><input type="checkbox" name="categoryList" value="??????" <c:if test="${fn:indexOf(pvo.product_category,'??????' )>=0}">checked</c:if>/>??????</label>
								<label><input type="checkbox" name="categoryList" value="??????" <c:if test="${fn:indexOf(pvo.product_category,'??????' )>=0}">checked</c:if>/>??????</label>
								<label><input type="checkbox" name="categoryList" value="????????????" <c:if test="${fn:indexOf(pvo.product_category,'????????????' )>=0}">checked</c:if>/>????????????</label>
								<label><input type="checkbox" name="categoryList" value="??????" <c:if test="${fn:indexOf(pvo.product_category,'??????' )>=0}">checked</c:if>/>??????</label>
								<label><input type="checkbox" name="categoryList" value="?????????" <c:if test="${fn:indexOf(pvo.product_category,'?????????' )>=0}">checked</c:if>/>?????????</label>
								<label><input type="checkbox" name="categoryList" value="??????" <c:if test="${fn:indexOf(pvo.product_category,'??????' )>=0}">checked</c:if>/>??????</label>
								<label><input type="checkbox" name="categoryList" value="?????????" <c:if test="${fn:indexOf(pvo.product_category,'?????????' )>=0}">checked</c:if>/>?????????</label>
								
							</div>
							<div id="tagDiv">
								<p>??????</p>
								<p class="subTag">??????</p>
								<label><input type="checkbox" name="tagList" value="?????????" <c:if test="${fn:indexOf(pvo.product_tag,'?????????' )>=0}">checked</c:if>/>?????????</label>
								<label><input type="checkbox" name="tagList" value="?????????" <c:if test="${fn:indexOf(pvo.product_tag,'?????????' )>=0}">checked</c:if>/>?????????</label>
								<label><input type="checkbox" name="tagList" value="??????" <c:if test="${fn:indexOf(pvo.product_tag,'??????' )>=0}">checked</c:if>/>??????</label>
								<label><input type="checkbox" name="tagList" value="??????/??????" <c:if test="${fn:indexOf(pvo.product_tag,'??????/??????' )>=0}">checked</c:if>/>??????/??????</label>
								<label><input type="checkbox" name="tagList" value="??????/??????" <c:if test="${fn:indexOf(pvo.product_tag,'??????/??????' )>=0}">checked</c:if>/>??????/??????</label>
								<label><input type="checkbox" name="tagList" value="????????????" <c:if test="${fn:indexOf(pvo.product_tag,'????????????' )>=0}">checked</c:if>/>????????????</label>
								<label><input type="checkbox" name="tagList" value="??????/??????" <c:if test="${fn:indexOf(pvo.product_tag,'??????/??????' )>=0}">checked</c:if>/>??????/??????</label>
								<p class="subTag">???????????????</p>
								<label><input type="checkbox" name="tagList" value="??????" <c:if test="${fn:indexOf(pvo.product_tag,'??????' )>=0}">checked</c:if>/>??????</label>
								<label><input type="checkbox" name="tagList" value="?????????" <c:if test="${fn:indexOf(pvo.product_tag,'?????????' )>=0}">checked</c:if>/>?????????</label>
								<label><input type="checkbox" name="tagList" value="??????" <c:if test="${fn:indexOf(pvo.product_tag,'??????' )>=0}">checked</c:if>/>??????</label>
								<label><input type="checkbox" name="tagList" value="?????????" <c:if test="${fn:indexOf(pvo.product_tag,'?????????' )>=0}">checked</c:if>/>?????????</label>
								<label><input type="checkbox" name="tagList" value="???????????????" <c:if test="${fn:indexOf(pvo.product_tag,'???????????????' )>=0}">checked</c:if>/>???????????????</label>
								<label><input type="checkbox" name="tagList" value="??????" <c:if test="${fn:indexOf(pvo.product_tag,'??????' )>=0}">checked</c:if>/>??????</label>
								<label><input type="checkbox" name="tagList" value="??????" <c:if test="${fn:indexOf(pvo.product_tag,'??????' )>=0}">checked</c:if>/>??????</label>
								<label><input type="checkbox" name="tagList" value="??????" <c:if test="${fn:indexOf(pvo.product_tag,'??????' )>=0}">checked</c:if>/>??????</label>
								<label><input type="checkbox" name="tagList" value="??????" <c:if test="${fn:indexOf(pvo.product_tag,'??????' )>=0}">checked</c:if>/>??????</label>
								<label><input type="checkbox" name="tagList" value="??????" <c:if test="${fn:indexOf(pvo.product_tag,'??????' )>=0}">checked</c:if>/>??????</label>
								<label><input type="checkbox" name="tagList" value="??????" <c:if test="${fn:indexOf(pvo.product_tag,'??????' )>=0}">checked</c:if>/>??????</label>
								<label><input type="checkbox" name="tagList" value="??????" <c:if test="${fn:indexOf(pvo.product_tag,'??????' )>=0}">checked</c:if>/>??????</label>
								<p class="subTag">??????</p>
								<label><input type="checkbox" name="tagList" value="10?????????" <c:if test="${fn:indexOf(pvo.product_tag,'10?????????' )>=0}">checked</c:if>/>10?????????</label>
								<label><input type="checkbox" name="tagList" value="20???" <c:if test="${fn:indexOf(pvo.product_tag,'20???' )>=0}">checked</c:if>/>20???</label>
								<label><input type="checkbox" name="tagList" value="30???" <c:if test="${fn:indexOf(pvo.product_tag,'30???' )>=0}">checked</c:if>/>30???</label>
								<label><input type="checkbox" name="tagList" value="40???" <c:if test="${fn:indexOf(pvo.product_tag,'40???' )>=0}">checked</c:if>/>40???</label>
								<label><input type="checkbox" name="tagList" value="50???" <c:if test="${fn:indexOf(pvo.product_tag,'50???' )>=0}">checked</c:if>/>50???</label>
								<label><input type="checkbox" name="tagList" value="60?????????" <c:if test="${fn:indexOf(pvo.product_tag,'60?????????' )>=0}">checked</c:if>/>60?????????</label>
								<p class="subTag">??????</p>
								<label><input type="checkbox" name="tagList" value="??????" <c:if test="${fn:indexOf(pvo.product_tag,'??????' )>=0}">checked</c:if>/>??????</label>
								<label><input type="checkbox" name="tagList" value="??????" <c:if test="${fn:indexOf(pvo.product_tag,'??????' )>=0}">checked</c:if>/>??????</label>
							</div>
							<div id="mbtiDiv">
								<p>MBTI</p>
								<p class="subTag">E : ????????? (?????????,?????????) / I : ????????? (??????,?????????)</p>
								<label><input type="checkbox" name="mbtiList" value="E" <c:if test="${fn:indexOf(pvo.product_mbti,'E' )>=0}">checked</c:if>/>E</label>
								<label><input type="checkbox" name="mbtiList" value="I" <c:if test="${fn:indexOf(pvo.product_mbti,'I' )>=0}">checked</c:if>/>I</label>
								<p class="subTag">S : ????????? (?????????,?????????) / N : ????????? (?????????,?????????)</p>
								<label><input type="checkbox" name="mbtiList" value="S" <c:if test="${fn:indexOf(pvo.product_mbti,'S' )>=0}">checked</c:if>/>S</label>
								<label><input type="checkbox" name="mbtiList" value="N" <c:if test="${fn:indexOf(pvo.product_mbti,'N' )>=0}">checked</c:if>/>N</label>
								<p class="subTag">T : ????????? (?????????,?????????) / F : ????????? (?????????,?????????)</p>
								<label><input type="checkbox" name="mbtiList" value="T" <c:if test="${fn:indexOf(pvo.product_mbti,'T' )>=0}">checked</c:if>/>T</label>
								<label><input type="checkbox" name="mbtiList" value="F" <c:if test="${fn:indexOf(pvo.product_mbti,'F' )>=0}">checked</c:if>/>F</label>
								<p class="subTag">J : ????????? (?????????,?????????) / P : ????????? (?????????,?????????)</p>
								<label><input type="checkbox" name="mbtiList" value="J" <c:if test="${fn:indexOf(pvo.product_mbti,'J' )>=0}">checked</c:if>/>J</label>
								<label><input type="checkbox" name="mbtiList" value="P" <c:if test="${fn:indexOf(pvo.product_mbti,'P' )>=0}">checked</c:if>/>P</label>
							</div>
							<li><input type="submit" id="formSubmit" value="????????????"/></li>
						</ul>
					</form>
				</div>
			</div>
		</div>
	</div>
</main>
 -->