////////////////////////////////////////////////
//  DMB DHTML ENGINE 1.0.331                  //
//  (c)xFX JumpStart                          //
//  http://software.xfx.net                   //
//                                            //
//  PSN:                                      //
//                                            //
//  GENERATED: 2/12/2005 - 12:43:05 PM        //
////////////////////////////////////////////////


	var nStyle = new Array;
	var hStyle = new Array;
	var nLayer = new Array;
	var hLayer = new Array;
	var nTCode = new Array;

	var AnimStep = 0;
	var AnimHnd = 0;
	var HTHnd = new Array;
	var DoFormsTweak = true;
	var MenusReady = false;
	var SelSndId = 0;

	var mFrame;
	var cFrame;

	var OpenMenus = new Array;
	var nOM = 0;

	var mX;
	var mY;

	var HideSpeed = 300;
	var TimerHideDelay = 2000;
	var TimerHideHnd = 0;
	var IsOverHS = false;
	var cntxMenu = '';
	var IsContext = false;

var BV=parseInt(navigator.appVersion.indexOf("MSIE")>0?navigator.appVersion.split(";")[1].substr(6):navigator.appVersion);
var BN=window.navigator.appName;
var IsWin=(navigator.userAgent.indexOf('Win')!=-1);
var IsMac=(navigator.userAgent.indexOf('Mac')!=-1);
var OP=(navigator.userAgent.indexOf('Opera')!=-1&&BV>=4)?true:false;
var NS=(BN.indexOf('Netscape')!=-1&&(BV==4)&&!OP)?true:false;
var SM=(BN.indexOf('Netscape')!=-1&&(BV>=5)||OP)?true:false;
var IE=(BN.indexOf('Explorer')!=-1&&(BV>=4)||SM)?true:false;


	if((!IsWin&&IE)||SM) {
		frames.self = window;
		frames.top = top;
	}

	cFrame = eval(frames['self']);

	var fx = 0;





	hStyle[0]="border: 0px; font-family: Tahoma; font-size: 10px; font-weight: bold; font-style: none; text-decoration: none; color: #FFFFFF; background-color: #FFAE66; cursor: hand;";
	hStyle[1]="border: 0px; font-family: Tahoma; font-size: 10px; font-weight: bold; font-style: none; text-decoration: none; color: #FFFFFF; background-color: #FFAE66; cursor: hand;";
	hStyle[2]="border: 0px; font-family: Tahoma; font-size: 10px; font-weight: bold; font-style: none; text-decoration: none; color: #FFFFFF; background-color: #FFAE66; cursor: hand;";
	hStyle[3]="border: 0px; font-family: Tahoma; font-size: 10px; font-weight: bold; font-style: none; text-decoration: none; color: #FFFFFF; background-color: #FFAE66; cursor: hand;";
	hStyle[4]="border: 0px; font-family: Tahoma; font-size: 10px; font-weight: bold; font-style: none; text-decoration: none; color: #FFFFFF; background-color: #FFAE66; cursor: hand;";
	hStyle[5]="border: 0px; font-family: Tahoma; font-size: 10px; font-weight: bold; font-style: none; text-decoration: none; color: #FFFFFF; background-color: #FFAE66; cursor: hand;";
	hStyle[6]="border: 0px; font-family: Tahoma; font-size: 10px; font-weight: bold; font-style: none; text-decoration: none; color: #FFFFFF; background-color: #FFAE66; cursor: hand;";
	hStyle[7]="border: 0px; font-family: Tahoma; font-size: 10px; font-weight: bold; font-style: none; text-decoration: none; color: #FFFFFF; background-color: #FFAE66; cursor: hand;";

	
	nTCode[1]="cFrame.execURL('fs_pondicherry.htm', 'frames[self]');";
	nLayer[1]="<ilayer left=5 top=1><p align=left><b><font face=Tahoma point-size=8 color=#FFFFFF>Pondicherry</font></b></ilayer>|";
	hLayer[1]="<ilayer left=5 top=1><p align=left><b><font face=Tahoma point-size=8 color=#FFFFFF>Pondicherry</font></b></ilayer>|";
	nTCode[2]="cFrame.execURL('fs_himachalpradesh.htm', 'frames[self]');";
	nLayer[2]="<ilayer left=5 top=1><p align=left><b><font face=Tahoma point-size=8 color=#FFFFFF>Himachal Pradesh</font></b></ilayer>|";
	hLayer[2]="<ilayer left=5 top=1><p align=left><b><font face=Tahoma point-size=8 color=#FFFFFF>Himachal Pradesh</font></b></ilayer>|";
	nTCode[3]="cFrame.execURL('fs_others.htm', 'frames[self]');";
	nLayer[3]="<ilayer left=5 top=1><p align=left><b><font face=Tahoma point-size=8 color=#FFFFFF>Pant Nagar - Nainital</font></b></ilayer>|";
	hLayer[3]="<ilayer left=5 top=1><p align=left><b><font face=Tahoma point-size=8 color=#FFFFFF>Pant Nagar - Nainital</font></b></ilayer>|";
	nTCode[4]="cFrame.execURL('fsall.pdf', 'frames[self]');";
	nLayer[4]="<ilayer left=5 top=1><p align=left><b><font face=Tahoma point-size=8 color=#FFFFFF>Download Schedules</font></b></ilayer>|";
	hLayer[4]="<ilayer left=5 top=1><p align=left><b><font face=Tahoma point-size=8 color=#FFFFFF>Download Schedules</font></b></ilayer>|";
	
	nTCode[5]="cFrame.execURL('fs_pondicherry.htm', 'frames[self]');";
	nLayer[5]="<ilayer left=5 top=1><p align=left><b><font face=Tahoma point-size=8 color=#FFFFFF>Pondicherry</font></b></ilayer>|";
	hLayer[5]="<ilayer left=5 top=1><p align=left><b><font face=Tahoma point-size=8 color=#FFFFFF>Pondicherry</font></b></ilayer>|";
	nTCode[6]="cFrame.execURL('fs_himachalpradesh.htm', 'frames[self]');";
	nLayer[6]="<ilayer left=5 top=1><p align=left><b><font face=Tahoma point-size=8 color=#FFFFFF>Himachal Pradesh</font></b></ilayer>|";
	hLayer[6]="<ilayer left=5 top=1><p align=left><b><font face=Tahoma point-size=8 color=#FFFFFF>Himachal Pradesh</font></b></ilayer>|";
	nTCode[7]="cFrame.execURL('fs_others.htm', 'frames[self]');";
	nLayer[7]="<ilayer left=5 top=1><p align=left><b><font face=Tahoma point-size=8 color=#FFFFFF>Pant Nagar - Nainital</font></b></ilayer>|";
	hLayer[7]="<ilayer left=5 top=1><p align=left><b><font face=Tahoma point-size=8 color=#FFFFFF>Pant Nagar - Nainital</font></b></ilayer>|";
	nTCode[8]="cFrame.execURL('fsall.pdf', 'frames[self]');";
	nLayer[8]="<ilayer left=5 top=1><p align=left><b><font face=Tahoma point-size=8 color=#FFFFFF>Download Schedules</font></b></ilayer>|";
	hLayer[8]="<ilayer left=5 top=1><p align=left><b><font face=Tahoma point-size=8 color=#FFFFFF>Download Schedules</font></b></ilayer>|";
	

var tbUseToolbar = false;
var lmcHS = null;


	function GetCurCmd(e) {
		//IE,SM,OP
		//This function will return the current command under the mouse pointer.
		//It will return null if the mouse is not over any command.
		//------------------------------
		//Version 1.5
		//
		if(SM)
			var cc = e;
		else {
			var cc = mFrame.window.event;
			if(!cc)
				cc = cFrame.window.event;
			cc = cc.srcElement;
		}
		while(cc.id=="") {
			cc = cc.parentElement;
			if(cc==null)
				break;
		}
		return cc;
	}

	function HoverSel(mode, imgLName, imgRName, e) {
		//IE,SM,OP
		//This is the function called every time the mouse pointer is moved over a command.
		//------------------------------
		//mode: 0 if the mouse is moving over the command and 1 if is moving away.
		//imgLName: Name of the left image object, if any.
		//imgRName: Name of the right image object, if any.
		//------------------------------
		//Version 15.0
		//
		var imgL = new Image;
		var imgLRsc = new Image;
		var imgR = new Image;
		var imgRRsc = new Image;
		var nStyle;
		var mc;
		
		if(mode==0 && OpenMenus[nOM].SelCommand!=null)
			HoverSel(1);
		
		if(imgLName!="_")
			var imgL = eval("mFrame.document.images['"+imgLName+"']");
		if(imgRName!="_")
			var imgR = eval("mFrame.document.images['"+imgRName+"']");
		
		if(mode==0) {
			mc = GetCurCmd(e);
			if(nOM>1)
				if(mc==OpenMenus[nOM-1].SelCommand)
					return false;
			if(BV>4)
				while(mc.parentNode.parentNode.id!=OpenMenus[nOM].mName)
					Hide();
			else
				if(OpenMenus[nOM].SelCommand || nOM>1)
					while(!InMenu()&&nOM>1)
						Hide();
			if(imgLName!='_') imgLRsc = eval(imgLName+"On");
			if(imgRName!='_') imgRRsc = eval(imgRName+"On");
			if(OP)
				mc.hasBorder = true;
			else {
				mc.hasBorder = mc.style.borderLeft.split(" ").length==3;
				if(OpenMenus[nOM].frmt.backgroundImage!="") mc.hasBorder = false;
			}
			OpenMenus[nOM].SelCommand = mc;
			OpenMenus[nOM].SelCommandPar = [imgLName,imgRName,SM?mc.getAttribute("style"):mc.style.cssText];
			if(SM)
				mc.setAttribute("style", GetCStyle(mc.style) + hStyle[mc.id]);
			else
				mc.style.cssText = GetCStyle(mc.style) + hStyle[mc.id];
			if(SelSndId) PlaySound();
		} else {
			mc = (mode==1)?OpenMenus[nOM].SelCommand:OpenMenus[nOM].Opener;
			imgLName = (mode==1)?OpenMenus[nOM].SelCommandPar[0]:OpenMenus[nOM].OpenerPar[0];
			imgRName = (mode==1)?OpenMenus[nOM].SelCommandPar[1]:OpenMenus[nOM].OpenerPar[1];
			nStyle = (mode==1)?OpenMenus[nOM].SelCommandPar[2]:OpenMenus[nOM].OpenerPar[2];
			mc.style.background = "";
			if(SM)
				mc.setAttribute("style", nStyle);
			else
				mc.style.cssText = nStyle;
			if(imgLName!='_') imgLRsc = eval(imgLName+"Off");
			if(imgRName!='_') imgRRsc = eval(imgRName+"Off");
			window.status = "";
			OpenMenus[nOM].SelCommand = null;			
		}
		
		FixHover(mc, mode);
		
		if(imgLName!='_') {
			imgL = eval("mFrame.document.images."+imgLName);
			imgL.src = imgLRsc.src;
		}
		if(imgRName!='_') {
			imgR = eval("mFrame.document.images."+imgRName);
			imgR.src = imgRRsc.src;
		}
		
		return true;
	}
	
	function FixHover(mc, mode) {
		//IE,SM
		//This function fixes the look of the commands when using special highlighting effects.
		//------------------------------
		//Version 1.0
		//
		var s,q,k,x,i;
		if(mode==0) {
			if(!mc.hasBorder) {
				if(BV>4)
					s = mc.getElementsByTagName("SPAN")[0];
				else
					s = mc.document.all.tags("SPAN")[0];
				mc.s = s;
				mc.stop = s.style.top;
				mc.sleft = s.style.left;
				
				q = mc.style.borderLeft.indexOf("none")!=-1;
				k = mc.style.borderLeft.split(" ").length==3;
				x = mc.style.borderLeft.indexOf("solid")!=-1;
				i = OpenMenus[nOM].frmt.backgroundImage!="";
				
				if((k&&!SM || SM&&(k&&!q)) && !x || i) {
					s.style.left = CBparseInt(s.style.left) - GetBorderWidth(mc.style.borderLeft);
					s.style.top = CBparseInt(s.style.top) - GetBorderWidth(mc.style.borderTop);
				}
				if(SM&&!q&&!x) {
					mc.cwidth = mc.style.width;
					mc.cheight = mc.style.height;
					mc.style.width = CBparseInt(mc.style.width) - 2*GetBorderWidth(mc.style.borderLeft);
					mc.style.height = CBparseInt(mc.style.height) - 2*GetBorderWidth(mc.style.borderTop);
				}
			}
		} else {
			if(!mc.hasBorder) {
				mc.s.style.top = mc.stop;
				mc.s.style.left = mc.sleft;
				if(SM) {
					mc.style.width = mc.cwidth;
					mc.style.height = mc.cheight;
				}
			}
		}
	}
	
	function NSHoverSel(mode, mc, bcolor) {
		//NS
		//This is the function called every time the mouse pointer is moved over or away from a command.
		//------------------------------
		//mode: 0 if the mouse is moving over the command and 1 if is moving away.
		//mc: Name of the layer that corresponds to the selected command.
		//n: Unique ID that identifies this command. Used to retrieve the data from the nLayer or hLayer array.
		//bcolor: Background color of the command. Ignored if the group uses a background image.
		//w: Width of the command's layer.
		//h: Height of the command's layer.
		//------------------------------
		//Version 11.2
		//
		var n;
		var LayerHTML;
		
		window.clearTimeout(CBparseInt(HTHnd[nOM]));HTHnd[nOM] = 0;
		if(!nOM) return false;
		
		if(mode==0 && OpenMenus[nOM].SelCommand!=null)
			NSHoverSel(1);
		
		if(mode==0) {
			mc = mc.parentLayer.layers[mc.name.substr(0, mc.name.indexOf("EH"))];
			n = CBparseInt(mc.name.substr(2));
			if(nOM>1)
				if(mc==OpenMenus[nOM-1].SelCommand)
					return false;
			while(!InMenu()&&nOM>1)
				Hide();
			LayerHTML = hLayer[n];
			OpenMenus[nOM].SelCommand = mc;
			OpenMenus[nOM].SelCommandPar = mc.bgColor;
			mc.bgColor = (LayerHTML.split("|")[1]!="")?null:bcolor;
			if(SelSndId) PlaySound();
		} else {
			mc = (mode==1)?OpenMenus[nOM].SelCommand:OpenMenus[nOM].Opener;
			bcolor = (mode==1)?OpenMenus[nOM].SelCommandPar:OpenMenus[nOM].OpenerPar;
			n = CBparseInt(mc.name.substr(2));
			LayerHTML = nLayer[n];
			mc.bgColor = (mc.parentLayer.background.src!="" || LayerHTML.split("|")[1]!="")?null:bcolor;
			window.status = "";
			OpenMenus[nOM].SelCommand = null;
		}
		mc.clip.width = mc.parentLayer.clip.width - 2*mc.left;
		mc.document.open();
		mc.document.write(LayerHTML.split("|")[0]);
		mc.document.close();
		mc.backgound = LayerHTML.split("|")[1];

		return true;
	}

	function Hide() {
		//IE,NS,SM,OP
		//This function hides the last opened group and it keeps hiding all the groups until
		//no more groups are opened or the mouse is over one of them.
		//Also takes care of reseting any highlighted commands.
		//------------------------------
		//Version 4.1
		//
		window.clearTimeout(HTHnd[nOM]);HTHnd[nOM] = 0;
		window.clearTimeout(AnimHnd);AnimHnd = 0;
		window.clearTimeout(TimerHideHnd);

		if(OpenMenus[nOM].SelCommand!=null) {
			if(IE) HoverSel(1);
			if(NS) NSHoverSel(1);
		}
		if(OpenMenus[nOM].Opener!=null) {
			if(IE) HoverSel(3);
			if(NS) NSHoverSel(3);
		}

		OpenMenus[nOM].visibility = "hidden";
		nOM--;

		if(nOM>0)
			if(!InMenu())
				HTHnd[nOM] = window.setTimeout("Hide()", HideSpeed/4);

		if(nOM==0) {
			if(tbUseToolbar && lmcHS) {
				if(IE) hsHoverSel(1);
				if(NS) hsNSHoverSel(1);
			}
			FormsTweak("visible");
		}
	}

	function ShowMenu(mName, x, y, isCascading, hsImgName, algn) {
		//IE,NS,SM,OP
		//This is the main function to show the menus when a hotspot is triggered or a cascading command is activated.
		//------------------------------
		//mName: Name of the <div> or <layer> to be shown.
		//x: Left position of the menu.
		//y: Top position of the menu.
		//isCascading: True if the menu has been triggered from a command, and not from a hotspot.
		//------------------------------
		//Version 15.0
		//
		window.clearTimeout(CBparseInt(HTHnd[nOM]));HTHnd[nOM] = 0;
		x = CBparseInt(x);y = CBparseInt(y);
		
		if(IE)
			if(BV>4)
				var Menu = mFrame.document.getElementById(mName);
			else
				var Menu = mFrame.document.all[mName];
		if(NS)
			var Menu = mFrame.document.layers[mName];
		if(!Menu)
			return false;		
		if(IE) {
			Menu = Menu.style;
			if(BV>4)
				Menu.frmt = mFrame.document.getElementById(mName+"frmt").style;
			else
				Menu.frmt = mFrame.document.all[mName+"frmt"].style;
		}
		if(Menu==OpenMenus[nOM])
			return false;
			
		if(AnimHnd && nOM>0) {
			AnimStep=100;
			Animate();
		}
			
		if(!isCascading) {
			var oldlmcHS = lmcHS;
			lmcHS = null;
			HideAll();
			lmcHS = oldlmcHS;
		}
		
		Menu.mName = mName;
		Menu.Opener = nOM>0?OpenMenus[nOM].SelCommand:null;
		Menu.OpenerPar = nOM>0?OpenMenus[nOM].SelCommandPar:null;
		Menu.SelCommand = null;
		if(OP) {
			Menu.width = Menu.pixelWidth;
			Menu.height = Menu.pixelHeight;
		}
		
		if(!isCascading) {
			if(hsImgName) {
				var imgObj = cFrame.document.images[hsImgName.split("|")[0]];
				if(imgObj) {
					var tbMode = hsImgName.split("|")[1];
					if(tbMode&2) x = AutoPos(Menu, imgObj, algn)[0];
					if(tbMode&1) y = AutoPos(Menu, imgObj, algn)[1];
				}
			}

		}
	
		var pW = GetWidthHeight()[0] + GetLeftTop()[0];
		var pH = GetWidthHeight()[1] + GetLeftTop()[1];
		
		if(IE) {
			if(isCascading) {
				x = CBparseInt(OpenMenus[nOM].left) + CBparseInt(OpenMenus[nOM].width) - 6;
				y = CBparseInt(OpenMenus[nOM].SelCommand.style.top) + CBparseInt(OpenMenus[nOM].top) - y;

				Menu.left = (x+CBparseInt(Menu.width)>pW)?CBparseInt(OpenMenus[nOM].left) - CBparseInt(Menu.width) + 6:x;
				Menu.top =  (y+CBparseInt(Menu.height)>pH)?pH - CBparseInt(Menu.height):y;
			} else {
				Menu.left = (x+CBparseInt(Menu.width)>pW)?pW - CBparseInt(Menu.width):x;
				Menu.top =  (y+CBparseInt(Menu.height)>pH)?pH - CBparseInt(Menu.height):y;
			}
			if(IsWin&&!SM)
				Menu.clip = "rect(0 0 0 0)";
		}
		if(NS) {
			if(isCascading) {
				x = OpenMenus[nOM].left + OpenMenus[nOM].clip.width - 6;
				y = OpenMenus[nOM].top + OpenMenus[nOM].SelCommand.top;

				x = (x+Menu.w>pW)?OpenMenus[nOM].left - Menu.w + 6:x;
				y = (y+Menu.h>pH)?pH - Menu.h:y;
			} else {
				x = (x+Menu.w>pW)?pW - Menu.w:x;
				y = (y+Menu.h>pH)?pH - Menu.h:y;
			}
			Menu.clip.width = 0;
			Menu.clip.height = 0;
			Menu.moveToAbsolute(x,y);
		}
		if(isCascading)
			Menu.zIndex = CBparseInt(OpenMenus[nOM].zIndex) + 1;
		OpenMenus[++nOM] = Menu;
		if(NS) FillCommands();
		if(SM&&!OP) FixCommands(mName);
		Menu.visibility = "visible";
		HTHnd[nOM] = 0;
		if((IE&&IsWin&&!SM)||NS)
			AnimHnd = window.setTimeout("Animate()", 10);
		FormsTweak("hidden");
		
		if(!isCascading&&!IsContext) {
			IsOverHS = true;
			IsContext = false;
		}
		window.clearTimeout(TimerHideHnd);
		TimerHideHnd = window.setTimeout("AutoHide()", TimerHideDelay);
		
		if(SelSndId) PlaySound();
	
		return true;
	}
	
	function FixCommands(mName) {
		//SM
		//This function is used to fix the way the Gecko engine calculates
		//the borders and the way they affect the size of divs
		//------------------------------
		//Version 1.5
		//
		var m = mFrame.document.getElementById(mName);
		if(!m.Fixed) {
			var j;
			var sd = m.getElementsByTagName("DIV");
			var b = GetBorderWidth(sd[0].style.borderLeft);
			sd[0].style.width = CBparseInt(sd[0].style.width) - 2*b;
			sd[0].style.height = CBparseInt(sd[0].style.height) - 2*b;
			for(i=0;i<(sd.length-1)/2;i++) {
				j = (i*2)+1;
				if(sd[j].style.borderLeft.indexOf("none")==-1) {
					sd[j].style.width = CBparseInt(sd[j].style.width) - 2*GetBorderWidth(sd[j].style.borderLeft);
					sd[j].style.height = CBparseInt(sd[j].style.height) - 2*GetBorderWidth(sd[j].style.borderTop);
				}
			}
				
		}
		m.Fixed = true;
	}
	
	function FillCommands() {
		//NS
		//This function is used to avoid having the same declaration for the normal
		//state of the commands
		//------------------------------
		//Version 1.2
		//
		var LayerHTML;
		var n;
		var m = OpenMenus[nOM].layers[0];
		if(!m.Filled) {
			for(var sl=0; sl<m.layers.length-1; sl++) {
				var slo = m.layers[sl];
				if(slo.name.indexOf("EH")==-1 && slo.name.indexOf("MC")==0) {
					slo.clip.width = slo.parentLayer.clip.width - 2*slo.left;
					n = CBparseInt(slo.name.substr(2));
					LayerHTML = nLayer[n];
					slo.document.open();
					slo.document.write(LayerHTML.split("|")[0]);
					slo.document.close();
					m.layers["MC"+n].background = LayerHTML.split("|")[1];
				}
			}
		}
		m.Filled = true;
	}

	function Animate() {
		//IE,NS
		//This function is called by ShowMenu every time a new group must be displayed and produces the predefined unfolding effect.
		//Currently is disabled for Navigator, because of some weird bugs we found with the clip property of the layers.
		//------------------------------
		//Version 1.9
		//
		var r = '';
		var nw = nh = 0;
		switch(fx) {
			case 1:
				if(IE) r = "0 " + AnimStep + "% " + AnimStep + "% 0";
				if(NS) nw = AnimStep; nh = AnimStep;
				break;
			case 2:
				if(IE) r = "0 100% " + AnimStep + "% 0";
				if(NS) nw = 100; nh = AnimStep;
				break;
			case 3:
				if(IE) r = "0 " + AnimStep + "% 100% 0";
				if(NS) nw = AnimStep; nh = 100;
				break;
			case 0:
				if(IE) r = "0 100% 100% 0";
				if(NS) nw = 100; nh = 100;
				break;
		}
		if(OpenMenus[nOM]) {
			with(OpenMenus[nOM]) {
				if(IE)
					clip =  "rect(" + r + ")";
				if(NS) {
					clip.width = w*(nw/100);
					clip.height = h*(nh/100);
				}
			}
			AnimStep += 20;
			if(AnimStep<=100)
				AnimHnd = window.setTimeout("Animate()",25);
			else {
				window.clearTimeout(AnimHnd);
				AnimStep = 0;
				AnimHnd = 0;
			}
		}
	}
	
	function InMenu() {
		//IE,NS,SM,OP
		//This function returns true if the mouse pointer is over the last opened menu.
		//------------------------------
		//Version 1.8
		//
		var m = OpenMenus[nOM];
		if(!m)
			return false;
		if(IE&&!SM)
			SetPointerPos();
		var l = CBparseInt(m.left);
		var r = l+(IE?CBparseInt(m.width):m.clip.width);
		var t = CBparseInt(m.top);
		var b = t+(IE?CBparseInt(m.height):m.clip.height);
		return ((mX>=l && mX<=r) && (mY>=t && mY<=b));
	}

	function SetPointerPos(e) {
		//IE,NS,SM,OP
		//This function sets the mX and mY variables with the current position of the mouse pointer.
		//------------------------------
		//e: Only used under Navigator, corresponds to the Event object.
		//------------------------------
		//Version 1.6
		//
		if(IE) {
			if(!SM) {
				if(mFrame!=cFrame||event==null)
					if(mFrame.window.event==null)
						return;
					else
						e = mFrame.window.event;
				else
					e = event;
			}
			mX = e.clientX + GetLeftTop()[0];
			mY = e.clientY + GetLeftTop()[1];
		}
		if(NS) {
			mX = e.pageX;
			mY = e.pageY;
		}
	}
	
	function HideMenus(e) {
		//IE,NS,SM,OP
		//This function checks if the mouse pointer is on a valid position and if the current menu should be kept visible.
		//The function is called every time the mouse pointer is moved over the document area.
		//------------------------------
		//e: Only used under Navigator, corresponds to the Event object.
		//------------------------------
		//Version 25.1
		//
		if(nOM>0) {
			SetPointerPos(e);
			if(OpenMenus[nOM].SelCommand!=null)
				if(!InMenu()&&!HTHnd[nOM])
					HTHnd[nOM] = window.setTimeout("if(nOM>0)if(!InMenu())Hide()", HideSpeed);
		}
	}
	
	function FormsTweak(state) {
		//IE,SM,OP
		//This is an undocumented function, which can be used to hide every listbox (or combo) element on a page.
		//This can be useful if the menus will be displayed over an area where is a combo box, which is an element that cannot be placed behind the menus and it will always appear over the menus resulting in a very undesirable effect.
		//------------------------------
		//Version 2.0
		//
		if(DoFormsTweak && IE)
			for(var f = 0; f <= (mFrame.document.forms.length - 1); f++)
				for(var e = 0; e <= (mFrame.document.forms[f].elements.length - 1); e++)
					if(mFrame.document.forms[f].elements[e].type=="select-one")
						mFrame.document.forms[f].elements[e].style.visibility = state;
	}

	function execURL(url, tframe) {
		//IE,NS,SM,OP
		//This function is called every time a command is triggered to jump to another page or execute some javascript code.
		//------------------------------
		//url: Encrypted URL that must be opened or executed.
		//tframe: If the url is a document location, tframe is the target frame where this document will be opened.
		//------------------------------
		//Version 1.1
		//
		HideAll();
		window.setTimeout("execURL2('" + url + "', '" + tframe + "')", 100);
	}

	function execURL2(url, tframe) {
		//IE,NS,SM,OP
		//This function is called every time a command is triggered to jump to another page or execute some javascript code.
		//------------------------------
		//url: Encrypted URL that must be opened or executed.
		//tframe: If the url is a document location, tframe is the target frame where this document will be opened.
		//------------------------------
		//Version 1.1
		//
		var fObj = eval(rStr(tframe));
		url = rStr(url);
		url.indexOf("javascript")!=url.indexOf("vbscript")?eval(url):fObj.location.href = url;
	}

	function rStr(s) {
		//IE,NS,SM,OP
		//This function is used to decrypt the URL parameter from the triggered command.
		//------------------------------
		//Version 1.1
		//
		s = xrep(s, "\x1E", "'");
		s = xrep(s, "\x1D", "\x22");
		s = xrep(s, "\x1C", ",");
		return s;
	}

	function xrep(s, f, n) {
		//IE,NS,SM,OP
		//This function looks for any occurrence of the f string and replaces it with the n string.
		//------------------------------
		//Version 1.0
		//
		var tmp = s.split(f);
		return tmp.join(n);
	}

	function hNSCClick(e) {
		//NS
		//This function executes the selected command's trigger code.
		//------------------------------
		//Version 1.0
		//
		eval(this.TCode);
	}
	
	function CBparseInt(n) {
		//IE,NS,SM,OP
		//This function fixes a bug in Navigator's CBparseInt() function for the Mac.
		//------------------------------
		//Version 1.3
		//
		if(typeof(n)=="number"||typeof(n)=="string")
			return (!IsWin&&!SM?n:parseInt(n))*1;
		return 0;
	}

	function HideAll() {
		//IE,NS,SM,OP
		//This function will hide all the currently opened menus.
		//------------------------------
		//Version 1.0
		//
		while(nOM>0)
			Hide();
	}

	function GetLeftTop() {
		//IE,NS,SM,OP
		//This function returns the scroll bars position on the menus frame.
		//------------------------------
		//Version 2.0
		//
		if(IE)
			return [OP?0:SM?mFrame.scrollX:mFrame.document.body.scrollLeft,OP?0:SM?mFrame.scrollY:mFrame.document.body.scrollTop];
		if(NS)
			return [mFrame.pageXOffset,mFrame.pageYOffset];
	}
	
	function tHideAll() {
		//IE,NS,SM,OP
		//This function is called when the mouse is moved away from a hotspot to close any opened menu.
		//------------------------------
		//Version 1.2
		//
		IsOverHS = false;
		HTHnd[nOM] = window.setTimeout("if(!InMenu()&&nOM==1)HideAll(); else HTHnd[nOM]=0;", HideSpeed);
	}

	function GetWidthHeight() {
		//IE,NS,SM,OP
		//This function returns the width and height of the menus frame.
		//------------------------------
		//Version 2.0
		//
		if(IE&&!SM)
			return [mFrame.document.body.clientWidth,mFrame.document.body.clientHeight];
		if(NS||SM)
			return [mFrame.innerWidth,mFrame.innerHeight];
	}
	
	function GetBorderWidth(b) {
		//IE,SM,SM,OP
		//This functions returns the width of a border
		//------------------------------
		//Version 1.1
		//
		if(OP) return 0;
		var w;
		var l = b.split(" ");
		for(var i=0; i<l.length; i++) {
			w = CBparseInt(l[i]);
			if(w>0)
				return w;
		}
		return 0;
	}
	
	function GetCStyle(cmc) {
		//IE,SM,OP
		//This function completes the style of command with all the common
		//parameters from the original style code.
		//------------------------------
		//Version 1.0
		//
		return "position: absolute; left:" + cmc.left + 
			   "; top: " + cmc.top + 
			   "; width: " + (OP?cmc.pixelWidth:cmc.width) + 
			   "; height: " + (OP?cmc.pixelHeight:cmc.height) + "; ";
	}
	
	function AutoPos(Menu, imgObj, arAlignment) {
		//IE,NS,SM,OP
		//This function finds the image-based hotspot and returns the position at which 
		//the menu should be displayed based on the alignment setting.
		//------------------------------
		//Version 1.1
		//
		var x = GetImgXY(imgObj)[0];
		var y = GetImgXY(imgObj)[1];
		var mW = CBparseInt(NS?Menu.w:Menu.width);
		var mH = CBparseInt(NS?Menu.h:Menu.height);
			
		switch(arAlignment) {
			case 0:
				y += GetImgWH(imgObj)[1];
				break;
			case 1:
				x += GetImgWH(imgObj)[0] - mW;
				y += GetImgWH(imgObj)[1];
				break;
			case 2:
				y -= mH;
				break;
			case 3:
				x += GetImgWH(imgObj)[0] - mW;
				y -= mH;
				break;
			case 4:
				x -= mW;
				break;
			case 5:
				x -= mW;
				y -= mH - GetImgWH(imgObj)[1];
				break;
			case 6:
				x += GetImgWH(imgObj)[0];
				break;
			case 7:
				x += GetImgWH(imgObj)[0];
				y -= mH - GetImgWH(imgObj)[1];
				break;
		}
		
		return [x, y];
	}

	function GetImgXY(imgObj) {
		//IE,NS,SM,OP
		//This function returns the x,y coordinates of an image.
		//------------------------------
		//Version 1.1
		//
		var x;
		var y;
			
		if(IE)	{
			x = getOffset(imgObj)[0];
			y = getOffset(imgObj)[1];
		} else	{
			x = imgObj.x;
			y = imgObj.y;
		}
			
		return [x, y];
		
	}

	function GetImgWH(imgObj) {
		//IE,NS,SM,OP
		//This function returns the width and height of an image.
		//------------------------------
		//Version 1.0
		//
		return [imgObj.width, imgObj.height];
	}

	function getOffset(imgObj) {
		//IE,NS,SM,OP
		//This function returns the horizontal and vertical offset of an object.
		//------------------------------
		//Version 1.0
		//
		x = imgObj.offsetLeft;
		y = imgObj.offsetTop;
		ce =imgObj.offsetParent;
		while (ce!=null)	{
			y += ce.offsetTop;
			x += ce.offsetLeft;
			ce = ce.offsetParent;
		}
		return [x,y];
		
	}
	
	function AutoHide() {
		//IE,NS,SM,OP
		//This function hides the menus, even when a submenu is open and no
		//command has been selected.
		//------------------------------
		//Version 1.1
		//
		var original_nOM = nOM;
		var OktoClose = true;
		for(;nOM>0;nOM--)
			if(InMenu()) {
				OktoClose = false;
				break;
			}
		nOM = original_nOM;
		if(OktoClose&&!IsOverHS)
			HideAll();
		
		TimerHideHnd = window.setTimeout("AutoHide()", TimerHideDelay);		
	}
	
	function PlaySound() {
		//IE,NS
		//This function plays the embeded sound referenced by SelSndId.
		//WARNING: This function is under development
		//------------------------------
		//Version 1.0
		//
		if(IsWin&&!SM&&(IE&&BV>4||NS)) {
			var s = mFrame.document.embeds["Snd" + SelSndId];
			if(s) s.play();
		}
		SelSndId = 0;
	}
	
	function ShowContextMenu(e) {
		//IE,NS
		//This function is called when a user rightclicks on the document and it will show a predefined menu.
		//------------------------------
		//Version 1.2
		//
		if(cntxMenu!='') {
			if(IE) {
				SetPointerPos();
				IsContext = true;
				cFrame.ShowMenu(cntxMenu, mX-1, mY-1, false);
				return false;
			}
			
			if(NS)
				if(e.which==3) {
					IsContext = true;
					cFrame.ShowMenu(cntxMenu, e.x-1, e.y-1, false);
					return false;
				}
		}		
		return true;
	}

	function SetUpEvents() {
		//IE,NS,SM,OP
		//This function initializes the frame variables and setups the event handling.
		//------------------------------
		//Version 2.0
		//
		if(!SM) onerror = errHandler;
		if(typeof(mFrame)=="undefined")
		mFrame = eval(frames['self']);
		if(typeof(mFrame)=="undefined")
			window.setTimeout("SetUpEvents()",10);
		else {
			if(NS) {
				mFrame.captureEvents(Event.MOUSEMOVE);
				mFrame.onmousemove = HideMenus;
				mFrame.window.captureEvents(Event.MOUSEDOWN);
				mFrame.window.onmousedown = ShowContextMenu;
				PrepareEvents();
			}
			if(IE) {
				document.onmousemove = HideMenus;
				mFrame.document.onmousemove = document.onmousemove;
				if(!SM&&!OP&&IsWin) mFrame.document.oncontextmenu = ShowContextMenu;
				if(SM) {
					var i = 0;
					var m;
					while(mFrame.document.getElementById(i)) {
						m = mFrame.document.getElementById(i++);
						m.style.width = CBparseInt(m.style.width) - CBparseInt(m.style.paddingLeft)*2;
						m.style.height = CBparseInt(m.style.height) - CBparseInt(m.style.paddingTop)*2;
					}
				}
			}
			MenusReady = true;
		}
	}
	
	function errHandler(sMsg,sUrl,sLine) {
		//IE,NS
		//This function will trap any errors generated by the scripts and filter the unhandled ones.
		//------------------------------
		//Version 1.1
		//
		if(sMsg.substr(0,16)!="Access is denied"&&sMsg!="Permission denied")
			alert("Java Script Error\n" +
			      "\nDescription: " + sMsg +
			      "\nSource: " + sUrl +
			      "\nLine: "+sLine);
		return true;
	}
	
	function FixPointSize(s) {
		//NS
		//This function increases the point-font value of any tag.
		//------------------------------
		//Version 1.0
		//
		var ls = s.split("point-size=")[0] + "point-size=";
		var ps = s.split("point-size=")[1].substr(0,1);
		var rs = s.split("point-size=")[1].substr(1);
		ps = parseInt(ps) + 3;
		
		return ls + ps + rs;
	}

	function PrepareEvents() {
		//NS
		//This function is called right after the menus are rendered.
		//It has been designed to attach the event handlers to the <layer> tag and
		//fix the font size problems with Navigator under the Mac and Linux.
		//------------------------------
		//Version 4.0
		//
		for(var l=0; l<mFrame.document.layers.length; l++) {
			var lo = mFrame.document.layers[l];
			if(lo.layers.length) {
				lo.w = lo.clip.width;
				lo.h = lo.clip.height;
				for(var sl=0; sl<lo.layers[0].layers.length; sl++) {
					var slo = mFrame.document.layers[l].layers[0].layers[sl];
					if(slo.name.indexOf("EH")>0) {
						slo.document.onmouseup = hNSCClick;
						slo.document.TCode = nTCode[slo.name.split("EH")[1]];
					} else
						if((slo.name.indexOf("MC")!=-1)&&!IsWin)
							if(nLayer[slo.name.substr(2)].split("|")[0]!="") {
								nLayer[slo.name.substr(2)] = FixPointSize(nLayer[slo.name.substr(2)]);							
								hLayer[slo.name.substr(2)] = FixPointSize(hLayer[slo.name.substr(2)]);
							}			
				}

			}
		}
	}

	if(IE)
		with(document) {
			open();
			write("<div id=\"upper\" style=\"position: absolute; left:0; top:0; width: 143; height: 67; z-index: 100; visibility: hidden\"><div id=\"upperfrmt\" style=\"width: 143; height: 67; background-color: #FFFFFF; border-left: #E0E0E0 1px solid ; border-right: #808080 1px solid ; border-top: #E0E0E0 1px solid ; border-bottom: #808080 1px solid ;\"><div  style=\"position: absolute; border: 0px; left: 2; top: 2; width: 139; height: 15; font-family: Tahoma; font-size: 10px; font-weight: bold; font-style: none; text-decoration: none; color: #FFFFFF; cursor: hand; background-color: #FF8E2B;\" id=0 OnMouseOver=\"cFrame.HoverSel(0,\'_\',\'_\',this);window.status=\'pondicherry flights\';\" OnClick=\"cFrame.execURL(\'fs_pondicherry.htm\', \'frames[self]\');\"><span style=\"position:absolute; left: 5; top: 1; width: 129;\"><div align=left>Pondicherry</div></span></div> <div  style=\"position: absolute; border: 0px; left: 2; top: 18; width: 139; height: 15; font-family: Tahoma; font-size: 10px; font-weight: bold; font-style: none; text-decoration: none; color: #FFFFFF; cursor: hand; background-color: #FF8E2B;\" id=1 OnMouseOver=\"cFrame.HoverSel(0,\'_\',\'_\',this);window.status=\'himachal pradesh flights\';\" OnClick=\"cFrame.execURL(\'fs_himachalpradesh.htm\', \'frames[self]\');\"><span style=\"position:absolute; left: 5; top: 1; width: 129;\"><div align=left>Himachal Pradesh</div></span></div><div  style=\"position: absolute; border: 0px; left: 2; top: 34; width: 139; height: 15; font-family: Tahoma; font-size: 10px; font-weight: bold; font-style: none; text-decoration: none; color: #FFFFFF; cursor: hand; background-color: #FF8E2B;\" id=2 OnMouseOver=\"cFrame.HoverSel(0,\'_\',\'_\',this);window.status=\'\';\" OnClick=\"cFrame.execURL(\'fs_others.htm\', \'frames[self]\');\"><span style=\"position:absolute; left: 5; top: 1; width: 129;\"><div align=left>Pant Nagar - Nainital</div></span></div><div  style=\"position: absolute; border: 0px; left: 2; top: 50; width: 139; height: 15; font-family: Tahoma; font-size: 10px; font-weight: bold; font-style: none; text-decoration: none; color: #FFFFFF; cursor: hand; background-color: #FF8E2B;\" id=3 OnMouseOver=\"cFrame.HoverSel(0,\'_\',\'_\',this);window.status=\'\';\" OnClick=\"cFrame.execURL(\'fsall.pdf\', \'frames[self]\');\"><span style=\"position:absolute; left: 5; top: 1; width: 129;\"><div align=left>Download Schedules</div></span></div>  <div  style=\"position: absolute; border: 0px; left: 2; top: 66; width: 139; height: 15; font-family: Tahoma; font-size: 10px; font-weight: bold; font-style: none; text-decoration: none; color: #FFFFFF; cursor: hand; background-color: #FF8E2B;\" id=11 OnMouseOver=\"cFrame.HoverSel(0,\'_\',\'_\',this);window.status=\'\';\" OnClick=\"cFrame.execURL(\'pantnagar.htm\', \'frames[self]\');\"><span style=\"position:absolute; left: 5; top: 1; width: 129;\"><div align=left>Pant Nagar</div></span></div>  </div></div><div id=\"sider\" style=\"position: absolute; left:0; top:0; width: 143; height: 67; z-index: 100; visibility: hidden\"><div id=\"siderfrmt\" style=\"width: 143; height: 67; background-color: #FFFFFF; border-left: #E0E0E0 1px solid ; border-right: #808080 1px solid ; border-top: #E0E0E0 1px solid ; border-bottom: #808080 1px solid ;\"><div  style=\"position: absolute; border: 0px; left: 2; top: 2; width: 139; height: 15; font-family: Tahoma; font-size: 10px; font-weight: bold; font-style: none; text-decoration: none; color: #FFFFFF; cursor: hand; background-color: #FF8E2B;\" id=4 OnMouseOver=\"cFrame.HoverSel(0,\'_\',\'_\',this);window.status=\'pondicherry flights\';\" OnClick=\"cFrame.execURL(\'fs_pondicherry.htm\', \'frames[self]\');\"><span style=\"position:absolute; left: 5; top: 1; width: 129;\"><div align=left>Pondicherry</div></span></div><div  style=\"position: absolute; border: 0px; left: 2; top: 18; width: 139; height: 15; font-family: Tahoma; font-size: 10px; font-weight: bold; font-style: none; text-decoration: none; color: #FFFFFF; cursor: hand; background-color: #FF8E2B;\" id=5 OnMouseOver=\"cFrame.HoverSel(0,\'_\',\'_\',this);window.status=\'himachal pradesh flights\';\" OnClick=\"cFrame.execURL(\'fs_himachalpradesh.htm\', \'frames[self]\');\"><span style=\"position:absolute; left: 5; top: 1; width: 129;\"><div align=left>Himachal Pradesh</div></span></div><div  style=\"position: absolute; border: 0px; left: 2; top: 34; width: 139; height: 15; font-family: Tahoma; font-size: 10px; font-weight: bold; font-style: none; text-decoration: none; color: #FFFFFF; cursor: hand; background-color: #FF8E2B;\" id=6 OnMouseOver=\"cFrame.HoverSel(0,\'_\',\'_\',this);window.status=\'\';\" OnClick=\"cFrame.execURL(\'fs_others.htm\', \'frames[self]\');\"><span style=\"position:absolute; left: 5; top: 1; width: 129;\"><div align=left>Pant Nagar - Nainital</div></span></div><div  style=\"position: absolute; border: 0px; left: 2; top: 50; width: 139; height: 15; font-family: Tahoma; font-size: 10px; font-weight: bold; font-style: none; text-decoration: none; color: #FFFFFF; cursor: hand; background-color: #FF8E2B;\" id=7 OnMouseOver=\"cFrame.HoverSel(0,\'_\',\'_\',this);window.status=\'\';\" OnClick=\"cFrame.execURL(\'fsall.pdf\', \'frames[self]\');\"><span style=\"position:absolute; left: 5; top: 1; width: 129;\"><div align=left>Download Schedules</div></span></div><div  style=\"position: absolute; border: 0px; left: 2; top: 66; width: 139; height: 15; font-family: Tahoma; font-size: 10px; font-weight: bold; font-style: none; text-decoration: none; color: #FFFFFF; cursor: hand; background-color: #FF8E2B;\" id=8 OnMouseOver=\"cFrame.HoverSel(0,\'_\',\'_\',this);window.status=\'\';\" OnClick=\"cFrame.execURL(\'pantnagar.htm\', \'frames[self]\');\"><span style=\"position:absolute; left: 5; top: 1; width: 129;\"> <div align=left>Pant Nagar</div></span></div>    </div></div>");
			close();
		}
	if(NS)
		with(document) {
			open();
			write("<layer name=upper top=0 left=0 width=143 height=67 z-index=100 bgColor=#E0E0E0 visibility=hidden><layer bgColor=#FFFFFF left=1 top=1 width=141 height=65 z-index=101><layer name=MC1EH1 left=1 top=1 width=139 height=15 z-index=103 OnMouseOver=\"cFrame.NSHoverSel(0,this,\'#FFAE66\');window.status=\'pondicherry flights\';\"></layer><layer name=MC1 left=1 top=1 width=139 height=15 z-index=102 bgColor=#FF8E2B></layer><layer name=MC2EH2 left=1 top=17 width=139 height=15 z-index=103 OnMouseOver=\"cFrame.NSHoverSel(0,this,\'#FFAE66\');window.status=\'himachal pradesh flights\';\"></layer><layer name=MC2 left=1 top=17 width=139 height=15 z-index=102 bgColor=#FF8E2B></layer><layer name=MC3EH3 left=1 top=33 width=139 height=15 z-index=103 OnMouseOver=\"cFrame.NSHoverSel(0,this,\'#FFAE66\');window.status=\'\';\"></layer><layer name=MC3 left=1 top=33 width=139 height=15 z-index=102 bgColor=#FF8E2B></layer><layer name=MC4EH4 left=1 top=49 width=139 height=15 z-index=103 OnMouseOver=\"cFrame.NSHoverSel(0,this,\'#FFAE66\');window.status=\'\';\"></layer><layer name=MC4 left=1 top=49 width=139 height=15 z-index=102 bgColor=#FF8E2B></layer></layer></layer><layer name=MC9EH9 left=1 top=65 width=139 height=15 z-index=103 OnMouseOver=\"cFrame.NSHoverSel(0,this,\'#FFAE66\');window.status=\'pantnagar\';\"></layer>			<layer name=MC9 left=1 top=65 width=139 height=15 z-index=102 bgColor=#FF8E2B></layer></layer></layer><layer name=sider top=0 left=0 width=143 height=67 z-index=100 bgColor=#E0E0E0 visibility=hidden><layer bgColor=#FFFFFF left=1 top=1 width=141 height=65 z-index=101><layer name=MC5EH5 left=1 top=1 width=139 height=15 z-index=103 OnMouseOver=\"cFrame.NSHoverSel(0,this,\'#FFAE66\');window.status=\'pondicherry flights\';\"></layer><layer name=MC5 left=1 top=1 width=139 height=15 z-index=102 bgColor=#FF8E2B></layer><layer name=MC6EH6 left=1 top=17 width=139 height=15 z-index=103 OnMouseOver=\"cFrame.NSHoverSel(0,this,\'#FFAE66\');window.status=\'himachal pradesh flights\';\"></layer><layer name=MC6 left=1 top=17 width=139 height=15 z-index=102 bgColor=#FF8E2B></layer><layer name=MC7EH7 left=1 top=33 width=139 height=15 z-index=103 OnMouseOver=\"cFrame.NSHoverSel(0,this,\'#FFAE66\');window.status=\'\';\"></layer><layer name=MC7 left=1 top=33 width=139 height=15 z-index=102 bgColor=#FF8E2B></layer><layer name=MC8EH8 left=1 top=49 width=139 height=15 z-index=103 OnMouseOver=\"cFrame.NSHoverSel(0,this,\'#FFAE66\');window.status=\'\';\"></layer><layer name=MC8 left=1 top=49 width=139 height=15 z-index=102 bgColor=#FF8E2B></layer><layer name=MC10EH10 left=1 top=65 width=139 height=15 z-index=103 OnMouseOver=\"cFrame.NSHoverSel(0,this,\'#FFAE66\');window.status=\'pantnagar\';\"></layer><layer name=MC10 left=1 top=65 width=139 height=15 z-index=102 bgColor=#FF8E2B></layer></layer></layer>");
			
			close();
		}
SetUpEvents();

