--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4
-- Dumped by pg_dump version 14.4

-- Started on 2022-07-25 22:07:26

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
-- TOC entry 210 (class 1259 OID 16408)
-- Name: Tasks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Tasks" (
    id text NOT NULL,
    title text NOT NULL,
    status text NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public."Tasks" OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16397)
-- Name: _prisma_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public._prisma_migrations (
    id character varying(36) NOT NULL,
    checksum character varying(64) NOT NULL,
    finished_at timestamp with time zone,
    migration_name character varying(255) NOT NULL,
    logs text,
    rolled_back_at timestamp with time zone,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    applied_steps_count integer DEFAULT 0 NOT NULL
);


ALTER TABLE public._prisma_migrations OWNER TO postgres;

--
-- TOC entry 3314 (class 0 OID 16408)
-- Dependencies: 210
-- Data for Name: Tasks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Tasks" (id, title, status, created_at) FROM stdin;
a14c36d0-7002-420a-8f3d-aa4740bd63e0	Incluir descrição	Waiting	2022-07-25 23:43:32.839
14a824b3-a1b8-4210-bbc5-bd43861c28fd	Create login screen	Waiting	2022-07-26 00:03:47.997
9b9d2d26-4cf1-49cc-9190-5b8ceca7603a	Create animated background	Done	2022-07-25 01:14:28.118
0dfe3ccd-dce2-4e7d-b716-fff171913ae4	Include pipeline	Canceled	2022-07-25 23:43:13.959
55a307de-802f-4113-85de-98316ab37f79	Include filter	Done	2022-07-26 00:04:34.363
e834e964-6c64-4a7c-812b-e43b2d7f4317	Test crud options	Done	2022-07-26 00:04:47.42
d79a3436-e1ba-44b1-b8f6-ace34a3e0562	add validations to forms	Waiting	2022-07-26 00:04:56.685
a979c36b-8636-44d3-8c8b-1931d6ad00b8	Changing colors	Doing	2022-07-26 00:18:48.093
\.


--
-- TOC entry 3313 (class 0 OID 16397)
-- Dependencies: 209
-- Data for Name: _prisma_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) FROM stdin;
bb16a5b4-9c03-421d-aef7-842d68083ad1	a3bba8e844262c1eed617b6522a5b1c7f6b475b3638bf75fd4dcb88d8ab3f2c0	2022-07-21 14:00:26.442615-03	20220721170026_create_task_table	\N	\N	2022-07-21 14:00:26.433808-03	1
\.


--
-- TOC entry 3173 (class 2606 OID 16415)
-- Name: Tasks Tasks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Tasks"
    ADD CONSTRAINT "Tasks_pkey" PRIMARY KEY (id);


--
-- TOC entry 3171 (class 2606 OID 16405)
-- Name: _prisma_migrations _prisma_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public._prisma_migrations
    ADD CONSTRAINT _prisma_migrations_pkey PRIMARY KEY (id);


-- Completed on 2022-07-25 22:07:26

--
-- PostgreSQL database dump complete
--

