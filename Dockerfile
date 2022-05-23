FROM openjdk:11

WORKDIR /app

COPY entrypoint.sh /

RUN wget https://csrc.nist.gov/CSRC/media/Projects/Security-Content-Automation-Protocol/specifications/xccdf/1.2/xccdfval-1.2.0.zip && unzip xccdfval-1.2.0.zip && rm xccdfval-1.2.0.zip

ENTRYPOINT ["/entrypoint.sh"]
