<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE HTML>
<html data-brackets-id='1210'>
	<head data-brackets-id='1211'>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Shop &mdash; Free Website Template, Free HTML5 Template by gettemplates.co</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Website Template by gettemplates.co" />
	<meta name="keywords" content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
	<meta name="author" content="gettemplates.co" />

<style type="text/css">
.noneBorder{
border:none;
border-right:0px;
border-top:0px;
 boder-left:0px; 
 boder-bottom:0px;

}

</style>
	
	<meta data-brackets-id='1212' charset="utf-8">
	<meta data-brackets-id='1213' http-equiv="X-UA-Compatible" content="IE=edge">
	<title data-brackets-id='1214'>Shop &mdash; Free Website Template, Free HTML5 Template by gettemplates.co</title>
	<meta data-brackets-id='1215' name="viewport" content="width=device-width, initial-scale=1">
	<meta data-brackets-id='1216' name="description" content="Free HTML5 Website Template by gettemplates.co" />
	<meta data-brackets-id='1217' name="keywords" content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
	<meta data-brackets-id='1218' name="author" content="gettemplates.co" />

	<!-- 
	//////////////////////////////////////////////////////

	FREE HTML5 TEMPLATE 
	DESIGNED & DEVELOPED by FreeHTML5.co
		
	Website: 		http://freehtml5.co/
	Email: 			info@freehtml5.co
	Twitter: 		http://twitter.com/fh5co
	Facebook: 		https://www.facebook.com/fh5co

	//////////////////////////////////////////////////////
	 -->

  	<!-- Facebook and Twitter integration -->
	<meta data-brackets-id='1219' property="og:title" content=""/>
	<meta data-brackets-id='1220' property="og:image" content=""/>
	<meta data-brackets-id='1221' property="og:url" content=""/>
	<meta data-brackets-id='1222' property="og:site_name" content=""/>
	<meta data-brackets-id='1223' property="og:description" content=""/>
	<meta data-brackets-id='1224' name="twitter:title" content="" />
	<meta data-brackets-id='1225' name="twitter:image" content="" />
	<meta data-brackets-id='1226' name="twitter:url" content="" />
	<meta data-brackets-id='1227' name="twitter:card" content="" />

	<!-- <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet"> -->
	<!-- <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i" rel="stylesheet"> -->
	
	<!-- Animate.css -->
	<link data-brackets-id='1228' rel="stylesheet" href="resources/hongs/css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link data-brackets-id='1229' rel="stylesheet" href="resources/hongs/css/icomoon.css">
	<!-- Bootstrap  -->
	<link data-brackets-id='1230' rel="stylesheet" href="resources/hongs/css/bootstrap.css">

	<!-- Flexslider  -->
	<link data-brackets-id='1231' rel="stylesheet" href="resources/hongs/css/flexslider.css">

	<!-- Owl Carousel  -->
	<link data-brackets-id='1232' rel="stylesheet" href="resources/hongs/css/owl.carousel.min.css">
	<link data-brackets-id='1233' rel="stylesheet" href="resources/hongs/css/owl.theme.default.min.css">

	<!-- Theme style  -->
	<link data-brackets-id='1234' rel="stylesheet" href="resources/hongs/css/style.css">

	<!-- Modernizr JS -->
	<script data-brackets-id='1235' src="resources/hongs/js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	<!-- ???????????????  4.5.0 -->
	<link rel="stylesheet"
		href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

</head>
	<jsp:include page="../common/mainBar.jsp"></jsp:include>
	<body data-brackets-id='1236'>
		
	<div data-brackets-id='1237' class="fh5co-loader"></div>
	
	<div data-brackets-id='1290' id="fh5co-product">
	
		<div data-brackets-id='1291' class="container">
			<div data-brackets-id='1292' class="row">
									<c:set var="name" value="${loginInfo.memberName }"></c:set>
							<c:if test="${loginInfo.memberId eq 'admin'}">
								<c:url var="deleteProduct" value="deleteProduct.do">
									<c:param name="pNum" value="${p.productNum }" />
								</c:url>
								<c:url var="updateProduct" value="updateInfoProduct.do">
									<c:param name="pNum" value="${p.productNum }" />
								</c:url>
								<a href="${updateProduct}"><h2>????????????</h2></a><h2>/</h2> <a href="${deleteProduct}"><h2>????????????</h2></a>
								
							</c:if>
			
				<div data-brackets-id='1293' class="col-md-10 col-md-offset-1 animate-box">
			
					<div class="row" id="topcontent" class="portfolio section-bg">
					
			<div class="col-md-6" id="imgcontent" >
			<div  style="height: 300px;width: 300px;">
				<img src="/resources/images/productImg/${p.productMainName }" style="height:100%; width:100%;">
				
			</div>
			</div>
			
	
			<div class="col-md-6" id="productContent">
			
				<form action="buyInfoProduct.do" onsubmit="return check()"method="post">
					<table class="table" class="portfolio section-bg">
						<tr>
						</tr>
						<tr>
							<c:set var="category" value="${p.categoryNum }" />
							<c:choose>
								<c:when test="${category eq '1'}">
									<td>?????????</td>
									<td></td>
								</c:when>
								<c:when test="${category eq '2'}">
									<td>???</td>
									<td></td>
								</c:when>
								<c:when test="${category eq '3'}">
									<td>??????</td>
									<td></td>
								</c:when>
								<c:when test="${category eq '4'}">
									<td>??????</td>
									<td></td>
								</c:when>
								<c:when test="${category eq '5'}">
									<td>??????</td>
									<td></td>
								</c:when>
							</c:choose>
					</tr>
			
				<tr>
				
						<td>???????????? :</td>
							
							<td><input class="noneBorder" type="text" name="productNum"
								value="${p.productNum }" readonly="readonly"></td>

						</tr>
						<tr>
							<td>???????????? : </td>

							<td><input class="noneBorder" type="text" name="productName"
								value="${p.productName }"readonly="readonly"></td>

						</tr>
						<tr>
							<td>??????????????? : </td>
							<td><input  class="noneBorder" type="text" name="productSIze"
								value="${p.productSize }"readonly="readonly"></td>
						</tr>
						<tr>
							<td>???????????? : </td>
							<td><input  class="noneBorder" type="text" name="productColor"
								value="${p.productColor }"readonly="readonly"></td>
					
							
						</tr>
						<tr>
							<td>???????????? : </td>
								<td><input class="noneBorder" type="text" name="productPrice"
								value="${p.productPrice }"readonly="readonly"></td>
						</tr>
						<tr>
						<td>?????? : </td>
							<td><input class="noneBorder" id="orderQty" type="number" name="orderQty"
								min="1" max="100" step="1" value="1"></td>
						</tr>
						<tr>
							
							
							<td colspan="2" align="center">
							<br>
							
							<button data-brackets-id='1405' onclick="check()" type="submit" value="submit" class="btn btn-default btn-block">????????????</button>
							<br>
							<button data-brackets-id='1405' type="button" onclick="javascript:addCart(${p.productNum})" class="btn btn-default btn-block">????????????</button>
							</td>
						</tr>
				</table>
				</form>
				
		
<script>
//?????? ???????????? ??????
function check(){
	var Stock=${p.productStock};
	var Buy=$("#orderQty").val();
	if(Stock-Buy<0){
		alert("????????? ???????????????.");
		return false;
	}

}

</script>
			</div>
		</div>
			
							
				</div>
			</div>
			
			<br><br><br><br>
			<div data-brackets-id='1321' class="row">
				<div data-brackets-id='1322' class="col-md-10 col-md-offset-1">
					<div data-brackets-id='1323' class="fh5co-tabs animate-box">
						<ul data-brackets-id='1324' class="fh5co-tab-nav">
							<li data-brackets-id='1325' class="active"><a data-brackets-id='1326' href="#" data-tab="1"><span data-brackets-id='1327' class="icon visible-xs"><i data-brackets-id='1328' class="icon-file"></i></span><span data-brackets-id='1329' class="hidden-xs">?????? ??????</span></a></li>
							<li data-brackets-id='1330'><a data-brackets-id='1331' href="#" data-tab="2"><span data-brackets-id='1332' class="icon visible-xs"><i data-brackets-id='1333' class="icon-bar-graph"></i></span><span data-brackets-id='1334' class="hidden-xs">?????? ??????</span></a></li>
							<li data-brackets-id='1335'><a data-brackets-id='1336' href="#" data-tab="3"><span data-brackets-id='1337' class="icon visible-xs"><i data-brackets-id='1338' class="icon-star"></i></span><span data-brackets-id='1339' class="hidden-xs">???????????? &amp; ????????????</span></a></li>
						</ul>

						<!-- Tabs -->
						<div data-brackets-id='1340' class="fh5co-tab-content-wrap">

							<div data-brackets-id='1341' class="fh5co-tab-content tab-content active" data-tab-content="1">
								<div data-brackets-id='1342' class="col-md-10 col-md-offset-1">
	
	
	<img src="/resources/images/productInfo/${p.productInfo }" style="width:100%";>
	
	
	
	
	
								</div>
							</div>

						  <div data-brackets-id='1354' class="fh5co-tab-content tab-content" data-tab-content="2">
                        <div data-brackets-id='1355' class="col-md-10 col-md-offset-1">
                        
                           <table id="reviewList"class="table table-hover ">
                           
                           <tr><td colspan="5" >
                           <form action="insertOrderReview.do" method="post"enctype="multipart/form-data">
                           <input type="hidden" name="pNum" value="${p.productNum }">
                           <input type="text" name ="title" placeholder="?????? ??????">
                           <br><br>
                           <input type="file" name="uploadFile" id="imgView" accept=".jpg,.jpeg,.png,.gif">
							<img id="viewer" width="150px" height="100px" style="display:none" required><br>
                           <textarea rows="5" name="content"cols="120px"></textarea><br>
                           <input type="submit" value="??????">
                           </form></td>
    					   <tr>
    					   <td>????????????</td><td>??????</td><td>?????????</td><td>??????</td><td>??????</td>
    					   </tr>
                           </tr>
                           
								<c:forEach items="${list }" var="item" varStatus="stat">
								<tr style="text-align:center;">
									<td><div class="portfolio-wrap">
                            <div class="portfolio-info">
                                <div class="portfolio-links">
                                    <a href="/resources/images/orderRviewImg/${item.fileName}" data-gall="portfolioGallery" class="venobox"><img style="height:50px; width:50px;" src="/resources/images/orderRviewImg/${item.fileName}" class="img-fluid" alt=""></a>
                                </div>
                            </div>
                        </div></td><td>${item.content}</td>
                        <td>${item.member }</td><td>${item.cdt}</td>
                        
                          <c:if test="${item.member == loginInfo.memberId }">  
                        
                        <td>
                        <c:url var="delete" value="deleteReview.do">
                        	<c:param name="pNum" value="${item.productNum }"/>
                        	<c:param name="oNum" value="${item.orderNum }"/>
                        </c:url>
                        <a href="${delete}"><button>X</button></a>&nbsp;
                        <button onclick="updateBtn(${item.orderNum })">??????</button>&nbsp;
                        </td>
                        
							 </c:if>  
								</tr>
								 <tr id="updateShow${item.orderNum }" style="display:none;"><td colspan="5" >
                           <form action="updateReview.do" method="post" enctype="multipart/form-data">
                           <input type="hidden" name="pNum" value="${item.productNum }">
                           <input type="hidden" name="orderNum" value="${item.orderNum }">
                           <input type="text" name ="title" placeholder="?????? ??????">
                           <br><br>
                           <input type="file" name="updateFile" id="imgView" accept=".jpg,.jpeg,.png,.gif">
							<img id="viewer" width="150px" height="100px" style="display:none" required><br>
                           <textarea rows="5" name="content"cols="120px"></textarea><br>
                           <input type="submit" value="????????????">
                           
                           </form></td></tr>
								</c:forEach>
							
						</table>
						<center>		
						<button id="more">?????????</button>
						</center>
                        </div>
                        
                     </div>
                      <!--??????????????? -->
                     <script>
                     
                     function updateBtn(idx){
                    	 if($("#updateShow"+idx).css("display")=="none"){
                  			$("#updateShow"+idx).css("display","");
                  		}
                  		else{
                  			$("#updateShow"+idx).css("display","none");
                  		}
                     }
                     	                    
                     </script>
                     
                     
   
                     <!--???????????? ????????????-->
                     <script>
								function readURL(input) {
									if (input.files && input.files[0]) {
										var reader = new FileReader();
										reader.onload = function(e) {
											$('#viewer').attr('src',e.target.result);
											$('#viewer').css("display","");
										}
										reader.readAsDataURL(input.files[0]); 
									}
									else{
										$('#viewer').css("display","none");
									}
								}
								$("#imgView").change(function() {
									readURL(this);
								});
							
							</script>
                     <script>
                     	$("#writeBtn").click(function(){
                     		location.href="writeOrderReview.do";
                     	})
                     
                     </script>
                      <!--?????? ????????? ?????????  -->
                     <script>
                    
                     	var page=2;
                     	$("#more").click(function(){
                     	
                     		$.ajax({
            					url : "reviewpaging.do?page="+page,
            					type : "POST",
            					dataType:"json",
            					data:page,
            					success : function(data) {
            						
            						if( data.length > 0 ) {
            							for ( var i in data ) {
            								
            							
            								/* $("#reviewList tbody").append("<tr style='text-align:center;'><td><div class='portfolio-wrap'><div class='portfolio-info'><div class='portfolio-links'><a href='/resources/images/orderRviewImg/"+decodeURIComponent(data[i].fileName)+"' data-gall='portfolioGallery' class='venobox'><img style='height:50px; width:50px;' src='/resources/images/orderRviewImg/"+decodeURIComponent(data[i].fileName)+"' class='img-fluid' alt=''></a></div></div></div></td><td>"+decodeURIComponent(data[i].content)+"</td><td>"+data[i].member+"</td><td>"+data[i].cdt+"</td><c:if test="+${data[i].member == loginInfo.memberId }+"><td><a href=deleteReview.do?pNum="+data[i].productNum+"&oNum="+data[i].orderNum+"><button>X</button></a>&nbsp;</td></c:if></tr>"); */
            		         
            								
            								if('${loginInfo.memberId}' == data[i].member){
            									$("#reviewList tbody").append("<tr style='text-align:center;'><td><div class='portfolio-wrap'><div class='portfolio-info'><div class='portfolio-links'><a href='/resources/images/orderRviewImg/"+decodeURIComponent(data[i].fileName)+"' data-gall='portfolioGallery' class='venobox'><img style='height:50px; width:50px;' src='/resources/images/orderRviewImg/"+decodeURIComponent(data[i].fileName)+"' class='img-fluid' alt=''></a></div></div></div></td><td>"+decodeURIComponent(data[i].content)+"</td><td>"+data[i].member+"</td><td>"+data[i].cdt+"</td><td><a href=deleteReview.do?pNum="+data[i].productNum+"&oNum="+data[i].orderNum+"><button>X</button></a>&nbsp;<button onclick=updateBtn("+decodeURIComponent(data[i].orderNum)+")>??????</button>&nbsp;</td></tr><tr id='updateShow"+decodeURIComponent(data[i].orderNum)+"' style='display:none;'><td colspan='5' ><form action='updateReview.do' method='post'enctype='multipart/form-data'><input type='hidden' name='pNum' value="+data[i].productNum+"><input type='hidden'name='orderNum' value="+data[i].orderNum+"><input type='text' name ='title' placeholder='?????? ??????'><br><br><input type='file' name='updateFile' id='imgView' accept='.jpg,.jpeg,.png,.gif'><img id='viewer' width='150px' height='100px' style='display:none' required><br><textarea rows='5' name='content'cols='120px'></textarea><br><input type='submit' value='????????????'></form></td></tr>");
            									/* $tr=$("<tr style='text-align:center;'><td><div class='portfolio-wrap'><div class='portfolio-info'><div class='portfolio-links'><a href='/resources/images/orderRviewImg/"+decodeURIComponent(data[i].fileName)+"' data-gall='portfolioGallery' class='venobox'><img style='height:50px; width:50px;' src='/resources/images/orderRviewImg/"+decodeURIComponent(data[i].fileName)+"' class='img-fluid' alt=''></a></div></div></div></td><td>"+decodeURIComponent(data[i].content)+"</td><td>"+data[i].member+"</td><td>"+data[i].cdt+"<td><a href=deleteReview.do?pNum="+data[i].productNum+"&oNum="+data[i].orderNum+"><button>X</button></a>&nbsp;</td>") */
            								}
            								else{
            									$("#reviewList tbody").append("<tr style='text-align:center;'><td><div class='portfolio-wrap'><div class='portfolio-info'><div class='portfolio-links'><a href='/resources/images/orderRviewImg/"+decodeURIComponent(data[i].fileName)+"' data-gall='portfolioGallery' class='venobox'><img style='height:50px; width:50px;' src='/resources/images/orderRviewImg/"+decodeURIComponent(data[i].fileName)+"' class='img-fluid' alt=''></a></div></div></div></td><td>"+decodeURIComponent(data[i].content)+"</td><td>"+data[i].member+"</td><td>"+data[i].cdt+"</td></tr>");
            								}
            								
            							}
            							
            					}else{
            						alert("????????? ?????????  ????????????");
            						
            					}
            						},
            					error : function() {
            						console.log("??????");
            					}
            				}); 
                     		
                     		page=page+1;
                     		
                     	})
                     	
                     </script>

							<div data-brackets-id='1367' class="fh5co-tab-content tab-content" data-tab-content="3">
								<div data-brackets-id='1368' class="col-md-10 col-md-offset-1">
									<h3 data-brackets-id='1369'>????????????</h3>
									<div data-brackets-id='1370' class="feed">
										<div data-brackets-id='1371'>
											<blockquote data-brackets-id='1372'>
												<p data-brackets-id='1373'>* ???????????? *
												<br>
												
  ???????????? : ???????????? ( ?????? : 1588-1255 ) <br>
  ???????????? : 2,500???  10???????????? ??????<br>
  ???????????? : ?????? ???????????? (??? ?????? ?????? 16 ??? ?????? ??? ???????????? ??????)<br>

* ??? ??? *<br>
  ?????????, ????????? ?????? ?????? ?????? ????????? ??????????????? ????????? ??? ????????? ???????????? 1~2?????? ?????? ????????? ????????? ??? ????????????.
  ??????????????? ???????????? ????????? ?????? ?????? ??? ????????? ????????????. ??????????????? ????????? ????????? ?????? ????????? ??? ????????????.
</p>
											</blockquote>
											
												<blockquote data-brackets-id='1372'>
												<p data-brackets-id='1373'>* ?????? / ?????? ?????? *

												<br>
												
  ?????? ??? ????????? ????????? ??????<br>
  1. ????????? ??????????????? ???????????? 7??? ?????? ???, ????????? ?????????????????? ????????? ???????????? ????????? ????????? ????????? ???????????? ??????/????????? ??????????????????.<br>
  2. ?????? ????????? ?????? ?????? ??? ????????? ???????????? ?????? ?????? ?????? ??? ?????? ???????????????.<br>
  3. ????????? ?????? ????????? ???????????? 7??? ????????? ?????? ??? ????????? ?????? ??? ????????????.<br>
  4. ?????? ????????? ????????? ?????? ???????????? ???????????? ????????? ???????????? ????????? ?????? ??????????????? ????????? ????????? ??????????????????.<br>

* ?????? ??? ????????? ???????????? ?????? *<br>
 1. ????????? ?????? ????????? ???????????? 7?????? ?????? ?????? ?????? ??? ????????? ??????????????????.<br>
 2. ????????? ???????????? 1??? ?????? ???????????? ????????? ????????? ?????? ??? ?????? ??????/??????/????????? ??????????????????.<br>
 3. ???????????? ?????? ?????? ????????? ???????????? ?????? ????????? ??????<br>

* ???????????? *<br>
 1. ????????? ?????? ?????? ????????? ????????? ??? 3????????? ????????? ?????? ????????? ????????? ????????????.<br>
 2. ??????????????? ???????????? ????????? ???????????? ????????? ???????????? ?????? ????????? ?????? ?????? ?????? ?????????.<br>
   (???, ???????????? ??????????????? ????????? ????????? ?????? ?????? ????????? ??? ?????? ?????? ???????????? ??????????????? ??????????????? ???????????? ?????????.)<br>

   
   			   
											</blockquote>
										<blockquote data-brackets-id='1372'>
									<button data-brackets-id='1405' type="submit" value="submit" 
   							class="btn btn-default btn-block" style="font-size: xx-large">??????????????? ??????</button>		

   			   
											</blockquote>
										</div>
				
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>	
	<div data-brackets-id='1470' class="gototop js-top">
		<a data-brackets-id='1471' href="#" class="js-gotop"><i data-brackets-id='1472' class="icon-arrow-up"></i></a>
	</div>
		<!-- Vendor JS Files -->
	<script src="assets/vendor/jquery/jquery.min.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>
	<script src="assets/vendor/php-email-form/validate.js"></script>
	<script src="assets/vendor/jquery-sticky/jquery.sticky.js"></script>
	<script src="assets/vendor/venobox/venobox.min.js"></script>
	<script src="assets/vendor/waypoints/jquery.waypoints.min.js"></script>
	<script src="assets/vendor/counterup/counterup.min.js"></script>
	<script src="assets/vendor/owl.carousel/owl.carousel.min.js"></script>
	<script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script src="assets/vendor/aos/aos.js"></script>

	<!-- Template Main JS File -->
	<script src="assets/js/main.js"></script>
	<!-- jQuery -->
	<script data-brackets-id='1473' src="resources/hongs/js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script data-brackets-id='1474' src="resources/hongs/js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script data-brackets-id='1475' src="resources/hongs/js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script data-brackets-id='1476' src="resources/hongs/js/jquery.waypoints.min.js"></script>
	<!-- Carousel -->
	<script data-brackets-id='1477' src="resources/hongs/js/owl.carousel.min.js"></script>
	<!-- countTo -->
	<script data-brackets-id='1478' src="resources/hongs/js/jquery.countTo.js"></script>
	<!-- Flexslider -->
	<script data-brackets-id='1479' src="resources/hongs/js/jquery.flexslider-min.js"></script>
	<!-- Main -->
	<script data-brackets-id='1480' src="resources/hongs/js/main.js"></script>
	<jsp:include page="../common/footer.jsp"></jsp:include>
	<script type="text/javascript">
		function addCart(num) {
			if($("input[name=orderQty]").val() < 1){
				alert("?????????????????? 1??? ????????? ?????? ??? ????????????.");
				return;
			}else{
				var url = "/insertCart.do?pNum="+num+"&cnt="+parseInt($("input[name=orderQty]").val());							
				$.ajax({
					url : url,
					type : "get",
					success : function(data) {
						if(data=="fail"){
							alert("?????? ????????? ???????????????.");
						}
						if(data=="success"){
							alert("?????? ??????");
						}
						
						console.log(data);
					},
					error : function() {
						console.log("??????");
					}
				}); 
			}
			
		}
	</script>
	</body>
</html>

