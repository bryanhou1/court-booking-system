require './config/environment'

use Rack::MethodOverride
use BookingController
use UserController
use SessionsController
run ApplicationController