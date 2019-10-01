module TwsHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm' || action_name == 'create'
      confirm_tws_path
    elsif action_name == 'edit'
      tw_path
    end
  end
end