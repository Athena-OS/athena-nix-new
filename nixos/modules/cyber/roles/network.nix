{ pkgs, ... }:

with pkgs;

[
  # _3proxy
  afpfs-ng
  aircrack-ng
  airgeddon
  argus
  argus-clients
  arp-scan
  arping
  arpoison
  asnmap
  atftp
  batctl
  bettercap
  bind
  bully
  burpsuite
  cadaver
  caido
  chisel
  cntlm
  coercer
  corkscrew
  cowpatty
  creds
  darkstat
  dnschef
  dnsmasq
  driftnet
  dsniff
  dublin-traceroute
  dump1090
  etherape
  ettercap
  evillimiter
  exabgp
  fping
  freeipmi
  freeradius
  geoip
  girsh
  gnuradio
  gpredict
  gqrx
  gsocket
  hackrf
  haka
  hcxdumptool
  hcxtools
  hostapd-mana
  hping
  httping
  httptunnel
  hyenae
  i2pd
  iodine
  ipmitool
  iputils
  jnetmap
  junkie
  kismet
  ldapdomaindump
  libosmocore
  libtins
  ligolo-ng
  # linuxKernel.packages.linux_zen.batman_adv
  macchanger
  mailsend
  mapcidr
  mdk4
  metasploit
  mfcuk
  mfoc
  miredo
  mitm6
  mitmproxy
  mitmproxy2swagger
  mtr
  mtr-gui
  mubeng
  multimon-ng
  netdiscover
  netsniff-ng
  networkminer
  nfdump
  ngrep
  ngrok
  obfs4
  ostinato
  p0f
  pcapfix
  pixiewps
  pmacct
  proxify
  proxmark3
  proxychains-ng
  pwnat
  pwncat
  python312Packages.impacket
  python312Packages.ldapdomaindump
  python312Packages.netmap
  python312Packages.scapy
  python312Packages.sshtunnel
  python312Packages.torpy
  python312Packages.websockify
  rathole
  reaverwps-t6x
  redsocks
  responder
  rinetd
  rustcat
  samplicator
  sniffglue
  snmpcheck
  snort
  soapui
  socat
  spiped
  # https://github.com/NixOS/nixpkgs/pull/308093
  # ssh-mitm
  sshuttle
  ssldump
  sslh
  sslscan
  sslsplit
  stacs
  stunnel
  suricata
  swaks
  tcpdump
  tcpflow
  tcpreplay
  tcptraceroute
  thc-ipv6
  tinc
  tinyproxy
  tor
  torsocks
  tshark
  udp2raw
  udpreplay
  udptunnel
  urh
  wavemon
  wifite2
  wireshark
  # haskell connection-0.3.1 dependency of wstunnel marked as broken
  # wstunnel
  yersinia
  zap
  zdns
  zeek
  zssh
  zulu
  # zzuf
]
