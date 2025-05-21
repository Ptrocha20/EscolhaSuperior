--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

-- Started on 2025-05-21 17:17:54

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
-- TOC entry 220 (class 1259 OID 16399)
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
-- TOC entry 219 (class 1259 OID 16398)
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
-- TOC entry 4857 (class 0 OID 0)
-- Dependencies: 219
-- Name: curso_idcurso_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.curso_idcurso_seq OWNED BY public.curso.idcurso;


--
-- TOC entry 222 (class 1259 OID 16408)
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
-- TOC entry 221 (class 1259 OID 16407)
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
-- TOC entry 4858 (class 0 OID 0)
-- Dependencies: 221
-- Name: curso_universidade_idcursouniversidade_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.curso_universidade_idcursouniversidade_seq OWNED BY public.curso_universidade.idcursouniversidade;


--
-- TOC entry 224 (class 1259 OID 16427)
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
-- TOC entry 223 (class 1259 OID 16426)
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
-- TOC entry 4859 (class 0 OID 0)
-- Dependencies: 223
-- Name: responsavel_faculdade_idresponsavel_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.responsavel_faculdade_idresponsavel_seq OWNED BY public.responsavel_faculdade.idresponsavel;


--
-- TOC entry 218 (class 1259 OID 16390)
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
-- TOC entry 217 (class 1259 OID 16389)
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
-- TOC entry 4860 (class 0 OID 0)
-- Dependencies: 217
-- Name: universidade_iduniversidade_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.universidade_iduniversidade_seq OWNED BY public.universidade.iduniversidade;


--
-- TOC entry 226 (class 1259 OID 16441)
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
-- TOC entry 228 (class 1259 OID 16479)
-- Name: utilizador_curso_favorito; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.utilizador_curso_favorito (
    id_utilizador integer NOT NULL,
    id_curso integer NOT NULL
);


ALTER TABLE public.utilizador_curso_favorito OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 16464)
-- Name: utilizador_faculdade_favorito; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.utilizador_faculdade_favorito (
    id_utilizador integer NOT NULL,
    id_faculdade integer NOT NULL
);


ALTER TABLE public.utilizador_faculdade_favorito OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16440)
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
-- TOC entry 4861 (class 0 OID 0)
-- Dependencies: 225
-- Name: utilizador_idutilizador_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.utilizador_idutilizador_seq OWNED BY public.utilizador.idutilizador;


--
-- TOC entry 4670 (class 2604 OID 16402)
-- Name: curso idcurso; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.curso ALTER COLUMN idcurso SET DEFAULT nextval('public.curso_idcurso_seq'::regclass);


--
-- TOC entry 4671 (class 2604 OID 16411)
-- Name: curso_universidade idcursouniversidade; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.curso_universidade ALTER COLUMN idcursouniversidade SET DEFAULT nextval('public.curso_universidade_idcursouniversidade_seq'::regclass);


--
-- TOC entry 4672 (class 2604 OID 16430)
-- Name: responsavel_faculdade idresponsavel; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.responsavel_faculdade ALTER COLUMN idresponsavel SET DEFAULT nextval('public.responsavel_faculdade_idresponsavel_seq'::regclass);


--
-- TOC entry 4669 (class 2604 OID 16393)
-- Name: universidade iduniversidade; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.universidade ALTER COLUMN iduniversidade SET DEFAULT nextval('public.universidade_iduniversidade_seq'::regclass);


--
-- TOC entry 4673 (class 2604 OID 16444)
-- Name: utilizador idutilizador; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.utilizador ALTER COLUMN idutilizador SET DEFAULT nextval('public.utilizador_idutilizador_seq'::regclass);


--
-- TOC entry 4843 (class 0 OID 16399)
-- Dependencies: 220
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
-- TOC entry 4845 (class 0 OID 16408)
-- Dependencies: 222
-- Data for Name: curso_universidade; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.curso_universidade (idcursouniversidade, cursoid, universidadeid, vagas, nota_candidatura, propina, regime, link_candidatura) FROM stdin;
\.


--
-- TOC entry 4847 (class 0 OID 16427)
-- Dependencies: 224
-- Data for Name: responsavel_faculdade; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.responsavel_faculdade (idresponsavel, nome, email_institucional, universidadeid, ultimologin) FROM stdin;
\.


--
-- TOC entry 4841 (class 0 OID 16390)
-- Dependencies: 218
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
-- TOC entry 4849 (class 0 OID 16441)
-- Dependencies: 226
-- Data for Name: utilizador; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.utilizador (idutilizador, nome, email, palavrapasse) FROM stdin;
1	João Silva	joao.silva@gmail.com	senha123
3	Carlos Almeida	carlos.almeida@gmail.com	senha789
2	Maria Santos	maria.santos@gmail.com	123
5	Tiago Nogueira Miranda	tiago@gmail.com	\N
6	Telmo 	telmo@gmail.com	1234
\.


--
-- TOC entry 4851 (class 0 OID 16479)
-- Dependencies: 228
-- Data for Name: utilizador_curso_favorito; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.utilizador_curso_favorito (id_utilizador, id_curso) FROM stdin;
2	1
2	2
2	5
\.


--
-- TOC entry 4850 (class 0 OID 16464)
-- Dependencies: 227
-- Data for Name: utilizador_faculdade_favorito; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.utilizador_faculdade_favorito (id_utilizador, id_faculdade) FROM stdin;
6	1
2	1
2	2
2	6
\.


--
-- TOC entry 4862 (class 0 OID 0)
-- Dependencies: 219
-- Name: curso_idcurso_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.curso_idcurso_seq', 5, true);


--
-- TOC entry 4863 (class 0 OID 0)
-- Dependencies: 221
-- Name: curso_universidade_idcursouniversidade_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.curso_universidade_idcursouniversidade_seq', 1, false);


--
-- TOC entry 4864 (class 0 OID 0)
-- Dependencies: 223
-- Name: responsavel_faculdade_idresponsavel_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.responsavel_faculdade_idresponsavel_seq', 1, false);


--
-- TOC entry 4865 (class 0 OID 0)
-- Dependencies: 217
-- Name: universidade_iduniversidade_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.universidade_iduniversidade_seq', 11, true);


--
-- TOC entry 4866 (class 0 OID 0)
-- Dependencies: 225
-- Name: utilizador_idutilizador_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.utilizador_idutilizador_seq', 6, true);


--
-- TOC entry 4677 (class 2606 OID 16406)
-- Name: curso curso_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.curso
    ADD CONSTRAINT curso_pkey PRIMARY KEY (idcurso);


--
-- TOC entry 4679 (class 2606 OID 16415)
-- Name: curso_universidade curso_universidade_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.curso_universidade
    ADD CONSTRAINT curso_universidade_pkey PRIMARY KEY (idcursouniversidade);


--
-- TOC entry 4681 (class 2606 OID 16434)
-- Name: responsavel_faculdade responsavel_faculdade_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.responsavel_faculdade
    ADD CONSTRAINT responsavel_faculdade_pkey PRIMARY KEY (idresponsavel);


--
-- TOC entry 4675 (class 2606 OID 16397)
-- Name: universidade universidade_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.universidade
    ADD CONSTRAINT universidade_pkey PRIMARY KEY (iduniversidade);


--
-- TOC entry 4687 (class 2606 OID 16483)
-- Name: utilizador_curso_favorito utilizador_curso_favorito_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.utilizador_curso_favorito
    ADD CONSTRAINT utilizador_curso_favorito_pkey PRIMARY KEY (id_utilizador, id_curso);


--
-- TOC entry 4685 (class 2606 OID 16468)
-- Name: utilizador_faculdade_favorito utilizador_faculdade_favorito_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.utilizador_faculdade_favorito
    ADD CONSTRAINT utilizador_faculdade_favorito_pkey PRIMARY KEY (id_utilizador, id_faculdade);


--
-- TOC entry 4683 (class 2606 OID 16448)
-- Name: utilizador utilizador_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.utilizador
    ADD CONSTRAINT utilizador_pkey PRIMARY KEY (idutilizador);


--
-- TOC entry 4688 (class 2606 OID 16416)
-- Name: curso_universidade curso_universidade_cursoid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.curso_universidade
    ADD CONSTRAINT curso_universidade_cursoid_fkey FOREIGN KEY (cursoid) REFERENCES public.curso(idcurso);


--
-- TOC entry 4689 (class 2606 OID 16421)
-- Name: curso_universidade curso_universidade_universidadeid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.curso_universidade
    ADD CONSTRAINT curso_universidade_universidadeid_fkey FOREIGN KEY (universidadeid) REFERENCES public.universidade(iduniversidade);


--
-- TOC entry 4690 (class 2606 OID 16435)
-- Name: responsavel_faculdade responsavel_faculdade_universidadeid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.responsavel_faculdade
    ADD CONSTRAINT responsavel_faculdade_universidadeid_fkey FOREIGN KEY (universidadeid) REFERENCES public.universidade(iduniversidade);


--
-- TOC entry 4693 (class 2606 OID 16489)
-- Name: utilizador_curso_favorito utilizador_curso_favorito_id_curso_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.utilizador_curso_favorito
    ADD CONSTRAINT utilizador_curso_favorito_id_curso_fkey FOREIGN KEY (id_curso) REFERENCES public.curso(idcurso);


--
-- TOC entry 4694 (class 2606 OID 16484)
-- Name: utilizador_curso_favorito utilizador_curso_favorito_id_utilizador_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.utilizador_curso_favorito
    ADD CONSTRAINT utilizador_curso_favorito_id_utilizador_fkey FOREIGN KEY (id_utilizador) REFERENCES public.utilizador(idutilizador);


--
-- TOC entry 4691 (class 2606 OID 16474)
-- Name: utilizador_faculdade_favorito utilizador_faculdade_favorito_id_faculdade_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.utilizador_faculdade_favorito
    ADD CONSTRAINT utilizador_faculdade_favorito_id_faculdade_fkey FOREIGN KEY (id_faculdade) REFERENCES public.universidade(iduniversidade);


--
-- TOC entry 4692 (class 2606 OID 16469)
-- Name: utilizador_faculdade_favorito utilizador_faculdade_favorito_id_utilizador_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.utilizador_faculdade_favorito
    ADD CONSTRAINT utilizador_faculdade_favorito_id_utilizador_fkey FOREIGN KEY (id_utilizador) REFERENCES public.utilizador(idutilizador);


-- Completed on 2025-05-21 17:17:54

--
-- PostgreSQL database dump complete
--

