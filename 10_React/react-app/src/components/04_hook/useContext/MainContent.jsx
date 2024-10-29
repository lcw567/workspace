import React, {useContext} from 'react'
import ThemeContext from './ThemeContext'

const MainContent = () => {
    const {theme, toggleTheme} = useContext(ThemeContext)

  return (
    <div
        style={{
            width: "100vm",
            height: "100vh",
            padding: "1.5rem",
            background: theme,
            color: theme == "white" ? "black" : "white",
        }}>
        <p>안녕 테마변경</p>
        <button onClick={toggleTheme}>테마변경</button>
    </div>
  )
}

export default MainContent