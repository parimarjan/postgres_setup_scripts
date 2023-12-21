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
-- Name: account; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.account (
    index bigint,
    account_id bigint,
    district_id bigint,
    frequency text,
    date text
);


ALTER TABLE public.account OWNER TO ubuntu;

--
-- Name: card; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.card (
    index bigint,
    card_id bigint,
    disp_id bigint,
    type text,
    issued text
);


ALTER TABLE public.card OWNER TO ubuntu;

--
-- Name: client; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.client (
    index bigint,
    client_id bigint,
    gender text,
    birth_date text,
    district_id bigint
);


ALTER TABLE public.client OWNER TO ubuntu;

--
-- Name: disp; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.disp (
    index bigint,
    disp_id bigint,
    client_id bigint,
    account_id bigint,
    type text
);


ALTER TABLE public.disp OWNER TO ubuntu;

--
-- Name: district; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.district (
    index bigint,
    district_id bigint,
    "A2" text,
    "A3" text,
    "A4" bigint,
    "A5" bigint,
    "A6" bigint,
    "A7" bigint,
    "A8" bigint,
    "A9" bigint,
    "A10" double precision,
    "A11" bigint,
    "A12" double precision,
    "A13" double precision,
    "A14" bigint,
    "A15" double precision,
    "A16" bigint
);


ALTER TABLE public.district OWNER TO ubuntu;

--
-- Name: loan; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.loan (
    index bigint,
    loan_id bigint,
    account_id bigint,
    date text,
    amount bigint,
    duration bigint,
    payments double precision,
    status text
);


ALTER TABLE public.loan OWNER TO ubuntu;

--
-- Name: trans; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.trans (
    index bigint,
    trans_id bigint,
    account_id bigint,
    date text,
    type text,
    operation text,
    amount bigint,
    balance bigint,
    k_symbol text,
    bank text,
    account double precision
);


ALTER TABLE public.trans OWNER TO ubuntu;

--
-- Name: trans_gen1; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.trans_gen1 (
    index bigint,
    """operation""" text,
    """bank""" text,
    """k_symbol""" text,
    """type""" text,
    """date""" text
);


ALTER TABLE public.trans_gen1 OWNER TO ubuntu;

--
-- Name: trans_gen_shuffle1; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.trans_gen_shuffle1 (
    index bigint,
    operation text,
    bank text,
    k_symbol text,
    type text,
    date text
);


ALTER TABLE public.trans_gen_shuffle1 OWNER TO ubuntu;

--
-- Name: trans_gen_shuffle2; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.trans_gen_shuffle2 (
    index bigint,
    operation text,
    bank text,
    k_symbol text,
    type text,
    date text
);


ALTER TABLE public.trans_gen_shuffle2 OWNER TO ubuntu;

--
-- Name: trans_random_domain; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.trans_random_domain (
    index bigint,
    operation text,
    bank text,
    k_symbol text,
    type text,
    date text
);


ALTER TABLE public.trans_random_domain OWNER TO ubuntu;

--
-- Name: trans_true_cols; Type: TABLE; Schema: public; Owner: ubuntu
--

CREATE TABLE public.trans_true_cols (
    index bigint,
    operation text,
    bank text,
    k_symbol text,
    type text,
    date text
);


ALTER TABLE public.trans_true_cols OWNER TO ubuntu;

--
-- PostgreSQL database dump complete
--

