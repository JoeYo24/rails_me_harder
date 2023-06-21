json.post do |post|
    json.username post.username
    json.content post.content
    json.time post.time
end 
