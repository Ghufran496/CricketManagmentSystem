  # Cricket Managment System

Cricket managment system is able to store and manage players data. it is a complete managment system which is built using Apache netbeans and Oracle database. it allows the user to see the info of their favourite players and teams and can see the schedule of upcoming matches etc.



## Table of Contents

- [Introduction](#introduction)
- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)

## Introduction
The cricket management system  built using Apache NetBeans and Oracle Database is a software application designed to manage and automate various cricket-related tasks and processes. It provides a comprehensive platform for cricket enthusiasts and professionals to efficiently manage all aspects of cricket, including player information, team selection, scheduling of matches, scoring, and statistical analysis.

The system is built using the Apache NetBeans Integrated Development Environment (IDE) and Oracle Database, which ensures its reliability, scalability, and security. The system is user-friendly and intuitive, with a well-designed graphical user interface that makes it easy to navigate and perform various functions.
With this system, users can store and retrieve player information, including their personal details, performance statistics, and injury history. The system also allows users to create and manage teams, schedule matches, and track scores and other relevant data.

## Installation

To use and install the cricket management system on your PC, you will need to follow the following steps:

Install Apache NetBeans IDE on your PC: The cricket management system was built using Apache NetBeans IDE. If you do not have it installed on your PC, you can download and install it from the official Apache NetBeans website.

Install Oracle Database on your PC: The cricket management system uses Oracle Database to store and manage its data. If you do not have Oracle Database installed on your PC, you can download and install it from the official Oracle website.

Download the cricket management system: Once you have installed Apache NetBeans IDE and Oracle Database on your PC, you can download the cricket management system files from the source where it is available.

Import the project in NetBeans: After downloading the project, you need to import it into Apache NetBeans IDE by selecting File > Import Project > From Zip option in NetBeans.

Configure Oracle Database: Once the project is imported into NetBeans, you need to configure the Oracle Database connection in the project. For this, go to the Services tab in NetBeans, right-click on the Databases option, and select New Connection. Then provide the database details like URL, username, and password to connect to the database.

Build and Run the project: Once the project is imported and the database connection is configured, you can build and run the project in NetBeans by selecting the Run button.

Once the project is running, you can use it to manage and automate various cricket-related tasks and processes by following the instructions provided in the user interface.
## Usage
<h4>GUI Explanation:</h4>
<ul>
In this system GUI start with Menu where user will have several options regarding this system. Like if he/she will have access to see following details about players etc. added in a system.
<li>	Team Information</li>
<li>	Player Details</li>
<li>	Matches Details </li>
<li>	Ground Info</li>
<li>	Admin</li>

</ul>
<h4>o	Team Information’s:</h4>
We are simply displaying data of teams like how many teams are there in our system currently. In this menu you can also see one more feature which is displaying the details about coach and managers using join on two table to fetch data from two different tables.
<h4>o	Player Details:</h4>
In this menu you can see all the players that are added in a team and their all records. If you want to see all player that belongs to any particular team you also can do this here. One more feature that we have added the concept of nested query to display that which player has highest no of 50’s and 100’s.
<h4>o	Match Details:</h4>
We are simply displaying Match details like which teams are going to compete with each other etc. In this menu  we again used the concept of join to join two tables Schedule & Match to display the required entries that we are interested in to display the schedule of all matches which consist of Time and Place.
<h4>o	Ground Info:</h4>
In this menu we are displaying all the ground details which user can see.
<h4>o	Admin:</h4>
This is strictly only for admin. Admin need to login then he will have access to different options. Like,
<li>	Admin can only see viewer details like their CNIC etc. and many more.</li>
<li>	Moreover, Admin have access to update any field like</li>
<li>	Can update Ground capacity in Ground Details.</li>
<li>	Can update match type and venue of any match.</li>
<li>	Can update player 50’s and 100’s and also change player team.</li>
<li>	Can update team captain and coach name.</li>
<li>	Can update viewer details like CNIC and contact no.</li>
<li>	Admin has also access to delete any player (Using procedure) from system just need to enter that player ID.</li>


## Contributing

<h4>Guidelines</h4>
Fork the project: Anyone interested in contributing to the project should first fork the project from the original repository.

Create a new branch: Once you have forked the project, create a new branch for your changes. This will keep your changes separate from the master branch, making it easier to manage and merge later on.

Make changes: Now you can make changes to the code or add new features to the game. Make sure to test your changes thoroughly before submitting them.

Commit changes: Once you are happy with your changes, commit them to your branch. Be sure to include clear and descriptive commit messages that explain what changes you have made.

Submit a pull request: Once your changes are committed, submit a pull request to the original repository. In your pull request, describe the changes you have made and explain why they are valuable to the project.

Respond to feedback: The original project owner may provide feedback or request changes to your pull request. Be responsive and make any necessary changes to ensure that your contribution is in line with the project's goals.

For reporting issues, contributors should follow these steps:

Check existing issues: Before reporting a new issue, check the existing issues to make sure that it hasn't already been reported.

Provide details: When reporting an issue, provide as much detail as possible, including the steps to reproduce the problem, any error messages, and the expected and actual behavior.

Be respectful: When reporting an issue or commenting on an existing one, be respectful and polite. Remember that everyone is working towards the same goal of improving the project.
