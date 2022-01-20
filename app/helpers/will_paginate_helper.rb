module WillPaginateHelper
  class WillPaginateJSLinkRenderer < WillPaginate::ActionView::LinkRenderer
    def prepare(collection, options, template)
      options[:params] ||= {}
      options[:params]['_'] = nil
      super(collection, options, template)
    end

    protected
    def link(text, target, attributes = {})
      if target.is_a? Fixnum
        attributes[:rel] = rel_value(target)
        target = url(target)
      end

      @template.link_to(target, attributes.merge(remote: true)) do
        text.to_s.html_safe
      end
    end
  end

  def html_container(html)
    tag :ul, tag(:li, html), container_attributes
  end

  def page_number(page)
    tag :li, link(page, page, :rel => rel_value(page)), :class =>
      ('active' if page == current_page)
  end

  def gap
    tag :li, link(super, '#'), :class => 'disabled'
  end

  def previous_or_next_page(page, text, classname)
    tag :li, link(text, page || '#'), :class => [classname[0..3],
                                                 classname, ('disabled' unless page)].join(' ')
  end

  def js_will_paginate(collection, options = {})
    will_paginate(collection, options.merge(:renderer => WillPaginateHelper::WillPaginateJSLinkRenderer))
  end
end