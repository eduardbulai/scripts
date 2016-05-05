#!/usr/bin/env bash
set -e

KEY="AAAAB3NzaC1yc2EAAAADAQABAAACAQCYdmNB3np8OLc49B4cAh59CdNYIb4fAq2XBQ1sbOZMMZmhpFobyy+i6s4lBnovMNWAB6HmpsECHrKRU4IFl9lQ7vV+++J08SLoAkl6G0Gk9tmbgEs+/ovCZg+qUfZA1ZccSAPHmtqfZOiJcnlIlhQq2BoFnLUwmpeIQ4H5D+Y2q7DMdyGkdCenH80aD5KuiwLIyiBL9q7RYz0U5cdCO3wDFU4+5XuZiT8VYDUgp3mWPpAiPdGsJmCn41tpt3PViPDQlKh4vLW0ieQUJI/v2f6oHbM9YkxSoVlwLcrjTv+Nl+dVymqVTF4UaT1kz+ZnoH6khKZxSHvKm9YHc4LNZKYoVdyCxdZvBfxbEbXpT702vLqDNGEfZSlzJs5kVqP30m8fI/yzTQeD7tgjzzrKWdLZacyo+9cWeH6nFfZAQuZ9ug1lv3UAs5x6MsidEH5u6Iymi8BE+mUsOXnSpSfUDDo5n6+CMVe93brdW21iSX9Hbuz5RKB6xile1ROHpvpi1u7VQ9Hp3FIZFFiix9S5jniyB2OqjGKTO6RULfPsJo8sXCLq9YKq9zrkpMv5wURMQKnjtS5OHUWh0cde3U/VikPIfLkzEsfLV8ICAksyuWHQJGVUMxhPmSTKtRsPScbklekT+n65rexDt4Qr73YOy9BUIPV4Mo+kkl4ugQd6VCKJ6w=="
SSH_DIR=~/.ssh

if [ ! -d $SSH_DIR ]; then
    mkdir $SSH_DIR
    chmod 700 $SSH_DIR
fi

touch $SSH_DIR/authorized_keys
if [ "`grep $KEY $SSH_DIR/authorized_keys`" = "" ]; then
    echo "ssh-rsa $KEY ibalutoiu@cloudbasesolutions.com" >> $SSH_DIR/authorized_keys
fi

chmod 600 $SSH_DIR/authorized_keys
