# Group Project: *Memoir*


**Memoir** has been programmatically animated with Swift (iOS) as a team project for [CodePath iOS for Designers](http://codepath.com/iosfordesigners).


### Team members
[**Monith Ilavarasan**](https://github.com/Monith)

[**Namrata Mohanty**](https://github.com/nmohanty)

[**Sophia Kecir Camper**](https://github.com/sophiakc)


### App Description
Personal diary attached to my calendar, using Google calendar API and a native calendar.


### Wireframes W3
![2016 10 30 Memoir app mockup](2016 10 30 Memoir app mockup.jpg)

### Wireframes W4
![Launchscreen](W4 Group - Memoir app mockup 1. Launchscreen.png)
![Onboarding1](W4 Group - Memoir app mockup 2. onboarding1.png)
![Onboarding2](W4 Group - Memoir app mockup 2. onboarding2.png)
![Onboarding3](W4 Group - Memoir app mockup 2. onboarding3.png)
![Signup](W4 Group - Memoir app mockup 3. Sign Up.png)
![Writing view](W4 Group - Memoir app mockup 4.1 Writing view.png)
![Confirmation view](W4 Group - Memoir app mockup 4.2 Writing view.png)
![Read-only text view](W4 Group - Memoir app mockup 4.3 Writing view.png)
![New writing](W4 Group - Memoir app mockup 4.4 Writing view (again).png)
![Today view](W4 Group - Memoir app mockup 5. Today view.png)
![Week view](W4 Group - Memoir app mockup 6.1 Week view.png)
![Week view](W4 Group - Memoir app mockup 6.2 Week view + search.png)
![Calendar sign in w Google](W4 Group - Memoir app mockup 6.3 Calendar view.png)
![Calendar view](W4 Group - Memoir app mockup 6.4 Calendar view.png)
![Calendar event detailed view](W4 Group - Memoir app mockup 6.5 Calendar view.png)



### User Stories
* [X] "Start Writing" View Controller (initial View Controller)
    * [X] TextView to edit text - Sophia
        * [ ] As a new user, I can UI Pan Gesture Left and see that I don't have any previous text entry (cf. Dropbox W1: http://courses.codepath.com/courses/ios_for_designers/unit/1#!assignment) - Sophia (ongoing)
        * [ ] Reveal unlock icon + location and time button by following the toggle movement of keyboard
    
    * [X] UI Button for time and location - Sophia
        * [X] Push or Modal segue to Settings page and location enable popup - Sophia
        * [ ] Settings: set up local time and location based on actual data
    
    * [ ] Unlock icon: 
        * [ ] Before performing Segue, when tapping on it, message pop up shows up: "Are you sure you have finished writing? You won't be able to edit this text again, it will be read only"
        * [ ] Save text somewhere in a database?? as the latest text
        * [X] Push or Modal segue to next screen - Monith

* [ ] Animation from "Start Writing" to "Read Only" View Controller
    * [ ] transition animation with lock icon full screen, then go to read only text
    * [X] UIScrollView with no icon - Sophia

* [ ] "Read Only" VC
    * [ ] Has a container view to coordinate all the previous text written or the "not yet text" screen if first user
    * [ ] Horizontal scroll left to see previous written texts from the most recent to the last recent

* [ ] Animation from any "Read Only" VC to the corresponding "Today" VC
    * [ ] UI Pan Gesture down goes to "Today" VC
    * [ ] The Read only text shrink into the Today small bubble view within the timeline
    * [ ] The number in the big bubbles updates based on the actual number of words written

* [ ] "Today" View Controller
    * [ ] Vertical UIScrollView to bottom to see the different texts written per day in the timeline
    * [ ] Horizontal UIScrollView to left to see the text from the day before, and the day before..., one day = one screen
    * [ ] Horizontal UIScrollView to right go to a new "Start Writing" View Controller
    * [ ] Compute and store the number in the big bubbles (nb of words, nb of times)
 
* [ ] Animation from "Today" VC to "This Week" VC
	* [ ] UI Pan Gesture down goes to "This Week" VC
	* [ ] The big bubbles from Today shrink into smaller bubbles on the Week timeline table

* [ ] "This Week" View Controller
    * [ ] Horizontal UIScrollView to see the different days of the month
    * [ ] Pan down to reveal search
    * [ ] from day to week view: shrink 7 columns into 1
    * [ ] from day to month view: shrink 30 columns into 1
    * [ ] from week to month view: shrink 4 columns into 1

* [ ] Launch screen
	* [ ] add and animate logo

* [ ] UIScrollView through the 3 onboarding screens

* [ ] Page Settings: see where else to give access to it?





## Video Walkthrough

![Memoir](memoir.gif)



## Notes / Challenges encountered while building the app:




## License

    Copyright [2016] Memoir

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
