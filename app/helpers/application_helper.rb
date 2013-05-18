module ApplicationHelper
  
  def root_pages(*opts)
    roots = Refinery::Menu.new(Refinery::Page.fast_menu).roots
    
    roots.each { |r| roots.delete(r) if r.title == "Home" } if opts.include?(:no_home)
    roots.map!(&:title)                                     if opts.include?(:titles)

    return roots
  end

end
