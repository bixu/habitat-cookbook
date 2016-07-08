version      = "#{node['habitat']['version']}"
release      = "#{node['habitat']['release']}"
architecture = "#{node['habitat']['architecture']}"
kernel       = "#{node['habitat']['kernel']}"
platform     = "#{architecture}-#{kernel}"

include_recipe 'tar'

tar_extract "https://bintray.com/habitat/stable/download_file?file_path=#{kernel}%2F#{architecture}%2Fhab-#{version}-#{release}-#{platform}.tar.gz" do
  target_dir '/usr/local/bin'
  creates '/usr/local/bin/hab'
  tar_flags [ '--strip-components 1' ]
end

user 'hab' do
end
