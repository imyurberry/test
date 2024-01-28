/*
$(document).ready(function(){
	$(".exp").each(function(index, obj){
		console.log(obj)
		console.log(index)
	})
	$(".exp").click(function() {
		const expattr = $(".exp").attr("exp_idx")
		window.open("http://localhost:9090/Airbnb/ExpInfo?exp_idx="+expattr);
	})
})
*/
$(function() {
	$(".col_img").click(function() {
		$(location).attr("href","Collection.html");
	})
	
	$(".filter_icon_r").click(function() {
		$(location).attr("href","Filter.html");
	})
	
	$('.heart_empty').click(function(e) {
  		e.preventDefault(); 
  		e.stopPropagation();
	});
	
	$(".heart_empty").click(function() {
	   if($(this).css("fill") != "rgb(255, 56, 92)") {
		   let idx = $(".heart_empty").index($(this));
		   /*alert("idx : " + idx);*/
		   $("#heart_val").val(idx);
		   $("#wish_outer").css("display","block");
		   $("#wish").css("display","block");
		   $("body").css("overflow-y","hidden");
	   } else if($(this).css("fill") == "rgb(255, 56, 92)") {
		   $(this).css("fill","rgba(0, 0, 0, 0.5)");
   	   }
   	 })
   	$(".wish_header > button").click(function(){
		$("#wish_outer").css("display","none");
		$("#wish").css("display","none");
		$("body").css("overflow-y","scroll");
   	});
   	$("#wish_outer").click(function(){
	   	$("#wish_outer").css("display","none");
	   	$("#wish").css("display","none");
	   	$("body").css("overflow-y","scroll");
   	});
   
   	$(".wish_content1").click(function() {
	  	let idx = $("#heart_val").val();
	   	$("#wish_outer").css("display","none");
	  	$("#wish").css("display","none");
	   	$("body").css("overflow-y","scroll");
	   	$(".heart_empty").eq(idx).css("fill", "#FF385C");
	})
	
	$("#mv").click(function() {
		$("#more_experience").css("display","block");
		$("#more_view").css("display","none");
		
		$("#cate5_expz").slick({
			slidesToShow: 6,
			slidesToScroll: 6,
			infinite: false,
			prevArrow: $("#cate5_point > #cate5_left"),
			nextArrow: $("#cate5_point > #cate5_right"),
		});
		
		$("#cate6_expz").slick({
			slidesToShow: 6,
			slidesToScroll: 6,
			infinite: false,
			prevArrow: $("#cate6_point > #cate6_left"),
			nextArrow: $("#cate6_point > #cate6_right"),
		});
	})
})