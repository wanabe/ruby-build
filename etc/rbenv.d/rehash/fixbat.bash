#/bin/sh
bindir="${RBENV_ROOT}/versions/$(rbenv-version-name)/bin"
for bat in $bindir/*.bat; do
  scr=${bat%.*}
  sed -i.bat -e '1s/^#!.*/#!\/bin\/sh '"$(echo $bindir|sed -e 's/\//\\\//g')"'\/ruby/' $scr
  chmod a+x $scr
  rm $bat
done

