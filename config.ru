require './config/environment'

use Rack::MethodOverride
use BookingController
use UserController
run ApplicationController