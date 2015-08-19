#!/bin/bash

# Need to try out the following script from other dotfile repo!

# # Find all .dotfiles in this folder
# declare -a FILES_TO_SYMLINK=$(find . -type f -maxdepth 1 -name ".*" -not -name .DS_Store -not -name .git -not -name .osx | sed -e 's|//|/|' | sed -e 's|./.|.|')


# # Function to add all .dotfiles to the $HOME directory
# main() {

#     local i=""
#     local sourceFile=""
#     local targetFile=""

#     for i in ${FILES_TO_SYMLINK[@]}; do

#         sourceFile="$(pwd)/$i"
#         targetFile="$HOME/$(printf "%s" "$i" | sed "s/.*\/\(.*\)/\1/g")"

#         if [ -e "$targetFile" ]; then
#             if [ "$(readlink "$targetFile")" != "$sourceFile" ]; then

#                 ask_for_confirmation "'$targetFile' already exists, do you want to overwrite it?"
#                 if answer_is_yes; then
#                     rm -rf "$targetFile"
#                     execute "ln -fs $sourceFile $targetFile" "$targetFile → $sourceFile"
#                 else
#                     print_error "$targetFile → $sourceFile"
#                 fi

#             else
#                 print_success "$targetFile → $sourceFile"
#             fi
#         else
#             execute "ln -fs $sourceFile $targetFile" "$targetFile → $sourceFile"
#         fi

#     done

# }

# main
