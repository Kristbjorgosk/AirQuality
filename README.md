# AirQuality app built with SwiftUi 


My first IOS app I built. It is a school project and I only had about 3 weeks to finish it. And it was just 3 weeks ago that I "discovered" Swift and SwiftUi and immediately was super interested at learning it! 

I started getting the basics of SwiftUi by following Apple's tutorials, [you can check it out here](https://developer.apple.com/tutorials/swiftui) 

But to learn a more advanced topic related to SwiftUi I learned a lot from Paul Hudson, who is the man behind [Hacking with Swift](https://www.hackingwithswift.com) - that is basically a gold mine for learning the ins and out of the language. 

-----------------------------------------------------------------------------------

So about my app.. 
I am using this [API](https://api.openaq.org/v1/latest?country=IS&parameter=so2) from [Openaq](https://openaq.org/#/) and from it I am collecting the locations and the values in the parameter, that is the air chemical that affects the air quality. 


##### I organized my code in 3 folders: 
* [Resources](https://github.com/Kristbjorgosk/AirQuality/tree/main/VolcanoApp/Resource) - for the local json 
* [Modals](https://github.com/Kristbjorgosk/AirQuality/tree/main/VolcanoApp/Modals) - for the api structs and the Viewmodal for it
* [Views](https://github.com/Kristbjorgosk/AirQuality/tree/main/VolcanoApp/Views) - all the views you can see in the apps UI 

All text is dynamic so it will adjust to the user phone settings, the same goes for the colors, if the user prefers to have dark mode the colors will adjust to that. 
About the design part, I did not make any design like I usually do before starting coding as I did not want to be in some "box" and possibly run into some limitations. SwiftUi is a really young programming languages and is still evolving. That means that to be able to customize the app fully I might have had to use UiKit as well, but that was not my focus at all. 
When building the app I did follow the human Interface Guidelines from Apple and especially the vision aspect in the accessibility part, as I believe that is the most common disability people face in their everyday life. 

More about Human interface guidelines from Apple [here](https://developer.apple.com/design/human-interface-guidelines/ios/overview/themes/)
And the accessability part is [here](https://developer.apple.com/design/human-interface-guidelines/accessibility/overview/introduction/)


The app is not published anywhere, as it was only made for a learning purpose so I will not be publishing this app anywhere. 
I have learned a lot by doing this little app and I am already starting on my second app that I can hopefully publish to the App Store. 




