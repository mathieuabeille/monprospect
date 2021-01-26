class MigrateBodytoRichBodyBlogs < ActiveRecord::Migration[6.0]
  def change
      def up
    Blog.find_each do |article|
      article.update(rich_body: article.body)
    end
  end

  def down
    Blog.find_each do |article|
      article.update(body: article.rich_body)
      article.update(rich_body: nil)
    end
  end
  end
end
