module ApplicationHelper
  def application_title
    [t("default_title"), @title].compact.join(" - ")
  end
end
