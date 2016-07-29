# Credits : Jared Sinclair, https://www.jaredsinclair.com
#			Aashish Tamsya, aashish.tamsya@gmail.com
#
# Set the build number to the current git commit count.
# If we're using the Dev scheme, then we'll suffix the build
# number with the current branch name, to make collisions
# far less likely across feature branches.
# Based on: http://w3facility.info/question/how-do-i-force-xcode-to-rebuild-the-info-plist-file-in-my-project-every-time-i-build-the-project/
#
# Updated with dSYM handling from http://yellowfeather.co.uk/blog/auto-incrementing-build-number-in-xcode-revisited/
#

git=`sh /etc/profile; which git`
appBuild=`"$git" rev-list HEAD --count`
if [ $CONFIGURATION = "Debug" ]; then
branchName=`"$git" rev-parse --abbrev-ref HEAD`
/usr/libexec/PlistBuddy -c "Set :CFBundleVersion $appBuild-$branchName" "${TARGET_BUILD_DIR}/${INFOPLIST_PATH}"
/usr/libexec/PlistBuddy -c "Set :CFBundleVersion $appBuild-$branchName" "${BUILT_PRODUCTS_DIR}/${WRAPPER_NAME}.dSYM/Contents/Info.plist"
else
/usr/libexec/PlistBuddy -c "Set :CFBundleVersion $appBuild" "${TARGET_BUILD_DIR}/${INFOPLIST_PATH}"
/usr/libexec/PlistBuddy -c "Set :CFBundleVersion $appBuild" "${BUILT_PRODUCTS_DIR}/${WRAPPER_NAME}.dSYM/Contents/Info.plist"
fi
echo "Incremented the build number ${TARGET_BUILD_DIR}/${INFOPLIST_PATH}"