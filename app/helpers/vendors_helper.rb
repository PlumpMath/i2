module VendorsHelper

	def svg_tag(asset, svg_id, options = {})
		svg_attributes = {
			"xlink:href".freeze => "#{asset_url(asset)}##{svg_id}",
			height: options[:height],
			width: options[:width],
		}.delete_if { |_key, value| value.nil? }
		xml_attributes = {
			"xmlns".freeze => "http://www.w3.org/2000/svg".freeze,
			"xmlns:xlink".freeze => "http://www.w3.org/1999/xlink".freeze,
		}

		content_tag :svg, xml_attributes do
			content_tag :use, nil, svg_attributes
		end
	end
end
