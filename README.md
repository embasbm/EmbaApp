
## Emba Rails App

Can you implement a basic Rails app that will use a few technologies you are less familiar with (as the role will involve learning different technologies as we work together):

- Use MongoDB/Mongoid for the Database, Turbolinks5 and unobtrusive Javascript (jquery is OK too).

    - http://aspiringwebdev.com/consider-turbolinks-5-for-your-next-rails-project/

    - https://github.com/turbolinks/turbolinks/tree/v5.0.3#turbolinks

- Basic scaffold for a User, model holds some details like first name, last name, doesn't matter what else

- The page that renders the User index should show a table that can be sorted by all columns and be endless scrolling, e.g. will auto load the next batch of users as you scroll down

- When a new user is added or an existing user is changed (e.g. `User.first.update(first_name: "Jim")`), the browser should instantly show the new/changed user in the index and show pages (using ActionCable).

    - https://hackernoon.com/the-practical-guide-to-using-actioncable-30d570d8988c

- The app should have at least these tests: 1 model, 1 controller, 1 integration (e.g. capybara) and 1 javascript test (e.g. jasmine)

- Other than the requirements above, e.g. ActionCable, you can use any methods and technologies you like to achieve this, including copy pasting from StackOverflow :P - and please ask me directly if you have any questions or if anything is not clear.

## Sidenotes:

I'd ask for more documentation since I am actually interested in solving this task. I just want to be able to make this App as the requirements ask. So, if the person who wrote this task, has some more specific documentation about Turbolink5, ActionCable that would guide me properly to solve it, that would be really nice :)