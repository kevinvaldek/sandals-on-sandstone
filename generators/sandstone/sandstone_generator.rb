module Rails
  module Generator
    module Commands
      
      class Create < Base
        def file_add_line_after(file, finder_line, added_line)
          gsub_file(file, Regexp.new('^(\s*' + finder_line + ')\s*$'),
            "\\1\n#{added_line}")
        end
      end
      
      class Destroy < RewindBase
        def file_add_line_after(file, finder_line, added_line)
          gsub_file(
            file, 
            Regexp.new('^(\s*)' + "#{added_line}" + '$'),
            '#\1\2'
          )
        end
      end
    end
  end
end

class SandstoneGenerator < Rails::Generator::Base

  def manifest
    template_dir = File.join(File.dirname(__FILE__), 'templates')
    
    record do |m|
      Dir.chdir(template_dir) do
        # helper proc
        copy_files_to = lambda { |directory, target_proc|
          m.directory(target_proc[directory])
          Dir.glob(File.join(directory, '**', '*')).each do |file|
            m.directory(target_proc[file]) if File.directory?(file)
            m.file(file, target_proc[file]) if File.file?(file)
          end
        }

        # handle models, controllers, helpers, and views
        %w(models controllers helpers views).each do |area|
          copy_files_to[area, lambda { |file| File.join('app', file) }]
        end

        # handle tests
        copy_files_to['test', lambda { |file| file }]
        # handle JavaScripts & stylesheets
        %w(javascripts stylesheets).each do |asset|
          copy_files_to[asset, lambda { |file| File.join('public', file) }]
        end
      end
      
      # Create directory for cached CMS pages
      m.directory('app/views/pages/generated')
      m.directory('app/views/layouts/generated')

      # Handle migrations
      Dir.glob(File.join(template_dir, 'migrate', '*')).each do |file|
        m.migration_template(
          File.join('migrate', File.basename(file)),
          'db/migrate',
          :migration_file_name => File.basename(file, '.rb')
        )
      end
    end
  end
    
end