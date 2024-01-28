<%@page import="vo.ExpCollectionVo"%>
<%@page import="vo.ExpReviewVo"%>
<%@page import="dao.CollectionDao"%>
<%@page import="vo.ExperienceVo"%>
<%@page import="dao.ExperienceDao"%>
<%@page import="vo.ExperienceVo"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%
	// Experience
	ExperienceDao experienceDao = new ExperienceDao();
	ArrayList<ExperienceVo> listExpVo1 = experienceDao.getExpList(1);
	ArrayList<ExperienceVo> listExpVo2 = experienceDao.getExpList(2);
	ArrayList<ExperienceVo> listExpVo3 = experienceDao.getExpList(3);
	ArrayList<ExperienceVo> listExpVo4 = experienceDao.getExpList(4);
	ArrayList<ExperienceVo> listExpVo5 = experienceDao.getExpList(5);
	ArrayList<ExperienceVo> listExpVo6 = experienceDao.getExpList(6);
	
	// Collection
	CollectionDao collectionDao = new CollectionDao();
	ArrayList<ExpCollectionVo> listColVo = collectionDao.getExpCollectionList();
	
	// Review
	// ArrayList<ExpReviewVo> listExpReview = experienceDao.get
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>온라인 체험</title>
		<link href='http://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" href="slick/slick.css"/>
		<link rel="stylesheet" href="slick/slick-theme.css"/>
		<link rel="stylesheet" href="CSS/ExpMain.css"/>
		<script src="JS/jquery-3.7.1.min.js"></script>
		<script src="JS/ExpMain.js"></script>
		<script>
			
			
			$(function() {
				$("#collection").slick({
					slidesToShow: 2.9,
					infinite: false,
					prevArrow: $("#top_point > #tp_left"),
					nextArrow: $("#top_point > #tp_right")
				});
				
				$("#cate1_expz").slick({
					slidesToShow: 6,
					slidesToScroll: 6,
					infinite: false,
					prevArrow: $("#cate1_point > #cate1_left"),
					nextArrow: $("#cate1_point > #cate1_right"),
				});
				
				$("#cate2_expz").slick({
					slidesToShow: 6,
					slidesToScroll: 6,
					infinite: false,
					prevArrow: $("#cate2_point > #cate2_left"),
					nextArrow: $("#cate2_point > #cate2_right"),
				});
				
				$("#cate3_expz").slick({
					slidesToShow: 6,
					slidesToScroll: 6,
					infinite: false,
					prevArrow: $("#cate3_point > #cate3_left"),
					nextArrow: $("#cate3_point > #cate3_right"),
				});
				
				$("#cate4_expz").slick({
					slidesToShow: 6,
					slidesToScroll: 6,
					infinite: false,
					prevArrow: $("#cate4_point > #cate4_left"),
					nextArrow: $("#cate4_point > #cate4_right"),
				});
				/* 
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
				*/
			})
		</script>
		
	</head>
	<body>
		<div id="header">
			<div>
				<svg width="102" height="32" style="display: block; color: #FF385C"><path d="M29.3864 22.7101C29.2429 22.3073 29.0752 21.9176 28.9157 21.5565C28.6701 21.0011 28.4129 20.4446 28.1641 19.9067L28.1444 19.864C25.9255 15.0589 23.5439 10.1881 21.0659 5.38701L20.9607 5.18316C20.7079 4.69289 20.4466 4.18596 20.1784 3.68786C19.8604 3.0575 19.4745 2.4636 19.0276 1.91668C18.5245 1.31651 17.8956 0.833822 17.1853 0.502654C16.475 0.171486 15.7005 -9.83959e-05 14.9165 4.23317e-08C14.1325 9.84805e-05 13.3581 0.171877 12.6478 0.503224C11.9376 0.834571 11.3088 1.31742 10.8059 1.91771C10.3595 2.46476 9.97383 3.05853 9.65572 3.68858C9.38521 4.19115 9.12145 4.70278 8.8664 5.19757L8.76872 5.38696C6.29061 10.1884 3.90903 15.0592 1.69015 19.8639L1.65782 19.9338C1.41334 20.463 1.16057 21.0102 0.919073 21.5563C0.75949 21.9171 0.592009 22.3065 0.448355 22.7103C0.0369063 23.8104 -0.094204 24.9953 0.0668098 26.1585C0.237562 27.334 0.713008 28.4447 1.44606 29.3804C2.17911 30.3161 3.14434 31.0444 4.24614 31.4932C5.07835 31.8299 5.96818 32.002 6.86616 32C7.14824 31.9999 7.43008 31.9835 7.71027 31.9509C8.846 31.8062 9.94136 31.4366 10.9321 30.8639C12.2317 30.1338 13.5152 29.0638 14.9173 27.5348C16.3194 29.0638 17.6029 30.1338 18.9025 30.8639C19.8932 31.4367 20.9886 31.8062 22.1243 31.9509C22.4045 31.9835 22.6864 31.9999 22.9685 32C23.8664 32.002 24.7561 31.8299 25.5883 31.4932C26.6901 31.0444 27.6554 30.3161 28.3885 29.3804C29.1216 28.4447 29.5971 27.3341 29.7679 26.1585C29.9287 24.9952 29.7976 23.8103 29.3864 22.7101ZM14.9173 24.377C13.1816 22.1769 12.0678 20.1338 11.677 18.421C11.5169 17.7792 11.4791 17.1131 11.5656 16.4573C11.6339 15.9766 11.8105 15.5176 12.0821 15.1148C12.4163 14.6814 12.8458 14.3304 13.3374 14.0889C13.829 13.8475 14.3696 13.7219 14.9175 13.7219C15.4655 13.722 16.006 13.8476 16.4976 14.0892C16.9892 14.3307 17.4186 14.6817 17.7528 15.1151C18.0244 15.5181 18.201 15.9771 18.2693 16.4579C18.3556 17.114 18.3177 17.7803 18.1573 18.4223C17.7661 20.1349 16.6526 22.1774 14.9173 24.377ZM27.7406 25.8689C27.6212 26.6908 27.2887 27.4674 26.7762 28.1216C26.2636 28.7759 25.5887 29.2852 24.8183 29.599C24.0393 29.9111 23.1939 30.0217 22.3607 29.9205C21.4946 29.8089 20.6599 29.5239 19.9069 29.0824C18.7501 28.4325 17.5791 27.4348 16.2614 25.9712C18.3591 23.3846 19.669 21.0005 20.154 18.877C20.3723 17.984 20.4196 17.0579 20.2935 16.1475C20.1791 15.3632 19.8879 14.615 19.4419 13.9593C18.9194 13.2519 18.2378 12.6768 17.452 12.2805C16.6661 11.8842 15.798 11.6777 14.9175 11.6777C14.0371 11.6777 13.1689 11.8841 12.383 12.2803C11.5971 12.6765 10.9155 13.2515 10.393 13.9589C9.94707 14.6144 9.65591 15.3624 9.5414 16.1465C9.41524 17.0566 9.4623 17.9822 9.68011 18.8749C10.1648 20.9993 11.4748 23.384 13.5732 25.9714C12.2555 27.4348 11.0845 28.4325 9.92769 29.0825C9.17468 29.5239 8.34007 29.809 7.47395 29.9205C6.64065 30.0217 5.79525 29.9111 5.0162 29.599C4.24581 29.2852 3.57092 28.7759 3.05838 28.1217C2.54585 27.4674 2.21345 26.6908 2.09411 25.8689C1.97932 25.0334 2.07701 24.1825 2.37818 23.3946C2.49266 23.0728 2.62663 22.757 2.7926 22.3818C3.0274 21.851 3.27657 21.3115 3.51759 20.7898L3.54996 20.7197C5.75643 15.9419 8.12481 11.0982 10.5894 6.32294L10.6875 6.13283C10.9384 5.64601 11.1979 5.14267 11.4597 4.6563C11.7101 4.15501 12.0132 3.68171 12.3639 3.2444C12.6746 2.86903 13.0646 2.56681 13.5059 2.35934C13.9473 2.15186 14.4291 2.04426 14.9169 2.04422C15.4047 2.04418 15.8866 2.15171 16.3279 2.35911C16.7693 2.56651 17.1593 2.86867 17.4701 3.24399C17.821 3.68097 18.1242 4.15411 18.3744 4.65538C18.6338 5.13742 18.891 5.63623 19.1398 6.11858L19.2452 6.32315C21.7097 11.0979 24.078 15.9415 26.2847 20.7201L26.3046 20.7631C26.5498 21.2936 26.8033 21.8419 27.042 22.382C27.2082 22.7577 27.3424 23.0738 27.4566 23.3944C27.7576 24.1824 27.8553 25.0333 27.7406 25.8689Z" fill="currentcolor"></path><path d="M41.6847 24.1196C40.8856 24.1196 40.1505 23.9594 39.4792 23.6391C38.808 23.3188 38.2327 22.8703 37.7212 22.2937C37.2098 21.7172 36.8263 21.0445 36.5386 20.3078C36.2509 19.539 36.123 18.7062 36.123 17.8093C36.123 16.9124 36.2829 16.0475 36.5705 15.2787C36.8582 14.51 37.2737 13.8373 37.7852 13.2287C38.2966 12.6521 38.9039 12.1716 39.6071 11.8513C40.3103 11.531 41.0455 11.3708 41.8765 11.3708C42.6756 11.3708 43.3788 11.531 44.0181 11.8833C44.6574 12.2037 45.1688 12.6841 45.5843 13.2927L45.6802 11.7232H48.6209V23.7992H45.6802L45.5843 22.0375C45.1688 22.6781 44.6254 23.1906 43.9222 23.575C43.2829 23.9274 42.5158 24.1196 41.6847 24.1196ZM42.4519 21.2367C43.0272 21.2367 43.5386 21.0765 44.0181 20.7882C44.4656 20.4679 44.8172 20.0515 45.1049 19.539C45.3606 19.0265 45.4884 18.4179 45.4884 17.7452C45.4884 17.0725 45.3606 16.4639 45.1049 15.9514C44.8492 15.4389 44.4656 15.0225 44.0181 14.7022C43.5706 14.3818 43.0272 14.2537 42.4519 14.2537C41.8765 14.2537 41.3651 14.4139 40.8856 14.7022C40.4382 15.0225 40.0866 15.4389 39.7989 15.9514C39.5432 16.4639 39.4153 17.0725 39.4153 17.7452C39.4153 18.4179 39.5432 19.0265 39.7989 19.539C40.0546 20.0515 40.4382 20.4679 40.8856 20.7882C41.3651 21.0765 41.8765 21.2367 42.4519 21.2367ZM53.6392 8.4559C53.6392 8.80825 53.5753 9.12858 53.4154 9.38483C53.2556 9.64109 53.0319 9.86531 52.7442 10.0255C52.4565 10.1856 52.1369 10.2497 51.8173 10.2497C51.4976 10.2497 51.178 10.1856 50.8903 10.0255C50.6026 9.86531 50.3789 9.64109 50.2191 9.38483C50.0592 9.09654 49.9953 8.80825 49.9953 8.4559C49.9953 8.10355 50.0592 7.78323 50.2191 7.52697C50.3789 7.23868 50.6026 7.04649 50.8903 6.88633C51.178 6.72617 51.4976 6.66211 51.8173 6.66211C52.1369 6.66211 52.4565 6.72617 52.7442 6.88633C53.0319 7.04649 53.2556 7.27072 53.4154 7.52697C53.5433 7.78323 53.6392 8.07152 53.6392 8.4559ZM50.2191 23.7672V11.6911H53.4154V23.7672H50.2191V23.7672ZM61.9498 14.8623V14.8943C61.79 14.8303 61.5982 14.7982 61.4383 14.7662C61.2466 14.7342 61.0867 14.7342 60.895 14.7342C60 14.7342 59.3287 14.9904 58.8812 15.535C58.4018 16.0795 58.178 16.8483 58.178 17.8413V23.7672H54.9817V11.6911H57.9223L58.0182 13.517C58.3379 12.8763 58.7214 12.3958 59.2648 12.0435C59.7762 11.6911 60.3835 11.531 61.0867 11.531C61.3105 11.531 61.5342 11.563 61.726 11.595C61.8219 11.6271 61.8858 11.6271 61.9498 11.6591V14.8623ZM63.2283 23.7672V6.72617H66.4247V13.2287C66.8722 12.6521 67.3836 12.2036 68.0229 11.8513C68.6622 11.531 69.3654 11.3388 70.1645 11.3388C70.9635 11.3388 71.6987 11.4989 72.3699 11.8193C73.0412 12.1396 73.6165 12.588 74.128 13.1646C74.6394 13.7412 75.0229 14.4139 75.3106 15.1506C75.5983 15.9194 75.7261 16.7522 75.7261 17.6491C75.7261 18.546 75.5663 19.4109 75.2787 20.1796C74.991 20.9484 74.5755 21.6211 74.064 22.2297C73.5526 22.8063 72.9453 23.2867 72.2421 23.6071C71.5389 23.9274 70.8037 24.0875 69.9727 24.0875C69.1736 24.0875 68.4704 23.9274 67.8311 23.575C67.1918 23.2547 66.6804 22.7742 66.2649 22.1656L66.169 23.7352L63.2283 23.7672ZM69.3973 21.2367C69.9727 21.2367 70.4841 21.0765 70.9635 20.7882C71.411 20.4679 71.7626 20.0515 72.0503 19.539C72.306 19.0265 72.4339 18.4179 72.4339 17.7452C72.4339 17.0725 72.306 16.4639 72.0503 15.9514C71.7626 15.4389 71.411 15.0225 70.9635 14.7022C70.5161 14.3818 69.9727 14.2537 69.3973 14.2537C68.822 14.2537 68.3106 14.4139 67.8311 14.7022C67.3836 15.0225 67.032 15.4389 66.7443 15.9514C66.4886 16.4639 66.3608 17.0725 66.3608 17.7452C66.3608 18.4179 66.4886 19.0265 66.7443 19.539C67 20.0515 67.3836 20.4679 67.8311 20.7882C68.3106 21.0765 68.822 21.2367 69.3973 21.2367ZM76.9408 23.7672V11.6911H79.8814L79.9773 13.2607C80.3289 12.6841 80.8084 12.2357 81.4157 11.8833C82.023 11.531 82.7262 11.3708 83.5253 11.3708C84.4203 11.3708 85.1874 11.595 85.8267 12.0115C86.4979 12.4279 87.0094 13.0365 87.361 13.8053C87.7126 14.574 87.9043 15.5029 87.9043 16.56V23.7992H84.708V16.9764C84.708 16.1436 84.5162 15.4709 84.1326 14.9904C83.7491 14.51 83.2376 14.2537 82.5664 14.2537C82.0869 14.2537 81.6714 14.3498 81.2878 14.574C80.9362 14.7982 80.6486 15.0865 80.4248 15.503C80.2011 15.8873 80.1052 16.3678 80.1052 16.8483V23.7672H76.9408V23.7672ZM89.5025 23.7672V6.72617H92.6989V13.2287C93.1464 12.6521 93.6578 12.2036 94.2971 11.8513C94.9364 11.531 95.6396 11.3388 96.4387 11.3388C97.2378 11.3388 97.9729 11.4989 98.6442 11.8193C99.3154 12.1396 99.8907 12.588 100.402 13.1646C100.914 13.7412 101.297 14.4139 101.585 15.1506C101.873 15.9194 102 16.7522 102 17.6491C102 18.546 101.841 19.4109 101.553 20.1796C101.265 20.9484 100.85 21.6211 100.338 22.2297C99.8268 22.8063 99.2195 23.2867 98.5163 23.6071C97.8131 23.9274 97.0779 24.0875 96.2469 24.0875C95.4478 24.0875 94.7446 23.9274 94.1053 23.575C93.466 23.2547 92.9546 22.7742 92.5391 22.1656L92.4432 23.7352L89.5025 23.7672ZM95.7035 21.2367C96.2788 21.2367 96.7903 21.0765 97.2697 20.7882C97.7172 20.4679 98.0688 20.0515 98.3565 19.539C98.6122 19.0265 98.7401 18.4179 98.7401 17.7452C98.7401 17.0725 98.6122 16.4639 98.3565 15.9514C98.1008 15.4389 97.7172 15.0225 97.2697 14.7022C96.8222 14.3818 96.2788 14.2537 95.7035 14.2537C95.1281 14.2537 94.6167 14.4139 94.1373 14.7022C93.6898 15.0225 93.3382 15.4389 93.0505 15.9514C92.7628 16.4639 92.6669 17.0725 92.6669 17.7452C92.6669 18.4179 92.7948 19.0265 93.0505 19.539C93.3062 20.0515 93.6898 20.4679 94.1373 20.7882C94.6167 21.0765 95.0962 21.2367 95.7035 21.2367Z" fill="currentcolor"></path></svg>
				<div id="header_right">
					<b>당신의 공간을 에어비앤비하세요</b>
					<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 16px; width: 16px; fill: currentcolor;"><path d="M8 .25a7.77 7.77 0 0 1 7.75 7.78 7.75 7.75 0 0 1-7.52 7.72h-.25A7.75 7.75 0 0 1 .25 8.24v-.25A7.75 7.75 0 0 1 8 .25zm1.95 8.5h-3.9c.15 2.9 1.17 5.34 1.88 5.5H8c.68 0 1.72-2.37 1.93-5.23zm4.26 0h-2.76c-.09 1.96-.53 3.78-1.18 5.08A6.26 6.26 0 0 0 14.17 9zm-9.67 0H1.8a6.26 6.26 0 0 0 3.94 5.08 12.59 12.59 0 0 1-1.16-4.7l-.03-.38zm1.2-6.58-.12.05a6.26 6.26 0 0 0-3.83 5.03h2.75c.09-1.83.48-3.54 1.06-4.81zm2.25-.42c-.7 0-1.78 2.51-1.94 5.5h3.9c-.15-2.9-1.18-5.34-1.89-5.5h-.07zm2.28.43.03.05a12.95 12.95 0 0 1 1.15 5.02h2.75a6.28 6.28 0 0 0-3.93-5.07z"></path></svg>
					<div id="my_page">
						<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-hidden="true" role="presentation" focusable="false" style="display: block; fill: none; height: 16px; width: 16px; stroke: currentcolor; stroke-width: 3; overflow: visible;"><g fill="none"><path d="M2 16h28M2 24h28M2 8h28"></path></g></svg>
						<img id="profile" src="https://a0.muscache.com/im/Portrait/Avatars/messaging/b3e03835-ade9-4eb7-a0bb-2466ab9a534d.jpg?im_policy=medq_w_text&im_t=%EC%8A%B9&im_w=240&im_f=apple-sd-gothic-medium.ttf&im_c=ffffff"/>
					</div>
				</div>
			</div>
		</div>
		
		<div id="content">
			<div id="content_inner">
				<div id="div_top">
					<div id="title">
						<div id="week_new" class="fl"><b>이번 주 신규 등록 체험</b></div>
						<div id="top_point" class="fr">
							<div id="tp_left" class="fl">
								<img class="pl" src="project_image/pointLeft.png">
							</div>
							<div id="tp_right" class="fr">
								<img class="pr" src="project_image/pointRight.png">
							</div>
						</div>
					</div>
<style>
	.slick-prev {
		position: absolute;
		left: 10px !important;
		/*opacity: 1 !important;*/
		z-index: 1;
	}
	.slick-next {
		right:0 !important;
		/*opacity: 1 !important;*/
		z-index: 1;
	}
	.slick-prev:before, .slick-next:before {
		color: red;		
	}
	.slick-disabled {
		opacity: 0.25 !important;
	}

</style>

					<div id="collection">
						<% for(ExpCollectionVo vo : listColVo) { %>
							<a class="col_cate" href="Collection?collection_idx=<%= vo.getCollectionIdx() %>">
								<img class="col_img" src="<%= vo.getImg() %>"/>
								<p class="col_txt1">컬렉션</p>
								<b class="col_txt2"><%= vo.getCollectionName() %></b>
								<div class="col_all_view"><b class="cav_txt" style="color: #222;">모두 보기</b></div>
							</a>
						<% } %>
					</div>
				</div>
				
				<div id="filter">
					<span id="f_inner_left">
						<a class="filter_icon_l">날짜</a>
						<a class="filter_icon_l">일행당 인원 수</a>
						<a class="filter_icon_l">필터 추가하기</a>
					</span>
					<span id="f_inner_right">
						<a class="filter_icon_r">단체로 즐기기에 적합</a>
						<a class="filter_icon_r">가족이 즐기기에 적합</a>
						<a class="filter_icon_r">동물</a>
						<a class="filter_icon_r">예술 및 글쓰기</a>
						<a class="filter_icon_r">베이킹</a>
						<a class="filter_icon_r">쿠킹</a>
						<a class="filter_icon_r">댄스</a>
						<a class="filter_icon_r">음주</a>
						<a class="filter_icon_r">엔터테인먼트</a>
						<a class="filter_icon_r">피트니스</a>
						<a class="filter_icon_r">역사문화</a>
						<a class="filter_icon_r">마술</a>
					</span>
				</div>
				<div class="category">
					<div class="cate_inner">
						<div class="inner">
							<div class="title">
								<b>전 세계 현지 호스트의 도움을 받아 여행을 계획해보세요</b>
								<div id="cate1_point" class="fr">
									<div id="cate1_left" class="fl">
										<img class="pl" src="project_image/pointLeft.png">
									</div>
									<div id="cate1_right" class="fr">
										<img class="pr" src="project_image/pointRight.png">
									</div>
								</div>
								<a class="fr exp_more_view" href="#">보기(12개)</a>
								<div style="clear:both;"></div>
							</div>
							<div id="cate1_expz">
								<%
								for(ExperienceVo vo : listExpVo1) {
								%>
									<a class="exp" exp_idx="<%=vo.getExpIdx()%>" href="ExpInfo?exp_idx=<%=vo.getExpIdx()%>" target="_blank">
										<img class="exp_img" src="<%=vo.getExpImg1()%>"/>
										<svg class="heart_empty" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-hidden="true" role="presentation" focusable="false" style="display: block;fill: rgba(0, 0, 0, 0.5);height: 24px;width: 24px; overflow: visible;"><path d="M16 28c7-4.73 14-10 14-17a6.98 6.98 0 0 0-7-7c-1.8 0-3.58.68-4.95 2.05L16 8.1l-2.05-2.05a6.98 6.98 0 0 0-9.9 0A6.98 6.98 0 0 0 2 11c0 7 7 12.27 14 17z"></path></svg>
										<img class="star" src="project_image/star.png"/>
										<span class="score"><%=vo.getScore() %></span>
										<span class="rv_loc"><%=vo.getExpLocation()%></span><br/>
										<span class="exp_name"><%=vo.getExpName()%></span><br>
										<b class="price">최저가 ₩<%=new DecimalFormat("###,###").format(vo.getExpPrice())%></b>
										<span class="member">/인</span>
									</a>						
								<% } %>
							</div>
						</div>
					</div>
				</div>
				
				<div class="category">
					<div class="cate_inner">
						<div class="inner">
							<div class="title">
								<b>베스트셀러 체험</b>
								<div id="cate2_point" class="fr">
									<div id="cate2_left" class="fl">
										<img class="pl" src="project_image/pointLeft.png">
									</div>
									<div id="cate2_right" class="fr">
										<img class="pr" src="project_image/pointRight.png">
									</div>
								</div>
								<a class="fr exp_more_view" href="#">보기(12개)</a>
								<div style="clear:both;"></div>
							</div>
							<div id="cate2_expz">
								<%
								for(ExperienceVo vo : listExpVo2) {
								%>
									<a class="exp" exp_idx="<%=vo.getExpIdx()%>" href="ExpInfo?exp_idx=<%=vo.getExpIdx()%>" target="_blank">
										<img class="exp_img" src="<%=vo.getExpImg1()%>"/>
										<svg class="heart_empty" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-hidden="true" role="presentation" focusable="false" style="display: block;fill: rgba(0, 0, 0, 0.5);height: 24px;width: 24px; overflow: visible;"><path d="M16 28c7-4.73 14-10 14-17a6.98 6.98 0 0 0-7-7c-1.8 0-3.58.68-4.95 2.05L16 8.1l-2.05-2.05a6.98 6.98 0 0 0-9.9 0A6.98 6.98 0 0 0 2 11c0 7 7 12.27 14 17z"></path></svg>
										<img class="star" src="project_image/star.png"/>
										<span class="score"><%=vo.getScore() %></span>
										<span class="rv_loc"><%=vo.getExpLocation()%></span><br/>
										<span class="exp_name"><%=vo.getExpName()%></span><br>
										<b class="price">최저가 ₩<%=new DecimalFormat("###,###").format(vo.getExpPrice())%></b>
										<span class="member">/인</span>
									</a>						
								<% } %>
							</div>
						</div>
					</div>
				</div>
				<div class="category">
					<div class="cate_inner">
						<div class="inner">
							<div class="title">
								<b>이번 주말에 즐길 수 있는 체험</b>
								<div id="cate3_point" class="fr">
									<div id="cate3_left" class="fl">
										<img class="pl" src="project_image/pointLeft.png">
									</div>
									<div id="cate3_right" class="fr">
										<img class="pr" src="project_image/pointRight.png">
									</div>
								</div>
								<a class="fr exp_more_view" href="#">보기(12개)</a>
								<div style="clear:both;"></div>
							</div>
							<div id="cate3_expz">
								<%
								for(ExperienceVo vo : listExpVo3) {
								%>
									<a class="exp" exp_idx="<%=vo.getExpIdx()%>" href="ExpInfo?exp_idx=<%=vo.getExpIdx()%>" target="_blank">
										<img class="exp_img" src="<%=vo.getExpImg1()%>"/>
										<svg class="heart_empty" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-hidden="true" role="presentation" focusable="false" style="display: block;fill: rgba(0, 0, 0, 0.5);height: 24px;width: 24px; overflow: visible;"><path d="M16 28c7-4.73 14-10 14-17a6.98 6.98 0 0 0-7-7c-1.8 0-3.58.68-4.95 2.05L16 8.1l-2.05-2.05a6.98 6.98 0 0 0-9.9 0A6.98 6.98 0 0 0 2 11c0 7 7 12.27 14 17z"></path></svg>
										<img class="star" src="project_image/star.png"/>
										<span class="score"><%=vo.getScore() %></span>
										<span class="rv_loc"><%=vo.getExpLocation()%></span><br/>
										<span class="exp_name"><%=vo.getExpName()%></span><br>
										<b class="price">최저가 ₩<%=new DecimalFormat("###,###").format(vo.getExpPrice())%></b>
										<span class="member">/인</span>
									</a>						
								<% } %>
							</div>
						</div>
					</div>
				</div>
				<div class="category">
					<div class="cate_inner">
						<div class="inner">
							<div class="title">
								<b>단체로 즐기기에 적합</b>
								<div id="cate4_point" class="fr">
									<div id="cate4_left" class="fl">
										<img class="pl" src="project_image/pointLeft.png">
									</div>
									<div id="cate4_right" class="fr">
										<img class="pr" src="project_image/pointRight.png">
									</div>
								</div>
								<a class="fr exp_more_view" href="#">보기(12개)</a>
								<div style="clear:both;"></div>
							</div>
							<div id="cate4_expz">
								<%
								for(ExperienceVo vo : listExpVo4) {
								%>
									<a class="exp" exp_idx="<%=vo.getExpIdx()%>" href="ExpInfo?exp_idx=<%=vo.getExpIdx()%>" target="_blank">
										<img class="exp_img" src="<%=vo.getExpImg1()%>"/>
										<svg class="heart_empty" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-hidden="true" role="presentation" focusable="false" style="display: block;fill: rgba(0, 0, 0, 0.5);height: 24px;width: 24px; overflow: visible;"><path d="M16 28c7-4.73 14-10 14-17a6.98 6.98 0 0 0-7-7c-1.8 0-3.58.68-4.95 2.05L16 8.1l-2.05-2.05a6.98 6.98 0 0 0-9.9 0A6.98 6.98 0 0 0 2 11c0 7 7 12.27 14 17z"></path></svg>
										<img class="star" src="project_image/star.png"/>
										<span class="score"><%=vo.getScore() %></span>
										<span class="rv_loc"><%=vo.getExpLocation()%></span><br/>
										<span class="exp_name"><%=vo.getExpName()%></span><br>
										<b class="price">최저가 ₩<%=new DecimalFormat("###,###").format(vo.getExpPrice())%></b>
										<span class="member">/인</span>
									</a>						
								<% } %>
							</div>
						</div>
					</div>
				</div>
				
				<div id="more_experience">
					<div class="category">
						<div class="cate_inner">
							<div class="inner">
								<div class="title">
									<b>동물과 함께하는 체험</b>
									<div id="cate5_point" class="fr">
										<div id="cate5_left" class="fl">
											<img class="pl" src="project_image/pointLeft.png">
										</div>
										<div id="cate5_right" class="fr">
											<img class="pr" src="project_image/pointRight.png">
										</div>
									</div>
									<a class="fr exp_more_view" href="#">보기(12개)</a>
									<div style="clear:both;"></div>
								</div>
								<div id="cate5_expz">
									<%
									for(ExperienceVo vo : listExpVo5) {
									%>
										<a class="exp" exp_idx="<%=vo.getExpIdx()%>" href="ExpInfo?exp_idx=<%=vo.getExpIdx()%>" target="_blank">
											<img class="exp_img" src="<%=vo.getExpImg1()%>"/>
											<svg class="heart_empty" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-hidden="true" role="presentation" focusable="false" style="display: block;fill: rgba(0, 0, 0, 0.5);height: 24px;width: 24px; overflow: visible;"><path d="M16 28c7-4.73 14-10 14-17a6.98 6.98 0 0 0-7-7c-1.8 0-3.58.68-4.95 2.05L16 8.1l-2.05-2.05a6.98 6.98 0 0 0-9.9 0A6.98 6.98 0 0 0 2 11c0 7 7 12.27 14 17z"></path></svg>
											<img class="star" src="project_image/star.png"/>
											<span class="score"><%=vo.getScore() %></span>
											<span class="rv_loc"><%=vo.getExpLocation()%></span><br/>
											<span class="exp_name"><%=vo.getExpName()%></span><br>
											<b class="price">최저가 ₩<%=new DecimalFormat("###,###").format(vo.getExpPrice())%></b>
											<span class="member">/인</span>
										</a>						
									<% } %>
								</div>
							</div>
						</div>
					</div>
					<div class="category">
						<div class="cate_inner">
							<div class="inner">
								<div class="title">
									<b>새로운 친구를 사귀기 좋은 체험</b>
									<div id="cate6_point" class="fr">
										<div id="cate6_left" class="fl">
											<img class="pl" src="project_image/pointLeft.png">
										</div>
										<div id="cate6_right" class="fr">
											<img class="pr" src="project_image/pointRight.png">
										</div>
									</div>
									<a class="fr exp_more_view" href="#">보기(12개)</a>
									<div style="clear:both;"></div>
								</div>
								<div id="cate6_expz">
									<%
									for(ExperienceVo vo : listExpVo6) {
									%>
										<a class="exp" exp_idx="<%=vo.getExpIdx()%>" href="ExpInfo?exp_idx=<%=vo.getExpIdx()%>" target="_blank">
											<img class="exp_img" src="<%=vo.getExpImg1()%>"/>
											<svg class="heart_empty" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-hidden="true" role="presentation" focusable="false" style="display: block;fill: rgba(0, 0, 0, 0.5);height: 24px;width: 24px; overflow: visible;"><path d="M16 28c7-4.73 14-10 14-17a6.98 6.98 0 0 0-7-7c-1.8 0-3.58.68-4.95 2.05L16 8.1l-2.05-2.05a6.98 6.98 0 0 0-9.9 0A6.98 6.98 0 0 0 2 11c0 7 7 12.27 14 17z"></path></svg>
											<img class="star" src="project_image/star.png"/>
											<span class="score"><%=vo.getScore() %></span>
											<span class="rv_loc"><%=vo.getExpLocation()%></span><br/>
											<span class="exp_name"><%=vo.getExpName()%></span><br>
											<b class="price">최저가 ₩<%=new DecimalFormat("###,###").format(vo.getExpPrice())%></b>
											<span class="member">/인</span>
										</a>						
									<% } %>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<div id="more_view">
					<div id="mv">
						<b>더 보기</b>
					</div>
				</div>
			</div>
		</div>
		
		<div id="footer">
			<div id="footer_inner">
				<div id="footer_inner_top">
					<div class="fl footer_menu_box">
						<div class="footer_title"><b>에어비앤비 지원</b></div>
						<div class="footer_menu">도움말 센터</div>
						<div class="footer_menu">안전 문제 관련 도움받기</div>
						<div class="footer_menu">에어커버</div>
						<div class="footer_menu">차별 반대</div>
						<div class="footer_menu">장애인 지원</div>
						<div class="footer_menu">예약 취소 옵션</div>
						<div class="footer_menu">이웃 민원 신고</div>
					</div>
					<div class="fl footer_menu_box">
						<div class="footer_title"><b>호스팅</b></div>
						<div class="footer_menu">당신의 공간을 에어비앤비하세요</div>
						<div class="footer_menu">호스트를 위한 에어커버</div>
						<div class="footer_menu">호스팅 자료</div>
						<div class="footer_menu">커뮤니티 포럼</div>
						<div class="footer_menu">책임감 있는 호스팅</div>
					</div>
					<div class="fl footer_menu_box">
						<div class="footer_title"><b>에어비앤비</b></div>
						<div class="footer_menu">뉴스룸</div>
						<div class="footer_menu">새로운 기능</div>
						<div class="footer_menu">채용정보</div>
						<div class="footer_menu">투자자 정보</div>
						<div class="footer_menu">Airbnb 긴급 숙소</div>
					</div>
					<div style="clear:both;"></div>
				</div>
				<div id="footer_inner_bottom">
					<div id="fib_top">
						<div class="fl footer_text">&copy;&nbsp;2023 Airbnb, Inc.</div>
						<div class="fl footer_text">&middot;</div>
						<div class="fl footer_text">개인정보 처리방침</div>
						<div class="fl footer_text">&middot;</div>
						<div class="fl footer_text">이용약관</div>
						<div class="fl footer_text">&middot;</div>
						<div class="fl footer_text">사이트맵</div>
						<div class="fl footer_text">&middot;</div>
						<div class="fl footer_text">한국의 변경된 환불 정책</div>
						<div class="fl footer_text">&middot;</div>
						<div class="fl footer_text">회사 세부정보</div>
						
						<svg class="fr fib_icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-label="네이버 포스트로 이동하기" role="img" focusable="false" style="display: block; height: 18px; width: 18px; fill: currentcolor;"><path fill="#222" d="M30 0a2 2 0 0 1 2 2v28a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2a2 2 0 0 1 2-2z"></path><path fill="#fff" d="M10 0h12.81v16.78l-5.88 10.13a.6.6 0 0 1-.99.09l-.06-.1L10 16.79z"></path><path fill="#222" d="M12.66 4.64v7.5h7.5v-7.5zm5.87 5.69h-1.5l-1.28-1.96v1.96h-1.47V6.45h1.43l1.32 1.95V6.45h1.5z"></path></svg>
						<svg class="fr fib_icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-label="네이버 블로그로 이동하기" role="img" focusable="false" style="display: block; height: 18px; width: 18px; fill: currentcolor;"><path fill="#222" d="M30 0a2 2 0 0 1 2 2v28a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2a2 2 0 0 1 2-2z"></path><path fill="#fff" d="M23.92 6A4.1 4.1 0 0 1 28 9.88l.01.2v9.84A4.08 4.08 0 0 1 24.13 24h-5.86l-1.91 3.31a.45.45 0 0 1-.73.08l-.05-.08-1.91-3.3h-5.6a4.08 4.08 0 0 1-4.06-3.87l-.01-.2v-9.86a4.08 4.08 0 0 1 3.87-4.06l.2-.01zm-1.99 7.22c-1.13 0-2.05.95-2.05 2.12 0 1.16.92 2.1 2.05 2.1.47 0 .9-.15 1.24-.42v.59l-.03.08-.05.1c-.11.16-.36.39-.9.39v1.09h.22c.3-.02.87-.13 1.42-.61l.13-.13.05-.06.1-.12c.11-.17.26-.44.31-.76v-4.28h-1.25v.34a2.02 2.02 0 0 0-1.24-.43zM8.81 11.9H7.58v5.6H8.8v-.4c.35.3.79.5 1.27.5 1.1 0 2-.98 2-2.19s-.89-2.2-2-2.2c-.42 0-.81.15-1.14.4l-.13.1zm8.3 1.31c-1.23 0-2.23.98-2.23 2.2s1 2.18 2.23 2.18c1.22 0 2.22-.98 2.22-2.19s-1-2.19-2.22-2.19zm-3.35-.66a1.98 1.98 0 0 0-1.33-.75H12.22v1.12l.08.01c.14.04.44.16.56.5l.04.12v3.94h1.27v-3.97a2.12 2.12 0 0 0-.24-.7l-.08-.15zM9.84 14.3a1.1 1.1 0 1 1 0 2.19 1.1 1.1 0 0 1-1.12-1.1c0-.15.04-.3.1-.43.17-.4.56-.66 1.02-.66zm7.27.05c.58 0 1.06.47 1.06 1.04s-.47 1.05-1.06 1.05c-.6 0-1.07-.47-1.07-1.05s.48-1.04 1.07-1.04zm5.05-.11c.44 0 .83.24 1.01.6.08.15.12.3.12.48s-.05.34-.12.48c-.18.36-.57.6-1 .6a1.1 1.1 0 0 1-1.13-1.08c0-.6.5-1.08 1.12-1.08z"></path></svg>
						<svg class="fr fib_icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-label="인스타그램으로 이동하기" role="img" focusable="false" style="display: block; height: 18px; width: 18px; fill: currentcolor;"><path d="M30 0H2a2 2 0 0 0-2 2v28c0 1.1.9 2 2 2h28a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2z"></path><path fill="#fff" d="M15.71 4h1.25c2.4 0 2.85.02 3.99.07 1.28.06 2.15.26 2.91.56.79.3 1.46.72 2.13 1.38.6.6 1.08 1.33 1.38 2.13l.02.06c.28.74.48 1.58.54 2.8l.01.4c.05 1.02.06 1.63.06 4.4v.92c0 2.6-.02 3.05-.07 4.23a8.78 8.78 0 0 1-.56 2.91c-.3.8-.77 1.53-1.38 2.13a5.88 5.88 0 0 1-2.13 1.38l-.06.02c-.74.28-1.59.48-2.8.53l-.4.02c-1.02.05-1.63.06-4.4.06h-.92a73.1 73.1 0 0 1-4.23-.07 8.78 8.78 0 0 1-2.91-.56c-.8-.3-1.53-.77-2.13-1.38a5.88 5.88 0 0 1-1.38-2.13l-.02-.06a8.84 8.84 0 0 1-.54-2.8l-.01-.37A84.75 84.75 0 0 1 4 16.29v-1c0-2.62.02-3.06.07-4.24.06-1.26.26-2.13.55-2.88l.01-.03c.3-.8.77-1.53 1.38-2.13a5.88 5.88 0 0 1 2.13-1.38l.06-.02a8.84 8.84 0 0 1 2.8-.54l.37-.01C12.39 4 12.99 4 15.71 4zm.91 2.16h-1.24c-2.3 0-2.91.01-3.81.05l-.42.02c-1.17.05-1.8.25-2.23.41-.56.22-.96.48-1.38.9-.4.41-.67.8-.88 1.35l-.03.06a6.7 6.7 0 0 0-.4 2.2l-.02.45c-.04.9-.05 1.53-.05 3.94v1.08c0 2.64.02 3.05.07 4.23v.07c.06 1.13.25 1.74.42 2.16.21.56.47.96.9 1.38.4.4.8.67 1.34.88l.06.03a6.7 6.7 0 0 0 2.2.4l.45.02c.9.04 1.53.05 3.94.05h1.08c2.64 0 3.05-.02 4.23-.07h.07a6.51 6.51 0 0 0 2.16-.42c.52-.19.99-.5 1.38-.9.4-.4.67-.8.88-1.34l.03-.06a6.7 6.7 0 0 0 .4-2.2l.02-.45c.04-.9.05-1.53.05-3.94v-1.09c0-2.63-.02-3.04-.07-4.22v-.07a6.51 6.51 0 0 0-.42-2.16c-.19-.52-.5-.99-.9-1.38a3.7 3.7 0 0 0-1.34-.88l-.06-.03a6.63 6.63 0 0 0-2.16-.4l-.46-.02c-.9-.04-1.5-.05-3.8-.05zM16 9.84a6.16 6.16 0 1 1 0 12.32 6.16 6.16 0 0 1 0-12.32zM16 12a4 4 0 1 0 0 8 4 4 0 0 0 0-8zm6.4-3.85a1.44 1.44 0 1 1 0 2.88 1.44 1.44 0 0 1 0-2.88z"></path></svg>
						<svg class="fr fib_icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-label="트위터로 이동하기" role="img" focusable="false" style="display: block; height: 18px; width: 18px; fill: currentcolor;"><path d="M32 4v24a4 4 0 0 1-4 4H4a4 4 0 0 1-4-4V4a4 4 0 0 1 4-4h24a4 4 0 0 1 4 4z"></path><path fill="#fff" d="M18.66 7.99a4.5 4.5 0 0 0-2.28 4.88A12.31 12.31 0 0 1 7.3 8.25a4.25 4.25 0 0 0 1.38 5.88c-.69 0-1.38-.13-2-.44a4.54 4.54 0 0 0 3.5 4.31 4.3 4.3 0 0 1-2 .06 4.64 4.64 0 0 0 4.19 3.13A8.33 8.33 0 0 1 5.8 23a12.44 12.44 0 0 0 19.32-11.19A7.72 7.72 0 0 0 27.3 9.5a8.3 8.3 0 0 1-2.5.75 4.7 4.7 0 0 0 2-2.5c-.87.5-1.81.87-2.81 1.06a4.5 4.5 0 0 0-5.34-.83z"></path></svg>
						<svg class="fr fib_icon" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-label="페이스북으로 이동하기" role="img" focusable="false" style="display: block; height: 18px; width: 18px; fill: currentcolor;"><path d="M30 0a2 2 0 0 1 2 2v28a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2a2 2 0 0 1 2-2z"></path><path fill="#fff" d="M22.94 16H18.5v-3c0-1.27.62-2.5 2.6-2.5h2.02V6.56s-1.83-.31-3.58-.31c-3.65 0-6.04 2.21-6.04 6.22V16H9.44v4.62h4.06V32h5V20.62h3.73z"></path></svg>
						
						<div class="fr fib_txt1">KRW</div>
						<div class="fr won">₩</div>
						<div class="fr fib_txt2"><b>한국어&nbsp;(KR)</b></div>
						<svg class="fr" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 16px; width: 16px; fill: currentcolor;"><path d="M8 .25a7.77 7.77 0 0 1 7.75 7.78 7.75 7.75 0 0 1-7.52 7.72h-.25A7.75 7.75 0 0 1 .25 8.24v-.25A7.75 7.75 0 0 1 8 .25zm1.95 8.5h-3.9c.15 2.9 1.17 5.34 1.88 5.5H8c.68 0 1.72-2.37 1.93-5.23zm4.26 0h-2.76c-.09 1.96-.53 3.78-1.18 5.08A6.26 6.26 0 0 0 14.17 9zm-9.67 0H1.8a6.26 6.26 0 0 0 3.94 5.08 12.59 12.59 0 0 1-1.16-4.7l-.03-.38zm1.2-6.58-.12.05a6.26 6.26 0 0 0-3.83 5.03h2.75c.09-1.83.48-3.54 1.06-4.81zm2.25-.42c-.7 0-1.78 2.51-1.94 5.5h3.9c-.15-2.9-1.18-5.34-1.89-5.5h-.07zm2.28.43.03.05a12.95 12.95 0 0 1 1.15 5.02h2.75a6.28 6.28 0 0 0-3.93-5.07z"></path></svg>
						<div style="clear:both;"></div>
					</div>
					<div id="fib_bot">
						<div>웹사이트 제공자: Airbnb Ireland UC, private unlimited company, 8 Hanover Quay Dublin 2, D02 DP23 Ireland | 이사: Dermot Clarke, Killian Pattwell, Andrea Finnegan | VAT 번호: IE9827384L | 사업자 등록 번호: IE 511825 | 연락처: terms@airbnb.com, 웹사이트, 080-822-0230 | 호스팅 서비스 제공업체: 아마존 웹서비스 | 에어비앤비는 통신판매 중개자로 에어비앤비 플랫폼을 통하여 게스트와 호스트 사이에 이루어지는 통신판매의 당사자가 아닙니다. 에어비앤비 플랫폼을 통하여 예약된 숙소, 체험, 호스트 서비스에 관한 의무와 책임은 해당 서비스를 제공하는 호스트에게 있습니다.</div>
					</div>
				</div>
			</div>
		</div>
		
		<input type="hidden" id="heart_val"/>
		<div id="wish_outer"></div>
		<div id="wish" >
		   <div class="wish_header">
		      <button>
		         <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 32 32" aria-hidden="true" role="presentation" focusable="false" style="display: block; fill: none; height: 16px; width: 16px; stroke: currentcolor; stroke-width: 3; overflow: visible;position:absolute;top: 20px;"><path d="m6 6 20 20M26 6 6 26"></path></svg>
		      </button>
		      <span>위시리스트에 담기</span>
		   </div>
		   
		   <div class="wish_inner1">
		      <div class="wish_content_outer">
		         <div class="wish_content1">
		            <img src="https://a0.muscache.com/im/pictures/032392ef-892e-4e85-bad1-2881905f67f0.jpg?im_w=1200"/>
		            <span class="wish_sp1">경기도 안양시</span><br>
		            <span class="wish_sp2">0개 저장됨</span>
		         </div>
		      </div>
		      <div class="wish_content_outer">
		         <div class="wish_content1">
		            <img src="https://a0.muscache.com/im/pictures/032392ef-892e-4e85-bad1-2881905f67f0.jpg?im_w=1200"/>
		            <span class="wish_sp1">경기도 안양시</span><br>
		            <span class="wish_sp2">0개 저장됨</span>
		         </div>
		      </div>
		      <div class="wish_content_outer">
		         <div class="wish_content1">
		            <img src="https://a0.muscache.com/im/pictures/032392ef-892e-4e85-bad1-2881905f67f0.jpg?im_w=1200"/>
		            <span class="wish_sp1">경기도 안양시</span><br>
		            <span class="wish_sp2">0개 저장됨</span>
		         </div>
		      </div>
		<!--    <div class="wish_content_outer">
		         <div class="wish_content1">
		            <img src="images/wish.png"/>
		            <span class="wish_sp1">경기도 안양시</span><br>
		            <span class="wish_sp2">0개 저장됨</span>
		         </div>
		      </div>
		      <div class="wish_content_outer">
		         <div class="wish_content1">
		            <img src="images/wish.png"/>
		            <span class="wish_sp1">경기도 안양시</span><br>
		            <span class="wish_sp2">0개 저장됨</span>
		         </div>
		      </div> 
		       -->
		   
		   
		   </div> <!-- inner1끝 -->
		   <div class="wish_inner2">
		      <div class="wish_content2">새로운 위시리스트 만들기</div>
		   </div>
		</div>
		
	<script src="JS/jquery-3.7.1.min.js"></script>
	<script src="slick/slick.js"></script>
	
	</body>
</html>