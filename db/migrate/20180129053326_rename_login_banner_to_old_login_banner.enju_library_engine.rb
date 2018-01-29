# This migration comes from enju_library_engine (originally 20171126133835)
class RenameLoginBannerToOldLoginBanner < ActiveRecord::Migration
  def change
    rename_column :library_groups, :login_banner, :old_login_banner
  end
end
