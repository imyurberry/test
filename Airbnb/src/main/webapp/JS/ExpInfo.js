$(function(){
	$("#mv_button").click(function(){
		$("#et_mv").css("display","inline");
		$("#mv_button").css("display","none");
	})
	
	$("#date_mv").click(function() {
		$('.container').addClass('modal-open1');
		$("body").css("overflow-y","hidden");
	})
	$("#date_more_view").click(function() {
		$('.container').addClass('modal-open1');
		$("body").css("overflow-y","hidden");
	})
	$("#back_page > div").click(function() {
		$("body").css("overflow-y","scroll");
		$('.container').removeClass('modal-open1');
	})
	
	// 사진 5개 모두 보기
	$("#iav_box").click(function() {
		$('.container').addClass('modal-open2');
		$("body").css("overflow-y","hidden");
	})
	$("#close").click(function() {
		$('.container').removeClass('modal-open2');
		$("body").css("overflow-y","scroll");
	})
	let imgNum = 1;
	$("#img_next").click(function() {
		imgNum++;
		if(imgNum >= 5) imgNum = 5;
		$(".img_num").text(imgNum);
	})
	$("#img_prev").click(function() {
		imgNum--;
		if(imgNum <= 1) imgNum = 1;
		$(".img_num").text(imgNum);
	})

	$(".select > .select_detail:nth-child(1)").click(function() {
		$("#select_res_date").css("display","block");
	})
	$("#select_res_date > .select > div:nth-child(4)").click(function() {
		$("#select_res_date").css("display","none");
	})
	/*$(".datepicker").datepicker({
       monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'],
       monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
       dayNamesMin: ['일','월','화','수','목','금','토'],
       dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'],
    });*/
//    $('.datepicker').datepicker('setDate', 'today');
	
	$(".select > .select_detail:nth-child(2)").click(function() {
		$("#select_guest").css("display","block");
	})
	$("#select_guest > .select > div:nth-child(4)").click(function() {
		$("#select_guest").css("display","none");
	})
	
	
	$("#report").click(function() {
		$("#report_body").css("display","flex");
		$("body").css("overflow-y","hidden");
	})
	$("#report_top > div:nth-child(1)").click(function() {
		$("#report_body").css("display","none");
		$("body").css("overflow-y","scroll");
	})
	
	$(".res_button1").click(function() {
		$(location).attr("href","Payment.html");
	})
	$(".rs_button").click(function() {
		$(location).attr("href","Payment.html");
	})
	
	$(".sbt_top > div:nth-child(2)").click(function(){
		$(location).attr("href","Payment.html");
	})
	
	$(".rc_content > div:nth-child(2)").click(function() {
		if($(this).find('div').css('display') == "none") {
			$(this).find('div').css("display", "block")
		}else{
			$(this).find('div').css("display","none")
		}
	})
	
	$(".rv_more_view").click(function() {
		$(this).parent().find(".review_txt").css("display","block");
	})
	$('a.rv_mv').click(function(e) {
  		e.preventDefault(); 
  		$(this).parent().hide();  
	});
	
	$("#mv_button").click(function() {
		$(this).parent().find("span").css("display","block");
	})
	$('#mv_button > b').click(function(e) {
  		e.preventDefault(); 
  		$(this).parent().hide();  
	});
	
   $(".heart").click(function() {
	   if($(this).find("svg").css("fill") != "rgb(255, 56, 92)") {
		   let idx = $(".heart").index($(this));
		   /*alert("idx : " + idx);*/
		   $("#heart_val").val(idx);
		   $("#wish_outer").css("display","block");
		   $("#wish").css("display","block");
		   $("body").css("overflow-y","hidden");
	   } else if($(this).find("svg").css("fill") == "rgb(255, 56, 92)") {
		   if($("#heart_val").val() == "0") {
			   $(this).find("svg").css("fill","none");
		   } else{
			   $(this).find("svg").css("fill","rgba(0, 0, 0, 0.5)");
		   }
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
	   $(".heart").eq(idx).find("svg").css("fill", "#FF385C");
   })
  
  /*모든리뷰버튼 클릭*/
    $("#rv_all_view").click(function(){
      $("#bg_popup").css("display", "block");
      $("#pop_review").css("display", "block");
      $("body").css("overflow-y","hidden");
   
   });
   // 후기x버튼 눌렀을때 닫기
   $(".pop_header>button").click(function(){
      $("#bg_popup").css("display", "none");
      $("#pop_review").css("display", "none");
      $("body").css("overflow-y","scroll");
      //최신순 버튼초기화
      $(".pop_section2-1-1").css("border","1px solid rgb(221, 221, 221)");
      $(".pop_section_sort").css("display","none");
   });
   // 후기 팝업 바깥여백눌렀을때 창닫기
   $("#bg_popup").click(function(){
      $("#bg_popup").css("display", "none");
      $("#pop_review").css("display", "none");
      $("body").css("overflow-y","scroll");
      // 최신순버튼초기화
      $(".pop_section2-1-1").css("border","1px solid rgb(221, 221, 221)");
      $(".pop_section_sort").css("display","none");
   });
   //최신순버튼눌렀을때
   $(".pop_section2-1-1").click(function(e){//
      if($(".pop_section_sort").css("display") == "none"){
         $(this).css("border", "2px solid black");
         $(".pop_section_sort").css("display" , "block");
      }else if($(".pop_section_sort").css("display") == "block"){
         $(".pop_section_sort").css("display" , "none");
         $(this).css("border","1px solid grey");
      }
   });
   
   // !리뷰창눌렀을때 최신순버튼숨기기
   $("pop_section2-1-1").on("click",function(event){
      event.preventDefault();
      event.stopPropagation();
      return false;
   });
   $("#pop_review").click(function(){
      if($(".pop_section_sort").css("display") == "block"){
         $(".pop_section_sort").css("display" , "none");
         $(".pop_section2-1-1").css("border","1px solid grey");
      }
   });
   
   
   // 후기제목 밑 후기버튼 클릭
    $(".sp2").click(function(){
      $("#bg_popup").css("display", "block");
      $("#pop_review").css("display", "block");
      $("body").css("overflow-y","hidden");
   });
   // 후기글 '더보기'눌렀을때 버튼클릭
    $(".ri2-3>span").click(function(){
      $("#bg_popup").css("display", "block");
      $("#pop_review").css("display", "block");
      $("body").css("overflow-y","hidden");
   });
});        	