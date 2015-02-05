#! env bash

function usage {
    echo "SERVER=user@server $0 {prepare|cook|all}"
    exit 1;
}

test -z $SERVER && echo SET \$SERVER ! && usage

echo
echo ssh-copy-id...
echo
ssh-copy-id $SERVER

case "$1" in
    prepare)
        knife solo prepare $SERVER nodes/workstation.json
        ;;
    cook)
        knife solo cook $SERVER nodes/workstation.json
        ;;
    all)
        $0 prepare
        $0 cook
        ;;
    *)
        usage
        ;;
esac
