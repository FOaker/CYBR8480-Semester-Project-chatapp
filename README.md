# CYBR8480 Semester Project
A semester project regarding to make friends and have fun.

## Overview

* [Executive Project Summary](#project-name)
* [Requirements Analysis](#requirements-analysis)
* [Design](#design)
* [Security Analysis](#security-analysis)
* [Implementation](#implementation) 
* [Testing](#testing)
* [Demo](#demo)
* [Packaging and Release](#packaging-and-release)


### Project Name
Lets Chat

#### Executive Summary - Problem statement text goes here

In today's world, science and technology are growing, and more and more APPs appear on our mobile phones. For example, there are many shopping apps, restaurant apps, travel apps and so on on my mobile phone. I wondered, what app do I need in my phone? Because I am a person who likes to make friends. At this time, an idea suddenly appeared. Can I make an APP for chatting, making friends and having fun? The APP can provide two people to chat, as well as two people positioning, and some entertainment projects can allow two people to interact, increase the interactivity of two people. Even multi-person chat and entertainment.If possible, my idea is to be able to directly stack the ID card information through two mobile phones and directly join the chat system.

#### Project Goals
* **User authentication:** We will provide an application user chat interface to allow our users to interact with other users. Since each user can only log in and access his own chat system, privacy is guaranteed. In other words, people who are not authenticated in our system will not see the user's chat. Of course, this system can also provide a group chat system for everyone to chat and entertain. 
* **ID card:** Provide basic personal information so that everyone can understand your basic information from the very beginning.
* **Dice game:** This feature is very interesting! You may not think of the usefulness of this feature. When you are having fun with your friends, if you want to drink or do something else, is dice a good choice? Then, the function of this function is reflected. By comparing the size of the dice, two people can compete with each other.
* **Music:** When you want to show your friends certain talents, such as musical talents. You can open this App and show your talents to your friends. Your friends will be surprised!   
* **Map:** This system provides chat real-time positioning function. If you feel that the relationship between two people can make an appointment to have fun, you can turn on this positioning function. When you go to the appointment, watching the two get closer and closer, you must be very excited in your heart!

### Requirements-analysis
#### User stories 1

As a freshman, especially at the beginning of school, in this new environment, I want to meet some new people by chatting and making friends to enrich my spare time, so that I can make my life Full of enthusiasm and passion.

**Acceptance Criteria:**
* Freshman students use the chat app to make friends 
  * “Given I am a freshman, there are not many other quick ways to meet new friends, so I downloaded the chat application. When I open the chat application on my phone, I can find some people with common goals , That is, people who all want to make friends. Then, I can spend less time meeting some new friends."  

#### User stories 2

As a person with a talent for music, I want to show my talents when I get along with my friends, so that I can show my talents anytime and anywhere, so that the other person can appreciate myself.

**Acceptance Criteria:**
* Music talents use the Chat application to showcase their musical talents in order to get praise and appreciation from the other party. 
  * “Given I am a music talent and love music, I downloaded the chat application. After practicing for a while, I can show my talents in front of my friends without special musical equipment. Then, I can make my Friends know me better." 

#### User stories 3

As a person who likes to communicate with each other face to face, I want to know how far the two people are, and know my current location at any time, so that I don’t get lost and miss the opportunity to meet each other.

**Acceptance Criteria:**
* The person attending the appointment uses the chat application to get his/her current location on the earth and calculate the distance between the current location and the other party’s destination, so he/she can successfully find the other party.
  * “Given I am an appointment person and I like to communicate with each other face to face, I downloaded the chat application. When I want to know the distance of the other person but cannot determine my current location, I can open the chat application to get my current location , And then you can know the location of the other party. Then, you can successfully find the other party."



#### Misuser stories 1 
As a cyber thief who wants to know personal information, I want to use some external tools to sniff users' personal information from chat applications, so that these users' information can be used to locate, blackmail or threaten them.

**Mitigations:**
* I will not use insecure communication between the mobile application and the database, but use a more secure backend, such as Firebase for Google Cloud Platform API. Therefore, the chat mobile application data will become very difficult to capture.
* During the registration phase, the chat application will not collect actual user information except for name and email address. Because when we are designing this APP, when the user is asked to enter his/her name, we do not recommend entering the user’s real name into our system. In this case, even if the eavesdropper can obtain the user's e-mail, he/she does not know the real name that can correspond to the e-mail, so this increases the difficulty of extortion.

#### Misuser stories 2 
As an Internet hacker in social engineering, I want to collect user location information from chat applications in order to sell this information to stakeholders.

**Mitigations:**
* This chat application is actually accessing the user's location, but we use the google map API to obtain real-time information. In other words, all information is instant.



### Design
![](/pic/Chat_APP Design.png)

**Or check the "raw" resource [this link to HealthCare Design](/pic/Chat_APP Design.png).**

## Component List
### 1. Authentication Component
User authentication mechanism will be provided while our customer wants to contact question services. It is using the Firebase Backend-as-a-Service (Baas) to process user's credential authorization. Individual can only access his/her own messages along with those response from customer support, so the privacy will be guaranteed.

#### Sub-component 1.1 User Login
Each existed user in the backend has to log in before they can directly send and check the communication message between himself/herself with our client service. We are using HTTPS protocol to build the connection, and user's login is not complicated. Just provide their email address and personal chosen password (which should at least 6 characters).

#### Sub-component 1.2 User Register
If there is a new user that the backend has not stored his/her information, the mobile app will prompt this user to do a simple registration with nickname, email, and password.

#### Sub-component 1.2 Cloud Firestone
It is a database which is using JSON format or some secure ways to store all the user's credentials along with their questions. Every user's personal information will be managed by Google instead of the mobile app.  


### 2. Mobile Local Features
A user health record demo page will be provided. It is running locally and recording all kind of workout related data of the user. Such as, how many steps he/she has walked along with the consumption of calories. Additionally, there is a timer to calculate how long does the user spend on exercising

#### Sub-component 2.1 Hydration Tracker
The hydration tracker has also been embedded in the local features. Users can put their daily dose of water ingestion into the app, so the app will help them to remember how many cups of water they have drunk in case dehydration  

#### Sub-component 2.2 Heart Rate Detector
Heart rate detector has been designed for those users who would not like to wear a kind of senser to measure their heart rate. This local function is mainly taking advantage from camera image processing technology to detect users' heart rate. Just put two fingers under phones camera while running HealthCare app, users will know their current heartbeat after working out. 

### 3. Google Map Service
Google Map services is using the Google Cloud Platform as the backend to interact with HealthCare app. The HealthCare app will use a secure API to access Google's services like Map Direction, Map iOS, and Map Android. Users' data will be protected by the security structure of Google.

#### Sub-component 1.1 GPS Service
The HealthCare location tracker will access user's current location, since it is mainly designing for those users who like to hike and bicycle. Thus, they will not lose their direction and can also realize if they have gone too far from their home. All those data will be processed by Google, so HealthCare will not collect any information from users.

#### Sub-component 1.2 Distance Calculator
Distance measure function is very useful to give the general idea for those users who are always running or cycling too far away because it helps users calculate the total kilometers between two locations. Furthermore, it can show the fastest path between two places, so users can bypass the heavy traffic while exercising.  

### 3. Video Accessing Service
HealthCare ought to provide some video demo to those users who would like to do the indoor exercising or have no idea how to do some less workflow workout. Users can adjust the play speed of video and full screen it. 

#### Sub-component 1.1 Video Searching
Searching other video is useful if users have their preference to watch or favorite youtuber trainer to follow, but they have to know the exact video id or link. This is a concern for users' privacy because HealthCare app will not use plain text to retrieve video from YouTube, so it will not expose users' behaviors.

#### Sub-component 1.2 Video List
Default video list is necessary, since some users might not want to do some search on watch exercise demo. Therefore, HealthCare provides some basic workout video or even live channel, so users could just warm up themselves and practice with those workout channels. 


## Security analysis
The misuse case and its remediation of HealthCare app is mainly discussing the security level while hackers would like to do several attacks to get unauthorized access or escalate his privilege to retrieve user's location and login credentials.   
![The Security Analysis of HealthCare APP](https://github.com/ZexiXin/CYBR8480_Semester_Project/blob/main/assets/security_analysis_CYBR8480(1).svg)

| Component name | Category of vulnerability | Issue Description | Mitigation |
|----------------|---------------------------|-------------------|------------|
| Unauthorized Login | Denial of Service | Without credential validating, anyone can query the server. Hence, this component could cause network paralysis and traffic latency, so that right users will not be able to login | Requiring of registration with user identity and password will restrict bad behaviors because the malicious user will expose themselves |
| Password Crack | Information Disclosure & Spoofing | Weak password length and complexity will make cracking users' accounts in a simple way, so that hacker can use those cracked credentials to request other services without users' awareness’s | Password management policy will set a minimum length and require more complicated combination while users are creating their passcodes |
| Password Sniffing | Information Disclosure & Spoofing | Hackers can capture the traffic between users and server while they are communicating each other to sniff passcode, so they could pretend as the right users | The Firebase backend, which is developed by Google, is using secure communication channel and complex encryption algorithm while it builds connection with users. Hence, it makes network capture become harder |
| Unauthorized Location Access | Privilege Escalation | This component can expose user's location to let hackers steal their daily fitness and GPS data, so they can understand their exercise habits/hobbies and go ahead social engineering them | Google Cloud Platform not only provide the Map services, but also provides the restricted secure API key feature to the developer, so as long as hacker cannot get the key, they won't be able to access users' GPS data |
| Inject Script | Tampering | Malicious users can target on user's route calculating function to provide wrong direction and distance by injecting script to the tamper with the Google Map API key | Google provides a code log monitor to check analyze the traffic between itself and user to see if there is any unauthorized access to its API key and inform this to the project owner (developer) |


## Implementation
Implementation has been submitted and please check the /lib/main file in this repo. Or for simple acess, please click [Here!](https://github.com/ZexiXin/CYBR8480_Semester_Project/blob/main/lib/main.dart)


## Testing
I will use the flutter Unit test to evalute if the HealthApp can pass those test. In general, I will test some values inside of each function to see if those have been changed after one widget has been pumped. All the test case can be viewed [Over Here!](https://github.com/ZexiXin/CYBR8480_Semester_Project/blob/main/test/widget_test.dart)


| Test Function | Criteria | Test result | Need further modification |
| ------------- | -------- | ----------- | ------------------------- |
| HeartRate | Tested the variable change and compare if it is equal to a expected value | correctly passed | Not required at this stage |
| Customer Service | Tested if a widget can be pumped and execute right login and logout status | correctly passed | Prefer to develop a chat windows between the customer and support services, also it is great to embed an AI representative while during the off time |
| Google GPS | Tested if wighets can retrieve the right data from cloud service and all widgets can be found | correctly passed | Adding keyword recommendation will be good for exercises to find a better destination to go |
| Video demo | Test if the youtube video widgets, play button, and icon can be find by flutter tester | correctly passed | Can add more video features |
| Workout records | Test if those health records can be shown | correcly passed | Data can be dynamic for the next development phase and the layout can be changed to fit in multiple devices screen |


## Demo

The video demo can be visited [here](https://app.vidgrid.com/view/tSy0JJZw5J3w)   
Since this file are too large to upload, so I uploaded the complete file on Canvas. Here, the slide without implementation video can be accessed from [here](https://github.com/ZexiXin/CYBR8480_Semester_Project/blob/main/Semester%20Project%20Presentation.pptx)


## Packaging and Release

To run this app, you need to download this app into you local directory by click the "Code" button on the top right side in the main page of this repo, and click either "Open with GitHub Desktop" or "Download Zip". Here, if you select zip file to download, you need to unzip it order to run it. 

![GitHub download](https://github.com/ZexiXin/CYBR8480_Semester_Project/blob/main/assets/github_download.PNG)

Additionally, you need to download the Android Studio with several Plugin like flutter to check the code. For more installation, please visiting [here](https://flutter.dev/docs/get-started/install). In the previous link, it includes instructions of how to set up emulator and other required configurations of Android Studio for several different OS. 

Next, if you want to run this app in the actual phone though USB, you have to install the appropriate USB driver enable the development option in your device. Please following with this [link for more detail (Note: this is just for Android devices)](https://developer.android.com/studio/run/oem-usb). For iOS, please visit this [Build and release an iOS app](https://flutter.dev/docs/deployment/ios)  

**Hardware Requirement:** laptop, actual phones running on either iOS or Android, network cable or Wifi, USB cable  
**Software Requirement:** Android studio, Flutter plugin, USB devices driver, Google Cloud Platform API (You have to create you own API to enable the GPS function), Firebase NoSQL backend

While you are able to run this app in the emulator, you should see an UI similar to the image below:  
![Sample](https://github.com/ZexiXin/CYBR8480_Semester_Project/blob/main/assets/UI_sample.PNG)


**Note:** After set everything necessary for this app, if the Android Studio gives you an error message while you compile/build the app. You could try to run the command in the terminal
```
flutter clean
```
then try to rebuild the app on your device. The reason causes this is the file pubspec.yaml contains conflict class variables in different imported packages. 


#### License
<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">CYBER4580 and related works</span> by <a xmlns:cc="http://creativecommons.org/ns#" href="http://faculty.ist.unomaha.edu/mlhale" property="cc:attributionName" rel="cc:attributionURL">Matt Hale</a> are licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License</a>.
