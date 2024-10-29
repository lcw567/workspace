import React, { useState } from 'react'
import MainContent from './MainContent'
import ThemeContext from './ThemeContext'

const BlackOrWhite = () => {
    const [theme, setTheme] = useState("white")

    const toggleTheme = () => {
        if(theme === "white"){
            setTheme("black")
        }else{
            setTheme("wHIte")
        }
    }

  return (
    <div>
        <ThemeContext.Provider value={{theme, toggleTheme}}>
        <MainContent/>
        </ThemeContext.Provider>
    </div>
  )
}

export default BlackOrWhite