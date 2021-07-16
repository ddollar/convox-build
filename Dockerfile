FROM ddollar/convox:3.0.48-ddollar7

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
