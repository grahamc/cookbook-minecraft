directory "/var/minecraft/config/#{node['minecraft']['server']['level-name']}" do
    mode '0755'
    owner 'minecraft'
    recursive true
end

if not node['minecraft']['system']['device'].nil?
    mount "/var/minecraft/config/#{node['minecraft']['server']['level-name']}" do
        device node['minecraft']['system']['device']
        action [:mount, :enable]
    end
end
