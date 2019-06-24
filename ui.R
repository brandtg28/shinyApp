
shinyUI(dashboardPage(	
	dashboardHeader(title = "Menu"),
	dashboardSidebar(
		sidebarUserPanel("Brandt Germann", subtitle = 'Shiny App', image = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVasiiKiksfjIlgRcJvgQWn3MhdywbutP2_5rXr3M0133F2v9-yA"), 
		sidebarMenu(
		  menuItem("Home", tabName = "Home", icon = icon("home")),
		  menuItem("Cyclists", tabName = "Cyclists", icon = icon("bicycle")),
		  menuItem("Pedestrians", tabName = "Pedestrians", icon = icon("walking")),
		  menuItem("Data", tabName = "Data", icon = icon("table")),
		  menuItem("Biography", tabName = "Biography", icon = icon("book-open"))
		)),
		
	dashboardBody(
		tabItems(
	  tabItem(tabName = "Home",
		  fluidRow(
		    column(12, h2("Introduction", align = "center")),
		    column(12, leafletOutput("mymap", width = "400px", height = "600px"), align = "center"),
		    column(2, ''),
		    column(8, h4("The above is a heatmap of automobile accidents in Manhattan since the NYPD began tracking in late 2012. Despite an ever expanding public transportation system, and recent additions of bicycle lanes and Citi bikes, Manhattan is as congested as ever. My intent for this app is not to address the congestion, but to see if recent measures, including capping active Uber drivers and a speed limit reduction in NYC, have made NYC a safer place for cyclists and pedestrians.", align = "center"))
	)),
		
		    
		    
	  tabItem(tabName = "Pedestrians",
		  fluidRow(
		    h1("Vehicle / Pedestrian Accidents"),
		    column(6, plotOutput("ped_injury_count"), height = 400),
	      column(6, plotOutput("ped_death_count"), height = 400)),
		    column(12, h4("Key Dates:")),
		    column(12, h5("Nov 2014: Vehicle speed limit lowered to 25mph in Manhattan")),
		    column(12, h5("Aug 2018: Active Uber/Lyft drivers capped in Manhattan"))),
	
	
	   tabItem(tabName = "Cyclists",
	     fluidRow(
	      h1("Vehicle / Cyclist Accidents"),
	      column(6, plotOutput("bike_injury_count"), height = 400),
	      column(6, plotOutput("bike_death_count"), height = 400)),
	      column(12, h4("Key Dates:")),
	      column(12, h5("Nov 2014: Vehicle speed limit lowered to 25mph in Manhattan")),
	      column(12, h5("Aug 2018: Active Uber/Lyft drivers capped in Manhattan")),
	      column(6, plotOutput("vehicle_type"), height = 400),
	      column(6, plotOutput("miles"), height = 400)),
	

	  tabItem(tabName = "Data",
	    fluidRow(
	      h1("Source Data - Filtered for points in Manhattan only"),
	      h5("*The terrorist attack on 10/31/17 has been removed to meet the intent of this project."),
	      box(dataTableOutput("table")))),
	
	
	  tabItem(tabName = "Biography",
	    fluidRow(
	      column(12, h2("About the Author:"), align = "left"),
	      column(12, h4("Thank you for viewing my Shiny App. My name is Brandt Germann. I am 35 and currently live in Seaford, NY. I have a degree in Operations Research and am currently attending the New York City Data Science Academy, I can be reached at:"), align = "left"),
	      column(12, h5("Brandtg28@gmail.com\n")),
	      column(12, uiOutput("link2")),
	      column(12, uiOutput("link"))))
	          
	
	))

))
