# CYBR8480 Semester Project
A semester project regarding to make friends and have fun.


 ![](/pic/chatui.png)

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
* **Chat:** Chat system has always provided users with a timely and secure chat system, connected via Google database. The APP can provide two people to chat, as well as two people positioning, and some entertainment projects can allow two people to interact, increase the interactivity of two people. Even multi-person chat and entertainment.If possible, my idea is to be able to directly stack the ID card information through two mobile phones and directly join the chat system.

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
![](/pic/chatapp.png)

**Or check the raw resource [This link to raw Design](/pic/chatapp.png).**

## Component List
### 1. Authentication Component
When our users want to use chat app, we will provide user authentication mechanism. It uses the Firebase backend cloud service to handle user credential authorization. You can only access users who have logged in to this system to get messages, so privacy will be guaranteed.

#### Sub-component 1.1 User Login
Every existing user must log in before they can send and share information directly. The HTTPS protocol is used to establish a connection, and the user's login is not complicated. Just provide their email address and personally chosen password (at least 6 characters) when registering.

#### Sub-component 1.2 User Register
If it is a new user, there is a registration function that can register user information in the database, and register with a non-personal email and a 6-digit password.

### 2. Google Map Service Component
The Google Map service uses Google Cloud Platform as the backend for interacting with chat apps. The chat app will use a secure API to access Google's services. The user's instant data will be protected by Google api security.

#### Sub-component 1.1 GPS Service
The chat app location tracker will access the user's current location, because it is mainly designed for users who like to face-to-face, and can guarantee their successful meeting. All this data will be processed by Google.

#### Sub-component 1.2 Two-person Distance 
It can help users calculate the total number of kilometers between two locations. It can also show the fastest route between two locations, so users can bypass heavy traffic.

### 3. Local Entertainment Features Service
Chat app has two entertainment methods, one is sieve and the other is music mode, which can add fun to users’ lives

#### Sub-component 1.1 Sieve Mode
If the user likes to use a sieve to fight against other users, then this feature can improve the user's friendship relationship to a big level, because it can deepen the interaction between the user and the user.

#### Sub-component 1.2 Music Mode
If users like to show their talents to others, then this model is born for this. Simple, convenient and fast is the design concept of this model.

### 4. Chat system Service
Chat app has always provided users with a timely and secure chat system, connected via Google database. The APP can provide two people to chat, as well as two people positioning, and some entertainment projects can allow two people to interact, increase the interactivity of two people. Even multi-person chat and entertainment.If possible, my idea is to be able to directly stack the ID card information through two mobile phones and directly join the chat system.

#### Sub-component 1.1 Grop chat
Multi-person interactive projects, positioning of two people, and some entertainment projects can make two people interact and increase the interactivity of two people.


## Security analysis
Security analysis of abuse cases, the remedial measures for chat applications are mainly discussing the security level, and hackers want to conduct several attacks, such as gaining unauthorized access or sniffing to discover the user's location and login credentials.


**[This link to raw Design](/pic/ChatAppsecurityanalysis.png).**
![](/pic/ChatAppsecurityanalysis.png)

| Threat | Category | Description | Mitigation |
|----------------|---------------------------|-------------------|------------|
| Unauthorized Login | Information Disclosure & Spoofing | Without credential verification, anyone can log in to the server. Therefore, this component may leak user information | Require users to register a username and password, and hand over the data to google firebase |
| Password Crack | Information Disclosure & Spoofing | The password length and complexity are low, and the user’s account will be hacked in a simple way, so that hackers can use these cracked credentials to obtain user information, chat information, and location information | The password management policy will set a minimum length and require a more complex combination when the user creates a password, as well as the number of logins |
|  Chat Sniffing | Information Disclosure & Spoofing | Hackers can capture the data between the user and the server when the user and the server communicate with each other to sniff the password, so they can know what the user is talking about | TThe Firebase cloud backend developed by Google is using secure communication channels and complex encryption algorithms when establishing connections with users |
| Unauthorized Location Access | Privilege Escalation | The user’s location can be exposed so that hackers can steal their chat location and GPS data, so that they can carry out personal attacks or blackmail or perform social engineering on them | Google Cloud Platform provides map services and also provides developers with restricted security API key functions. Therefore, as long as hackers cannot obtain the key, they will not be able to access the user's GPS data. The secret key needs to be kept properly! |



## Implementation
Check the /lib/main file in this repo or click  [Link!](https://github.com/FOaker/CYBR8480-Semester-Project-chatapp/blob/main/lib/main.dart)


## Testing
All the test case can be viewed [test!](https://github.com/FOaker/CYBR8480-Semester-Project-chatapp/tree/main/test)


| Function | Criteria | result | 
| ------------- | -------- | ----------- |
| chatscreen | Check whether the user input is normal and whether the listview can scroll normally | correctly passed |
| login | Test whether you can log in with an unauthorized user | correctly passed | 
| roundedbutton | Test whether a custom widget can meet the requirements | correctly passed | 
| welcomescreen | Test whether the login and registration buttons on the login interface are norma | correcly passed | 

There are also some tests that continue to be improved in the future, such as sound test and Google map test, and whether the size in the game mode is matched.


## Demo

The video demo [here]()   



## Packaging and Release

To run this application, you need to download this application to a local directory by clicking the "Code" button at the top right of the main page of this repository, and then click "Open with GitHub Desktop" or "Download Zip".
![](/pic/isntall.png)

If you want the app to run, you can connect to the firebase database and set it up and to perform pub get operation in pubsec.yaml, download the google json file and put it into the app layer and you have to create you own API to enable the GPS function and API key.
![](/pic/pub.png)

**software requirements:** Android studio, Flutter plugin, USB devices driver, Google Cloud Platform API, Firebase Cloud Firestore
**Hardware Requirement:** pc/laptop, Android phone, network cable or Wifi, USB cable

While you are able to run this app in the emulator, you should see UI chat screen like  
![this](/pic/letschat.png)


**Note:** If the Android Studio gives you an error message after everything necessary set for this app. You have to compare the running code version and the compiled version.



#### License
<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">CYBER4580 and related works</span> by <a xmlns:cc="http://creativecommons.org/ns#" href="http://faculty.ist.unomaha.edu/mlhale" property="cc:attributionName" rel="cc:attributionURL">Matt Hale</a> are licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License</a>.
