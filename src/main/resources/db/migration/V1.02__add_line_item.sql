
CREATE TABLE line_item(
    id UUID,
    shipping_notice_id UUID not NULL,
    move_id VARCHAR NOT NULL,
    dpci VARCHAR,
    tcin VARCHAR NOT NULL,
    vcp_qty BIGINT,
    ssp_qty BIGINT,
    quantity BIGINT NOT NULL,
    transfer_order_id VARCHAR NOT NULL,
    container_id UUID NOT NULL,
    container_barcode VARCHAR NOT NULL,
    alternate_transfer_order_id VARCHAR,
    master_container_id VARCHAR,
    created_by VARCHAR NOT NULL,
    modified_by VARCHAR NOT NULL,
    created_timestamp TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_timestamp TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT pk_id_move_id PRIMARY KEY (id, move_id)
) PARTITION BY HASH(move_id);

CREATE TABLE line_item_part1 PARTITION OF line_item FOR VALUES WITH (modulus 10, remainder 0);
CREATE TABLE line_item_part2 PARTITION OF line_item FOR VALUES WITH (modulus 10, remainder 1);
CREATE TABLE line_item_part3 PARTITION OF line_item FOR VALUES WITH (modulus 10, remainder 2);
CREATE TABLE line_item_part4 PARTITION OF line_item FOR VALUES WITH (modulus 10, remainder 3);
CREATE TABLE line_item_part5 PARTITION OF line_item FOR VALUES WITH (modulus 10, remainder 4);
CREATE TABLE line_item_part6 PARTITION OF line_item FOR VALUES WITH (modulus 10, remainder 5);
CREATE TABLE line_item_part7 PARTITION OF line_item FOR VALUES WITH (modulus 10, remainder 6);
CREATE TABLE line_item_part8 PARTITION OF line_item FOR VALUES WITH (modulus 10, remainder 7);
CREATE TABLE line_item_part9 PARTITION OF line_item FOR VALUES WITH (modulus 10, remainder 8);
CREATE TABLE line_item_part10 PARTITION OF line_item FOR VALUES WITH (modulus 10, remainder 9);
