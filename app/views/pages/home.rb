class Pages::Home < Minimal::Template
  include do
    
    def to_html
      div(:class => [:description, :"#{resource_instance_name}"]) do
        div(:class => [:container, :'description-container']) do
          render_body
        end
      end if has_body?
    end
    
    def render_body
      div(:class => :'page-text') do
        resource.body.html_safe
      end if has_body?
    end
    
    def has_body?
      resource.body.present?
    end

  end
end