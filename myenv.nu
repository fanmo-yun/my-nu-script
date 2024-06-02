def --env neo [] {
    neofetch | lolcat
}

$env.npm_config_prefix = '/home/benson/.local/.node_modules'
$env.PATH = ($env.PATH | split row (char esep) | append '/home/benson/.local/.node_modules/bin')

$env.PATH = ($env.PATH | split row (char esep) | append '/home/benson/bin')
