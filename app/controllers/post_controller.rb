class PostController < ApplicationController
    def view
        post = Post.create(title: "post1" , content: "simpple content")

        posts = post.inspect 
        puts posts
        
    end

end