
# Front end Part

***

**Table of Contents**

* [The task](#the-task)
    * [To do](#the-task--to-do)
    * [Bonus](#the-task--bonus) (optional)

***

## The task

We’re keen to move the entire functionality of our Native App into a web application, mirroring the design layout, colour guide and iconography.

For this test you will need to implement this one page application (screen shown below), which details all the units, their current status, and allows a user to start/stop a charge according to the unit current status.

* Units are listed in no specific order.
* No charge currently running on the Unit -> The unit status is `Available`.
  * A green `Start` button is shown to allow a user to start a charge.
* A charge is currently running on the Unit -> The unit status is `Charging`.
  * An orange `Stop` button is shown to allow a user to stop the charge.
* The total number of charges on this unit is displayed at the bottom of each unit item.  
  

<p align="center">
    <a href="../support/design.png">
        <img alt="Design low res" height="600" src="../support/design-low.png" title="Design low res" width="337" />
        <br />
        View High Resolution
    </a>
</p>

<a id="the-task--to-do"></a>
### To do

We’d like you to take this simple screen, and:
* Supply all of your source files.
* Using a mobile first approach, make it responsive.
* Markup the elements into an HTML structure, with associated stylesheet files.
* Make use of SASS/LESS (whichever is your favourite).
* Prepare a `start` npm task in order to compile the CSS & JS inside the `front/public` folder with a task runner (such as Gulp or Webpack).
* You don’t need to worry about any hamburger page menu.
* Do not bother about handling clicks on the other buttons (`Favourites`, or `Account`).

<a id="the-task--bonus"></a>
### Bonus (optional)

* Make it a React JS application.
* Use Redux.
* Add some unit and/or functional tests to your implementation.

***

<p align="center">
    <a href="../README.md">
        Back to README
    </a>
</p>

***
