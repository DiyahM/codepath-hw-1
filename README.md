##Codepath HW 1: TED MUSIC APP Demo

I wanted to challenge myself to do a different app than the Rotten Tomatoes app assigned this week. And still meet this week's requirements.
I built a Demo to showcase all the Live Music Performances from the TED Conferences. However, the TED API is not ideal for use and it costed me a lot of hours to do a few workarounds. I ended up scrapping the TED API and placing it in Parse. 

Overall, I spent **15 - 20 hours** on this assignment. 

####Requirements Met:

- User can view a list of movies from Rotten Tomatoes. Poster images must be loading asynchronously. Edit: User can view list of talks from TED. Images are loaded asynchronously. (Although, this is largely provided by Parse)
- User can view movie details by tapping on a cell
- User sees loading state while waiting for movies API. You can use one of the 3rd party libraries at cocoacontrols.com.
- User sees error message when there's a networking error. You may not use UIAlertView to display the error. See this screenshot for what the error message should look like: network error screenshot.
- User can pull to refresh the movie list.
- Customize the navigation bar. (optional)

####Issues:
- I spent a couple of hours trying to add a launch screen but was unable to get it to work
- I would like to extend this app to play the TED videos. I was unable to get the video working before the assignment deadline.
- I also had a hard time ramping up on Objective-C and Swift. Often, I would google how-tos and the results would be displayed in Objective-C and I found it difficult to "translate" it to Swift.
- There appears to be a bug in iOS8 there is always a left margin on the inset border, even when specifiying 0 for margin in storyboard inspector. Had to set both layout margins and inset edges to 0 in viewDidLoad and cellForIndexRow methods.
- I designed the app mainly for iphone4s (since its the phone I have), however, the view layout for the Detail View is distorted when running the sim for iphone5 and iphone6.
- Had a problem with labels. The labels are always vertically aligned center. This makes the layout look inconsistent when the text length changes.

####Todo:
- Change name on app icon so its not truncated
- Change status bar text to white
- Fix Detail View Layout for iphone5 and iphone6
- Fix Date on Detail View Screen
- Cache Images
- Unescape text in description on Detail View Screen
- Add launch screen
- Add videos for Detail View Screen
- Fix label vertical alignment
- Add a LICENSE to repository
- Add acknowledgement of open sourced libraries used

![Animated Screenshots](ted-video.gif?raw=true =320x)
<br>Animated gif provided by [LiceCap](http://www.cockos.com/licecap/)
