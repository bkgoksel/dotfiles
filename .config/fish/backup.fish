rvm default
begin
  set -l pathLen (count $PATH)
  for x in (seq $pathLen)
    if string match "*mnt*" $PATH[$x]
      set toDelete $x $toDelete
    end
  end
  for val in $toDelete
    set -e PATH[$val]
  end
end
tmux -2
