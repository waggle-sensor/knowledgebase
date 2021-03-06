FROM waggle/plugin-base-light:0.1.0

COPY requirements.txt /app/
COPY kb.py server.py utils /app/
RUN pip3 install -r /app/requirements.txt

WORKDIR /app/
EXPOSE 5000
ENTRYPOINT ["/usr/bin/python3", "/app/server.py"]
