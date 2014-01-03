<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String url = request.getRequestURI();
	if (request.getQueryString() != null)
		url += "?" + request.getQueryString();
%>
 <div class="menu">                
        
        <div class="breadLine">            
            <div class="arrow"></div>
            <div class="adminControl active">
                您好, 管理员name
            </div>
        </div>
        
        <div class="admin">
            <div class="image">
                <img src="img/users/alexey.jpg" class="img-polaroid"/>                
            </div>
            <ul class="control">                
                <li><span class="icon-comment"></span> <a href="messages.html">待处理的消息</a> <a href="messages.html" class="caption red">12</a></li>
                <li><span class="icon-cog"></span> <a href="forms.html">个人设置</a></li>
                <li><span class="icon-share-alt"></span> <a href="login.html">退出登录</a></li>
            </ul>
            <div class="info">
                <span>您上次登录时间: 24.10.2012 in 19:55</span>
            </div>
        </div>
        <!--###################dashbordpanel##########################-->
        <ul class="navigation">            
            <li class="active">
                <a href="index.htm">
                    <span class="isw-grid"></span><span class="text">控制面板</span>
                </a>
            </li>
            
            <%if(url.indexOf("ui")!=-1||url.indexOf("orders")!=-1){ %>
            <li class="openable active">
            <%}else{ %>
            <li class="openable">
            <%} %>
                <a href="#">
                    <span class="isw-list"></span><span class="text">UI elements</span>
                </a>
                <ul>
                    <li>
                        <a href="index.htm?ui">
                            <span class="icon-th"></span><span class="text">UI Elements</span>
                        </a>                  
                    </li>          
                    <li>
                        <a href="index.htm?orders">
                            <span class="icon-th-large"></span><span class="text">Widgets</span>
                        </a>                  
                    </li>                     
                    <li>
                        <a href="buttons.html">
                            <span class="icon-chevron-right"></span><span class="text">Buttons</span>
                        </a>                  
                    </li> 
                    <li>
                        <a href="icons.html">
                            <span class="icon-fire"></span><span class="text">Icons</span>
                        </a>                  
                    </li>                    
                </ul>                
            </li>          
            <li>
                <a href="forms.html">
                    <span class="isw-archive"></span><span class="text">Forms stuff</span>                 
                </a>
            </li>                        
            <li class="openable">
                <a href="#">
                    <span class="isw-chat"></span><span class="text">Messages</span>
                </a>
                <ul>
                    <li>
                        <a href="messages.html">
                            <span class="icon-comment"></span><span class="text">Messages widgets</span></a>
                            
                            <a href="#" class="caption yellow link_navPopMessages">5</a>

                            <div id="navPopMessages" class="popup" style="display: none;">
                                <div class="head">
                                    <div class="arrow"></div>
                                    <span class="isw-chats"></span>
                                    <span class="name">Personal messages</span>
                                    <div class="clear"></div>
                                </div>
                                <div class="body messages">

                                    <div class="item">
                                        <div class="image"><a href="#"><img src="img/users/aqvatarius.jpg" class="img-polaroid"/></a></div>
                                        <div class="info">
                                            <a href="#" class="name">Aqvatarius</a>
                                            <p>Lorem ipsum dolor. In id adipiscing diam. Sed lobortis dui ut odio tempor blandit. Suspendisse scelerisque mi nec nunc gravida quis mollis lacus dignissim.</p>
                                            <span>19 feb 2012 12:45</span>
                                        </div>
                                        <div class="clear"></div>
                                    </div>

                                    <div class="item">
                                        <div class="image"><a href="#"><img src="img/users/olga.jpg" class="img-polaroid"/></a></div>
                                        <div class="info">
                                            <a href="#" class="name">Olga</a>
                                            <p>Cras nec risus dolor, ut tristique neque. Donec mauris sapien, pellentesque at porta id, varius eu tellus.</p>
                                            <span>18 feb 2012 12:45</span>
                                        </div>
                                        <div class="clear"></div>
                                    </div>                        

                                    <div class="item">
                                        <div class="image"><a href="#"><img src="img/users/dmitry.jpg" class="img-polaroid"/></a></div>
                                        <div class="info">
                                            <a href="#" class="name">Dmitry</a>
                                            <p>In id adipiscing diam. Sed lobortis dui ut odio tempor blandit.</p>
                                            <span>17 feb 2012 12:45</span>
                                        </div>
                                        <div class="clear"></div>
                                    </div>                         

                                    <div class="item">
                                        <div class="image"><a href="#"><img src="img/users/helen.jpg" class="img-polaroid"/></a></div>
                                        <div class="info">
                                            <a href="#" class="name">Helen</a>
                                            <p>Sed lobortis dui ut odio tempor blandit. Suspendisse scelerisque mi nec nunc gravida quis mollis lacus dignissim. Donec mauris sapien, pellentesque at porta id, varius eu tellus.</p>
                                            <span>15 feb 2012 12:45</span>
                                        </div>
                                        <div class="clear"></div>
                                    </div>                                  

                                </div>
                                <div class="footer">
                                    <button class="btn link_navPopMessages" type="button">Close</button>
                                </div>
                            </div>                                                                                                                          
                    </li>                                        
                </ul>                
                
   
            </li>                                    
            <li>
                <a href="statistic.html">
                    <span class="isw-graph"></span><span class="text">Statistics</span>
                </a>
            </li>                                    
            <!--##############orders manager#######################-->
			<li>
                <a href="index.htm?orders">
                    <span class="isw-text_document"></span><span class="text">订单管理</span>
                </a>
            </li>    
			<!--##############/orders manager#######################-->                                
            <li class="openable">
                <a href="#">
                    <span class="isw-zoom"></span><span class="text">Other</span>                    
                </a>
                <ul>
                    <li>
                        <a href="gallery.html">
                            <span class="icon-picture"></span><span class="text">Gallery</span>
                        </a>
                    </li>
                    <li>
                        <a href="typography.html">
                            <span class="icon-pencil"></span><span class="text">Typography</span>
                        </a>
                    </li>
                    <li>
                        <a href="users.html">
                            <span class="icon-user"></span><span class="text">Users</span>
                        </a>
                    </li>                    
                </ul>
            </li>                                              
        </ul>
        <!--###################/dashbordpanel##########################-->
        <div class="dr"><span></span></div>
        
        <div class="widget-fluid">
            <div id="menuDatepicker"></div>
        </div>
        
        <div class="dr"><span></span></div>
        
        <div class="widget">

            <div class="input-append">
                <input id="appendedInputButton" style="width: 118px;" type="text"><button class="btn" type="button">Search</button>
            </div>            
            
        </div>
        
        <div class="dr"><span></span></div>
        
        <div class="widget-fluid">
            
            <div class="wBlock">
                <div class="dSpace">
                    <h3>Last visits</h3>
                    <span class="number">6,302</span>                    
                    <span>5,774 <b>unique</b></span>
                    <span>3,512 <b>returning</b></span>
                </div>
                <div class="rSpace">
                    <h3>Today</h3>
                    <span class="mChartBar" sparkType="bar" sparkBarColor="white"><!--240,234,150,290,310,240,210,400,320,198,250,222,111,240,221,340,250,190--></span>                                                                                
                    <span>&nbsp;</span>
                    <span>65% <b>New</b></span>
                    <span>35% <b>Returning</b></span>
                </div>
            </div>
            
        </div>
        
    </div>
