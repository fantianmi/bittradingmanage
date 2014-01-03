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
<link rel="icon" type="image/ico" href="favicon.ico"/>
<link href="css/stylesheets.css" rel="stylesheet" type="text/css" />
<link rel='stylesheet' type='text/css' href='css/fullcalendar.print.css' media='print' />
<script type='text/javascript' src='http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js'></script>
<script type='text/javascript' src='http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js'></script>
<script type='text/javascript' src='js/plugins/jquery/jquery.mousewheel.min.js'></script>
<script type='text/javascript' src='js/plugins/cookie/jquery.cookies.2.2.0.min.js'></script>
<script type='text/javascript' src='js/plugins/bootstrap.min.js'></script>
<script type='text/javascript' src='js/plugins/charts/excanvas.min.js'></script>
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
        <div class="workplace">
                                    
            <div class="row-fluid">
                <div class="span12">
                    
                    <div class="widgetButtons">                        
                        <div class="bb"><a href="#"><span class="ibw-edit"></span></a></div>
                        <div class="bb">
                            <a href="#"><span class="ibw-folder"></span></a>
                            <div class="caption red">31</div>
                        </div>
                        <div class="bb"><a href="#"><span class="ibw-plus"></span></a></div>
                        <div class="bb"><a href="#"><span class="ibw-favorite"></span></a></div>
                        <div class="bb">
                            <a href="#"><span class="ibw-mail"></span></a>
                            <div class="caption green">31</div>
                        </div>
                        <div class="bb"><a href="#"><span class="ibw-settings"></span></a></div>
                    </div>
                    
                </div>
            </div>
            
            <div class="row-fluid">

                <div class="span4">                    

                    <div class="wBlock red">                        
                        <div class="dSpace">
                            <h3>Invoices statistics</h3>
                            <span class="mChartBar" sparkType="bar" sparkBarColor="white"><!--130,190,260,230,290,400,340,360,390--></span>
                            <span class="number">60%</span>                    
                        </div>
                        <div class="rSpace">
                            <span>$1,530 <b>amount paid</b></span>
                            <span>$2,102 <b>in queue</b></span>
                            <span>$11,100 <b>total taxes</b></span>
                        </div>                          
                    </div>                     
                    
                </div>                
                
                <div class="span4">                    

                    <div class="wBlock green">                        
                        <div class="dSpace">
                            <h3>Users</h3>
                            <span class="mChartBar" sparkType="bar" sparkBarColor="white"><!--5,10,15,20,23,21,25,20,15,10,25,20,10--></span>
                            <span class="number">2,513</span>                    
                        </div>
                        <div class="rSpace">
                            <span>351 <b>active</b></span>
                            <span>2102 <b>passive</b></span>
                            <span>100 <b>removed</b></span>
                        </div>                          
                    </div>                    
                    <div class="clear"></div>                    
                    
                </div>

                <div class="span4">                    

                    <div class="wBlock blue">
                        <div class="dSpace">
                            <h3>Last visits</h3>
                            <span class="mChartBar" sparkType="bar" sparkBarColor="white"><!--240,234,150,290,310,240,210,400,320,198,250,222,111,240,221,340,250,190--></span>
                            <span class="number">6,302</span>
                        </div>
                        <div class="rSpace">                                                                           
                            <span>65% <b>New</b></span>
                            <span>35% <b>Returning</b></span>
                            <span>00:05:12 <b>Average time on site</b></span>                                                        
                        </div>
                    </div>                      
                    
                </div>                
            </div>            
            
            <div class="dr"><span></span></div> 
            
            <div class="row-fluid">
                
                <div class="span4">
                    <div class="head">
                        <div class="isw-archive"></div>
                        <h1>Orders</h1>
                        <ul class="buttons">                            
                            <li>
                                <a href="#" class="isw-settings"></a>
                                <ul class="dd-list">
                                    <li><a href="#"><span class="isw-list"></span> Show all</a></li>
                                    <li><a href="#"><span class="isw-ok"></span> Approved</a></li>
                                    <li><a href="#"><span class="isw-minus"></span> Unapproved</a></li>
                                    <li><a href="#"><span class="isw-refresh"></span> Refresh</a></li>
                                </ul>
                            </li>
                        </ul>                         
                        <div class="clear"></div>
                    </div>
                    <div class="block-fluid accordion">
                        
                        <h3>November 2012</h3>
                        <div>
                            <table cellpadding="0" cellspacing="0" width="100%" class="sOrders">
                                <thead>
                                    <tr>
                                        <th width="60">Date</th><th>User</th><th width="60">Price</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><span class="date">Nov 6</span><span class="time">12:35</span></td>
                                        <td><a href="#">Aqvatarius</a></td>
                                        <td><span class="price">$1366.12</span></td>
                                    </tr>
                                    <tr>
                                        <td><span class="date">Nov 8</span><span class="time">18:42</span></td>
                                        <td><a href="#">Olga</a></td>
                                        <td><span class="price">$146.00</span></td>
                                    </tr>
                                    <tr>
                                        <td><span class="date">Nov 15</span><span class="time">8:21</span></td>
                                        <td><a href="#">Alex</a></td>
                                        <td><span class="price">$879.24</span></td>
                                    </tr>                                    
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <td colspan="3" align="right"><button class="btn btn-small">More...</button></td>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>                        

                        <h3>October 2012</h3>
                        <div>
                            <table cellpadding="0" cellspacing="0" width="100%" class="sOrders">
                                <thead>
                                    <tr>
                                        <th width="60">Date</th><th>User</th><th width="60">Price</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><span class="date">Oct 6</span><span class="time">12:35</span></td>
                                        <td><a href="#">Aqvatarius</a></td>
                                        <td><span class="price">$1366.12</span></td>
                                    </tr>
                                    <tr>
                                        <td><span class="date">Oct 8</span><span class="time">18:42</span></td>
                                        <td><a href="#">Olga</a></td>
                                        <td><span class="price">$146.00</span></td>
                                    </tr>
                                    <tr>
                                        <td><span class="date">Oct 15</span><span class="time">8:21</span></td>
                                        <td><a href="#">Alex</a></td>
                                        <td><span class="price">$879.24</span></td>
                                    </tr>                                    
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <td colspan="3" align="right"><button class="btn btn-small">More...</button></td>
                                    </tr>
                                </tfoot>                                
                            </table>                           
                        </div>
                        
                        <h3>September 2012</h3>
                        <div>
                            <table cellpadding="0" cellspacing="0" width="100%" class="sOrders">
                                <thead>
                                    <tr>
                                        <th width="60">Date</th><th>User</th><th width="60">Price</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><span class="date">Sep 6</span><span class="time">12:35</span></td>
                                        <td><a href="#">Aqvatarius</a></td>
                                        <td><span class="price">$1366.12</span></td>
                                    </tr>
                                    <tr>
                                        <td><span class="date">Sep 8</span><span class="time">18:42</span></td>
                                        <td><a href="#">Olga</a></td>
                                        <td><span class="price">$146.00</span></td>
                                    </tr>
                                    <tr>
                                        <td><span class="date">Sep 15</span><span class="time">8:21</span></td>
                                        <td><a href="#">Alex</a></td>
                                        <td><span class="price">$879.24</span></td>
                                    </tr>                                    
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <td colspan="3" align="right"><button class="btn btn-small">More...</button></td>
                                    </tr>
                                </tfoot>                                
                            </table>                              
                        </div>                        
                        
                    </div>
                </div>
                
                <div class="span4">
                    <div class="head">
                        <div class="isw-edit"></div>
                        <h1>Latest news</h1>
                        <ul class="buttons">                            
                            <li>
                                <a href="#" class="isw-text_document"></a>
                            </li>                            
                            <li>
                                <a href="#" class="isw-settings"></a>
                                <ul class="dd-list">
                                    <li><a href="#"><span class="isw-list"></span> Show all</a></li>
                                    <li><a href="#"><span class="isw-edit"></span> Add new</a></li>
                                    <li><a href="#"><span class="isw-refresh"></span> Refresh</a></li>
                                </ul>
                            </li>
                        </ul>                        
                        <div class="clear"></div>
                    </div>
                    <div class="block news scrollBox">
                        
                        <div class="scroll" style="height: 270px;">
                            
                            <div class="item">
                                <a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a>
                                <p>Phasellus ut diam quis dolor mollis tristique. Suspendisse vestibulum convallis felis vitae facilisis. Praesent eu nisi vestibulum erat lacinia sollicitudin. Cras nec risus dolor, ut tristique neque. Donec mauris sapien, pellentesque at porta id, varius eu tellus.</p>
                                <span class="date">02.11.2012 14:23</span>
                                <div class="controls">                                    
                                    <a href="#" class="icon-pencil"></a>
                                    <a href="#" class="icon-trash"></a>
                                </div>
                            </div>

                            <div class="item">
                                <a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a>
                                <p>Phasellus ut diam quis dolor mollis tristique. Suspendisse vestibulum convallis felis vitae facilisis. Praesent eu nisi vestibulum erat lacinia sollicitudin. Cras nec risus dolor, ut tristique neque. Donec mauris sapien, pellentesque at porta id, varius eu tellus.</p>
                                <span class="date">02.11.2012 14:23</span>
                                <div class="controls">                                    
                                    <a href="#" class="icon-pencil"></a>
                                    <a href="#" class="icon-trash"></a>
                                </div>                                
                            </div>

                            <div class="item">
                                <a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a>
                                <p>Phasellus ut diam quis dolor mollis tristique. Suspendisse vestibulum convallis felis vitae facilisis. Praesent eu nisi vestibulum erat lacinia sollicitudin. Cras nec risus dolor, ut tristique neque. Donec mauris sapien, pellentesque at porta id, varius eu tellus.</p>
                                <span class="date">02.11.2012 14:23</span>
                                <div class="controls">                                    
                                    <a href="#" class="icon-pencil"></a>
                                    <a href="#" class="icon-trash"></a>
                                </div>                                
                            </div>                            
                            
                            <div class="item">
                                <a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a>
                                <p>Phasellus ut diam quis dolor mollis tristique. Suspendisse vestibulum convallis felis vitae facilisis. Praesent eu nisi vestibulum erat lacinia sollicitudin. Cras nec risus dolor, ut tristique neque. Donec mauris sapien, pellentesque at porta id, varius eu tellus.</p>
                                <span class="date">02.11.2012 14:23</span>
                                <div class="controls">                                    
                                    <a href="#" class="icon-pencil"></a>
                                    <a href="#" class="icon-trash"></a>
                                </div>                                
                            </div>
                            
                            <div class="item">
                                <a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a>
                                <p>Phasellus ut diam quis dolor mollis tristique. Suspendisse vestibulum convallis felis vitae facilisis. Praesent eu nisi vestibulum erat lacinia sollicitudin. Cras nec risus dolor, ut tristique neque. Donec mauris sapien, pellentesque at porta id, varius eu tellus.</p>
                                <span class="date">02.11.2012 14:23</span>
                                <div class="controls">                                    
                                    <a href="#" class="icon-pencil"></a>
                                    <a href="#" class="icon-trash"></a>
                                </div>                                
                            </div>
                            
                            <div class="item">
                                <a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a>
                                <p>Phasellus ut diam quis dolor mollis tristique. Suspendisse vestibulum convallis felis vitae facilisis. Praesent eu nisi vestibulum erat lacinia sollicitudin. Cras nec risus dolor, ut tristique neque. Donec mauris sapien, pellentesque at porta id, varius eu tellus.</p>
                                <span class="date">02.11.2012 14:23</span>
                                <div class="controls">                                    
                                    <a href="#" class="icon-pencil"></a>
                                    <a href="#" class="icon-trash"></a>
                                </div>                                
                            </div>                            
                            
                        </div>
                        
                    </div>
                </div>                               

                <div class="span4">
                    <div class="head">
                        <div class="isw-cloud"></div>
                        <h1>Registrations</h1>
                        <ul class="buttons">        
                            <li>
                                <a href="#" class="isw-users"></a>
                            </li>
                            <li>
                                <a href="#" class="isw-settings"></a>
                                <ul class="dd-list">
                                    <li><a href="#"><span class="isw-list"></span> Show all</a></li>
                                    <li><a href="#"><span class="isw-mail"></span> Send mail</a></li>
                                    <li><a href="#"><span class="isw-refresh"></span> Refresh</a></li>
                                </ul>
                            </li>
                        </ul> 
                        <div class="clear"></div>
                    </div>
                    <div class="block users scrollBox">
                        
                        <div class="scroll" style="height: 270px;">
                            
                            <div class="item">
                                <div class="image"><a href="#"><img src="img/users/aqvatarius.jpg" width="32"/></a></div>
                                <div class="info">
                                    <a href="#" class="name">Aqvatarius</a>                                                                    
                                    <div class="controls">                                    
                                        <a href="#" class="icon-ok"></a>
                                        <a href="#" class="icon-remove"></a>
                                    </div>                                                                    
                                </div>
                                <div class="clear"></div>
                            </div>

                            <div class="item">
                                <div class="image"><a href="#"><img src="img/users/olga.jpg" width="32"/></a></div>
                                <div class="info">
                                    <a href="#" class="name">Olga</a>                                                                
                                    <div class="controls">                                    
                                        <a href="#" class="icon-ok"></a>
                                        <a href="#" class="icon-remove"></a>
                                    </div>                                                            
                                </div>
                                <div class="clear"></div>
                            </div>                        

                            <div class="item">
                                <div class="image"><a href="#"><img src="img/users/alexey.jpg" width="32"/></a></div>
                                <div class="info">
                                    <a href="#" class="name">Alexey</a>    
                                    <div class="controls">                                    
                                        <a href="#" class="icon-ok"></a>
                                        <a href="#" class="icon-remove"></a>
                                    </div>                                                            
                                </div>
                                <div class="clear"></div>
                            </div>                              

                            <div class="item">
                                <div class="image"><a href="#"><img src="img/users/dmitry.jpg" width="32"/></a></div>
                                <div class="info">
                                    <a href="#" class="name">Dmitry</a>                                    
                                    <span>approved</span>
                                </div>
                                <div class="clear"></div>
                            </div>                         

                            <div class="item">
                                <div class="image"><a href="#"><img src="img/users/helen.jpg" width="32"/></a></div>
                                <div class="info">
                                    <a href="#" class="name">Helen</a>                                                                        
                                    <span>approved</span>
                                </div>
                                <div class="clear"></div>                            
                            </div>                                  

                            <div class="item">
                                <div class="image"><a href="#"><img src="img/users/alexander.jpg" width="32"/></a></div>
                                <div class="info">
                                    <a href="#" class="name">Alexander</a>                                                                        
                                    <span>approved</span>
                                </div>
                                <div class="clear"></div>
                            </div>                        

                            <div class="item">
                                <div class="image"><a href="#"><img src="img/users/aqvatarius.jpg" width="32"/></a></div>
                                <div class="info">
                                    <a href="#" class="name">Aqvatarius</a>                                                                    
                                    <span>approved</span>
                                </div>
                                <div class="clear"></div>
                            </div>

                            <div class="item">
                                <div class="image"><a href="#"><img src="img/users/olga.jpg" width="32"/></a></div>
                                <div class="info">
                                    <a href="#" class="name">Olga</a>                                                                
                                    <span>approved</span>
                                </div>
                                <div class="clear"></div>
                            </div>                        

                            <div class="item">
                                <div class="image"><a href="#"><img src="img/users/alexey.jpg" width="32"/></a></div>
                                <div class="info">
                                    <a href="#" class="name">Alexey</a>
                                    <span>approved</span>
                                </div>
                                <div class="clear"></div>
                            </div>                              

                            <div class="item">
                                <div class="image"><a href="#"><img src="img/users/dmitry.jpg" width="32"/></a></div>
                                <div class="info">
                                    <a href="#" class="name">Dmitry</a>                                    
                                    <span>approved</span>
                                </div>
                                <div class="clear"></div>
                            </div>                         

                            <div class="item">
                                <div class="image"><a href="#"><img src="img/users/helen.jpg" width="32"/></a></div>
                                <div class="info">
                                    <a href="#" class="name">Helen</a>                                                                        
                                    <span>approved</span>
                                </div>
                                <div class="clear"></div>                            
                            </div>                                  

                            <div class="item">
                                <div class="image"><a href="#"><img src="img/users/alexander.jpg" width="32"/></a></div>
                                <div class="info">
                                    <a href="#" class="name">Alexander</a>                                                                        
                                    <span>approved</span>
                                </div>
                                <div class="clear"></div>
                            </div>                        
                            
                        </div>
                        
                    </div>
                </div>                
                
                
            </div>

            <div class="dr"><span></span></div>            
            
            <div class="row-fluid">
                
                <div class="span12">
                    <div class="head">
                        <div class="isw-graph"></div>
                        <h1>Chart</h1>
                        <div class="clear"></div>
                    </div>
                    <div class="block">
                        <div id="chart-1" style="height: 300px; margin-top: 10px;">
                            
                        </div>
                    </div>
                </div>
                
            </div>

            <div class="dr"><span></span></div>
            
            <div class="row-fluid">
                
                <div class="span6">
                    <div class="head">
                        <div class="isw-chats"></div>
                        <h1>Messaging</h1>
                        <ul class="buttons">
                            <li>
                                <a href="#" class="isw-attachment"></a>                            
                            </li>                            
                            <li>
                                <a href="#" class="isw-settings"></a>
                                <ul class="dd-list">
                                    <li><a href="#"><span class="isw-plus"></span> New document</a></li>
                                    <li><a href="#"><span class="isw-edit"></span> Edit</a></li>
                                    <li><a href="#"><span class="isw-delete"></span> Delete</a></li>
                                </ul>
                            </li>
                        </ul>
                        <div class="clear"></div>
                    </div>
                    <div class="block messaging">
                        
                        <div class="itemIn">
                            <a href="#" class="image"><img src="img/users/olga.jpg" class="img-polaroid"/></a>
                            <div class="text">
                                <div class="info">
                                    <span class="name">Olga</span>
                                    <span class="date">10 min ago</span>
                                    <div class="clear"></div>
                                </div>  
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus ut diam quis dolor mollis tristique. Suspendisse vestibulum convallis felis vitae facilisis. Praesent eu nisi vestibulum erat lacinia sollicitudin. Cras nec risus dolor, ut tristique neque. Donec mauris sapien, pellentesque at porta id, varius eu tellus. Maecenas nulla felis, commodo et adipiscing vel, accumsan eget augue. Morbi volutpat iaculis molestie.
                            </div>
                        </div>
                        
                        <div class="itemOut">
                            <a href="#" class="image"><img src="img/users/aqvatarius.jpg" class="img-polaroid"/></a>
                            <div class="text">
                                <div class="info">
                                    <span class="name">Aqvatarius</span>
                                    <span class="date">7 min ago</span>
                                    <div class="clear"></div>
                                </div>                                
                                In id adipiscing diam. Sed lobortis dui ut odio tempor blandit. Suspendisse scelerisque mi nec nunc gravida quis mollis lacus dignissim.
                            </div>
                        </div>
                        
                        <div class="itemIn">
                            <a href="#" class="image"><img src="img/users/olga.jpg" class="img-polaroid"/></a>
                            <div class="text">
                                <div class="info">
                                    <span class="name">Olga</span>
                                    <span class="date">15 sec ago</span>
                                    <div class="clear"></div>
                                </div>  
                                Cras nec risus dolor, ut tristique neque. Donec mauris sapien, pellentesque at porta id, varius eu tellus. Maecenas nulla felis, commodo et adipiscing vel, accumsan eget augue morbi volutpat.
                            </div>
                        </div>                                                                        
                        
                        <div class="controls">
                            <div class="control">
                                <textarea name="textarea" placeholder="Your message..." style="height: 70px; width: 100%;"></textarea>
                            </div>
                            <button class="btn">Send message</button>
                        </div>                        
                    </div>
                </div>                
                
                <div class="span6">
                    <div class="head">
                        <div class="isw-calendar"></div>
                        <h1>Calendar</h1>
                        <div class="clear"></div>
                    </div>
                    <div class="block-fluid">
                        <div id="calendar" class="fc"></div>
                    </div>
                </div>
                
            </div>            
                        
            <div class="row-fluid">
                <!--###############full width table######################-->        
                <div class="span12">
				            
                    <div class="head">
                        <div class="isw-grid"></div>
                        <h1>Simple table</h1>      
                        <ul class="buttons">
                            <li><a href="#" class="isw-download"></a></li>                                                        
                            <li><a href="#" class="isw-attachment"></a></li>
                            <li>
                                <a href="#" class="isw-settings"></a>
                                <ul class="dd-list">
                                    <li><a href="#"><span class="isw-plus"></span> New document</a></li>
                                    <li><a href="#"><span class="isw-edit"></span> Edit</a></li>
                                    <li><a href="#"><span class="isw-delete"></span> Delete</a></li>
                                </ul>
                            </li>
                        </ul>                        
                        <div class="clear"></div>
                    </div>
                    <div class="block-fluid">
                        <table cellpadding="0" cellspacing="0" width="100%" class="table">
                            <thead>
                                <tr>
                                    <th><input type="checkbox" name="checkall"/></th>
                                    <th width="25%">ID</th>
                                    <th width="25%">Name</th>
                                    <th width="25%">E-mail</th>
                                    <th width="25%">Phone</th>                                    
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><input type="checkbox" name="checkbox"/></td>
                                    <td>101</td>
                                    <td>Dmitry</td>
                                    <td>dmitry@domain.com</td>
                                    <td>+98(765)432-10-98</td>                                    
                                </tr>
                                <tr>
                                    <td><input type="checkbox" name="checkbox"/></td>
                                    <td>102</td>
                                    <td>Alex</td>
                                    <td>alex@domain.com</td>
                                    <td>+98(765)432-10-99</td>                                    
                                </tr>
                                <tr>
                                    <td><input type="checkbox" name="checkbox"/></td>
                                    <td>103</td>
                                    <td>John</td>
                                    <td>john@domain.com</td>
                                    <td>+98(765)432-10-97</td>                                    
                                </tr>
                                <tr>
                                    <td><input type="checkbox" name="checkbox"/></td>
                                    <td>104</td>
                                    <td>Angelina</td>
                                    <td>angelina@domain.com</td>
                                    <td>+98(765)432-10-90</td>                                    
                                </tr>
                                <tr>
                                    <td><input type="checkbox" name="checkbox"/></td>
                                    <td>105</td>
                                    <td>Tom</td>
                                    <td>tom@domain.com</td>
                                    <td>+98(765)432-10-92</td>                                    
                                </tr>                                
                            </tbody>
                        </table>
                    </div>
                </div>                                
                <!--###############full width table/######################-->        
            </div>
            
            
            <div class="dr"><span></span></div>
        
        </div>
        
    </div>   
    
</body>
</html>
