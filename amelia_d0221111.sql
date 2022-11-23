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
-- Name: mahasiswa; Type: TABLE; Schema: public; Owner: ASUS
--

CREATE TABLE public.mahasiswa (
    nim integer NOT NULL,
    nama character varying(30),
    tempat_lahir character varying(30),
    tanggal_lahir date,
    alamat character varying(30)
);


ALTER TABLE public.mahasiswa OWNER TO "ASUS";

--
-- Name: mahasiswa_nim_seq; Type: SEQUENCE; Schema: public; Owner: ASUS
--

CREATE SEQUENCE public.mahasiswa_nim_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mahasiswa_nim_seq OWNER TO "ASUS";

--
-- Name: mahasiswa_nim_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ASUS
--

ALTER SEQUENCE public.mahasiswa_nim_seq OWNED BY public.mahasiswa.nim;


--
-- Name: transkrip; Type: TABLE; Schema: public; Owner: ASUS
--

CREATE TABLE public.transkrip (
    noid integer NOT NULL,
    nama_mhs character varying(30),
    nama_kuliah character varying(30),
    ipk numeric
);


ALTER TABLE public.transkrip OWNER TO "ASUS";

--
-- Name: transkrip_noid_seq; Type: SEQUENCE; Schema: public; Owner: ASUS
--

CREATE SEQUENCE public.transkrip_noid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.transkrip_noid_seq OWNER TO "ASUS";

--
-- Name: transkrip_noid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ASUS
--

ALTER SEQUENCE public.transkrip_noid_seq OWNED BY public.transkrip.noid;


--
-- Name: mahasiswa nim; Type: DEFAULT; Schema: public; Owner: ASUS
--

ALTER TABLE ONLY public.mahasiswa ALTER COLUMN nim SET DEFAULT nextval('public.mahasiswa_nim_seq'::regclass);


--
-- Name: transkrip noid; Type: DEFAULT; Schema: public; Owner: ASUS
--

ALTER TABLE ONLY public.transkrip ALTER COLUMN noid SET DEFAULT nextval('public.transkrip_noid_seq'::regclass);


--
-- Data for Name: mahasiswa; Type: TABLE DATA; Schema: public; Owner: ASUS
--

COPY public.mahasiswa (nim, nama, tempat_lahir, tanggal_lahir, alamat) FROM stdin;
221111	Amelia	Polewali	2003-05-28	Polewali
221371	Edwin	\N	\N	\N
\.


--
-- Data for Name: transkrip; Type: TABLE DATA; Schema: public; Owner: ASUS
--

COPY public.transkrip (noid, nama_mhs, nama_kuliah, ipk) FROM stdin;
1	Amelia	Basis Data	4.00
\.


--
-- Name: mahasiswa_nim_seq; Type: SEQUENCE SET; Schema: public; Owner: ASUS
--

SELECT pg_catalog.setval('public.mahasiswa_nim_seq', 1, false);


--
-- Name: transkrip_noid_seq; Type: SEQUENCE SET; Schema: public; Owner: ASUS
--

SELECT pg_catalog.setval('public.transkrip_noid_seq', 1, false);


--
-- Name: mahasiswa mahasiswa_pkey; Type: CONSTRAINT; Schema: public; Owner: ASUS
--

ALTER TABLE ONLY public.mahasiswa
    ADD CONSTRAINT mahasiswa_pkey PRIMARY KEY (nim);


--
-- Name: transkrip transkrip_pkey; Type: CONSTRAINT; Schema: public; Owner: ASUS
--

ALTER TABLE ONLY public.transkrip
    ADD CONSTRAINT transkrip_pkey PRIMARY KEY (noid);


--
-- PostgreSQL database dump complete
--

