-- MySQL Schema File

-- Creating Table: nesreca
CREATE TABLE nesreca (
    `index` BIGINT,
    id_nesreca BIGINT,
    klas_nesreca TEXT,
    upravna_enota BIGINT,
    cas_nesreca TEXT,
    naselje_ali_izven TEXT,
    kategorija_cesta TEXT,
    oznaka_cesta_ali_naselje TEXT,
    tekst_cesta_ali_naselje TEXT,
    oznaka_odsek_ali_ulica TEXT,
    tekst_odsek_ali_ulica TEXT,
    stacionazna_ali_hisna_st DOUBLE,
    opis_prizorisce TEXT,
    vzrok_nesreca TEXT,
    tip_nesreca TEXT,
    vreme_nesreca TEXT,
    stanje_promet TEXT,
    stanje_vozisce TEXT,
    stanje_povrsina_vozisce TEXT,
    x DOUBLE,
    y DOUBLE,
    x_wgs84 DOUBLE,
    y_wgs84 DOUBLE
);

-- Creating Table: oseba
CREATE TABLE oseba (
    `index` BIGINT,
    id_nesreca BIGINT,
    povzrocitelj_ali_udelezenec TEXT,
    starost DOUBLE,
    spol BIGINT,
    upravna_enota BIGINT,
    drzavljanstvo BIGINT,
    poskodba TEXT,
    vrsta_udelezenca TEXT,
    varnostni_pas_ali_celada TEXT,
    vozniski_staz_LL DOUBLE,
    vozniski_staz_MM DOUBLE,
    alkotest DOUBLE,
    strokovni_pregled DOUBLE,
    starost_d TEXT,
    vozniski_staz_d TEXT,
    alkotest_d TEXT,
    strokovni_pregled_d TEXT
);

-- Creating Table: upravna_enota
CREATE TABLE upravna_enota (
    `index` BIGINT,
    id_upravna_enota BIGINT,
    ime_upravna_enota TEXT,
    st_prebivalcev BIGINT,
    povrsina BIGINT
);

-- Creating Indexes
CREATE INDEX ix_nesreca_index ON nesreca (`index`);
CREATE INDEX ix_oseba_index ON oseba (`index`);
CREATE INDEX ix_upravna_enota_index ON upravna_enota (`index`);
CREATE INDEX nesreca_id_nesreca_index ON nesreca (id_nesreca);
CREATE INDEX nesreca_upravna_enota_index ON nesreca (upravna_enota);
CREATE INDEX oseba_id_nesreca_index ON oseba (id_nesreca);
CREATE INDEX oseba_upravna_enota_index ON oseba (upravna_enota);
CREATE INDEX upravna_enota_id_upravna_enota_index ON upravna_enota (id_upravna_enota);

