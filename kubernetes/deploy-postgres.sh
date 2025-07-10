#!/bin/bash

set -e

echo "📦 Applying Persistent Volume..."
kubectl apply -f postgres/pv.yml

echo "🔐 Applying Secret..."
kubectl apply -f postgres/secret.yml

echo "⚙️ Applying ConfigMap..."
kubectl apply -f postgres/config.yml

echo "🚀 Applying Deployment..."
kubectl apply -f postgres/deployment.yml

echo "🌐 Applying Service..."
kubectl apply -f postgres/service.yml

echo "✅ Postgres deployment applied successfully."