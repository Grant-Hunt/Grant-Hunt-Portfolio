#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
# 
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/

# Author: Grant Hunt. linktree
# Date: 1/30/2024

library(shiny)
library(ggvanced)

# Define UI for application that draws a histogram
ui <- fluidPage(
  
  tabsetPanel(
    id = "tabsetPanel",
    type = "hidden",
    #### Intro ####
    tabPanel(
      "Intro",
      fluidRow(
        column(8, style = "background-color:#125740; color:white;",
               
               
               h1("NFL GAME 2.0",style = "font-size: 100px; margin-left: 5px;font-family: Lucida Console, monospace"),
               
               p("All of the data is from the 2023 NFL regular season and is divided by team.",
                 style = "font-size: 20px; margin-left: 5px;font-family: Lucida Console, monospace"),
               
               p("Column Definitions",
                 style = "font-size: 40px; margin-left: 5px;font-family: Lucida Console, monospace" ),
               
               p("* Point_Differential = Points scored per game - Points given up per game.",
                 style = "font-size: 16px; margin-left: 20px;font-family: Lucida Console, monospace"),
               
               p("* Playoff_Games_Since_2018 = Number of playoff games played in from the 2018 season on.",
                 style = "font-size: 16px; margin-left: 20px;font-family: Lucida Console, monospace"),
               
               p("* Turnover_Differential = Turnovers forced - Turnovers given up.",
                 style = "font-size: 16px; margin-left: 20px;font-family: Lucida Console, monospace"),
               
               p("* Coaching_Grade = Just for 2023 season not considering career coaching record.",
                 style = "font-size: 16px; margin-left: 20px;font-family: Lucida Console, monospace"),
               
               p("* Rush = Average rushing yards per game.",
                 style = "font-size: 16px; margin-left: 20px;font-family: Lucida Console, monospace"),
               
               p("* Pass = Average passing yards per game.",
                 style = "font-size: 16px; margin-left: 20px;font-family: Lucida Console, monospace"),
               
               p("* QBR = Average QB rating for all quarterbacks who played for the given team this season.",
                 style = "font-size: 16px; margin-left: 20px;font-family: Lucida Console, monospace"),
               
               p("* PD_Last_3_Games = Average Point Differential in the last 3 games of the season.",
                 style = "font-size: 16px; margin-left: 20px;font-family: Lucida Console, monospace"),
               
               p("* PD_Home = Point Differential at home.",
                 style = "font-size: 16px; margin-left: 20px;font-family: Lucida Console, monospace"),
               
               p("* Yards_Allowed = Yards given up per game. Each value is negative so that larger values represent better defenses. Ex: -270 means the defense gives up 270 yards per game.",
                 style = "font-size: 16px; margin-left: 20px;font-family: Lucida Console, monospace"), 
               
               p("Jesus is Lord",style = "margin-left:2px; margin-top: 290px;")
               
        ),
        
        column(4, style = "background-color:#0080C6;",
               actionButton(inputId = "play", label = "PLAY", 
                            style = "font-size: 100px; background-color:#125740; color:white ; width: 400px; height: 300px; margin-top: 20px; margin-left: 30px;font-family: Lucida Console, monospace"),
               actionButton(inputId = "compare", label = "Compare", 
                            style = "font-size: 100px; background-color:#125740; color:white ; width: 400px; height: 300px; margin-top: 20px; margin-left: 30px;font-family: Lucida Console, monospace"),
               p(" ",style = "margin-top:585px")
               
        )
      )
      
      # style = "background-color:darkred; color: white;", 
      
      
      
    ),
    
    #### Guess 1 #####  
    tabPanel(
      "Guess1",
      div(
        style = "font-size: 30px; margin-left: 350px;color: #006778;",
        textOutput("test")
      ),  
      
      fluidRow(
        column(10, offset = 1, plotOutput("plots",width = "100%",height = "700"))
      ),
      fluidRow(
        column(12,
               actionButton(inputId = "arizona",label = "Arizona",style = "background-color: #97233F ;color: #FFB612"),
               actionButton(inputId = "atlanta",label = "Atlanta",style = "background-color: #A71930; color: #000000"),
               actionButton(inputId = "baltimore",label = "Baltimore",style = "background-color: #241773; color: #9E7C0C"),
               actionButton(inputId = "buffalo",label = "Buffalo",style = "background-color: #00338D; color: #C60C30"),
               actionButton(inputId = "carolina",label = "Carolina",style = "background-color: #0085CA; color: #101820"),
               actionButton(inputId = "chicago",label = "Chicago",style = "background-color: #0B162A; color: #C83803"),
               actionButton(inputId = "cincinnati",label = "Cincinnati",style = "background-color:#FB4F14; color: white"),
               actionButton(inputId = "cleveland",label = "Cleveland",style = "background-color: #311D00; color: #FF3C00"),
               actionButton(inputId = "dallas",label = "Dallas",style = "background-color: #003594; color: #869397"),
               actionButton(inputId = "denver",label = "Denver",style = "background-color: #FB4F14; color: #002244"),
               actionButton(inputId = "detroit",label = "Detroit",style = "background-color: #0076B6; color: #B0B7BC"),
               actionButton(inputId = "green_bay",label = "Green Bay",style = "background-color: #203731; color: #FFB612"),
               actionButton(inputId = "houston",label = "Houston",style = "background-color: #03202F; color: #A71930"),
               actionButton(inputId = "indianapolis",label = "Indianapolis",style = "background-color: #002C5F; color: #A2AAAD"),
               actionButton(inputId = "jacksonville",label = "Jacksonville",style = "background-color: #006778; color: #D7A22A"),
               actionButton(inputId = "kansas_city",label = "Kansas City",style = "background-color: #E31837; color: #FFB81C"),
               actionButton(inputId = "la_chargers",label = "LA Chargers",style = "background-color: #0080C6; color: #FFC20E"),
               actionButton(inputId = "la_rams",label = "LA Rams",style = "background-color: #003594; color: #FFA300"),
               actionButton(inputId = "las_vegas",label = "Las Vegas",style = "background-color: #000000; color: #A5ACAF"),
               actionButton(inputId = "miami",label = "Miami",style = "background-color: #008E97; color: #FC4C02"),
               actionButton(inputId = "minnesota",label = "Minnesota",style = "background-color: #4F2683; color: #FFC62F"),
               actionButton(inputId = "new_england",label = "New England",style = "background-color: #002244; color: #C60C30"),
               actionButton(inputId = "new_orleans",label = "New Orleans",style = "background-color: #D3BC8D; color: #101820"),
               actionButton(inputId = "ny_giants",label = "NY Giants",style = "background-color: #0B2265; color: #A71930"),
               actionButton(inputId = "ny_jets",label = "NY Jets",style = "background-color: #125740; color: #FFFFFF"),
               actionButton(inputId = "philadelphia",label = "Philadelphia",style = "background-color: #004C54; color: #A5ACAF"),
               actionButton(inputId = "pittsburgh",label = "Pittsburgh",style = "background-color: #FFB612; color: #000000"),
               actionButton(inputId = "san_francisco",label = "San Francisco",style = "background-color: #AA0000; color: #B3995D"),
               actionButton(inputId = "seattle",label = "Seattle",style = "background-color: #002244; color: #69BE28"),
               actionButton(inputId = "tampa_bay",label = "Tampa Bay",style = "background-color: #D50A0A; color: #FF7900"),
               actionButton(inputId = "tennessee",label = "Tennessee",style = "background-color: #0C2340; color: #4B92DB"),
               actionButton(inputId = "washington",label = "Washington",style = "background-color: #5A1414; color: #FFB612")
        )
      )
    ),
    
    #### Correct Panel #### 
    
    tabPanel(
      "Correct",
      div(
        style = "font-size: 30px; margin-left: 500px; color: green",
        textOutput("teamName")
      ),
      fluidRow(
        column(10, offset = 1, plotOutput("plot2",width = "100%",height = "700")),
        
        actionButton(inputId = "restart", label = "Play Again")
      )
      
    ),
    
    #### False Panel #####
    tabPanel(
      "False",
      div(
        style = "font-size: 30px; margin-left: 450px; color: red",
        textOutput("teamNameF")
      ),
      fluidRow(
        column(10, offset = 1, plotOutput("plot3",width = "100%",height = "700")),
        
        actionButton(inputId = "restart2", label = "Play Again")
      )
    ),
    
    #### Team Comparison Panel ####
    tabPanel(
      "compare",
      
      fluidRow(
        uiOutput("button2")
      ),
      
      fluidRow(
        column(6,
               uiOutput("button3"),
               uiOutput("button4"),
               
        ),
               
        
        
      )
      
    ),
    #####
  ))

# Define server logic required to draw a histogram
server <- function(input, output,session) {
  #### Observations and Outputs ####
 
  observe({
    try = tries()
    attempt = 8-try
    text = paste("Try to guess which NFL team this is! Attemps = ",attempt)
    output$test <- renderText(
      text
    )
  })
  
  observe({
    team = team1()
    teamN = nfl[team,2]
    output$teamName <- renderText(
      paste("Correct! The team is: ",teamN)
    )
  })
  
  observe({
    team = team1()
    teamN = nfl[team,2]
    output$teamNameF <- renderText(
      paste("Sorry try again! The team is",teamN)
    )
    
  })
  
  
  #### Data ####
  tries <- reactiveVal(0)
  team1 <- reactiveVal()
  variable <- reactiveVal()
  teamQName <- reactiveVal()
  top5 <- reactiveVal()
  nfl= read.csv("https://docs.google.com/spreadsheets/d/e/2PACX-1vTfkywW1OY7t9DT6bKB4OibNHtmbfeSbktTOxWPuldYiqMqMHNBMlsQ_RIivPc5VA/pub?output=csv")
  nfl2 = data.frame(Team=nfl$Team,
                    Point_Differential=nfl$X2023,
                    PD_Home=nfl$Home,
                    PD_Last.3.Games= nfl$Last.3,
                    QBR=nfl$X2023.1,
                    Pass=nfl$Pass,Rush=nfl$Rush,
                    Coaching_Grade=nfl$Coaching.Score,
                    
                    Yards_Allowed=nfl$Yards.Allowed,
                    Turnover_Differential=nfl$Turnover.Differential,
                    Playoff_Games_Since_2018=nfl$Playoff.Games.Since.2018
  )
  color = c("#97233F","#A71930","#241773","#00338D","#0085CA","#0B162A","#FB4F14",
            "#311D00","#003594","#FB4F14","#0076B6","#203731","#03202F",
            "#002C5F","#006778","#E31837","#0080C6","#003594","#000000","#008E97",
            "#4F2683","#002244","#D3BC8D","#0B2265","#125740","#004C54","#FFB612",
            "#AA0000","#002244","#D50A0A","#0C2340","#5A1414","white","white")
  
  color2 = c("#FFB612","#000000","#9E7C0C","#C60C30","#000000","#C83803","white",
             "#FF3C00","#869397","#002244","#B0B7BC","#FFB612","#A71930",
             "#A2AAAD","#D7A22A","#FFB81C","#FFC20E","#FFA300","#A5ACAF","#FC4C02",
             "#FFC62F","#C60C30","#000000","#A71930","#FFFFFF","#A5ACAF","#000000",
             "#B3995D","#69BE28","#FF7900","#4B92DB","#FFB612","white","white")
  nfl3 = cbind(nfl2,color,color2)
  #### Plots ####
  
  output$plots <- renderPlot({
    try = tries()
    if(try == 0)
    {
      rand = team1()
      variable = variable()
      R.R = nfl2[c(rand,33,34),c(1,variable[c(1,2,3)])]
      
      ggspider(R.R,fill_opacity=0.4)+
        scale_fill_manual(values=c("black","white","white"))+
        scale_color_manual(values=c("black","lightgrey","lightgrey"))+
        theme(legend.position = "none")
    }
    else if(try == 1)
    {
      rand = team1()
      variable = variable()
      R.R = nfl2[c(rand,33,34),c(1,variable[c(1,2,3,4)])]
      
      ggspider(R.R,fill_opacity=0.4)+
        scale_fill_manual(values=c("black","white","white"))+
        scale_color_manual(values=c("black","lightgrey","lightgrey"))+
        theme(legend.position = "none")
    }
    else if(try == 2)
    {
      rand = team1()
      variable = variable()
      R.R = nfl2[c(rand,33,34),c(1,variable[c(1,2,3,4,5)])]
      
      ggspider(R.R,fill_opacity=0.4)+
        scale_fill_manual(values=c("black","white","white"))+
        scale_color_manual(values=c("black","lightgrey","lightgrey"))+
        theme(legend.position = "none")
    }
    else if(try == 3)
    {
      rand = team1()
      variable = variable()
      R.R = nfl2[c(rand,33,34),c(1,variable[c(1,2,3,4,5,6)])]
      
      ggspider(R.R,fill_opacity=0.4)+
        scale_fill_manual(values=c("black","white","white"))+
        scale_color_manual(values=c("black","lightgrey","lightgrey"))+
        theme(legend.position = "none")
    }
    else if(try == 4)
    {
      rand = team1()
      variable = variable()
      R.R = nfl2[c(rand,33,34),c(1,variable[c(1,2,3,4,5,6,7)])]
      
      ggspider(R.R,fill_opacity=0.4)+
        scale_fill_manual(values=c("black","white","white"))+
        scale_color_manual(values=c("black","lightgrey","lightgrey"))+
        theme(legend.position = "none")
    }
    else if(try == 5)
    {
      rand = team1()
      variable = variable()
      R.R = nfl2[c(rand,33,34),c(1,variable[c(1,2,3,4,5,6,7,8)])]
      
      ggspider(R.R,fill_opacity=0.4)+
        scale_fill_manual(values=c("black","white","white"))+
        scale_color_manual(values=c("black","lightgrey","lightgrey"))+
        theme(legend.position = "none")
    }
    else if(try == 6)
    {
      rand = team1()
      variable = variable()
      R.R = nfl2[c(rand,33,34),c(1,variable[c(1,2,3,4,5,6,7,8,9)])]
      
      ggspider(R.R,fill_opacity=0.4)+
        scale_fill_manual(values=c("black","white","white"))+
        scale_color_manual(values=c("black","lightgrey","lightgrey"))+
        theme(legend.position = "none")
    }
    else if(try ==7)
    {
      rand = team1()
      variable = variable()
      R.R = nfl2[c(rand,33,34),c(1,variable[c(1,2,3,4,5,6,7,8,9,10)])]
      
      ggspider(R.R,fill_opacity=0.4)+
        scale_fill_manual(values=c("black","white","white"))+
        scale_color_manual(values=c("black","lightgrey","lightgrey"))+
        theme(legend.position = "none")
    }
    
    
  },res = 80)
  
  output$plot2 <- renderPlot({
    team01 = team1()
    
    R.2 = nfl2[c(team01,33,34),]
    color1 = nfl3[team01,(ncol(nfl3)-1)]
    
    
    ggspider(R.2,fill_opacity = 0.4)+
      scale_fill_manual(values=c(color1,"white","white"))+
      scale_color_manual(values=c(color1,"lightgrey","lightgrey"))+
      theme(legend.position = "none")
  }, res = 85)
  
  output$plot3 <- renderPlot({
    team01 = team1()
    
    R.2 = nfl2[c(team01,33,34),]
    color1 = nfl3[team01,(ncol(nfl3)-1)]
    
    
    ggspider(R.2,fill_opacity = 0.4)+
      scale_fill_manual(values=c(color1,"white","white"))+
      scale_color_manual(values=c(color1,"lightgrey","lightgrey"))+
      theme(legend.position = "none")
  }, res = 85)
  
  #### Buttons ####
  
  observeEvent(input$TeamButton1,{
    cat("one")
    index = teamQName()
    array = getTopFive(index,session) 
    top5 = top5()
    if(array[2]==array[top5[1]])
    {
      cat("True")
    }
    else
    {
      cat("False")
    }
  })
  
  observeEvent(input$TeamButton2,{
    cat("two")
    index = teamQName()
    array = getTopFive(index,session) 
    top5 = top5()
    if(array[2]==array[top5[2]])
    {
      cat("True")
    }
    else
    {
      cat("False")
    }
  })
  
  observeEvent(input$TeamButton3,{
    cat("three")
    index = teamQName()
    array = getTopFive(index,session) 
    top5 = top5()
    if(array[2]==array[top5[3]])
    {
      cat("True")
    }
    else
    {
      cat("False")
    }
  })
  
  observeEvent(input$TeamButton4,{
    cat("four")
    index = teamQName()
    array = getTopFive(index,session) 
    top5 = top5()
    if(array[2]==array[top5[4]])
    {
      cat("True")
    }
    else
    {
      cat("False")
    }
  })
  
  observeEvent(input$TeamButton,{
    cat("clicked")
  })
  
  observeEvent(input$play, {
    cat("clicked")
    updateTabsetPanel(session, "tabsetPanel","Guess1")
    rand = sample(1:32, 1, replace = TRUE)
    rand2 = sample(2:11,10,replace = FALSE )
    tries(0)
    team1(rand)
    variable(rand2)
  })
  
  observeEvent(input$compare, {
    cat("clicked")
    updateTabsetPanel(session, "tabsetPanel","compare")
    rand = sample(1:32, 1, replace = TRUE)
    teamQName(rand)
    rand2 = sample(2:5,4,replace = FALSE)
    top5(rand2)
  })
  
  observeEvent(input$arizona, {
    team_1 = team1()
    
    answer = nfl2[team_1,1]
    message(answer)
    evaluate("Arizona",answer,session,tries)
  })
  
  observeEvent(input$atlanta, {
    team_1 = team1()
    answer = nfl2[team_1,1]
    message(answer)
    evaluate("Atlanta",answer,session,tries)
  })
  
  observeEvent(input$baltimore, {
    team_1 = team1()
    answer = nfl2[team_1,1]
    message(answer)
    evaluate("Baltimore",answer,session,tries)
  })
  
  observeEvent(input$buffalo, {
    team_1 = team1()
    answer = nfl2[team_1,1]
    message(answer)
    evaluate("Buffalo",answer,session,tries)
  })
  
  observeEvent(input$carolina, {
    team_1 = team1()
    answer = nfl2[team_1,1]
    message(answer)
    evaluate("Carolina",answer,session,tries)
  })
  
  observeEvent(input$chicago, {
    team_1 = team1()
    answer = nfl2[team_1,1]
    message(answer)
    evaluate("Chicago",answer,session,tries)
  })
  
  observeEvent(input$cincinnati, {
    team_1 = team1()
    answer = nfl2[team_1,1]
    message(answer)
    evaluate("Cincinnati",answer,session,tries)
  })
  
  observeEvent(input$cleveland, {
    team_1 = team1()
    answer = nfl2[team_1,1]
    message(answer)
    evaluate("Cleveland",answer,session,tries)
  })
  
  observeEvent(input$dallas, {
    team_1 = team1()
    answer = nfl2[team_1,1]
    message(answer)
    evaluate("Dallas",answer,session,tries)
  })
  
  observeEvent(input$denver, {
    team_1 = team1()
    answer = nfl2[team_1,1]
    message(answer)
    evaluate("Denver",answer,session,tries)
  })
  
  observeEvent(input$detroit, {
    team_1 = team1()
    answer = nfl2[team_1,1]
    message(answer)
    evaluate("Detroit",answer,session,tries)
  })
  
  observeEvent(input$green_bay, {
    team_1 = team1()
    answer = nfl2[team_1,1]
    message(answer)
    evaluate("Green Bay",answer,session,tries)
  })
  
  observeEvent(input$houston, {
    team_1 = team1()
    answer = nfl2[team_1,1]
    message(answer)
    evaluate("Houston",answer,session,tries)
  })
  
  observeEvent(input$indianapolis, {
    team_1 = team1()
    answer = nfl2[team_1,1]
    message(answer)
    evaluate("Indianapolis",answer,session,tries)
  })
  
  observeEvent(input$jacksonville, {
    team_1 = team1()
    answer = nfl2[team_1,1]
    message(answer)
    evaluate("Jacksonville",answer,session,tries)
  })
  
  observeEvent(input$kansas_city, {
    team_1 = team1()
    answer = nfl2[team_1,1]
    message(answer)
    evaluate("Kansas City",answer,session,tries)
  })
  
  observeEvent(input$la_chargers, {
    team_1 = team1()
    answer = nfl2[team_1,1]
    message(answer)
    evaluate("LA Chargers",answer,session,tries)
  })
  
  observeEvent(input$la_rams, {
    team_1 = team1()
    answer = nfl2[team_1,1]
    message(answer)
    evaluate("LA Rams",answer,session,tries)
  })
  
  observeEvent(input$las_vegas, {
    team_1 = team1()
    answer = nfl2[team_1,1]
    message(answer)
    evaluate("Las Vegas",answer,session,tries)
  })
  
  observeEvent(input$miami, {
    team_1 = team1()
    answer = nfl2[team_1,1]
    message(answer)
    evaluate("Miami",answer,session,tries)
  })
  
  observeEvent(input$minnesota, {
    team_1 = team1()
    answer = nfl2[team_1,1]
    message(answer)
    evaluate("Minnesota",answer,session,tries)
  })
  
  observeEvent(input$new_england, {
    team_1 = team1()
    answer = nfl2[team_1,1]
    message(answer)
    evaluate("New England",answer,session,tries)
  })
  
  observeEvent(input$new_orleans, {
    team_1 = team1()
    answer = nfl2[team_1,1]
    message(answer)
    evaluate("New Orleans",answer,session,tries)
  })
  
  observeEvent(input$ny_giants, {
    team_1 = team1()
    answer = nfl2[team_1,1]
    message(answer)
    evaluate("NY Giants",answer,session,tries)
  })
  
  observeEvent(input$ny_jets, {
    team_1 = team1()
    answer = nfl2[team_1,1]
    message(answer)
    evaluate("NY Jets",answer,session,tries)
  })
  
  observeEvent(input$philadelphia, {
    team_1 = team1()
    answer = nfl2[team_1,1]
    message(answer)
    evaluate("Philadelphia",answer,session,tries)
  })
  
  observeEvent(input$pittsburgh, {
    team_1 = team1()
    answer = nfl2[team_1,1]
    message(answer)
    evaluate("Pittsburgh",answer,session,tries)
  })
  
  observeEvent(input$san_francisco, {
    team_1 = team1()
    answer = nfl2[team_1,1]
    message(answer)
    evaluate("San Francisco",answer,session,tries)
  })
  
  observeEvent(input$seattle, {
    team_1 = team1()
    answer = nfl2[team_1,1]
    message(answer)
    evaluate("Seattle",answer,session,tries)
  })
  
  observeEvent(input$tampa_bay, {
    team_1 = team1()
    answer = nfl2[team_1,1]
    message(answer)
    evaluate("Tampa Bay",answer,session,tries)
  })
  
  observeEvent(input$tennessee, {
    team_1 = team1()
    answer = nfl2[team_1,1]
    message(answer)
    evaluate("Tennessee",answer,session,tries)
  })
  
  observeEvent(input$washington, {
    team_1 = team1()
    answer = nfl2[team_1,1]
    message(answer)
    evaluate("Washington",answer,session,tries)
  })
  
  observeEvent(input$restart, {
    updateTabsetPanel(session,"tabsetPanel", "Intro")
    
  })
  
  observeEvent(input$restart2, {
    updateTabsetPanel(session,"tabsetPanel", "Intro")
    
  })
  ##### 
}

#=========================================================================

evaluate <- function(teamName, answer1, session,tries)
{ 
  if (as.character(teamName) == as.character(answer1))
  {
    message("correct")
    updateTabsetPanel(session, "tabsetPanel", "Correct")
  }
  else
  {
    message("false")
    tries(tries()+1)
    try = tries()
    if(try>7)
    {
      updateTabsetPanel(session, "tabsetPanel", "False")  
    }
  }
  return(NULL)
}

# Run the application 
shinyApp(ui = ui, server = server)

