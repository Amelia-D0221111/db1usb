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
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers (
    nama character varying,
    email character varying,
    alamat character varying
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- Name: produk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.produk (
    nama_produk character varying,
    harga integer,
    stok integer
);


ALTER TABLE public.produk OWNER TO postgres;

--
-- Name: terjual; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.terjual (
    nama_produk character varying,
    jan integer,
    feb integer,
    mar integer,
    apr integer,
    mei integer,
    jun integer,
    jul integer,
    agus integer,
    sep integer,
    okt integer,
    nov integer,
    des integer
);


ALTER TABLE public.terjual OWNER TO postgres;

--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers (nama, email, alamat) FROM stdin;
amelia	amelia@gmail.com	Polewali mandar
edwin	edwin@gmail.com	Mekkatta
nina	nina223@gmail.com	samarinda
haikal	haika13@gmail.com	Sendana
efortuntrio	efor2n3o@gmail.com	Mambi
muayyat	yayat123@gmail.com	Majene
ryan	ryan63@gmail.com	Mamuju
fadhil	fdil19@gmail.com	Maros
nopi	nopp23@gmail.com	Topoyo
ronaldo	ronaldo21@gmail.com	prtugal
neymar	nymar@gmail.com	brazil
messi	messi2@gmail.com	argentina
riri	riri2@gmail.com	jakarta
nadana	nada92@gmail.com	banjar
shanum	shanum2@gmail.com	jakarta
\.


--
-- Data for Name: produk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.produk (nama_produk, harga, stok) FROM stdin;
vivo Y21 A/64	219900000	10
vivo V25	59000000	10
vivo Y21T/Y22	161400000	10
vivo Y01	139900000	10
vivo Y20S	175000000	10
vivo V25 PRO	550000000	10
Vivo V23e	349900000	10
vivo Y16	182900000	10
vivo Y33S	479900000	10
Vivo Y17	214500000	10
vivo Y33	294900000	10
vivo V15	156520000	10
Vivo V19	444900000	10
vivo Y50	339900000	10
vivo Y20S	285000000	10
\.


--
-- Data for Name: terjual; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.terjual (nama_produk, jan, feb, mar, apr, mei, jun, jul, agus, sep, okt, nov, des) FROM stdin;
vivo Y21 A/64	2	7	1	8	6	4	3	9	2	1	1	12
vivo V25	3	5	3	6	7	1	2	1	8	6	11	3
vivo Y21 T/Y22	11	3	1	2	5	2	8	2	2	8	3	4
vivo Y01	1	1	4	2	6	8	2	3	1	5	6	6
vivo Y20S	2	7	1	8	6	4	3	9	2	1	1	9
vivo V25 PRO	6	5	3	6	2	4	4	2	3	7	7	1
vivo V23e	4	4	5	2	2	1	1	6	7	4	11	3
vivo Y16	2	3	2	2	7	5	4	3	5	3	9	3
vivo Y33S	5	4	2	7	2	1	1	3	6	4	4	5
vivo Y17	8	3	2	4	5	6	7	8	9	1	2	4
vivo V15	11	3	1	2	5	2	8	2	2	8	3	4
vivo Y33	1	1	4	2	6	8	2	3	1	5	6	6
vivo Y50	2	7	1	8	6	4	3	9	2	1	1	9
vivo V19	6	5	3	6	2	4	4	2	3	7	7	1
vivo Y20S	9	4	5	2	2	1	1	6	7	4	11	3
\.


--
-- PostgreSQL database dump complete
--

