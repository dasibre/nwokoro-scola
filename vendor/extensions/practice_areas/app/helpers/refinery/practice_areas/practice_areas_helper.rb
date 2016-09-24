module Refinery
	module PracticeAreas
		module PracticeAreasHelper
			def trim_text(text,path = '#')
				truncate(text,length: 520,:escape => false) {link_to 'more info', path }
			end
		end
	end
end

