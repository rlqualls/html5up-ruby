require "thor"
require "html5up/helpers"

module HTML5UP
  class CLI < Thor
    desc "new <name>", "create project out of template"
    option :template, required: true
    option :save
    def new(project_name)
      template = options[:template]
      filename = "html5up-#{template}.zip"

      Helpers::download(template, filename)
      Helpers::extract(filename, project_name, options)
    end

    desc "templates", "list available templates"
    def templates
      Helpers::templates.each do |template|
        puts template
      end
    end
  end
end
