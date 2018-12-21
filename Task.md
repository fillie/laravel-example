# Your Task

Your task is to develop a small web application, which allows users to create 'Birthday Party Invites'.

## Brief 

The user should be able to create a new invite by accesing a form somwhere in the application. 

Submitting the form succesfully should result in the data being saved. An invite should be composed of three things; the full name of an invitee, an invitee email and optionally their phone number.

The user should be able to navigate to another view, where they can see a list of all invites created in a table view.

From this page, a user should be able to click back into a particular invite, and mark an invite as accepted using a checkbox.

You do not need to worry about authenticating users, and should assume a user is already logged in.

## Bonus

When an invite is created, we can trigger a laravel event. Inside of the event listener, we should be able to fire some code which could send an email, an SMS, or both to an invitee (don't worry we don't expect to see actual email or sms intergation, just where you might include it).

Feel free to style the views you create in any way possible, accessibility is also something to think about.

PHP unit testing would also be a nice to have.