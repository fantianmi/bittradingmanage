<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/include/head.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
<head profile="http://gmpg.org/xfn/11">
<title>比特币交易平台后台管理系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="imagetoolbar" content="no" />
<!-- ****************后台管理系统******************** -->
<link href="css/stylesheets.css" rel="stylesheet" type="text/css" />
<link rel='stylesheet' type='text/css' href='css/fullcalendar.print.css' media='print' />
<script type='text/javascript' src='http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js'></script>
<script type='text/javascript' src='http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js'></script>
<script type='text/javascript' src='js/plugins/jquery/jquery.mousewheel.min.js'></script>
<script type='text/javascript' src='js/plugins/cookie/jquery.cookies.2.2.0.min.js'></script>
<script type='text/javascript' src='js/plugins/bootstrap.min.js'></script>
<script type='text/javascript' src='js/plugins/charts/jquery.flot.js'></script>    
<script type='text/javascript' src='js/plugins/charts/jquery.flot.stack.js'></script>    
<script type='text/javascript' src='js/plugins/charts/jquery.flot.pie.js'></script>
<script type='text/javascript' src='js/plugins/charts/jquery.flot.resize.js'></script>
<script type='text/javascript' src='js/plugins/sparklines/jquery.sparkline.min.js'></script>
<script type='text/javascript' src='js/plugins/fullcalendar/fullcalendar.min.js'></script>
<script type='text/javascript' src='js/plugins/select2/select2.min.js'></script>
<script type='text/javascript' src='js/plugins/uniform/uniform.js'></script>
<script type='text/javascript' src='js/plugins/maskedinput/jquery.maskedinput-1.3.min.js'></script>
<script type='text/javascript' src='js/plugins/validation/languages/jquery.validationEngine-en.js' charset='utf-8'></script>
<script type='text/javascript' src='js/plugins/validation/jquery.validationEngine.js' charset='utf-8'></script>
<script type='text/javascript' src='js/plugins/mcustomscrollbar/jquery.mCustomScrollbar.min.js'></script>
<script type='text/javascript' src='js/plugins/animatedprogressbar/animated_progressbar.js'></script>
<script type='text/javascript' src='js/plugins/qtip/jquery.qtip-1.0.0-rc3.min.js'></script>
<script type='text/javascript' src='js/plugins/cleditor/jquery.cleditor.js'></script>
<script type='text/javascript' src='js/plugins/dataTables/jquery.dataTables.min.js'></script>    
<script type='text/javascript' src='js/plugins/fancybox/jquery.fancybox.pack.js'></script>
<script type='text/javascript' src='js/cookies.js'></script>
<script type='text/javascript' src='js/actions.js'></script>
<script type='text/javascript' src='js/charts.js'></script>
<script type='text/javascript' src='js/plugins.js'></script>
<!-- ****************后台管理系统******************** -->
</head>
<body>
    <!--###################top##############--> 
	<jsp:include page="/include/headhtml.jsp"></jsp:include>
	<!--###################/top##############--> 
    <!--#######################lpanel########################-->
	<jsp:include page="/include/lpanelhtml.jsp"></jsp:include>
    <!--#######################/lpanel########################-->    
    <div class="content">
        
        <!--#####################position##################-->
        <jsp:include page="/include/pathpanelhtml.jsp"></jsp:include>
        <!--#####################/position##################-->
        <!-- ####################content area############### -->
        <div class="workplace">

            <div class="row-fluid">
                
                <div class="span12">    
				<!--#############talbe3##############-->    
				<form name="rechargetouserCNY" action="rechargetouser.htm?CNY" method="post">          
                    <div class="head">
                        <div class="isw-grid"></div>
                        <h1>未处理的订单</h1>   
						<ul class="buttons">
                            <li><a href="#" class="isw-download"></a></li>                                                        
                            <li><a href="#" class="isw-attachment"></a></li>
                            <li>
                                <a href="#" class="isw-settings"></a>
                                <ul class="dd-list">
                                    <li><a href="javascript:document.rechargetouserCNY.submit();"><span class="isw-plus"></span>确认充值</a></li>
                                    <li><a href="#"><span class="isw-edit"></span>编辑备注</a></li>
                                    <li><a href="#"><span class="isw-delete"></span>删除</a></li>
                                </ul>
                            </li>
                        </ul>                              
                        <div class="clear"></div>
                    </div>
                    <div class="block-fluid table-sorting">
                        <table cellpadding="0" cellspacing="0" width="100%" class="table" id="tSortable">
                            <thead>
                                <tr>
                                    <th><input type="checkbox" name="checkall"/></th>
                                    <th width="15%">订单号</th>
                                    <th width="30%">汇款人&nbsp;-&nbsp;充值方式&nbsp;-&nbsp;收款人</th>
                                    <th width="30%">充值金额-手续费</th>
                                    <th width="25%">充值时间</th>                                    
                                </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${listOrder}" var="Btc_rechargeCNY_order">
					        <tr>
					          <td><input type="checkbox" name="checkbox" value="${Btc_rechargeCNY_order.bro_id}"/></td>
					          <td>${Btc_rechargeCNY_order.bro_id}</td>
					          <td>${Btc_rechargeCNY_order.bro_sname}&nbsp;-&nbsp;${Btc_rechargeCNY_order.bro_recharge_way}&nbsp;-&nbsp;${Btc_rechargeCNY_order.bro_rname}</td>
					          <td>${Btc_rechargeCNY_order.bro_recharge_acount}元&nbsp;-&nbsp;${Btc_rechargeCNY_order.bro_factorage}元</td>
							  <td>${Btc_rechargeCNY_order.bro_recharge_time}</td>
					        </tr>
					        </c:forEach>
                            </tbody>
                        </table>
                        <div class="clear"></div>
                    </div>
                    </form>
			     <!--#############talbe3/##############-->
                </div>                                
                
            </div>            
            
            <div class="dr"><span></span></div>            
            
        </div>
        <!-- ####################/content area############### -->
    </div>   
</body>
</html>
