/*双击修改题目
function editEL(el){
    var old = el.innerHTML;
    var input = document.createElement('input');
    input.type = 'text';
    input.style = "width:80px;height:15px";
    input.onblur = function () {
        el.innerHTML = this.value ? this.value : old;
    };
    el.innerHTML = '';
    el.appendChild(input);
    input.focus();
}*/
//跳转登录
function login(){
    window.location.href = "login/toLogin";
}

/* js加载日期 */
function loadtm(){
	var days=new  Array ("日", "一", "二", "三", "四", "五", "六");  
	  var currentDT = new Date();  
	  var y,m,date,day,hs,ms,ss,theDateStr,theTimeStr;
	  y = currentDT.getFullYear(); //四位整数表示的年份  
	  m = currentDT.getMonth(); //月  
	  date = currentDT.getDate(); //日  
	  day = currentDT.getDay(); //星期  
	  hs = currentDT.getHours(); //时  
	  ms = currentDT.getMinutes(); //分  
	  ss = currentDT.getSeconds(); //秒  
	  theDateStr = y+"年"+  m +"月"+date+"日 星期"+days[day];
	  theTimeStr = p(hs)+":"+p(ms)+":"+p(ss);
	  //theDateStr = y+"年"+  m +"月"+date+"日 星期"+days[day]+" "+hs+":"+ms+":"+ss; 
	  //theDateStr = " "+p(hs)+":"+p(ms)+":"+p(ss); 
	  //console.log(theDateStr)
	  $(".theDateStr").html(theDateStr);
	  $(".theTimeStr").html(theTimeStr);
    // setTimeout 在执行时,是在载入后延迟指定时间后,去执行一次表达式,仅执行一次
	 
}
function p(s) {
	return s < 10 ? '0' + s: s;
}

window.setInterval(loadtm ,500);