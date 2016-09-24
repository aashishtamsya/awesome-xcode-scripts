# Contributor : 
#	Manuel García-Estañ
#	Aashish Tamsya

# Set this var a false if you prefer to include your cocoa pods warnings
EXCLUDEPODS=true

# Add the tags you want to mark as warnings  and or errors
WARNINGTAGS="TODO:|FIXME:|WARNING:"
ERRORTAG="ERROR:"

if $EXCLUDEPODS; then PODSTRING="-path ./Pods -prune"; else PODSTRING=""; fi

find "${SRCROOT}" $PODSTRING \( -name "*.h" -or -name "*.m" -or -name "*.swift" \) -print0 | xargs -0 egrep --with-filename --line-number --only-matching "($WARNINGTAGS).*\$|($ERRORTAG).*\$" | perl -p -e "s/($WARNINGTAGS)/ warning: 🛠 \$1/" | perl -p -e "s/($ERRORTAG)/ error: 😱 \$1/"
