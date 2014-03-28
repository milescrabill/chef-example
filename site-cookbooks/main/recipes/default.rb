ruby_block "Ensure password login" do
  block do
    fe = Chef::Util::FileEdit.new("/etc/ssh/sshd_config")
    fe.insert_line_if_no_match(/PasswordAuthentication no/,
                               "PasswordAuthentication yes")
    fe.write_file
  end
end

service "ssh" do
  action :restart
end