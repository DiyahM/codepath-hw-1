##Codepath HW 1: TED MUSIC APP Demo

I wanted to challenge myself to do a different app than the Rotten Tomatoes app assigned this week. And still meet this week's requirements.
I built a Demo to showcase all the Live Music Performances from the TED Conferences. However, the TED API is not ideal for use and it costed me a lot of hours to do a few workarounds. I ended up scrapping the TED API and placing it in Parse. 

Overall, I probably **15 - 20 hours** on this assignment. 

Requirements Met:

- User can view a list of movies from Rotten Tomatoes. Poster images must be loading asynchronously. Edit: User can view list of talks from TED. Images are loaded asynchronously. (Although, this is largely provided by Parse)
- User can view movie details by tapping on a cell
- User sees loading state while waiting for movies API. You can use one of the 3rd party libraries at cocoacontrols.com.
- User sees error message when there's a networking error. You may not use UIAlertView to display the error. See this screenshot for what the error message should look like: network error screenshot.
- User can pull to refresh the movie list.
- Customize the navigation bar. (optional)

Issues:
- I spent a couple of hours trying to add a launch screen but was unable to get it to work
- I would like to extend this app to play the TED videos. I was unable to get the video working before the assignment deadline.
- I also had a hard time ramping up on Objective-C and Swift. Often, I would google how-tos and the results would be displayed in Objective-C and I found it difficult to "translate" it to Swift.

![Animated Screenshots](ted-video.gif?raw=true =320x)
Animated gif provided by [LiceCap](http://www.cockos.com/licecap/)
