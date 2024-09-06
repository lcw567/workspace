/*
    형변환

    1. 명시적
    2. 묵시적
*/

let age = 45;

console.log(typeof Age);
//명시적
let strAge = age.toString();
console.log(typeof strAge);

//묵시적 
let tmp = age + "";
console.log(typeof tmp);

/*
    명시적 형변환
*/

console.log((100).toString());
console.log((true).toString());
console.log((false).toString());

//숫자타입으로 변환
console.log(parseInt('0'));
console.log(parseFloat('0.8'));
console.log(+'0');

//Boolean
console.log(!!'true')
let isTrue = 'false';

let member = {
    name : "jiwon"
}
console.log(member == {name : "jiwon"})