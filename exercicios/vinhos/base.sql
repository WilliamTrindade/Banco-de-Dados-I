--
-- PostgreSQL database dump
--

-- Dumped from database version 9.2.3
-- Dumped by pg_dump version 9.2.3
-- Started on 2014-09-17 22:30:41

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 172 (class 3079 OID 11727)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 1948 (class 0 OID 0)
-- Dependencies: 172
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 168 (class 1259 OID 103024)
-- Name: revendedor; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE revendedor (
    codrev integer NOT NULL,
    nomrev character varying(50),
    fone integer
);


ALTER TABLE public.revendedor OWNER TO postgres;

--
-- TOC entry 169 (class 1259 OID 103027)
-- Name: vende; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE vende (
    codrev integer NOT NULL,
    codvinho integer NOT NULL,
    data_levantamento date NOT NULL,
    valor_levantamento numeric(14,2)
);


ALTER TABLE public.vende OWNER TO postgres;

--
-- TOC entry 170 (class 1259 OID 103030)
-- Name: vinho; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE vinho (
    codvinho integer NOT NULL,
    nomvinho character varying(50),
    codvinicola integer
);


ALTER TABLE public.vinho OWNER TO postgres;

--
-- TOC entry 171 (class 1259 OID 103033)
-- Name: vinicola; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE vinicola (
    codvinicola integer NOT NULL,
    nomevinicola character varying(50),
    fundacao integer
);


ALTER TABLE public.vinicola OWNER TO postgres;

--
-- TOC entry 1937 (class 0 OID 103024)
-- Dependencies: 168
-- Data for Name: revendedor; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO revendedor VALUES (1, 'revendedor1', 111);
INSERT INTO revendedor VALUES (2, 'revendedor2', 222);
INSERT INTO revendedor VALUES (3, 'revendedor3', 333);
INSERT INTO revendedor VALUES (4, 'revendedor4', 444);


--
-- TOC entry 1938 (class 0 OID 103027)
-- Dependencies: 169
-- Data for Name: vende; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO vende VALUES (1, 1, '2012-11-11', 100.00);
INSERT INTO vende VALUES (1, 1, '2012-11-20', 105.00);
INSERT INTO vende VALUES (1, 1, '2012-12-30', 100.00);
INSERT INTO vende VALUES (2, 1, '2012-11-11', 90.00);
INSERT INTO vende VALUES (2, 1, '2012-11-20', 95.00);
INSERT INTO vende VALUES (2, 1, '2012-12-30', 99.00);
INSERT INTO vende VALUES (3, 1, '2012-11-11', 80.00);
INSERT INTO vende VALUES (3, 1, '2012-11-20', 85.00);
INSERT INTO vende VALUES (3, 1, '2012-12-30', 199.00);
INSERT INTO vende VALUES (4, 1, '2012-11-11', 190.00);
INSERT INTO vende VALUES (4, 1, '2012-11-20', 195.00);
INSERT INTO vende VALUES (4, 1, '2012-12-30', 50.00);
INSERT INTO vende VALUES (1, 2, '2012-11-11', 10.00);
INSERT INTO vende VALUES (1, 2, '2012-11-20', 15.00);
INSERT INTO vende VALUES (1, 2, '2012-12-30', 10.00);
INSERT INTO vende VALUES (2, 2, '2012-11-11', 9.00);
INSERT INTO vende VALUES (2, 2, '2012-11-20', 95.00);
INSERT INTO vende VALUES (2, 2, '2012-12-30', 9.00);
INSERT INTO vende VALUES (3, 2, '2012-11-11', 8.00);
INSERT INTO vende VALUES (3, 2, '2012-11-20', 8.00);
INSERT INTO vende VALUES (3, 2, '2012-12-30', 19.00);
INSERT INTO vende VALUES (4, 2, '2012-11-11', 10.00);
INSERT INTO vende VALUES (4, 2, '2012-11-20', 95.00);
INSERT INTO vende VALUES (4, 2, '2012-12-30', 5.00);
INSERT INTO vende VALUES (1, 3, '2012-11-11', 10.00);
INSERT INTO vende VALUES (1, 3, '2012-11-20', 15.00);
INSERT INTO vende VALUES (1, 3, '2012-12-30', 10.00);
INSERT INTO vende VALUES (2, 3, '2012-11-11', 9.00);
INSERT INTO vende VALUES (2, 3, '2012-11-20', 95.00);
INSERT INTO vende VALUES (2, 3, '2012-12-30', 9.00);
INSERT INTO vende VALUES (3, 5, '2012-11-11', 8.00);
INSERT INTO vende VALUES (3, 5, '2012-11-20', 8.00);
INSERT INTO vende VALUES (3, 5, '2012-12-30', 19.00);
INSERT INTO vende VALUES (4, 6, '2012-11-11', 10.00);
INSERT INTO vende VALUES (4, 6, '2012-11-20', 95.00);
INSERT INTO vende VALUES (4, 6, '2012-12-30', 5.00);


--
-- TOC entry 1939 (class 0 OID 103030)
-- Dependencies: 170
-- Data for Name: vinho; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO vinho VALUES (2, 'vinho2', 1);
INSERT INTO vinho VALUES (3, 'vinho3', 1);
INSERT INTO vinho VALUES (1, 'vinho1', 2);
INSERT INTO vinho VALUES (4, 'vinho4', 2);
INSERT INTO vinho VALUES (5, 'vinho5', 3);
INSERT INTO vinho VALUES (6, 'vinho6', 3);


--
-- TOC entry 1940 (class 0 OID 103033)
-- Dependencies: 171
-- Data for Name: vinicola; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO vinicola VALUES (1, 'Serra', 1904);
INSERT INTO vinicola VALUES (2, 'Baita Vinho', 1990);
INSERT INTO vinicola VALUES (3, 'Granja dos Vinhos', 1974);


--
-- TOC entry 1927 (class 2606 OID 103037)
-- Name: revendedor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY revendedor
    ADD CONSTRAINT revendedor_pkey PRIMARY KEY (codrev);


--
-- TOC entry 1929 (class 2606 OID 103039)
-- Name: vende_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY vende
    ADD CONSTRAINT vende_pkey PRIMARY KEY (codrev, codvinho, data_levantamento);


--
-- TOC entry 1931 (class 2606 OID 103041)
-- Name: vinho_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY vinho
    ADD CONSTRAINT vinho_pkey PRIMARY KEY (codvinho);


--
-- TOC entry 1933 (class 2606 OID 103043)
-- Name: vinicola_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY vinicola
    ADD CONSTRAINT vinicola_pkey PRIMARY KEY (codvinicola);


--
-- TOC entry 1936 (class 2606 OID 103044)
-- Name: fk_vinho_vinicola; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY vinho
    ADD CONSTRAINT fk_vinho_vinicola FOREIGN KEY (codvinicola) REFERENCES vinicola(codvinicola);


--
-- TOC entry 1934 (class 2606 OID 103049)
-- Name: vende_codrev_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY vende
    ADD CONSTRAINT vende_codrev_fkey FOREIGN KEY (codrev) REFERENCES revendedor(codrev);


--
-- TOC entry 1935 (class 2606 OID 103054)
-- Name: vende_codvinho_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY vende
    ADD CONSTRAINT vende_codvinho_fkey FOREIGN KEY (codvinho) REFERENCES vinho(codvinho);


--
-- TOC entry 1947 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2014-09-17 22:30:42

--
-- PostgreSQL database dump complete
--

