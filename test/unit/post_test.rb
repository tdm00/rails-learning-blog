require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "save post with all fields completed" do
  	post = Post.new()
  	post.name = 'user'
  	post.title = 'My First Post'
  	post.content = 'This is my content'
  	assert post.save
  end

  test "save post with only name field completed" do
  	post = Post.new()
  	post.name = 'user'
  	assert !post.save
  end

  test "save post with only title field completed" do
  	post = Post.new()
  	post.title = 'this is an important post'
  	assert !post.save
  end

  test "save post with only content field completed" do
  	post = Post.new()
  	post.content = 'this is an important post'
  	assert !post.save
  end

  test "save post with title field only 4 characters" do
  	post = Post.new()
  	post.name = 'user'
  	post.title = 'test'
  	assert !post.save
  end

  test "find post by id" do
  	post = Post.find(113629430)
  	assert_not_nil post
  end

  test "update post name by id" do
  	post = Post.find(113629430)
  	post.name = 'new_user'
  	assert post.save
  end

  test "update post title by id" do
  	post = Post.find(113629430)
  	post.title = 'new_user'
  	assert post.save
  end

  test "update post content by id" do
  	post = Post.find(113629430)
  	post.content = 'new_user'
  	assert post.save
  end

  test "fail update post without name by id" do
  	post = Post.find(113629430)
  	post.name = ''
  	assert !post.save
  end

  test "fail update post without title by id" do
  	post = Post.find(113629430)
  	post.title = ''
  	assert !post.save
  end


end
