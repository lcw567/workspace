import React from 'react';

const style = {
    wrapper: {  
        margin: 8,
        padding: 8,
        display: "flex",
        flexDirection: "row",
        border: "1px solid gray", 
        borderRadius: 16,
    },
    image: {
        width: 50,  
        height: 50,
        borderRadius: 25,
    },
    contentContainer: {
        marginLeft: 8,
        display: "flex",
        flexDirection: "column",
        justifyContent: "center",  
        fontSize: 16,
        alignItems: "flex-start",
    },
    nameText: {
        color: "black",
        fontSize: 16,
        fontWeight: "bold",  
    },
}

function Comment(props) {  
  return (
    <div>
        <div style={style.wrapper}>
            <img 
                src={props.path}  
                alt="프로필이미지" 
                style={style.image}
            />
        
        <div style={style.contentContainer}>
            <span style={style.nameText}>{props.name}</span>  
            <span>{props.comment}</span>  
        </div>
        </div>
    </div>
  )
}

export default Comment;
