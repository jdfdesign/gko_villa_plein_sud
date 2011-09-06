class Shared::Masterhead < Minimal::Template
  include do
    def to_html
      self << raw("<div id='virtual_tour_tab' class='fr'><img src='/images/360.gif'>#{t(:"virtual_tour")}</div>")
      self << raw("<div id='virtual_tour_dialog'><embed src='/virtual_tour.mov' width='832' height='330' autoplay='false'></div>")
      render(:partial => '/shared/locales_select', :locals => { :locale_format => 'short' }) 
    end
  end
end