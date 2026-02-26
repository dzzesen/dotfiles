def "nu-complete wg-configs" [] {
    (do -i { sudo ls /etc/wireguard/ } | complete).stdout
    | lines
    | each { |path| ($path | path parse).stem }
}

export extern "sudo wg-quick up" [
    vpn: string@"nu-complete wg-configs"
]

export extern "sudo wg-quick down" [
    vpn: string@"nu-complete wg-configs"
]
