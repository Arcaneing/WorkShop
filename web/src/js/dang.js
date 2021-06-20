//得到减号
var minus = document.getElementsByName("minus");
//得到加号
var plus = document.getElementsByName("plus");
//得到数量值
var amount = document.getElementsByName("amount");
//获取金额
var price = document.getElementsByName("price");

//一开始载入页面时显示的总金额
var s = 0;
for(let i = 0; i < amount.length; i++) {
	s += Math.round(price[i].value * amount[i].value * 100) / 100;
}
document.getElementById("totalPrice").innerHTML = s;

//当点击加号时
function plusa(index) {
	//得到商品数量 数量之加一
	amount[index].value = parseInt(amount[index].value) + 1;
	//重新计算金额数
	document.getElementById("price" + index).innerHTML = "¥" + Math.round(price[index].value * amount[index].value * 100) / 100;
	total();
}
//当点击减号时
function minusa(index) {
	if(amount[index].value == 1) {
		alert("不能再减了~~");
		return;
	}
	amount[index].value = parseInt(amount[index].value) - 1;
	document.getElementById("price" + index).innerHTML = "¥" + Math.round(price[index].value * amount[index].value * 100) / 100;
	total();
}
//计算总额
function total() {
	let sum = 0;
	for(let i = 0; i < amount.length; i++) {
		sum += Math.round(price[i].value * amount[i].value * 100) / 100;
	}
	document.getElementById("totalPrice").innerHTML = sum;
	return sum;
}

//对第一个加号进行操作
plus[0].onclick = function() {
	plusa(0);
}
minus[0].onclick = function() {
	minusa(0);
}
//对第二个加号进行操作
plus[1].onclick = function() {
	plusa(1);
}
minus[1].onclick = function() {
	minusa(1);
}

//一共有多少数量
function amounts(){
	var shu = 0;
	for (let i=0; i<amount.length; i++) {
		shu += parseInt(amount[i].value);
	}
	return shu;
}

//点击结算
function account(){
	confirm("您本次购买的商品信息如下: \n\n"
		+ "商品名称: 白岩松:白说、岛上书店; \n"
		+ "商品数量: "+ amounts() +"件; \n"
		+ "商品总计: "+ total() +"; \n"
		+ "运费: 0元; \n\n"
		+ "请确认以上信息是否有误!!!"
		);
}
