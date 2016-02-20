require "fileutils"
require "curb"
require "archive/zip"
require "tty-spinner"

module HTML5UP
  class Helpers
    def self.extract(src, dest, options = {})
      begin
        Archive::Zip.extract(src, dest)
      rescue Archive::Zip::UnzipError
        puts "Error: Website down or invalid template name."
        puts "Removing #{src}"
        FileUtils.rm(src)
        exit(false)
      end

      if options[:save]
        FileUtils.mv(src, dest + "/" + src)
      else
        FileUtils.rm(src)
      end

      puts "Extracted to #{dest}"
    end

    def self.download(template, filename)
      easy = Curl::Easy.new
      easy.follow_location = true
      easy.url = "html5up.net/#{template}/download"

      File.open(filename, 'wb') do |f|
        spinner = TTY::Spinner.new("Downloading #{template}... ")
        easy.on_progress do |dl_total, dl_now, ul_total, ul_now|
          spinner.spin
          true
        end
        easy.on_body { |data| f << data; data.size }
        easy.perform
        puts " => '#{filename}'"
      end
    end

    def self.templates
      %w(
        multiverse hyperspace future-imperfect solid-state
        identity lens fractal eventually spectral photon
        highlights landed strata read-only alpha
        directive aeriel twenty big-picture tessellate
        overflow prologue helios telephasic strongly-typed
        parallelism escape-velocity astral striped
        dopetrope miniport txt verti zerofour arcana
        halcyonic minimaxing
      )
    end
  end
end
