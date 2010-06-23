module MemberFetcher
  def self.included(base)
    base.before_filter :member_fetcher
  end

  private
  def member_fetcher
    if params[:id]
      model_name = self.class.to_s.gsub("Controller","").singularize
      object_name = model_name.downcase
      instance_variable_set("@#{object_name}", eval(model_name).find(params[:id]))
    end
  end
end