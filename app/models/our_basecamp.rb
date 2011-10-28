class OurBasecamp
	class << self
		def projects
			Basecamp::Project.all	
		end


		def lists project_id
			Basecamp::TodoList.all(project_id, false)
		end
		

		def tasks
			items = {}

			projects.each do |project|
				ours = !project.name[/\[Soft\]/].nil? || !project.name[/Engineering Department/].nil?

				lists(project.id).each do |list|
					list.todo_items.each do |item|
						person = item.responsible_party_name rescue ''
						creator = item.creator_name rescue ''

						next if !ours && !OUR_STAFF.include?(person)
						next if item.completed 
						next unless item.content['---'].nil?

						project_name = item.content[/\[([^\[]+?)\]/,1]
						project_name ||= project.name

						items[item.id] = {
							:id => item.id, 
							:name => item.content, 
							:list => list.name, 
							:project => project_name,
							:person => person,
							:creator => creator,
						}						
					end
				end
			end

			items
		end		
	end
end