if (( $+commands[slackpkg] )); then
    alias install='sudo slackpkg install '
    alias remove='sudo slackpkg remove '
    alias search='sudo slackpkg search '
    alias info='sudo slackpkg info '
    alias clean='sudo slackpkg clean-system '
    alias update='sudo slackpkg update '
    alias update-gpg='sudo slackpkg update gpg '
    alias upgrade='sudo slackpkg upgrade-all '
    alias list='sudo ls /var/log/packages/'
fi

if (( $+commands[pkgtool] )); then
    alias pinstall='sudo installpkg '
    alias pupgrade='sudo upgrade '
    alias premove='sudo removepkg '
    alias list='sudo ls /var/log/packages/'
fi

if (( $+commands[sboui] )); then
    alias sync='sudo sboui -s'
    alias supgrade='sudo sboui -u'
    alias slupgrade='sudo sboui -p'
fi

if (( $+commands[vim] )); then
    alias slackonf='sudo vim /etc/slackpkg/slackpkg.conf'
    alias mirrors='sudo vim /etc/slackpkg/mirrors'
    alias blacklist='sudo vim /etc/slackpkg/blacklist'
fi
