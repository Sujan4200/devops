#!/bin/bash

echo "kibana" | docker secret create elasticsearch_username -
echo "P@ssW0rD#" | docker secret create elasticsearch_password -
