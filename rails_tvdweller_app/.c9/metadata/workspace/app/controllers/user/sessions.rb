{"changed":true,"filter":false,"title":"sessions.rb","tooltip":"/app/controllers/user/sessions.rb","value":"class User::SessionsController < Devise::SessionsController\n  respond_to :json, :html\n\n    def create\n    sign_out(:user) if current_user\n    self.resource = warden.authenticate!(auth_options)\n    set_flash_message(:notice, :signed_in) if is_flashing_format?\n    sign_in(resource_name, resource)\n    yield resource if block_given?\n      respond_with resource, location after_sign_in_path_for(resource)\n  end\nend","undoManager":{"mark":-2,"position":0,"stack":[[{"start":{"row":0,"column":0},"end":{"row":11,"column":3},"action":"insert","lines":["class User::SessionsController < Devise::SessionsController","  respond_to :json, :html","","    def create","    sign_out(:user) if current_user","    self.resource = warden.authenticate!(auth_options)","    set_flash_message(:notice, :signed_in) if is_flashing_format?","    sign_in(resource_name, resource)","    yield resource if block_given?","      respond_with resource, location after_sign_in_path_for(resource)","  end","end"],"id":1}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":11,"column":3},"end":{"row":11,"column":3},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1513174627201}