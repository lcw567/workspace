import React from 'react'
import Comment from './Comment'

const comments = [
    {
        id: 1,
        name: "짱구",
        comment: "안녕하세요",
        path:"https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyNDAzMTdfOTMg%2FMDAxNzEwNjY5NTg4MjMw.NS3a44soJEenFG-wkY0V6elK-ahNnnFqEiAbYXpILIMg.6O7xMkor8Jv_lF1Y4V2sV_hR39tekR2dobo7r9o9pGEg.JPEG%2F%25B4%25D9%25BF%25EE%25B7%25CE%25B5%25E5%25C6%25C4%25C0%25CF%25A3%25DF20240317%25A3%25DF185940.jpg&type=a340",
    },
    {
        id: 2,
        name: "철수",
        comment: "안녕",
        path:"https://search.pstatic.net/common/?src=http%3A%2F%2Fshop1.phinf.naver.net%2F20231105_170%2F1699194900224XBwa4_PNG%2F5743313177895518_454998761.png&type=a340",
    },
    {
        id: 3,
        name: "유리",
        comment: "ㅋㅋㅋㅋㅋㅋㅋㅋㅋ",
        path:"https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA5MTVfMzUg%2FMDAxNjMxNzA0NjYxMjIx.05LFr79e_2sOyQC2fvC_hTOTRGqJeGWVnY37A7u7vQgg.S5o78uABeax6zqp-fQ50VfBdmGQm4CEvU6G9SiBaqRgg.PNG.seorabi%2FKakaoTalk_20210915_200521700_16.png&type=a340",
    },
]

/* 
    js에서
    (배열, 리스트).map(반복시 실행할 함수)

    map() => 배열의 요소를 전부 사용하여 동일한 길이의 새로운 배열을 리턴
*/
const CommentList = () => {
  return (
    <div>
        {/*<Comment name={comments[0].name} comment={comments[0].comment} path={comments[0].path} />
        <Comment name={comments[1].name} comment={comments[1].comment} path={comments[1].path} />
        <Comment name={comments[2].name} comment={comments[2].comment} path={comments[2].path} /> */}

        {
            comments.map(c => {
                return <Comment key={c.id}name={c.name} comment={c.comment} path={c.path} />
            

            })
        }
    </div>
  )
}

export default CommentList

