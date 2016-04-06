# Write a method that takes a string and returns the number of times every word appears
# the frequency of each unique word

text = "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo voluptate, eum blanditiis,
ipsa dolorem inventore provident. Qui voluptatem harum elit! elit, in, assumenda provident perferendis velit et
ipsum pariatur dolores omnis dolorum exercitationem, incidunt nemo, quasi sint fugiat! Sequi sunt dolor
, illum cumque consequuntur nesciunt quasi dolore Qui voluptatem harum elit! elit, in, assumenda provident perferendis velit et
ipsum pariatur dolores omnis dolorum exercitationem, incidunt nemo, quasi sint fugiat! Sequi sunt dolor
, illum cumque consequuntur nesciunt quasi doloreexpedita libero. Praesentium veniam aliquid eius,
voluptatibus. Numquam eius fugit placeat sequi minus blanditiisexercitationem, incidunt nemo, quasi sint fugiat! Sequi sunt dolor
, illum cumque consequuntur nesciunt quasi dolore expedita libero. Praesentium veniam aliquid eius,
voluptatibus. Numquam eius fugit placeat sequi minus blanditiis repudiandae possimus minima vel
dignissimos a distinctio neque fuga doloremque quas, impedit saepe odit architecto temporibus
pariatur. Quo velit cumque doloremque eaprovident. Qui voluptatem harum in, assumenda provident perferendis velit et
ipsum "

frequency = {}
text = text.gsub('.', '').gsub(',', '').gsub('!', '')
split_text = text.split(' ')
p split_text
