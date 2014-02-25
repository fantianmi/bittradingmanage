package com.mvc.controller;

import javax.servlet.http.Cookie;
import java.math.BigDecimal;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mvc.entity.Btc_account_book;
import com.mvc.entity.Btc_rechargeCNY_order;
import com.mvc.entity.Btc_user;
import com.mvc.service.RechargeService;
import com.mvc.service.UserService;
import com.mvc.util.CookieHelper;

@Controller
@RequestMapping("/rechargetouser.htm")
public class RechargeController {
	@Autowired
	private UserService us = new UserService();
	@Autowired
	private RechargeService rs = new RechargeService();
	protected final transient Log log = LogFactory
	.getLog(RechargeController.class);
	
	@RequestMapping
	public String load(ModelMap modelMap, HttpServletRequest request){
		return "index";
	}
	
	@RequestMapping(params = "logout")
	public String logout(ModelMap modelMap, HttpServletRequest request, HttpServletResponse response){
		HttpSession session=request.getSession();
		CookieHelper cookieHelp = new CookieHelper();
		Cookie cookieName=cookieHelp.removeCookie(request,"uusername");
		Cookie cookiePassword=cookieHelp.removeCookie(request,"upassword");
		response.addCookie(cookieName);
		response.addCookie(cookiePassword);
		session.removeAttribute("uusername");
		session.removeAttribute("uname");
		session.removeAttribute("isRegister2");
		request.setAttribute("msg", "logoutSucess");
		return "index";
	}
	
	@RequestMapping(params = "buybtc")
	public String buybtc(ModelMap modelmap, HttpServletRequest request, HttpServletResponse response){
		HttpSession session = request.getSession();
		if(session.getAttribute("uusername").toString()== null){
			request.setAttribute("msg", "loginfirst");
			return "index";
		}else{
			String uusername = session.getAttribute("uusername").toString();
			Btc_user user = us.getByUsername(uusername);
			if(user.getUname()==null&&user.getUcertification()==null){
				return "register2";
			}else{
				return "buybtc";
			}
		}
	}
	
	@RequestMapping(params = "CNY")
	public String recharge(ModelMap modelmap, HttpServletRequest request, HttpServletResponse response){
		String bro_id[]  = request.getParameterValues("checkbox");
		Btc_rechargeCNY_order bro = new Btc_rechargeCNY_order();
		Btc_account_book bab = new Btc_account_book();
		String bro_idToJsp = "已处理订单号为";
		if(bro_id!=null){
			for(int i=0;i<bro_id.length;i++){
				bro = rs.getByBroIdForOrders(Integer.parseInt(bro_id[i]));
				bro.setBro_state(1);
				bro.setBro_remark("已充值"+bro.getBro_recharge_acount()+"到您的平台账户");
				rs.updateRechargeCNY_Order(bro);
				bro = rs.getByBroIdForOrders(Integer.parseInt(bro_id[i]));
				int uid = bro.getUid();
				Btc_account_book babflag = rs.getByUidForAcount(uid);
				if(babflag == null){
					bab.setUid(uid);
					bab.setAb_cny(bro.getBro_recharge_acount());
					if(bab.getAb_btc()==null){
						bab.setAb_btc(new BigDecimal(0.0000));
					}
					rs.saveAccount_Book(bab);
				}else{
					bab = rs.getByUidForAcount(uid);
					bab.setAb_cny(babflag.getAb_cny().add(bro.getBro_recharge_acount()));
					rs.updateAccount_Book(bab);
				}
				bro_idToJsp = bro_idToJsp + bro_id[i];
			}
		}
		bro_idToJsp = "|"+bro_idToJsp+"|" + "的订单";
		request.setAttribute("msg", bro_idToJsp);
		request.setAttribute("href", "index.htm?orders");
		return "orders";
	}
}
