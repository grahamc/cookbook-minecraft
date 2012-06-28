
user "minecraft" do
    home "/var/minecraft"
    shell "/bin/false"
    system true
    supports  :manage_home => true
end

remote_file "/var/minecraft/server.jar" do
    source "https://s3.amazonaws.com/MinecraftDownload/launcher/minecraft_server.jar"
    checksum "19285d7d16aee740f5a0584f0d80a4940f273a97f5a3eaf251fc1c6c3f2982d1"

    owner "minecraft"
    mode "0755"
end

directory "/var/minecraft/config" do
    mode '0755'
    owner 'minecraft'
end

template "/var/minecraft/config/server.properties" do
    source "server.properties.erb"

    owner "minecraft"
    variables :properties => node['minecraft']['server']
end

template "/var/minecraft/config/white-list.txt" do
    source "prop-list.erb"

    values = data_bag_item(:minecraft, 'white-list')

    owner "minecraft"
    variables :values => values['users']
end
template "/var/minecraft/config/ops.txt" do
    source "prop-list.erb"

    values = data_bag_item(:minecraft, 'ops')

    owner "minecraft"
    variables :values => values['users']
end
template "/var/minecraft/config/banned-players.txt" do
    source "prop-list.erb"

    values = data_bag_item(:minecraft, 'banned-players')

    owner "minecraft"
    variables :values => values['users']
end

template "/var/minecraft/config/banned-ips.txt" do
    source "prop-list.erb"

    values = data_bag_item(:minecraft, 'banned-ips')

    owner "minecraft"
    variables :values => values['ips']
end

