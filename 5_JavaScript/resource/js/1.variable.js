console.log("Hello World");

/*
    js의 변수 선언

    1) var - 사용하지 않는다.
    2) let
    3) const
*/

var name = "김길동";
var age = 55;
var height = 175.1;
var isTrue = true;

//var name = "홍길동";
console.log(name + " " + age + " " + height + " " + isTrue);

/*
    let은 var에서 같은 이름의 중복생성을 하지 못하게 만든 자료형이다.
    다만 let과 var는 모두 값을 변경하는 것은 가능하다.
*/

// let name1 = "이길동";

//name1 = "장길동";

/*
    const는 상수를 표현하기위한 자료형
    값을 변경할 수 없음
*/

const name2 = "김길동";

// name2 = "홍길동";

/*
    js네이밍 규칙

    변수이름 지을 때
    1) 일반적으로 영어를 사용하며 문자와 숫자 모두 사용할 수 있음
    2) 특수문자는 언더스코어와 달러를 사용할 수 있음
    3) 숫자로 시작하면 안됨
    4) 키워드를 변수명으로 시작하면 안됨

    네이밍 타입
    1) camelCase -> 대부분의 언어에서 많이 사용하며 단어의 시작마다 대문자로 구분해준다.
    2) snake_case -> 파이썬에서 주로 사용하며 단어의 시작마다 _로 구분해준다.
    3) PascalCase -> c#및 ms계열의 언어에서 많이 사용하며 매단어 시작은 무조건 대문자로 한다.
*/

let $name = "김민수"
let _name = "최민수"

/*
    Data Type

    여섯개의 원시타입과 한개의 Object타입이 있다.
    1) Number
    2) String
    3) Boolean
    4) undefined
    5) null
    6) symbol

    7) Object
        - Function
        - Array
        - Object
    ...
 */

//Number 타입
const age2 = 55;
const temperture = -10;
const pi = 3.14

console.log(typeof age2)
console.log(typeof temperture)
console.log(typeof pi)

//String 타입
const name4 = "최지원 66살"
const num1 = 55
console.log(num1 == "55")
console.log(num1 === "55")

console.log("안녕하세요 \n\t 안녕하세요")

//Boolean 타입
const inTrue2 = true;
const isFalse = false;
console.log(typeof isTrue2)
console.log(typeof isFalse)

/*
    undefined

    개발자가 직접 값을 초기화하지 않았을 때
    지정되는 값이다.

    undefined를 직접 넣어주는 것은 지양해야한다.
*/

let num2;
console.log(num2 === undefined);

/*
    null타입
    undefined와 동일하게 값이 없음을 표시
    다만 js에서는 개발자가 직접 명시적으로 없는 값을 초기화할 때 사용
*/

let init = null;
console.log(null);

if(!null){
    console.log("not null")
}

/*
    Symbol타입

    유일무이한 값을 생성할 때
    다른 원시값들과 다르게 Symbol함수를 호출해서 사용
*/

const tmp1 = '1';
const tmp2 = '1';
console.log(tmp1 === tmp2)

const symbol1 = Symbol('1');
const symbol2 = Symbol('1');
console.log(symbol1, symbol2)
console.log(symbol1 === symbol2)

/*
    Object타입
    
    키 : 밸류 쌍으로 이루어져있다.
    key : value
*/

const man = {
    name : "최지원",
    age : 47,
    address : "경기도",
    value : "하이",
    printInfo : function(){
        console.log(this.name + "입니다.")
        return "10";
    }
}

man.value = "무직";
let func1 = man.printInfo();
let func2 = man.printInfo;
let value2 = func2();

console.log(typeof man);

/*
    Array타입

    값을 리스트로 나열할 수 있는 타입
 */

const arr = [];
arr.push("Red");
arr.push("Orange");
arr.push("Yellow");
arr.pop();
console.log(arr.pop());
console.log(arr);
