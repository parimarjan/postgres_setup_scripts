--
-- PostgreSQL database dump
--

-- Dumped from database version 12.16
-- Dumped by pg_dump version 12.16

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: nesreca; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.nesreca (
    index bigint,
    id_nesreca bigint,
    klas_nesreca text,
    upravna_enota bigint,
    cas_nesreca text,
    naselje_ali_izven text,
    kategorija_cesta text,
    oznaka_cesta_ali_naselje text,
    tekst_cesta_ali_naselje text,
    oznaka_odsek_ali_ulica text,
    tekst_odsek_ali_ulica text,
    stacionazna_ali_hisna_st double precision,
    opis_prizorisce text,
    vzrok_nesreca text,
    tip_nesreca text,
    vreme_nesreca text,
    stanje_promet text,
    stanje_vozisce text,
    stanje_povrsina_vozisce text,
    x double precision,
    y double precision,
    x_wgs84 double precision,
    y_wgs84 double precision
);


ALTER TABLE public.nesreca OWNER TO ubuntu;

--
-- Name: oseba; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.oseba (
    index bigint,
    id_nesreca bigint,
    povzrocitelj_ali_udelezenec text,
    starost double precision,
    spol bigint,
    upravna_enota bigint,
    drzavljanstvo bigint,
    poskodba text,
    vrsta_udelezenca text,
    varnostni_pas_ali_celada text,
    "vozniski_staz_LL" double precision,
    "vozniski_staz_MM" double precision,
    alkotest double precision,
    strokovni_pregled double precision,
    starost_d text,
    vozniski_staz_d text,
    alkotest_d text,
    strokovni_pregled_d text
);


ALTER TABLE public.oseba OWNER TO ubuntu;

--
-- Name: upravna_enota; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.upravna_enota (
    index bigint,
    id_upravna_enota bigint,
    ime_upravna_enota text,
    st_prebivalcev bigint,
    povrsina bigint
);


ALTER TABLE public.upravna_enota OWNER TO ubuntu;

--
-- Name: ix_nesreca_index; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE INDEX ix_nesreca_index ON public.nesreca USING btree (index);


--
-- Name: ix_oseba_index; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE INDEX ix_oseba_index ON public.oseba USING btree (index);


--
-- Name: ix_upravna_enota_index; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE INDEX ix_upravna_enota_index ON public.upravna_enota USING btree (index);


--
-- Name: nesreca_id_nesreca_index; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE INDEX nesreca_id_nesreca_index ON public.nesreca USING btree (id_nesreca);


--
-- Name: nesreca_upravna_enota_index; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE INDEX nesreca_upravna_enota_index ON public.nesreca USING btree (upravna_enota);


--
-- Name: oseba_id_nesreca_index; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE INDEX oseba_id_nesreca_index ON public.oseba USING btree (id_nesreca);


--
-- Name: oseba_upravna_enota_index; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE INDEX oseba_upravna_enota_index ON public.oseba USING btree (upravna_enota);


--
-- Name: upravna_enota_id_upravna_enota_index; Type: INDEX; Schema: public; Owner: ubuntu
--

CREATE INDEX upravna_enota_id_upravna_enota_index ON public.upravna_enota USING btree (id_upravna_enota);


--
-- PostgreSQL database dump complete
--

