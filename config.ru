require './config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

use Rack::MethodOverride

# here is where I will mount other controllers with 'use'
use UsersController
use DreamPostsController
run ApplicationController
