# Overview
1. App brief and deployed webpage
2. Requirements
3. Wireframing & workflow diagram
4. User stories
5. Entity relationship diagram / DB Schema
6. Tools used
7. Coding and current bugs
8. Other challenges

---
## 1. App brief for ReSUS
Healthcare can be quite costly and not everyone has the ability to have private health insurance for non critical medical conditions. 
People could rely on Medicare and the public health system but this would mean prolonging their medical condition at the expense of waiting. 
Hence, ReSUS is a platform that provides a competitive marketplace for healthcare with the aim of lowering healthcare costs. Consequently, 
ReSUS also aims to lower the barriers of entry for healthcare - affordable healthcare for everyone. 

Link : [http://shrouded-spire-66335.herokuapp.com](http://shrouded-spire-66335.herokuapp.com)

---
## 2. Requirements / comments
![alt text](http://findicons.com/files/icons/1581/silk/16/tick.png)1. Create your application using Ruby on Rails     
![alt text](http://findicons.com/files/icons/1581/silk/16/tick.png)2. Demonstrate knowledge of Rails conventions.  
![alt text](http://findicons.com/files/icons/1581/silk/16/tick.png)3. Use postgresql database in development.  
![alt text](http://findicons.com/files/icons/1156/fugue/16/cross.png)4. Use an API (eg. Omniauth, Geocoding, Maps, other..). `(to be implemented)`  
![alt text](http://findicons.com/files/icons/1581/silk/16/tick.png)5. Use appropriate gems.  
![alt text](http://findicons.com/files/icons/1581/silk/16/tick.png)6. Use environmental variables to protect API keys etc. `(set in heroku)`  
![alt text](http://findicons.com/files/icons/1581/silk/16/tick.png)7. Implement a payment system for your product. `(Stripe used)`  
![alt text](http://findicons.com/files/icons/1156/fugue/16/cross.png)8. Your app must send transactional emails (eg. using Mailgun).`(to be implemented)`    
![alt text](http://findicons.com/files/icons/1581/silk/16/tick.png)9. Your app should have an internal user messaging system. `(Mailboxer)`   
![alt text](http://findicons.com/files/icons/1156/fugue/16/cross.png)10. Your app will have some type of searching, sorting and or filtering capability.    
![alt text](http://findicons.com/files/icons/1581/silk/16/tick.png)11. Your app will have some type of file uploading capability (eg. images). `(Cloudinary)`  
![alt text](http://findicons.com/files/icons/1581/silk/16/tick.png)12. Your app will have authentication (eg. Devise, must have full functionality in place).  
![alt text](http://findicons.com/files/icons/1156/fugue/16/cross.png)13. Your app will have authorisation (users have restrictions on what they can see and edit). `(partially implemented, patients can only edit listings, practitioners can only edit quotes)`    
![alt text](http://findicons.com/files/icons/1156/fugue/16/cross.png)16. Your app will have an admin dashboard for the admin user to administrate the site. `(not needed at this stage)`   
![alt text](http://findicons.com/files/icons/1581/silk/16/tick.png)17. Document your application with a README that explains how to setup, configure and use your application.  


---
## 3. Wireframing and workflow diagram
Axure was used to draw the following wireframe and workflow

![alt text](https://trello-attachments.s3.amazonaws.com/582267b2b78b42ccc28f4ca0/582295bc223879d4f07a8cb5/2e06457cb59f125a5c3b15905143d1a9/ReSUS_Wireframe-Final.png)

---

## 4. User stories

* Patients  
 1. As a patient, I am able to sign up and enter basic details : Name, Age, Address, Country, Ethiticity  
 2. As a patient, I am able to sign in with my email and password  
 3. As a patient, I am able to select from a list of non critical medical condition  
 4. As a patient, I am able to upload a current set of medical data such as ECG, XRay etc based on a medical condition  
 5. As a patient, I would be able to receive itemised quotes from medical practioners  
 6. As a patient, I would be able to perform a simple background check of the medical practioners from their local medical database  
 7. As a patient, I would be able to accept a quote  
 8. As a patient, I would be able to write a review or provide a rating once I have accepted the quote and received treatment  
 9. As a patient, I am able to send a message to medical practioners who have sent me a quote  

* Practitioners  
 1. As a medical practioner, I am able to sign up with my name, years of experience, accreditation board, medical registration, specialty, contact details, number of treated cases to date.  
 2. As a medical practioner, I am able to sign in with my username and password.  
 3. As a medical practioner, I am able to view patients based on my selected specialty  
 4. As a medical practioner, I have the option to provide a non-commital prediagnosis based on the initial patient information  
 5. As a medical practioner, I am able to provide a itemised quote.  
 6. As a medical practioner, I am able to send a quote to a patient.  
 7. As a medical practioner, I am able send a message to the patient whom I have sent the quote.  


---
## 5. Entity relationship diagram / DB Schema

[Link to DB Designer](https://dbdesigner.net/designer/schema/56751)

![alt text](https://trello-attachments.s3.amazonaws.com/582267b2b78b42ccc28f4ca0/582317f7713e5354c16e17cc/be793184fbedca9b60e485653cb8b2e5/ReSUS_Schema-Final_PostReview.png)

---
## 6. Tools used

1. Trello - [Link to Trello](https://trello.com/b/zIks2ZZl/ian-resus-healthcare-for-everyone, "ReSUS - Trello")  
2. DB designer - [Link to DB Designer](https://dbdesigner.net/designer/schema/56751)
3. Axure 
4. Bootstrap
5. Gem : Devise, Cloudinary, Simple Form, Stripe, Mailboxer

__Notes__ :   
Trello was used as a project planning too and also to keep track of ongoing changes and updates.


---
## 8. Current bugs, future updates and others.

* Coding  
  1. To be conducted.

* User stories & Schema review  
  1. User stories - Sharon Chen suggested that i reword user stories to in the format of 
  "As a [user], I can ... , so ..."    
  2. Schema - Sharon Chen suggesed to simplify the profiles table of patients and practitioners as some fields were identical  
  3. Schema - Patrick suggested to add blood type for patient profiles  
  4. Schema - Ruegen advised that the other tables should be reference by the 'User' table where relevant.
  Initial design had multiple dependancies to query a field. All tables ideally should live indepedantly with only 1 depandancy on the 'User' table

* Bugs  
  1. On the navigation bar, after clicking on droplist item, droplist does not function anymore. Workaround was to refresh page.
  2. On heroku, appearnace of elements does not seem to be responsive. To review.
  3. Validation to be applied on user profile input on sign up.


* Future updates  
  1. Requirements that were not implemented
  2. Question bank depending on medical condition selecting in listing  
  3. [placeholder] 

---
