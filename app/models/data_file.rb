class DataFile < ActiveRecord::Base
   validates_presence_of :title
  def self.save(small_banner,large_banner,name)
     unless(small_banner.nil?)
      small_banner_filename =  small_banner['datafile'].original_filename
      extension = small_banner_filename.split('.')
      name_length = small_banner_filename.length
      ext_start = name_length-4
      ext_end = name_length-1
      extension = small_banner_filename[ext_start..ext_end]
      name1 = name + extension
      small_banner_directory = "d:/test"
      small_banner_path = File.join(small_banner_directory,name1)
      File.open(small_banner_path, "wb") { |f| f.write(small_banner['datafile'].read) }
    end
    unless(large_banner.nil?)
      large_banner_filename =  large_banner['datafile'].original_filename
      name1_length = large_banner_filename.length
      ext1_start = name1_length-3
      ext1_end = name1_length-1
      extension1 = small_banner_filename[ext1_start..ext1_end]
      name2 = name + extension
      large_banner_directory = "public/banners/large"
      large_banner_path = File.join(large_banner_directory,name2)
      File.open(large_banner_path, "wb") { |f| f.write(large_banner['datafile'].read) }
    end
  end
end

 