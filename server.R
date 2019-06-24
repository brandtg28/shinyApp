
shinyServer(function(input, output, session){
  output$mymap = renderLeaflet({
		leaflet(NYC_all) %>%
	    addProviderTiles("Stamen.Terrain") %>%
      setView(lng = -73.9663, lat = 40.7819, zoom = 12) %>% 
	    addWebGLHeatmap(~LONGITUDE, ~LATITUDE, size = "200", alphaRange = .5, intensity = .2, opacity = .5)
            })
	
  output$vehicle_type = renderPlot(
    NYC_all %>%  
      filter(., (VEHICLE.TYPE.CODE.1 == "Bike" | VEHICLE.TYPE.CODE.2 == "Bike") & VEHICLE.TYPE.CODE.1 != "bus" & VEHICLE.TYPE.CODE.1 != "van") %>% 
      ggplot(., aes(x = VEHICLE.TYPE.CODE.1, y = VEHICLE.TYPE.CODE.2)) +
      geom_count() + 
      theme(axis.text.x = element_text(angle = 90)) +
      ggtitle("Vehicle Types Involved in Cyclist Accidents") +
      xlab(label = "Vehicle Type 1") + ylab("Vehicle Type 2"))
      
      
  
  output$bike_injury_count = renderPlot(
	  NYC_all %>% 
	    filter(., CYCLIST.INJURED > 0 & YEAR >=2013) %>% 
	    group_by(YEAR) %>% 
	    count() %>% 
	    ggplot(aes(x = YEAR, y = n)) + 
	    geom_col(fill="lightblue", color="black") +
	    ggtitle("Number of Cyclist Injuries by Year") +
      xlab(label = "Year") + 
      ylab("count"))
	
  
	output$bike_death_count = renderPlot(
	  NYC_all %>% 
	    filter(., CYCLIST.KILLED > 0 & YEAR >=2013) %>% 
	    group_by(YEAR) %>% 
	    count() %>% 
	    ggplot(aes(x = YEAR, y = n)) +
	    geom_col(fill="#FF9999", color="black") +
	    #geom_vline(xintercept = 2015.5)
	    ggtitle("Number of Cyclist Deaths by Year") +
	    xlab(label = "Year") + ylab(label = "Count"))
	
	output$miles = renderPlot(
	  miles_added %>% 
	    ggplot(., aes(x = Year, y = Miles)) + 
	    geom_col(fill="#D55E00", color="black") +
	    xlab("Year") + ylab("Miles") + 
	    ggtitle("Protected Bicycle Lanes Added in Manhattan"))
	# ####  
	
	output$ped_injury_count = renderPlot(
	  NYC_all %>% 
	    filter(., PEDESTRIANS.INJURED > 0 & YEAR >=2013) %>% 
	    group_by(YEAR) %>% 
	    count() %>% 
	    ggplot(aes(x = YEAR, y = n)) + 
	    geom_col(fill="lightblue", color="black") +
	    ggtitle("Number of Pedestrian Injuries by Year") +
	    xlab(label = "Year") + 
	    ylab("count"))
	
	
	output$ped_death_count = renderPlot(
	  NYC_all %>% 
	    filter(., PEDESTRIANS.KILLED > 0 & YEAR >=2013) %>% 
	    group_by(YEAR) %>% 
	    count() %>% 
	    ggplot(aes(x = YEAR, y = n)) +
	    geom_col(fill="#FF9999", color="black") +
	    ggtitle("Number of Pedestrian Deaths by Year") +
	    xlab(label = "Year") + ylab(label = "Count"))  
	  
	
	output$table = renderDataTable({
	  datatable(NYC_all, rownames=FALSE, options = list(scrollX=T))
	})
	
	url = a("Brandt's Linkedin Profile", href="https://www.linkedin.com/in/brandt-germann-01350423/")
	output$link = renderUI({
	  tagList("URL link:", url)})
	url2 = a("Brandt's Github Profile", href="https://github.com/brandtg28")
	output$link2 = renderUI({
	  tagList("URL link:", url2)})

	
})

