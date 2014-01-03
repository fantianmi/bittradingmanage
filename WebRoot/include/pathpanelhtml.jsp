<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.mvc.entity.*"%>
<%
	String url = request.getRequestURI();
	if (request.getQueryString() != null)
		url += "?" + request.getQueryString();
%>
<div class="breadLine">

	<ul class="breadcrumb">
		<li>
			<a href="#">比特币后台管理系统</a>
			<span class="divider">></span>
		</li>
		<%
			if (url.indexOf("order") != -1) {
		%>
		<li class="active">
			订单管理
		</li>
		<%
			} else if ((url.indexOf("index") != -1) && (url.indexOf("?") == -1)) {
		%>
		<li class="active">
			控制面板
		</li>
		<%
			}
		%>
	</ul>

	<ul class="buttons">
		<li>
			<a href="#" class="link_bcPopupList"><span class="icon-user"></span><span
				class="text">管理员列表</span>
			</a>

			<div id="bcPopupList" class="popup">
				<div class="head">
					<div class="arrow"></div>
					<span class="isw-users"></span>
					<span class="name">所有管理员</span>
					<div class="clear"></div>
				</div>
				<div class="body-fluid users">

					<div class="item">
						<div class="image">
							<a href="#"><img src="img/users/aqvatarius.jpg" width="32" />
							</a>
						</div>
						<div class="info">
							<a href="#" class="name">Aqvatarius</a>
							<span>在线</span>
						</div>
						<div class="clear"></div>
					</div>

					<div class="item">
						<div class="image">
							<a href="#"><img src="img/users/olga.jpg" width="32" />
							</a>
						</div>
						<div class="info">
							<a href="#" class="name">Olga</a>
							<span>在线</span>
						</div>
						<div class="clear"></div>
					</div>

					<div class="item">
						<div class="image">
							<a href="#"><img src="img/users/alexey.jpg" width="32" />
							</a>
						</div>
						<div class="info">
							<a href="#" class="name">Alexey</a>
							<span>在线</span>
						</div>
						<div class="clear"></div>
					</div>

					<div class="item">
						<div class="image">
							<a href="#"><img src="img/users/dmitry.jpg" width="32" />
							</a>
						</div>
						<div class="info">
							<a href="#" class="name">Dmitry</a>
							<span>在线</span>
						</div>
						<div class="clear"></div>
					</div>

					<div class="item">
						<div class="image">
							<a href="#"><img src="img/users/helen.jpg" width="32" />
							</a>
						</div>
						<div class="info">
							<a href="#" class="name">Helen</a>
						</div>
						<div class="clear"></div>
					</div>

					<div class="item">
						<div class="image">
							<a href="#"><img src="img/users/alexander.jpg" width="32" />
							</a>
						</div>
						<div class="info">
							<a href="#" class="name">Alexander</a>
						</div>
						<div class="clear"></div>
					</div>

				</div>
				<div class="footer">
					<button class="btn" type="button">
						添加管理员
					</button>
					<button class="btn btn-danger link_bcPopupList" type="button">
						关闭
					</button>
				</div>
			</div>

		</li>
		<li>
			<a href="#" class="link_bcPopupSearch"><span class="icon-search"></span><span
				class="text">Search</span>
			</a>

			<div id="bcPopupSearch" class="popup">
				<div class="head">
					<div class="arrow"></div>
					<span class="isw-zoom"></span>
					<span class="name">Search</span>
					<div class="clear"></div>
				</div>
				<div class="body search">
					<input type="text" placeholder="Some text for search..."
						name="search" />
				</div>
				<div class="footer">
					<button class="btn" type="button">
						Search
					</button>
					<button class="btn btn-danger link_bcPopupSearch" type="button">
						Close
					</button>
				</div>
			</div>
		</li>
	</ul>

</div>

