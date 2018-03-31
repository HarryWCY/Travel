<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/page/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>餐饮住宿详情</title>
<link href="${path }/css/style.css" rel="stylesheet" type="text/css" />
<link href="${path }/css/common.css" rel="stylesheet" type="text/css" />
</head>
<body>
<%@ include file="/WEB-INF/page/common/head.jsp" %>
<%@ include file="/WEB-INF/page/cater/mainNav.jsp" %>
	<div class="b_wrap">
		<div class="current">
			<span>当前所在地：</span><a href="${path }/cater/caterList">餐饮住宿</a> >> <a href="${path }/cater/caterDetai?id=${cater.id}">${cater.caterName }</a>
		</div>
		<div class="clumn_w clearfix">
			<div class="clumn_l">
				<div class="clumn">
					<div class="clumn_tit t01">餐饮住宿</div>
					<div class="clumn_con">
						<div class="cln_w">
							<p>热门城市</p>
							<div class="cln_c clearfix">
								<a href="#">北京</a> <a href="#">上海</a> <a href="#">厦门</a> <a
									href="#">成都</a> <a href="#">西安</a> <a href="#">黄山</a> <a
									href="#">香港</a> <a href="#">青岛</a> <a href="#">桂林</a> <a
									href="#">深圳</a> <a href="#">三亚</a> <a href="#">杭州</a> <a
									href="#">丽江</a> <a href="#">南京</a> <a href="#">重庆</a> <a
									href="#">苏州</a> <a href="#">张家界</a>
							</div>
						</div>
						<div class="cln_w">
							<p>房价</p>
							<div class="cln_c clearfix">
								<a href="#">600元以上</a> <a href="#">300-600元</a> <a href="#">150-300元</a>
								<a href="#">150元以下</a>
							</div>
						</div>
						<div class="cln_w">
							<p>酒店星级</p>
							<div class="cln_c clearfix">
								<a href="#">五星/豪华</a> <a href="#">四星/高档</a> <a href="#">三星/舒适</a>
								<a href="#">经济/客栈</a>
							</div>
						</div>
					</div>
				</div>
				<div class="clumn">
					<div class="clumn_tit t02">
						<span>优惠促销</span><a href="#">更多>></a>
					</div>
					<div class="clumn_con">
						<ul class="clu_ul">
							<li><a href="#">六日黄石公园, 现有女一人，寻女性同游</a></li>
							<li><a href="#">国庆长假，温哥华维多利亚自助游找伴</a></li>
							<li><a href="#">去NewFundland，自助游！ 肯定走！</a></li>
							<li><a href="#">多伦多-温哥华 横跨之旅</a></li>
							<li><a href="#">诚招一女， 已有7人定下去NewFoundland</a></li>
							<li><a href="#">六日黄石公园, 现有女一人，寻女性同游</a></li>
							<li><a href="#">暑期邮轮 特价不断</a></li>
							<li><a href="#">订机票，选银联，超值特惠</a></li>
						</ul>
						<div>
								<img src="${path }/images/add01.jpg">
						</div>
					</div>
				</div>
				<div class="clumn">
					<div class="clumn_tit t03">
						<span>游览历史记录</span><a href="#">更多>></a>
					</div>
					<div class="clumn_con">
						<ul class="clu_ul s_ul">
							<li><a href="#">日本航空·大阪自由行5日 </a><span>¥3152</span></li>
							<li><a href="#">日本航空·名古屋自由行4日 </a><span>¥3129</span></li>
							<li><a href="#">购物·东京涉谷原宿自由行5日</a><span>¥5880</span></li>
							<li><a href="#">日本航空·大阪自由行5日 </a><span>¥3152</span></li>
							<li><a href="#">日本航空·名古屋自由行4日 </a><span>¥3129</span></li>
							<li><a href="#">购物·东京涉谷原宿自由行5日</a><span>¥5880</span></li>
							<li><a href="#">日本航空·大阪自由行5日 </a><span>¥3152</span></li>
							<li><a href="#">日本航空·名古屋自由行4日 </a><span>¥3129</span></li>
							<li><a href="#">购物·东京涉谷原宿自由行5日</a><span>¥5880</span></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="clumn_r">
				<c:if test="${cater.type eq '0' }">
					<div class="cr_tit">
						<b>餐 饮</b> <span><a href="catering?id=${cater.id }">餐饮预定</a></span>
					</div>
				</c:if>
				<c:if test="${cater.type eq '1' }">
					<div class="cr_tit">
						<b>住宿</b> <span><a href="hotel?id=${cater.id }">住宿预订</a></span>
					</div>
				</c:if>
				<div class="cr_wrap">
					<div class="cr_t">
						<div class="ct">${cater.caterName }</div>
						<span>咨询电话：${cater.phone }</span>
					</div>
					<div class="cr_con">
						<center>
							<img src="${path }/img/${cater.image}">
						</center>
						<div class="intro">
							<p>
								<b>饭店简介：</b>
							</p>
							<p style="text-indent: 2em;">${cater.detail }</p>
						</div>
					</div>
				</div>
				<div class="next_w clearfix">
					<div class="next">
						<p>
							<b>上一家：</b> 
							<c:if test="${empty preCater }"><a href="#"><b>暂无信息！</b></a></c:if>
							<c:if test="${!empty preCater }" ><a href="detail?id=${preCater.id }"><b style="color: green;">${preCater.caterName }</b></a></c:if>
						</p>
						<p>
							<b>下一家：</b> 
							<c:if test="${empty aftCater }"><a href="#"><b>暂无信息！</b></a></c:if>
							<c:if test="${!empty aftCater }" ><a href="detail?id=${aftCater.id }"><b style="color: green;">${aftCater.caterName }</b></a></c:if>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/page/common/foot.jsp" %>
</body>
</html>