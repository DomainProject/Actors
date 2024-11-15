#
# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements.  See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.
# The ASF licenses this file to You under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with
# the License.  You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
FROM spark:3.5.3-scala2.12-java17-ubuntu

USER root

RUN set -ex; \
    apt-get update; \
    apt-get install -y python3 python3-pip; \
    rm -rf /var/lib/apt/lists/*

WORKDIR /opt/spark/work-dir

ARG spark_uid=185

RUN useradd --non-unique -d /home/sparkuser -ms /bin/bash -u ${spark_uid} sparkuser \
    && chown -R sparkuser /opt/spark/work-dir \
    && mkdir /tmp/spark-events \
    && chown -R sparkuser /tmp/spark-events

ENV APP_DIR=/opt/spark/work-dir \
    PYTHON=python3 \
    PIP=pip3

COPY requirements.txt ${APP_DIR}

RUN ${PIP}  install --upgrade pip \
    && ${PIP} install --no-cache-dir -r ${APP_DIR}/requirements.txt \
    && rm -f ${APP_DIR}/requirements.txt

COPY --chown=sparkuser ./queries.py ${APP_DIR}
COPY --chown=sparkuser ./data ${APP_DIR}/data
