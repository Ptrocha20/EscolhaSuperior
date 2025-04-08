--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: curso; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.curso (
    idcurso integer NOT NULL,
    nome character varying(255),
    grau character varying(255),
    duracao integer,
    descricao text,
    plano_curricular text,
    saidas_profissionais text
);


ALTER TABLE public.curso OWNER TO postgres;

--
-- Name: curso_idcurso_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.curso_idcurso_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.curso_idcurso_seq OWNER TO postgres;

--
-- Name: curso_idcurso_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.curso_idcurso_seq OWNED BY public.curso.idcurso;


--
-- Name: curso_universidade; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.curso_universidade (
    idcursouniversidade integer NOT NULL,
    cursoid integer,
    universidadeid integer,
    vagas integer,
    nota_candidatura double precision,
    propina numeric(10,2),
    regime character varying(255),
    link_candidatura character varying(255)
);


ALTER TABLE public.curso_universidade OWNER TO postgres;

--
-- Name: curso_universidade_idcursouniversidade_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.curso_universidade_idcursouniversidade_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.curso_universidade_idcursouniversidade_seq OWNER TO postgres;

--
-- Name: curso_universidade_idcursouniversidade_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.curso_universidade_idcursouniversidade_seq OWNED BY public.curso_universidade.idcursouniversidade;


--
-- Name: responsavel_faculdade; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.responsavel_faculdade (
    idresponsavel integer NOT NULL,
    nome character varying(255),
    email_institucional character varying(255),
    universidadeid integer,
    ultimologin timestamp without time zone
);


ALTER TABLE public.responsavel_faculdade OWNER TO postgres;

--
-- Name: responsavel_faculdade_idresponsavel_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.responsavel_faculdade_idresponsavel_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.responsavel_faculdade_idresponsavel_seq OWNER TO postgres;

--
-- Name: responsavel_faculdade_idresponsavel_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.responsavel_faculdade_idresponsavel_seq OWNED BY public.responsavel_faculdade.idresponsavel;


--
-- Name: universidade; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.universidade (
    iduniversidade integer NOT NULL,
    nome character varying(255) NOT NULL,
    localizacao character varying(255),
    descricao text,
    site character varying(255),
    tipo character varying(255)
);


ALTER TABLE public.universidade OWNER TO postgres;

--
-- Name: universidade_iduniversidade_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.universidade_iduniversidade_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.universidade_iduniversidade_seq OWNER TO postgres;

--
-- Name: universidade_iduniversidade_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.universidade_iduniversidade_seq OWNED BY public.universidade.iduniversidade;


--
-- Name: utilizador; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.utilizador (
    idutilizador integer NOT NULL,
    nome character varying(255),
    email character varying(255),
    palavrapasse character varying(255)
);


ALTER TABLE public.utilizador OWNER TO postgres;

--
-- Name: utilizador_idutilizador_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.utilizador_idutilizador_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.utilizador_idutilizador_seq OWNER TO postgres;

--
-- Name: utilizador_idutilizador_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.utilizador_idutilizador_seq OWNED BY public.utilizador.idutilizador;


--
-- Name: curso idcurso; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.curso ALTER COLUMN idcurso SET DEFAULT nextval('public.curso_idcurso_seq'::regclass);


--
-- Name: curso_universidade idcursouniversidade; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.curso_universidade ALTER COLUMN idcursouniversidade SET DEFAULT nextval('public.curso_universidade_idcursouniversidade_seq'::regclass);


--
-- Name: responsavel_faculdade idresponsavel; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.responsavel_faculdade ALTER COLUMN idresponsavel SET DEFAULT nextval('public.responsavel_faculdade_idresponsavel_seq'::regclass);


--
-- Name: universidade iduniversidade; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.universidade ALTER COLUMN iduniversidade SET DEFAULT nextval('public.universidade_iduniversidade_seq'::regclass);


--
-- Name: utilizador idutilizador; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.utilizador ALTER COLUMN idutilizador SET DEFAULT nextval('public.utilizador_idutilizador_seq'::regclass);


--
-- Data for Name: curso; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.curso (idcurso, nome, grau, duracao, descricao, plano_curricular, saidas_profissionais) FROM stdin;
1	Engenharia Informática	Licenciatura	3	O curso de Engenharia Informática aborda tópicos como programação, redes de computadores, e inteligência artificial.	Algoritmos, Estruturas de Dados, Sistemas Operativos, Redes de Computadores, Inteligência Artificial	Desenvolvedor de Software, Administrador de Redes, Consultor de TI
2	Medicina	Mestrado Integrado	6	O curso de Medicina prepara os alunos para a prática clínica e para o diagnóstico e tratamento de doenças.	Anatomia, Fisiologia, Farmacologia, Cirurgia, Medicina Interna, Pediatria	 Médico, Cirurgião, Pediatra, Médico de Família
3	Direito	Licenciatura	4	O curso de Direito oferece uma formação completa em várias áreas do direito, com foco em legislação nacional e internacional.	Direito Constitucional, Direito Penal, Direito Civil, Direito Internacional, Direito Comercial	Advogado, Juiz, Procurador, Consultor Jurídico
4	Arquitetura	Mestrado Integrado	5	O curso de Arquitetura oferece formação nas áreas de projeto e construção, com um foco em sustentabilidade e design inovador.	Desenho Arquitetónico, História da Arquitetura, Estruturas, Construção e Engenharia, Planeamento Urbano	Arquiteto, Urbanista, Designer de Interiores, Consultor de Construção
5	Psicologia	Licenciatura	3	O curso de Psicologia aborda as áreas de comportamento humano, processos mentais, e saúde mental.	Psicologia Cognitiva, Psicologia Clínica, Psicologia Social, Psicopatologia, Terapias Cognitivo-Comportamentais	Psicólogo Clínico, Psicoterapeuta, Psicólogo Organizacional, Conselheiro
\.


--
-- Data for Name: curso_universidade; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.curso_universidade (idcursouniversidade, cursoid, universidadeid, vagas, nota_candidatura, propina, regime, link_candidatura) FROM stdin;
\.


--
-- Data for Name: responsavel_faculdade; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.responsavel_faculdade (idresponsavel, nome, email_institucional, universidadeid, ultimologin) FROM stdin;
\.


--
-- Data for Name: universidade; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.universidade (iduniversidade, nome, localizacao, descricao, site, tipo) FROM stdin;
1	Universidade de Lisboa	Lisboa	Uma das maiores universidades de Portugal.	https://www.ulisboa.pt	Pública
2	Universidade do Porto	Porto	Uma das principais universidades de Portugal, com foco em pesquisa e inovação.	https://www.up.pt	Pública
3	Universidade de Coimbra	Coimbra	Uma das universidades mais antigas de Portugal, com uma rica história e tradição acadêmica.	https://www.uc.pt	Pública
4	Universidade Nova de Lisboa	Lisboa	Universidade de renome, destacada pela sua abordagem inovadora e internacional.	https://www.unl.pt	Pública
5	Universidade de Aveiro	Aveiro	Conhecida pela sua excelência no ensino e na pesquisa em áreas como engenharia e ciências.	https://www.ua.pt	Pública
6	Universidade de Évora	Évora	Universidade com forte foco em áreas de ciências sociais, artes e humanidades.	https://www.uevora.pt	Pública
7	Universidade do Minho	Braga	Universidade com grande destaque nas áreas de engenharia, ciências e tecnologia.	https://www.uminho.pt	Pública
8	Universidade de Lisboa	Lisboa	Uma das maiores universidades de Portugal, com uma vasta oferta educativa e de pesquisa.	https://www.ulisboa.pt	Pública
9	Universidade da Beira Interior	Covilhã	Universidade com foco em ciência e tecnologia, especialmente em áreas como engenharia e saúde.	https://www.ubi.pt	Pública
10	Universidade de Trás-os-Montes e Alto Douro	Vila Real	Famosa pelo seu ensino focado em áreas agrárias, biotecnologia e ciências aplicadas.	https://www.utad.pt	Pública
11	Universidade de Lisboa - Instituto Superior Técnico	Lisboa	Instituto de excelência em engenharia e tecnologia, parte da Universidade de Lisboa.	https://www.ist.utl.pt	Pública
\.


--
-- Data for Name: utilizador; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.utilizador (idutilizador, nome, email, palavrapasse) FROM stdin;
\.


--
-- Name: curso_idcurso_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.curso_idcurso_seq', 5, true);


--
-- Name: curso_universidade_idcursouniversidade_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.curso_universidade_idcursouniversidade_seq', 1, false);


--
-- Name: responsavel_faculdade_idresponsavel_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.responsavel_faculdade_idresponsavel_seq', 1, false);


--
-- Name: universidade_iduniversidade_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.universidade_iduniversidade_seq', 11, true);


--
-- Name: utilizador_idutilizador_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.utilizador_idutilizador_seq', 1, false);


--
-- Name: curso curso_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.curso
    ADD CONSTRAINT curso_pkey PRIMARY KEY (idcurso);


--
-- Name: curso_universidade curso_universidade_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.curso_universidade
    ADD CONSTRAINT curso_universidade_pkey PRIMARY KEY (idcursouniversidade);


--
-- Name: responsavel_faculdade responsavel_faculdade_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.responsavel_faculdade
    ADD CONSTRAINT responsavel_faculdade_pkey PRIMARY KEY (idresponsavel);


--
-- Name: universidade universidade_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.universidade
    ADD CONSTRAINT universidade_pkey PRIMARY KEY (iduniversidade);


--
-- Name: utilizador utilizador_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.utilizador
    ADD CONSTRAINT utilizador_pkey PRIMARY KEY (idutilizador);


--
-- Name: curso_universidade curso_universidade_cursoid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.curso_universidade
    ADD CONSTRAINT curso_universidade_cursoid_fkey FOREIGN KEY (cursoid) REFERENCES public.curso(idcurso);


--
-- Name: curso_universidade curso_universidade_universidadeid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.curso_universidade
    ADD CONSTRAINT curso_universidade_universidadeid_fkey FOREIGN KEY (universidadeid) REFERENCES public.universidade(iduniversidade);


--
-- Name: responsavel_faculdade responsavel_faculdade_universidadeid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.responsavel_faculdade
    ADD CONSTRAINT responsavel_faculdade_universidadeid_fkey FOREIGN KEY (universidadeid) REFERENCES public.universidade(iduniversidade);


--
-- PostgreSQL database dump complete
--

