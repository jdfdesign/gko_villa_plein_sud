class Pages::Googlemap < Minimal::Template
  include do
    def to_html
      div(:class => [:description, :"#{resource_instance_name}"]) do
        div(:class => [:container, :'description-container']) do
          render_title
          render_body
          div(:id =>"map-canvas", :style => "height:400px;width:600px;") {}
          content_for :after_javascript_libraries do
            render :file => "/pages/gmap.js"
          end
        end
      end
    end

    def render_title
      h1(:id => "page-title") { resource.title.html_safe }
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