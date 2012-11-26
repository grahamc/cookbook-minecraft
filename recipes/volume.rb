if not node['minecraft']['system']['device'].nil?
    mount "/var/minecraft/config/#{node['minecraft']['server']['level-name']}" do
        device node['minecraft']['system']['device']
        action [:mount, :enable]
    end
end
