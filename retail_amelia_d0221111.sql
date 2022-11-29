--
-- PostgreSQL database dump
--

-- Dumped from database version 15.0
-- Dumped by pg_dump version 15.0

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
-- Name: pembayaran; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pembayaran (
    tgl_bayar integer,
    total_bayar integer,
    id_transaksi integer
);


ALTER TABLE public.pembayaran OWNER TO postgres;

--
-- Name: pembeli; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pembeli (
    nama character varying,
    alamat character varying,
    id_pembeli integer
);


ALTER TABLE public.pembeli OWNER TO postgres;

--
-- Name: transaksi; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transaksi (
    id_transaksi integer,
    id_pembeli integer,
    id_barang integer
);


ALTER TABLE public.transaksi OWNER TO postgres;

--
-- Data for Name: pembayaran; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pembayaran (tgl_bayar, total_bayar, id_transaksi) FROM stdin;
2805	100000	456
1901	200000	739
809	300000	721
\.


--
-- Data for Name: pembeli; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pembeli (nama, alamat, id_pembeli) FROM stdin;
Amelia	Polewali	123
Edwin	Malunda	321
Nina	Samarinda	432
\.


--
-- Data for Name: transaksi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.transaksi (id_transaksi, id_pembeli, id_barang) FROM stdin;
321	543	654
986	678	342
579	589	541
\.


--
-- PostgreSQL database dump complete
--

