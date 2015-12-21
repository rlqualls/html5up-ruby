require "fileutils"
require "curb"
require "archive/zip"

module HTML5UP
  class Helpers
    def self.extract(src, dest, options = {})
      Archive::Zip.extract(src, dest)
      if options[:save]
        FileUtils.mv(src, dest + "/" + src)
      else
        FileUtils.rm(src)
      end
    end

    def self.download(url, filename)
      easy = Curl::Easy.new
      easy.follow_location = true
      easy.url = url
      print "'#{url}' :"

      File.open(filename, 'wb') do |f|
        easy.on_progress do |dl_total, dl_now, ul_total, ul_now|
          print "="
          true
        end
        easy.on_body { |data| f << data; data.size }
        easy.perform
        puts "=> '#{filename}'"
      end
    end

    def self.templates
      %w(
        hyperspace future-imperfect solid-state identity
        lens fractal eventually spectral photon
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
