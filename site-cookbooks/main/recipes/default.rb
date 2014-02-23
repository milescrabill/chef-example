package "python-crypto"
package "python-pyx"
package "tcpdump"

# python_virtualenv "/home/ubuntu/ve" do
# 	interpreter "python2.5"
# 	owner "ubuntu"
# 	group "ubuntu"
# 	action :create
# end

python_pip "scapy" do
 	action :install
 	version "2.2.0-dev"
 	# virtualenv "/home/ubuntu/ve"
 end