{ pkgs, home-manager, username, ... }:
{
  home-manager.users.${username} = { pkgs, ...}: {
    home.packages = with pkgs; [
        aesfix
        aeskeyfind
        aespipe
        ares-rs
        asleap
        bkcrack
        bruteforce-luks
        brutespray
        bully
        cewl
        chntpw
        cmospwd
        cowpatty
        crackle
        crackql
        crowbar
        dislocker
        fcrackzip
        gnutls
        gomapenum
        hash_extender
        hash-identifier
        hashcat
        hashdeep
        hashpump
        hashrat
        john
        johnny
        jwt-hack
        katana
        kerbrute
        libargon2
        libbde
        libgcrypt
        medusa
        mfoc
        ncrack
        onesixtyone
        pdfcrack
        phrasendrescher
        pixiewps
        psudohash
        python311Packages.myjwt
        python311Packages.patator
        python311Packages.pypykatz
        rarcrack
        reaverwps
        sha1collisiondetection
        snow
        spiped
        ssdeep
        sslscan
        swarm
        testssl
        thc-hydra
        veracrypt
        wifite2
        xortool
    ];
  };
}