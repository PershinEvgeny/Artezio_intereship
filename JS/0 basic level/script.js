var sum=0;
for(var i=10; i<=20; i++) {
	sum+=i;
}
console.log(sum);

function buttonClick() {
	clearDiv('result'); //очистка div результата
	var check = checkRadio(); //переменная для хранения значения радиокнопки
	var x1 = parseInt(document.getElementById('x1').value);
	var x2 = parseInt(document.getElementById('x2').value);
	if(document.getElementById('x1').value=="" || document.getElementById('x2').value=="") {
		alert("Поля x1 и x2 должны быть заполнены");
	}
	else if(Number.isNaN(x1) || Number.isNaN(x2)) {
		alert("В поля х1 и х2 должны быть введены числовые значения.");
	}
	else {
		var resultDiv = document.getElementById('result');		
		if (check==0) {
		resultDiv.append("Cумма всех чисел от x1 до x2 = " + sumX1X2(x1,x2));
		}
		else if(check==1) {
			resultDiv.append("Произведение всех чисел от x1 до x2 = " + mulX1X2(x1,x2));
		}
	}
}
//функция очистки элемента div
function clearDiv(elementID) {
    document.getElementById(elementID).innerHTML = "";
}
//функция подсчета суммы всех чисел от х1 до х2
function sumX1X2(x1, x2) {
	var resultSum = 0;
	if (x1<=x2){
		for (var i=x1; i<=x2; i++)
		{
			resultSum+=i;
		}
	}
	else {
		for (var i=x1; i>=x2; i--)
		{
			resultSum+=i;
		}		
	}
	return resultSum;
}
//функция перемножения всех чисел между х1 и х2
function mulX1X2(x1, x2) {
	var resultMul = 1;
	if (x1<=x2){
		for (var i=x1; i<=x2; i++)
		{
			resultMul*=i;
		}
	}
	else {
		for (var i=x1; i>=x2; i--)
		{
			resultMul*=i;
		}
	}
	return resultMul;
}
//функция очистки полей ввода х1,х2
function clearClick() {
	document.getElementById('x1').value="";
	document.getElementById('x2').value="";
}
//функция проверки выбора радиокнопки
function checkRadio() {
	var rad=document.getElementsByName('r1');
    for (var i=0;i<rad.length; i++) {
        if (rad[i].checked) {
            return i;
        }
	}
}