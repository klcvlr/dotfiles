if [[ $# -eq 1 ]]; then
    profile=$1
else
    profile=$(sed -n "s/\[profile \(.*\)\]/\1/gp" ~/.aws/config | fzf)
fi

if [[ -z $profile ]]; then
    export AWS_PROFILE=""
    # export CODE_ARTIFACT_TOKEN=""
else
    export AWS_PROFILE="$profile"
 fi

# if [[ $profile = "stonal" ]]; then
#     export CODEARTIFACT_AUTH_TOKEN=`aws codeartifact get-authorization-token --domain lfn-artifactory --domain-owner 983974232060 --query authorizationToken --output text`
# else
#     export CODEARTIFACT_AUTH_TOKEN=""
#  fi

