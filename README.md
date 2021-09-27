# I hope you had a chance to view and enjoy my Shiny App, which can be found here. I set out with the broad idea to explore the impact various legislation has made over safety of all on drivers, cyclists, and pedestrians in Manhattan. As a cyclist myself who avoids riding in Manhattan, I was interested to see if the addition of bike lanes and prevalence of Citi Bikes, has made it a more dangerous place for cyclists and/or pedestrians. I also wanted to see if there have been any noticeable safety improvements based on the Vision Zero 25mpg campaign. From their FAQ:

"Why is the speed limit changing to 25 MPH?
New York City is reducing its speed limit to 25 MPH in order to make the city safer for pedestrians, cyclists, and drivers and help meet the City’s goal of bringing traffic fatalities to zero. Data shows that driving at or below 25 MPH improves drivers’ ability to avoid crashes. Pedestrians struck by vehicles traveling at 25 MPH are half as likely to die as those struck at 30 MPH."

The result of this initiative was a reduction on the speed limit in most streets in Manhattan to 25mph in November 2014. 

I was able to find a dataset which listed every motor vehicle accident reported by the NYPD in all of NYC since late 2012. This consisted of 1.5M incidents. While there was a variable for "Borough", this was only indicated on about a third of the records. I was able to filter down to lat/long points that took place in Manhattan, and continued with over 300k accidents. Other fields included date, types of vehicle involved, motorists injured, motorists killed, cyclists injured, cyclists killed, pedestrians injured, pedestrians killed. 

I found that the reduced speed limit could possibly had a positive impact on pedestrians. The following year (2015) saw a drastic drop in pedestrian deaths in Manhattan. While 2016 saw a rise in deaths, since then the deaths have been decreasing, while injuries are either the same or even rising. This could give credit to the city's initial claim that a pedestrian is twice as likely to survive being hit by a car at 25mph vs a 30mpg car. As soon as the law was passed, there were local stories that reported strict enforcement of tickets in the area. While this may have improved the 2015 statistics, I suspect that the spike in 2016 could have been a result of law enforcement easing up on the strict enforcement of the law. 

As I suspected, the increased popularity and availability of cycling throughout the city has increased the number of injuries over the last few years. This goes hand in hand with my graph showing the mileage of added bike lanes. There does not seem to be a trend in either direction for cyclist deaths, due to low count to begin with. 

Being still my first draft of this Shiny App, there is a lot more I would like to do, and will be adding in the near future. I would like to examine:

1: Review NYC infractions for speeding in 25mph areas. This would be needed to see how strictly this law was enforced in the years since being passed.

2: As I have only looked at counts of incidents, I will look at deaths/incident to see if the rate has been improving or not as a result of added protected bike lanes.  

3: Time of day, location, week/weekend of all incidents to ID dangerous places to be, or where to avoid when cycling. 

If you have any feedback you would like to share, or contact me for any reason, please reach out to me at brandtg28@gmail.com. Thanks for your time. 
