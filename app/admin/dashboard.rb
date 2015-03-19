ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        para ("Welcome to Writerskill Member Tracker and Events Management System")
        small ("Please use the tabs at the top.")



      end
    end

    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Works" do
    #       ul do
    #         Member.recent(5).map do |mem|
    #           li link_to(mem.work, member_path)
    #         end
    #     end
    #   end






    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
