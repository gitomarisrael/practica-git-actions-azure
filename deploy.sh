BRANCH=$1

if [ "$BRANCH" == "main" ]; then 
    DEPLOY_PATH="/home/omarisraelmartinezsilva/practica-git-actions-azure"
else
    DEPLOY_PATH="/home/omarisraelmartinezsilva/stage"
fi

ssh -o StrictHostKeyChecking=no omarisraelmartinezsilva@34.171.144.130 <<HTML

    cd $DEPLOY_PATH

    git pull --rebase origin $BRANCH

HTML