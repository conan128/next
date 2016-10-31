Router.route('/',->@render("Home"))
Router.route('/login',->@render('Login'))
Router.onBeforeAction(->
  if !Meteor.userId()
    this.redirect('/')
  this.next()
)
