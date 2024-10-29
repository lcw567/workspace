// import { createStore } from "redux"; //ES6 모듈
const { createStore } = require('redux'); //CommonJS 모듈

//리듀스의 정의
//액션이 발생했을때 새로운 상태
const reducer = (prevState, action) => {
    console.log("action : ", action.type)
    switch(action.type){
        case 'CHANGE_AGE':
            return{
                ...initialState,
                age: action.data
            };
        default:
            return prevState;
    }
}

const initialState ={
    name: "jiwon",
    age: 15,
    address : null,

}



//스토어 생성
//전역 state가 저장된 저장소
const store = createStore(reducer, initialState)

console.log(store.getState())

//액션 생성 함수
const changeAge = (data) => {
    return{
        type: 'CHANGE_AGE', 
        data, 
    }
}

//액션디스패치
store.dispatch(changeAge(20))

console.log(store.getState())