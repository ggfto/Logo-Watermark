fx_version "cerulean"
game "gta5"
lua54 "yes"
use_experimental_fxv2_oal "yes"

description "Script simples para exibir logo no servidor"
author "MRI QBOX Team"
version "v1.0.0"

shared_scripts {
    "shared/*.lua"
}

client_scripts {
    "client/*.lua"
}

dependencies {
    "qbx_core",
    "PolyZone",
    "ox_lib",
    "oxmysql",
}

files {
    "html/**/*"
}

ui_page "html/index.html"