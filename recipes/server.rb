package 'httpd'
file '/var/www/html/index.html' do
   content "<h1>Hello, world!
   IPADDRESS:  #{node['ipaddress']}
   HOSTNAME:   #{node['hostname']}
   MEMORY:     #{node['memory']['total']}
   CPU:        #{node['cpu']['0']['mhz']}</h1>\n"
end
service "httpd" do
   action [ :enable, :start ]
end
