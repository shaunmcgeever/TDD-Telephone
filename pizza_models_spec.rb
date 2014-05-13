require "spec_helper"

describe Pizza do
  context "attributes" do
    it "should have a name" do
      post = Post.create!
      comment1 = post.comments.create!(:body => "first comment")
      comment2 = post.comments.create!(:body => "second comment")
      expect(post.reload.comments).to eq([comment2, comment1])
    end

    it "should have a description" do
      post = Post.create!
      comment1 = post.comments.create!(:body => "first comment")
      comment2 = post.comments.create!(:body => "second comment")
      expect(post.reload.comments).to eq([comment2, comment1])
    end

    it "should have a time_baked" do
      post = Post.create!
      comment1 = post.comments.create!(:body => "first comment")
      comment2 = post.comments.create!(:body => "second comment")
      expect(post.reload.comments).to eq([comment2, comment1])
    end

  end


  context
end



A pizza should have attributes name, description, and time_baked

A pizza must be initialized with string name

A pizza's time_baked defaults to 0

A pizza has many toppings

A pizza should have a method required_bake_time which returns the sum of 900 (15 minutes) plus the maximum bake time of all its toppings

A pizza should have a method bake(time), which increments time_baked by the integer argument time, and invokes bake(time) on all of its toppings

A pizza should have a method baked? which returns a boolean indicating whether the pizza and its toppings have finished baking or not (based on required_bake_time)
A pizza should have a method finished_toppings which returns an array of its toppings that have finished baking
A pizza shold have a method unfinished_toppings which returns an array of its toppings that have not yet finished baking
A topping should have attributes name, required_bake_time, time_baked
A topping must be initialized with string name and integer required_bake_time

A topping should have a method bake(time) which increments time_baked by the integer argument time
A topping should have a method baked? which returns a boolean indicating whether time_baked is greater than required_bake_time
