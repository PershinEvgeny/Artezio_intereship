var sum=0;
for(var i=10; i<=20; i++) {
	sum+=i;
}
console.log(sum);
function buttonClick() {
	clearDiv('result'); //очистка div результата
	var x1 = parseInt(document.getElementById('x1').value);
	var x2 = parseInt(document.getElementById('x2').value);
	
	if(Number.isNaN(x1) || Number.isNaN(x2)) {
		alert("В поля х1 и х2 должны быть введены числовые значения.");
	}
	else {
		var resultDiv = document.getElementById('result');
		resultDiv.append("x1  + x2 = "+(x1+x2));
	}	
}
//функция очистки элемента div
function clearDiv(elementID)
{
    document.getElementById(elementID).innerHTML = "";
}