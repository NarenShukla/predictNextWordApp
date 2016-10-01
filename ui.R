library(shiny)
shinyUI(fluidPage(
  sidebarLayout(
    sidebarPanel(width=6,
      strong("Predicting Next Word", style = "font-size:12pt;"),
      strong(" ( By : Narendra S.Shukla, Oct-2016 )", style = "font-size:9pt; color:Purple;"),
      p("This app allows you to key-in a sentence and 
	     predicts the next word, based on what you typed. 
		 It will also give you list of probable words, 
		 along with their probabilities, in descending order.",style = "font-size:8pt;"),
			 
      p(textInput("idText", label = h5("Enter your sentence here (Press Button to see Results) : "), 
        value = "Check out my")),
	  tags$style(type='text/css', '#idText {font-size:10pt;color:blue;font-weight: bold;}'),
	  
	  actionButton("go", "Fetch Results"),
	  
	  tags$br(),
	  tags$br(),
	  
      p("You may experience some delay before you get an answer.
	     There is a lot of text crunching happening in the backgound. 
		 Your result is on it's way ...",style = "font-size:8pt; color:Green;font-weight: bold; "),
		 
	  tags$hr(),
	  
      strong("Some of the phrases I tried were :)",style = "font-size:8pt; color:DarkRed;font-weight: bold; "),
      tags$ol( style = "font-size:8pt; color:DarkSalmon;font-weight: bold; ", 
       tags$li("this is certainly"),
       tags$li("bumper to"),
       tags$li("love never"),
       tags$li("entry level"),
       tags$li("ready to"),
	   tags$li("just not my"), 
	   tags$li("dream come"),
	   tags$li("during his first"),
	   tags$li("grilled cheese"),
	   tags$li("the average")
             )
   ),
    mainPanel(width=6,
	
		p(textOutput('outputIdText')),
		tags$style(type='text/css', '#outputIdText {font-size:12pt; color:Purple;font-weight: bold;}'),
		
	
		plotOutput("outputWordCloud", height="200px"),
		
        p(dataTableOutput("outputIdTable")),
        tags$style(type='text/css', '#outputIdTable {font-size:7pt;}') #,

    )   # end mainPanel
  )  # end sidebarLayout
 )  # end fluidPage
)  # end shinyUI

