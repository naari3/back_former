# BackFormer
Improved redirect back in rails.

In Rails 5, we have new method `#redirect_back`, but this method is feature which seeing referer only. This may be lack of function.  
Example, please imagine when you implement controller they have to login.  
You should redirect from login needed controller to `new` action ( `GET /login` form, input) and then redirect to `create` action ( `POST /login` evaluate),  
but when user has moved from new to create, referer is expectly overriding `GET /login` and you can't redirect back to login needed controller with `#redirect_back`.

This gem provide feature which store previous url, redirect stored url and skip storing url. they makes it possible to redirect after logging in.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'back_former'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install back_former
```

## Usage

```ruby
class ApplicationController
  before_action :save_previous_path  # save current page path to your session
end

class LoginNeededController
  before_action -> {
    redirect_to login_path unless logged_in?
  }
  def index; end
end

class LoginController
  skip_before_action :save_previous_path
  def new; end

  def create
    redirect_back_former
  end
end
```

1. Access to `/login_needed/` then redirect `/login`
2. Post request to `/login (create)`
3. redirect to `/login_needed/`

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
