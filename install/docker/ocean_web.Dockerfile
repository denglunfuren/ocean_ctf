FROM python:3.8.18
COPY requirements.txt /tmp/
COPY ./install/docker/wait-for-it.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/wait-for-it.sh
RUN pip install --upgrade pip && pip install -r /tmp/requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip install MarkupSafe==1.1.1 -i https://pypi.tuna.tsinghua.edu.cn/simple
