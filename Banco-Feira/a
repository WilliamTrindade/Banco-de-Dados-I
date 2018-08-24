--
-- PostgreSQL database dump
--

-- Dumped from database version 10.1
-- Dumped by pg_dump version 10.1

-- Started on 2018-08-24 15:20:55

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12924)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2823 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 198 (class 1259 OID 16425)
-- Name: estande; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE estande (
    codest integer NOT NULL,
    nomeest character varying(50),
    aluguelest numeric(12,2),
    codfis integer
);


ALTER TABLE estande OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 16445)
-- Name: estande_produto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE estande_produto (
    codest integer NOT NULL,
    codproduto integer NOT NULL,
    valor numeric(12,2)
);


ALTER TABLE estande_produto OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 16412)
-- Name: fiscal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE fiscal (
    codfis integer NOT NULL,
    nomefis character varying,
    salario numeric(12,2)
);


ALTER TABLE fiscal OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 16420)
-- Name: produto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE produto (
    codproduto integer NOT NULL,
    nomeproduto character varying(50)
);


ALTER TABLE produto OWNER TO postgres;

--
-- TOC entry 2815 (class 0 OID 16425)
-- Dependencies: 198
-- Data for Name: estande; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO estande VALUES (1, 'Estande1', 500.00, 1);
INSERT INTO estande VALUES (2, 'Estande2', 500.00, 3);
INSERT INTO estande VALUES (3, 'Estande3', 500.00, 1);


--
-- TOC entry 2816 (class 0 OID 16445)
-- Dependencies: 199
-- Data for Name: estande_produto; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO estande_produto VALUES (1, 2, 30.00);
INSERT INTO estande_produto VALUES (1, 3, 50.00);
INSERT INTO estande_produto VALUES (2, 1, 10.00);
INSERT INTO estande_produto VALUES (3, 1, 8.00);
INSERT INTO estande_produto VALUES (3, 2, 20.00);


--
-- TOC entry 2813 (class 0 OID 16412)
-- Dependencies: 196
-- Data for Name: fiscal; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO fiscal VALUES (1, 'jhon', 1000.00);
INSERT INTO fiscal VALUES (2, 'Mary', 1000.00);
INSERT INTO fiscal VALUES (3, 'Joaquim', 2000.00);


--
-- TOC entry 2814 (class 0 OID 16420)
-- Dependencies: 197
-- Data for Name: produto; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO produto VALUES (1, 'pastel');
INSERT INTO produto VALUES (2, 'Torrada');
INSERT INTO produto VALUES (3, 'Bauru');
INSERT INTO produto VALUES (4, 'Croquete');


--
-- TOC entry 2686 (class 2606 OID 16429)
-- Name: estande estande_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY estande
    ADD CONSTRAINT estande_pkey PRIMARY KEY (codest);


--
-- TOC entry 2688 (class 2606 OID 16449)
-- Name: estande_produto estande_produto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY estande_produto
    ADD CONSTRAINT estande_produto_pkey PRIMARY KEY (codest, codproduto);


--
-- TOC entry 2682 (class 2606 OID 16419)
-- Name: fiscal fiscal_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY fiscal
    ADD CONSTRAINT fiscal_pkey PRIMARY KEY (codfis);


--
-- TOC entry 2684 (class 2606 OID 16424)
-- Name: produto produto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY produto
    ADD CONSTRAINT produto_pkey PRIMARY KEY (codproduto);


--
-- TOC entry 2689 (class 2606 OID 16430)
-- Name: estande estande_codfis_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY estande
    ADD CONSTRAINT estande_codfis_fkey FOREIGN KEY (codfis) REFERENCES fiscal(codfis);


--
-- TOC entry 2690 (class 2606 OID 16450)
-- Name: estande_produto estande_produto_codest_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY estande_produto
    ADD CONSTRAINT estande_produto_codest_fkey FOREIGN KEY (codest) REFERENCES estande(codest);


--
-- TOC entry 2691 (class 2606 OID 16455)
-- Name: estande_produto estande_produto_codproduto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY estande_produto
    ADD CONSTRAINT estande_produto_codproduto_fkey FOREIGN KEY (codproduto) REFERENCES produto(codproduto);


-- Completed on 2018-08-24 15:20:55

--
-- PostgreSQL database dump complete
--

