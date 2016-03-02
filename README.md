CircleCI Tests: [![Circle CI](https://circleci.com/gh/nyc-copperheads-2016/menu.svg?style=svg)](https://circleci.com/gh/nyc-copperheads-2016/menu)

# [MENU](http://menu-inc.herokuapp.com/)

Menu is a mobile-first, single-page web app that serves as a digital alternative to paper menus.

Visitors view nearby restaurants and their official menus, filter menu items (by tastes, ingredients, and diets), and favorite items to their profiles straight from their phones.

Business owners are able to fully-control their online menus and their brand.

Figuring out what to eat with up-to-date menus has never been easier!

**[Demo](https://youtu.be/CYhv8IjMsWQ?t=35m40s)**

**[Roadmap and Changelog](https://trello.com/b/dQNBPk19/menu)**

## Technologies

### Back-end
- Ruby on Rails
- [Locu API](https://dev.locu.com/documentation/)
- RESTful API
- RSpec
- CircleCI
- Heroku Continuous Deployment

### Front-end
- Javascript
- AngularJS
- HTML5
- CSS3
- Foundation

## Contributing

Pull requests and issues are welcome!

First, make sure you have [Git](https://git-scm.com/) installed and in your terminal, you can run the following commands to clone our repository and navigate to the folder:
```
git clone https://github.com/nyc-copperheads-2016/menu.git
cd menu
```

To run the site locally, make sure you have [Ruby](https://www.ruby-lang.org/en/) and [PostgreSQL](http://www.postgresql.org/) installed, then follow the steps below:
```
gem install bundler
bundle install
bundle exec rake db:reset
bundle exec rails server
```

Then go to http://localhost:3000/ and play with the app!

If you want to make changes, create a new feature branch:
```
git checkout -b feature-branch-name
```

Make commits early and often according to these [guidelines](https://robots.thoughtbot.com/5-useful-tips-for-a-better-commit-message).

When the changes are functional (with tests if complex!), push your branch to GitHub and make a pull request.
```
git push origin feature-branch-name
```

Thanks!
