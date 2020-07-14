require 'rails_helper'

describe Like do


    it "é valido para dar like" do

        user = User.create(id: 1, name: 'teste',email:'teste@gmail.com',password:'123456789')
        post = Post.create(id: 1, name: 'testando', views: 1)

        like = Like.new(user_id: user.id, post_id: post.id)

        expect(like).to be_valid

    end

    it "é valido para dar deslike" do

        user = User.create(id: 1, name: 'teste',email:'teste@gmail.com',password:'123456789')
        post = Post.create(id: 1, name: 'testando', views: 1)
        like = Like.create(id: 1, user_id: 1, post_id: 1)

        deslike = Like.find_by(user_id: user.id, post_id: post.id).destroy

        expect(deslike).to be_valid

    end
end