#dconf dump / >mysettings.conf
dconf reset -f /
dconf load  / < mysetting.conf
