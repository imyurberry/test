<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.text.DecimalFormat"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link href='http://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" href="CSS/Review.css"/>
		<script src="JS/jquery-3.7.1.min.js"></script>
		<!-- <script src="JS/Review.js"></script> -->
	</head>
	<body>
		<div id="bg_popup"></div>
        	<div id="pop_review">
		      <div class="pop_header">
		         <button><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-hidden="true" role="presentation" focusable="false" style="display: block; fill: none; height: 16px; width: 16px; stroke: currentcolor; stroke-width: 3; overflow: visible;"><path d="m6 6 20 20M26 6 6 26"></path></svg></button>
		      </div>
		      
		      <div class="pop_section">
		      
		         <!-- 최신순팝업 -->
		         <div class="pop_section_sort" style="display:none;">
		            <div class="pop_section_sort2">
		               최신순
		            </div>
		            <div class="pop_section_sort3">
		               높은 평점순
		            </div>
		         </div>
		         <!-- 최신순팝업 -->
		         
		         <div class="pop_section1">
		            <div class="pop_section1-1">
		               <img class="i9if2t0 atm_e2_idpfg4 atm_vy_idpfg4 atm_mk_stnw88 atm_e2_1osqo2v__1lzdix4 atm_vy_1osqo2v__1lzdix4 atm_mk_pfqszd__1lzdix4 i1cqnm0r atm_jp_pyzg9w atm_jr_nyqth1 i1de1kle atm_vh_yfq0k3 dir dir-ltr" aria-hidden="true" decoding="async" elementtiming="LCP-target" src="https://a0.muscache.com/pictures/ec500a26-609d-440f-b5d0-9e5f92afd478.jpg" data-original-uri="https://a0.muscache.com/pictures/ec500a26-609d-440f-b5d0-9e5f92afd478.jpg" style="--dls-liteimage-object-fit: cover;">
		               <div style="color: rgb(51, 56, 59);">5.0</div>
		               <img class="i9if2t0 atm_e2_idpfg4 atm_vy_idpfg4 atm_mk_stnw88 atm_e2_1osqo2v__1lzdix4 atm_vy_1osqo2v__1lzdix4 atm_mk_pfqszd__1lzdix4 i1cqnm0r atm_jp_pyzg9w atm_jr_nyqth1 i1de1kle atm_vh_yfq0k3 dir dir-ltr" aria-hidden="true" decoding="async" elementtiming="LCP-target" src="https://a0.muscache.com/pictures/65bb2a6c-0bdf-42fc-8e1c-38cec04b2fa5.jpg" data-original-uri="https://a0.muscache.com/pictures/65bb2a6c-0bdf-42fc-8e1c-38cec04b2fa5.jpg" style="--dls-liteimage-object-fit: cover;">
		            </div>
		            <div class="pop_section1-2">게스트 선호</div>
		            <div class="pop_section1-3">평점, 후기, 신뢰도 기준<br>에어비앤비에서 가장 사랑받는 체험</div>
		         </div>
		         
		         <div class="pop_section2">
		            <div>
		               
		               <div class="pop_section2-1">
		                  <div>후기 21개</div>
		               </div>
		               
		               <div class="pop_section2-2">
		                  <input type="text" placeholder="후기검색">
		                  <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-hidden="true" role="presentation" focusable="false" style="display: block; fill: none; height: 16px; width: 16px; stroke: currentcolor; stroke-width: 3; overflow: visible;"><path fill="none" d="M13 24a11 11 0 1 0 0-22 11 11 0 0 0 0 22zm8-3 9 9"></path></svg>
		               </div>
		            </div>
		            
		            <div>
		               <div class="pop_section2-3">
		                  <div>
		                     <img src="https://a0.muscache.com/im/users/6425305/profile_pic/1373569459/original.jpg?im_w=240"/>
		                     <div>
		                        <span class="re-sp1">Anna<br></span>
		                        <span class="re-sp2">베를린, 독일</span>
		                     </div>
		                  </div>
		                  
		                  <div>
		                    2023년 11월
		                  </div>
		                  
		                  
		                  <div>
		                  가을에 토스카니를 방문하기에 완벽한 장소입니다. 알레산드로와 엘레나는 정말 친절하고 도움을 줍니다. 가족이 자연 속에서 놀고 휴식을 취하고 여행을 떠나기에 안성맞춤인 숙소입니다. 이 아파트는 필요한 모든 것을 갖추고 있습니다.
		                  </div>
		               </div>
		               
		               
		               <!-- <div class="pop_section2-3">
		                  <div>
		                     <img src="https://a0.muscache.com/im/users/6425305/profile_pic/1373569459/original.jpg?im_w=240"/>
		                     <div>
		                        <span class="re-sp1">Anna<br></span>
		                        <span class="re-sp2">베를린, 독일</span>
		                     </div>
		                  </div>
		                  
		                  <div>
		                     <div>
		                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 9px; width: 9px; fill: var(--f-k-smk-x);"><path fill-rule="evenodd" d="m15.1 1.58-4.13 8.88-9.86 1.27a1 1 0 0 0-.54 1.74l7.3 6.57-1.97 9.85a1 1 0 0 0 1.48 1.06l8.62-5 8.63 5a1 1 0 0 0 1.48-1.06l-1.97-9.85 7.3-6.57a1 1 0 0 0-.55-1.73l-9.86-1.28-4.12-8.88a1 1 0 0 0-1.82 0z"></path></svg>
		                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 9px; width: 9px; fill: var(--f-k-smk-x);"><path fill-rule="evenodd" d="m15.1 1.58-4.13 8.88-9.86 1.27a1 1 0 0 0-.54 1.74l7.3 6.57-1.97 9.85a1 1 0 0 0 1.48 1.06l8.62-5 8.63 5a1 1 0 0 0 1.48-1.06l-1.97-9.85 7.3-6.57a1 1 0 0 0-.55-1.73l-9.86-1.28-4.12-8.88a1 1 0 0 0-1.82 0z"></path></svg>
		                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 9px; width: 9px; fill: var(--f-k-smk-x);"><path fill-rule="evenodd" d="m15.1 1.58-4.13 8.88-9.86 1.27a1 1 0 0 0-.54 1.74l7.3 6.57-1.97 9.85a1 1 0 0 0 1.48 1.06l8.62-5 8.63 5a1 1 0 0 0 1.48-1.06l-1.97-9.85 7.3-6.57a1 1 0 0 0-.55-1.73l-9.86-1.28-4.12-8.88a1 1 0 0 0-1.82 0z"></path></svg>
		                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 9px; width: 9px; fill: var(--f-k-smk-x);"><path fill-rule="evenodd" d="m15.1 1.58-4.13 8.88-9.86 1.27a1 1 0 0 0-.54 1.74l7.3 6.57-1.97 9.85a1 1 0 0 0 1.48 1.06l8.62-5 8.63 5a1 1 0 0 0 1.48-1.06l-1.97-9.85 7.3-6.57a1 1 0 0 0-.55-1.73l-9.86-1.28-4.12-8.88a1 1 0 0 0-1.82 0z"></path></svg>
		                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 9px; width: 9px; fill: var(--f-k-smk-x);"><path fill-rule="evenodd" d="m15.1 1.58-4.13 8.88-9.86 1.27a1 1 0 0 0-.54 1.74l7.3 6.57-1.97 9.85a1 1 0 0 0 1.48 1.06l8.62-5 8.63 5a1 1 0 0 0 1.48-1.06l-1.97-9.85 7.3-6.57a1 1 0 0 0-.55-1.73l-9.86-1.28-4.12-8.88a1 1 0 0 0-1.82 0z"></path></svg>
		                     </div>
		                     · 2023년 11월
		                  </div>
		                  
		                  
		                  <div>
		                  가을에 토스카니를 방문하기에 완벽한 장소입니다. 알레산드로와 엘레나는 정말 친절하고 도움을 줍니다. 가족이 자연 속에서 놀고 휴식을 취하고 여행을 떠나기에 안성맞춤인 숙소입니다. 이 아파트는 필요한 모든 것을 갖추고 있습니다.
		                  </div>
		               </div>
		               
		               
		               <div class="pop_section2-3">
		                  <div>
		                     <img src="https://a0.muscache.com/im/users/6425305/profile_pic/1373569459/original.jpg?im_w=240"/>
		                     <div>
		                        <span class="re-sp1">Anna<br></span>
		                        <span class="re-sp2">베를린, 독일</span>
		                     </div>
		                  </div>
		                     
		                  <div>
		                     <div>
		                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 9px; width: 9px; fill: var(--f-k-smk-x);"><path fill-rule="evenodd" d="m15.1 1.58-4.13 8.88-9.86 1.27a1 1 0 0 0-.54 1.74l7.3 6.57-1.97 9.85a1 1 0 0 0 1.48 1.06l8.62-5 8.63 5a1 1 0 0 0 1.48-1.06l-1.97-9.85 7.3-6.57a1 1 0 0 0-.55-1.73l-9.86-1.28-4.12-8.88a1 1 0 0 0-1.82 0z"></path></svg>
		                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 9px; width: 9px; fill: var(--f-k-smk-x);"><path fill-rule="evenodd" d="m15.1 1.58-4.13 8.88-9.86 1.27a1 1 0 0 0-.54 1.74l7.3 6.57-1.97 9.85a1 1 0 0 0 1.48 1.06l8.62-5 8.63 5a1 1 0 0 0 1.48-1.06l-1.97-9.85 7.3-6.57a1 1 0 0 0-.55-1.73l-9.86-1.28-4.12-8.88a1 1 0 0 0-1.82 0z"></path></svg>
		                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 9px; width: 9px; fill: var(--f-k-smk-x);"><path fill-rule="evenodd" d="m15.1 1.58-4.13 8.88-9.86 1.27a1 1 0 0 0-.54 1.74l7.3 6.57-1.97 9.85a1 1 0 0 0 1.48 1.06l8.62-5 8.63 5a1 1 0 0 0 1.48-1.06l-1.97-9.85 7.3-6.57a1 1 0 0 0-.55-1.73l-9.86-1.28-4.12-8.88a1 1 0 0 0-1.82 0z"></path></svg>
		                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 9px; width: 9px; fill: var(--f-k-smk-x);"><path fill-rule="evenodd" d="m15.1 1.58-4.13 8.88-9.86 1.27a1 1 0 0 0-.54 1.74l7.3 6.57-1.97 9.85a1 1 0 0 0 1.48 1.06l8.62-5 8.63 5a1 1 0 0 0 1.48-1.06l-1.97-9.85 7.3-6.57a1 1 0 0 0-.55-1.73l-9.86-1.28-4.12-8.88a1 1 0 0 0-1.82 0z"></path></svg>
		                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 9px; width: 9px; fill: var(--f-k-smk-x);"><path fill-rule="evenodd" d="m15.1 1.58-4.13 8.88-9.86 1.27a1 1 0 0 0-.54 1.74l7.3 6.57-1.97 9.85a1 1 0 0 0 1.48 1.06l8.62-5 8.63 5a1 1 0 0 0 1.48-1.06l-1.97-9.85 7.3-6.57a1 1 0 0 0-.55-1.73l-9.86-1.28-4.12-8.88a1 1 0 0 0-1.82 0z"></path></svg>
		                     </div>
		                        · 2023년 11월
		                  </div>
		                     
		                     
		                  <div>
		                  가을에 토스카니를 방문하기에 완벽한 장소입니다. 알레산드로와 엘레나는 정말 친절하고 도움을 줍니다. 가족이 자연 속에서 놀고 휴식을 취하고 여행을 떠나기에 안성맞춤인 숙소입니다. 이 아파트는 필요한 모든 것을 갖추고 있습니다.
		                  </div>
		               </div>
		               
		               <div class="pop_section2-3">
		                  <div>
		                     <img src="https://a0.muscache.com/im/users/6425305/profile_pic/1373569459/original.jpg?im_w=240"/>
		                     <div>
		                        <span class="re-sp1">Anna<br></span>
		                        <span class="re-sp2">베를린, 독일</span>
		                     </div>
		                  </div>
		                     
		                  <div>
		                     <div>
		                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 9px; width: 9px; fill: var(--f-k-smk-x);"><path fill-rule="evenodd" d="m15.1 1.58-4.13 8.88-9.86 1.27a1 1 0 0 0-.54 1.74l7.3 6.57-1.97 9.85a1 1 0 0 0 1.48 1.06l8.62-5 8.63 5a1 1 0 0 0 1.48-1.06l-1.97-9.85 7.3-6.57a1 1 0 0 0-.55-1.73l-9.86-1.28-4.12-8.88a1 1 0 0 0-1.82 0z"></path></svg>
		                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 9px; width: 9px; fill: var(--f-k-smk-x);"><path fill-rule="evenodd" d="m15.1 1.58-4.13 8.88-9.86 1.27a1 1 0 0 0-.54 1.74l7.3 6.57-1.97 9.85a1 1 0 0 0 1.48 1.06l8.62-5 8.63 5a1 1 0 0 0 1.48-1.06l-1.97-9.85 7.3-6.57a1 1 0 0 0-.55-1.73l-9.86-1.28-4.12-8.88a1 1 0 0 0-1.82 0z"></path></svg>
		            
		                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 9px; width: 9px; fill: var(--f-k-smk-x);"><path fill-rule="evenodd" d="m15.1 1.58-4.13 8.88-9.86 1.27a1 1 0 0 0-.54 1.74l7.3 6.57-1.97 9.85a1 1 0 0 0 1.48 1.06l8.62-5 8.63 5a1 1 0 0 0 1.48-1.06l-1.97-9.85 7.3-6.57a1 1 0 0 0-.55-1.73l-9.86-1.28-4.12-8.88a1 1 0 0 0-1.82 0z"></path></svg>
		                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 9px; width: 9px; fill: var(--f-k-smk-x);"><path fill-rule="evenodd" d="m15.1 1.58-4.13 8.88-9.86 1.27a1 1 0 0 0-.54 1.74l7.3 6.57-1.97 9.85a1 1 0 0 0 1.48 1.06l8.62-5 8.63 5a1 1 0 0 0 1.48-1.06l-1.97-9.85 7.3-6.57a1 1 0 0 0-.55-1.73l-9.86-1.28-4.12-8.88a1 1 0 0 0-1.82 0z"></path></svg>
		                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 9px; width: 9px; fill: var(--f-k-smk-x);"><path fill-rule="evenodd" d="m15.1 1.58-4.13 8.88-9.86 1.27a1 1 0 0 0-.54 1.74l7.3 6.57-1.97 9.85a1 1 0 0 0 1.48 1.06l8.62-5 8.63 5a1 1 0 0 0 1.48-1.06l-1.97-9.85 7.3-6.57a1 1 0 0 0-.55-1.73l-9.86-1.28-4.12-8.88a1 1 0 0 0-1.82 0z"></path></svg>
		                     </div>
		                        · 2023년 11월
		                  </div>
		                     
		                     
		                  <div>
		                  가을에 토스카니를 방문하기에 완벽한 장소입니다. 알레산드로와 엘레나는 정말 친절하고 도움을 줍니다. 가족이 자연 속에서 놀고 휴식을 취하고 여행을 떠나기에 안성맞춤인 숙소입니다. 이 아파트는 필요한 모든 것을 갖추고 있습니다.
		                  </div>
		               </div>
		               
		               <div class="pop_section2-3">
		                  <div>
		                     <img src="https://a0.muscache.com/im/users/12128205/profile_pic/1419977915/original.jpg?im_w=240"/>
		                     <div>
		                        <span class="re-sp1">Janice<br></span>
		                        <span class="re-sp2">St. Louis, 미주리</span>
		                     </div>
		                  </div>
		                     
		                  <div>
		                     <div>
		                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 9px; width: 9px; fill: var(--f-k-smk-x);"><path fill-rule="evenodd" d="m15.1 1.58-4.13 8.88-9.86 1.27a1 1 0 0 0-.54 1.74l7.3 6.57-1.97 9.85a1 1 0 0 0 1.48 1.06l8.62-5 8.63 5a1 1 0 0 0 1.48-1.06l-1.97-9.85 7.3-6.57a1 1 0 0 0-.55-1.73l-9.86-1.28-4.12-8.88a1 1 0 0 0-1.82 0z"></path></svg>
		                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 9px; width: 9px; fill: var(--f-k-smk-x);"><path fill-rule="evenodd" d="m15.1 1.58-4.13 8.88-9.86 1.27a1 1 0 0 0-.54 1.74l7.3 6.57-1.97 9.85a1 1 0 0 0 1.48 1.06l8.62-5 8.63 5a1 1 0 0 0 1.48-1.06l-1.97-9.85 7.3-6.57a1 1 0 0 0-.55-1.73l-9.86-1.28-4.12-8.88a1 1 0 0 0-1.82 0z"></path></svg>
		                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 9px; width: 9px; fill: var(--f-k-smk-x);"><path fill-rule="evenodd" d="m15.1 1.58-4.13 8.88-9.86 1.27a1 1 0 0 0-.54 1.74l7.3 6.57-1.97 9.85a1 1 0 0 0 1.48 1.06l8.62-5 8.63 5a1 1 0 0 0 1.48-1.06l-1.97-9.85 7.3-6.57a1 1 0 0 0-.55-1.73l-9.86-1.28-4.12-8.88a1 1 0 0 0-1.82 0z"></path></svg>
		                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 9px; width: 9px; fill: var(--f-k-smk-x);"><path fill-rule="evenodd" d="m15.1 1.58-4.13 8.88-9.86 1.27a1 1 0 0 0-.54 1.74l7.3 6.57-1.97 9.85a1 1 0 0 0 1.48 1.06l8.62-5 8.63 5a1 1 0 0 0 1.48-1.06l-1.97-9.85 7.3-6.57a1 1 0 0 0-.55-1.73l-9.86-1.28-4.12-8.88a1 1 0 0 0-1.82 0z"></path></svg>
		                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 9px; width: 9px; fill: var(--f-k-smk-x);"><path fill-rule="evenodd" d="m15.1 1.58-4.13 8.88-9.86 1.27a1 1 0 0 0-.54 1.74l7.3 6.57-1.97 9.85a1 1 0 0 0 1.48 1.06l8.62-5 8.63 5a1 1 0 0 0 1.48-1.06l-1.97-9.85 7.3-6.57a1 1 0 0 0-.55-1.73l-9.86-1.28-4.12-8.88a1 1 0 0 0-1.82 0z"></path></svg>
		                     </div>
		                        · 2023년 11월
		                  </div>
		                     
		                     
		                  <div>
		                  정말 멋져요!!! 지상낙원!!! 아주 좋은 호스트에 대해 뭐라고 말할 수 있을까요!! 망설이지 마세요. 우리는 매력적이었습니다!!
		                  </div>
		               </div>
		               
		               <div class="pop_section2-3">
		                  <div>
		                     <img src="https://a0.muscache.com/im/users/12128205/profile_pic/1419977915/original.jpg?im_w=240"/>
		                     <div>
		                        <span class="re-sp1">Janice<br></span>
		                        <span class="re-sp2">St. Louis, 미주리</span>
		                     </div>
		                  </div>
		                     
		                  <div>
		                     <div>
		                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 9px; width: 9px; fill: var(--f-k-smk-x);"><path fill-rule="evenodd" d="m15.1 1.58-4.13 8.88-9.86 1.27a1 1 0 0 0-.54 1.74l7.3 6.57-1.97 9.85a1 1 0 0 0 1.48 1.06l8.62-5 8.63 5a1 1 0 0 0 1.48-1.06l-1.97-9.85 7.3-6.57a1 1 0 0 0-.55-1.73l-9.86-1.28-4.12-8.88a1 1 0 0 0-1.82 0z"></path></svg>
		                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 9px; width: 9px; fill: var(--f-k-smk-x);"><path fill-rule="evenodd" d="m15.1 1.58-4.13 8.88-9.86 1.27a1 1 0 0 0-.54 1.74l7.3 6.57-1.97 9.85a1 1 0 0 0 1.48 1.06l8.62-5 8.63 5a1 1 0 0 0 1.48-1.06l-1.97-9.85 7.3-6.57a1 1 0 0 0-.55-1.73l-9.86-1.28-4.12-8.88a1 1 0 0 0-1.82 0z"></path></svg>
		                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 9px; width: 9px; fill: var(--f-k-smk-x);"><path fill-rule="evenodd" d="m15.1 1.58-4.13 8.88-9.86 1.27a1 1 0 0 0-.54 1.74l7.3 6.57-1.97 9.85a1 1 0 0 0 1.48 1.06l8.62-5 8.63 5a1 1 0 0 0 1.48-1.06l-1.97-9.85 7.3-6.57a1 1 0 0 0-.55-1.73l-9.86-1.28-4.12-8.88a1 1 0 0 0-1.82 0z"></path></svg>
		                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 9px; width: 9px; fill: var(--f-k-smk-x);"><path fill-rule="evenodd" d="m15.1 1.58-4.13 8.88-9.86 1.27a1 1 0 0 0-.54 1.74l7.3 6.57-1.97 9.85a1 1 0 0 0 1.48 1.06l8.62-5 8.63 5a1 1 0 0 0 1.48-1.06l-1.97-9.85 7.3-6.57a1 1 0 0 0-.55-1.73l-9.86-1.28-4.12-8.88a1 1 0 0 0-1.82 0z"></path></svg>
		                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 9px; width: 9px; fill: var(--f-k-smk-x);"><path fill-rule="evenodd" d="m15.1 1.58-4.13 8.88-9.86 1.27a1 1 0 0 0-.54 1.74l7.3 6.57-1.97 9.85a1 1 0 0 0 1.48 1.06l8.62-5 8.63 5a1 1 0 0 0 1.48-1.06l-1.97-9.85 7.3-6.57a1 1 0 0 0-.55-1.73l-9.86-1.28-4.12-8.88a1 1 0 0 0-1.82 0z"></path></svg>
		                     </div>
		                        · 2023년 11월
		                  </div>
		                     
		                     
		                  <div>
		                  정말 멋져요!!! 지상낙원!!! 아주 좋은 호스트에 대해 뭐라고 말할 수 있을까요!! 망설이지 마세요. 우리는 매력적이었습니다!!
		                  </div>
		               </div>
		               
		               <div class="pop_section2-3">
		                  <div>
		                     <img src="https://a0.muscache.com/im/users/12128205/profile_pic/1419977915/original.jpg?im_w=240"/>
		                     <div>
		                        <span class="re-sp1">Janice<br></span>
		                        <span class="re-sp2">St. Louis, 미주리</span>
		                     </div>
		                  </div>
		                     
		                  <div>
		                     <div>
		                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 9px; width: 9px; fill: var(--f-k-smk-x);"><path fill-rule="evenodd" d="m15.1 1.58-4.13 8.88-9.86 1.27a1 1 0 0 0-.54 1.74l7.3 6.57-1.97 9.85a1 1 0 0 0 1.48 1.06l8.62-5 8.63 5a1 1 0 0 0 1.48-1.06l-1.97-9.85 7.3-6.57a1 1 0 0 0-.55-1.73l-9.86-1.28-4.12-8.88a1 1 0 0 0-1.82 0z"></path></svg>
		                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 9px; width: 9px; fill: var(--f-k-smk-x);"><path fill-rule="evenodd" d="m15.1 1.58-4.13 8.88-9.86 1.27a1 1 0 0 0-.54 1.74l7.3 6.57-1.97 9.85a1 1 0 0 0 1.48 1.06l8.62-5 8.63 5a1 1 0 0 0 1.48-1.06l-1.97-9.85 7.3-6.57a1 1 0 0 0-.55-1.73l-9.86-1.28-4.12-8.88a1 1 0 0 0-1.82 0z"></path></svg>
		                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 9px; width: 9px; fill: var(--f-k-smk-x);"><path fill-rule="evenodd" d="m15.1 1.58-4.13 8.88-9.86 1.27a1 1 0 0 0-.54 1.74l7.3 6.57-1.97 9.85a1 1 0 0 0 1.48 1.06l8.62-5 8.63 5a1 1 0 0 0 1.48-1.06l-1.97-9.85 7.3-6.57a1 1 0 0 0-.55-1.73l-9.86-1.28-4.12-8.88a1 1 0 0 0-1.82 0z"></path></svg>
		                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 9px; width: 9px; fill: var(--f-k-smk-x);"><path fill-rule="evenodd" d="m15.1 1.58-4.13 8.88-9.86 1.27a1 1 0 0 0-.54 1.74l7.3 6.57-1.97 9.85a1 1 0 0 0 1.48 1.06l8.62-5 8.63 5a1 1 0 0 0 1.48-1.06l-1.97-9.85 7.3-6.57a1 1 0 0 0-.55-1.73l-9.86-1.28-4.12-8.88a1 1 0 0 0-1.82 0z"></path></svg>
		                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 9px; width: 9px; fill: var(--f-k-smk-x);"><path fill-rule="evenodd" d="m15.1 1.58-4.13 8.88-9.86 1.27a1 1 0 0 0-.54 1.74l7.3 6.57-1.97 9.85a1 1 0 0 0 1.48 1.06l8.62-5 8.63 5a1 1 0 0 0 1.48-1.06l-1.97-9.85 7.3-6.57a1 1 0 0 0-.55-1.73l-9.86-1.28-4.12-8.88a1 1 0 0 0-1.82 0z"></path></svg>
		                     </div>
		                        · 2023년 11월
		                  </div>
		                     
		                     
		                  <div>
		                  정말 멋져요!!! 지상낙원!!! 아주 좋은 호스트에 대해 뭐라고 말할 수 있을까요!! 망설이지 마세요. 우리는 매력적이었습니다!!
		                  </div>
		               </div>
		               
		               <div class="pop_section2-3">
		                  <div>
		                     <img src="https://a0.muscache.com/im/users/12128205/profile_pic/1419977915/original.jpg?im_w=240"/>
		                     <div>
		                        <span class="re-sp1">Janice<br></span>
		                        <span class="re-sp2">St. Louis, 미주리</span>
		                     </div>
		                  </div>
		                     
		                  <div>
		                     <div>
		                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 9px; width: 9px; fill: var(--f-k-smk-x);"><path fill-rule="evenodd" d="m15.1 1.58-4.13 8.88-9.86 1.27a1 1 0 0 0-.54 1.74l7.3 6.57-1.97 9.85a1 1 0 0 0 1.48 1.06l8.62-5 8.63 5a1 1 0 0 0 1.48-1.06l-1.97-9.85 7.3-6.57a1 1 0 0 0-.55-1.73l-9.86-1.28-4.12-8.88a1 1 0 0 0-1.82 0z"></path></svg>
		                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 9px; width: 9px; fill: var(--f-k-smk-x);"><path fill-rule="evenodd" d="m15.1 1.58-4.13 8.88-9.86 1.27a1 1 0 0 0-.54 1.74l7.3 6.57-1.97 9.85a1 1 0 0 0 1.48 1.06l8.62-5 8.63 5a1 1 0 0 0 1.48-1.06l-1.97-9.85 7.3-6.57a1 1 0 0 0-.55-1.73l-9.86-1.28-4.12-8.88a1 1 0 0 0-1.82 0z"></path></svg>
		                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 9px; width: 9px; fill: var(--f-k-smk-x);"><path fill-rule="evenodd" d="m15.1 1.58-4.13 8.88-9.86 1.27a1 1 0 0 0-.54 1.74l7.3 6.57-1.97 9.85a1 1 0 0 0 1.48 1.06l8.62-5 8.63 5a1 1 0 0 0 1.48-1.06l-1.97-9.85 7.3-6.57a1 1 0 0 0-.55-1.73l-9.86-1.28-4.12-8.88a1 1 0 0 0-1.82 0z"></path></svg>
		                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 9px; width: 9px; fill: var(--f-k-smk-x);"><path fill-rule="evenodd" d="m15.1 1.58-4.13 8.88-9.86 1.27a1 1 0 0 0-.54 1.74l7.3 6.57-1.97 9.85a1 1 0 0 0 1.48 1.06l8.62-5 8.63 5a1 1 0 0 0 1.48-1.06l-1.97-9.85 7.3-6.57a1 1 0 0 0-.55-1.73l-9.86-1.28-4.12-8.88a1 1 0 0 0-1.82 0z"></path></svg>
		                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 9px; width: 9px; fill: var(--f-k-smk-x);"><path fill-rule="evenodd" d="m15.1 1.58-4.13 8.88-9.86 1.27a1 1 0 0 0-.54 1.74l7.3 6.57-1.97 9.85a1 1 0 0 0 1.48 1.06l8.62-5 8.63 5a1 1 0 0 0 1.48-1.06l-1.97-9.85 7.3-6.57a1 1 0 0 0-.55-1.73l-9.86-1.28-4.12-8.88a1 1 0 0 0-1.82 0z"></path></svg>
		                     </div>
		                        · 2023년 11월
		                  </div>
		                     
		                     
		                  <div>
		                  정말 멋져요!!! 지상낙원!!! 아주 좋은 호스트에 대해 뭐라고 말할 수 있을까요!! 망설이지 마세요. 우리는 매력적이었습니다!!
		                  </div>
		               </div> -->
		               
		            </div>
		            
		         </div><!-- pink끝 -->
		      </div>
		      
		</div><!-- 리뷰팝업끝 -->
	</body>
</html>