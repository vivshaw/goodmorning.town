module HomeHelper
  def show_svg(name, options={})
    file_path = "#{Rails.root}/app/javascript/images/#{name}.svg"

    if File.exists?(file_path)
      file = File.read(file_path)
      doc = Nokogiri::HTML::DocumentFragment.parse file
      svg = doc.at_css 'svg'

      options.each {|attr, value| svg[attr.to_s] = value}

      doc.to_html.html_safe
    else
      '(svg not found)'
    end
  end
end
