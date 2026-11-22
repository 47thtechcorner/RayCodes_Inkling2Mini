-- Enterprise Infrastructure & Cluster Telemetry Schema
CREATE TABLE compute_nodes (
    node_id VARCHAR(32) PRIMARY KEY,
    cluster_region VARCHAR(32) NOT NULL,
    gpu_model VARCHAR(48) NOT NULL,
    vram_gb INTEGER NOT NULL,
    active_status VARCHAR(16) NOT NULL,
    monthly_cost_usd DECIMAL(10, 2) NOT NULL
);

CREATE TABLE model_deployments (
    deployment_id VARCHAR(32) PRIMARY KEY,
    model_name VARCHAR(64) NOT NULL,
    node_id VARCHAR(32) REFERENCES compute_nodes(node_id),
    quant_format VARCHAR(16) NOT NULL,
    avg_latency_ms DECIMAL(8, 2) NOT NULL,
    last_audit_timestamp TIMESTAMP NOT NULL
);

INSERT INTO compute_nodes VALUES ('node-local-4gb', 'local-workstation', 'Local PC (4GB VRAM + 16GB RAM)', 4, 'ONLINE', 0.00);
INSERT INTO compute_nodes VALUES ('node-cloud-gpu', 'cloud-us-east', 'Cloud Dedicated (RTX 4090 24GB)', 24, 'ONLINE', 180.00);

INSERT INTO model_deployments VALUES ('dep-inkling-local', 'Inkling-2-Mini', 'node-local-4gb', 'AD-IQ1_S', 58.4, '2026-11-20 14:30:00');
INSERT INTO model_deployments VALUES ('dep-inkling-cloud', 'Inkling-2-Mini', 'node-cloud-gpu', 'FP8', 18.2, '2026-11-20 15:10:00');
