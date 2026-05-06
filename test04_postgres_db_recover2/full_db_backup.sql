--
-- PostgreSQL database cluster dump
--

\restrict SwORy3WE4q62onJ0SToSeNxWRIQehHhcn15TP9uls71Nx9Y6DS1pZ86sEHNwJoF

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE kimgura;
ALTER ROLE kimgura WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:SOmCeWPVEB0FHmzi0Eco5A==$6Aoy2ecy3nW3z8diJjDwB6W7JNRCqoJL6UmDBI1Igvw=:NEBiAhqrVegD/tQk6k0UeuO45m/rpIaIKbH/2VVCVQk=';
CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:HxiqYRBHg+7qeBgR/ai8QA==$ah3qS3gP0GcuQ0kqstNPUkfUzZxx2tJu2dUx3PCXbXo=:UufqtAIHvZcRdJmBVQSbZQAUthJbjHBmllIuBbiVUMg=';
CREATE ROLE scott;
ALTER ROLE scott WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:aaqbqLO0iCQwzYzB88JLhw==$pW3nQGIfKIIwnzksyJkOY9KBpnHLQRIyYcVvf4e5CK4=:kEDM/On5uEaD3kYmwVt58OocStUP1nJDGL/lGUeUYDA=';
CREATE ROLE scott2;
ALTER ROLE scott2 WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:36XaGr5S2slNiQ4yYalQWA==$gfMOAGBOx1QPmz+M/sM+48OLfCkex92FJjvnDbHTHn0=:Qar+7B8QI0poEKJkGI+HOkQ1Nx7FhKDdcHG36RkOVZc=';

--
-- User Configurations
--








\unrestrict SwORy3WE4q62onJ0SToSeNxWRIQehHhcn15TP9uls71Nx9Y6DS1pZ86sEHNwJoF

--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

\restrict CI3Saxg2Hhen0pMga1qP662scpOhAuXRykkkND0lRQ5ITzMSetaCspfvUSO672L

-- Dumped from database version 15.17
-- Dumped by pg_dump version 15.17

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

--
-- PostgreSQL database dump complete
--

\unrestrict CI3Saxg2Hhen0pMga1qP662scpOhAuXRykkkND0lRQ5ITzMSetaCspfvUSO672L

--
-- Database "kimgura_db" dump
--

--
-- PostgreSQL database dump
--

\restrict pCh4vLdnW6qERLgBBrxEQLaFbtdbhoGwl1fm9W4VKeQZvBPTqOzej5PKlZNYZgS

-- Dumped from database version 15.17
-- Dumped by pg_dump version 15.17

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

--
-- Name: kimgura_db; Type: DATABASE; Schema: -; Owner: kimgura
--

CREATE DATABASE kimgura_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';


ALTER DATABASE kimgura_db OWNER TO kimgura;

\unrestrict pCh4vLdnW6qERLgBBrxEQLaFbtdbhoGwl1fm9W4VKeQZvBPTqOzej5PKlZNYZgS
\connect kimgura_db
\restrict pCh4vLdnW6qERLgBBrxEQLaFbtdbhoGwl1fm9W4VKeQZvBPTqOzej5PKlZNYZgS

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
-- Name: member; Type: TABLE; Schema: public; Owner: kimgura
--

CREATE TABLE public.member (
    num integer NOT NULL,
    name text NOT NULL,
    addr text
);


ALTER TABLE public.member OWNER TO kimgura;

--
-- Name: member_seq; Type: SEQUENCE; Schema: public; Owner: kimgura
--

CREATE SEQUENCE public.member_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.member_seq OWNER TO kimgura;

--
-- Name: post; Type: TABLE; Schema: public; Owner: kimgura
--

CREATE TABLE public.post (
    num integer NOT NULL,
    writer text NOT NULL,
    title text NOT NULL,
    content text,
    created_at timestamp without time zone
);


ALTER TABLE public.post OWNER TO kimgura;

--
-- Name: post_seq; Type: SEQUENCE; Schema: public; Owner: kimgura
--

CREATE SEQUENCE public.post_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.post_seq OWNER TO kimgura;

--
-- Name: test_seq; Type: SEQUENCE; Schema: public; Owner: kimgura
--

CREATE SEQUENCE public.test_seq
    START WITH 10
    INCREMENT BY 10
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.test_seq OWNER TO kimgura;

--
-- Name: todo; Type: TABLE; Schema: public; Owner: kimgura
--

CREATE TABLE public.todo (
    num integer NOT NULL,
    content character varying(20),
    created_at timestamp without time zone DEFAULT now()
);


ALTER TABLE public.todo OWNER TO kimgura;

--
-- Name: todo_num_seq; Type: SEQUENCE; Schema: public; Owner: kimgura
--

CREATE SEQUENCE public.todo_num_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.todo_num_seq OWNER TO kimgura;

--
-- Name: todo_num_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kimgura
--

ALTER SEQUENCE public.todo_num_seq OWNED BY public.todo.num;


--
-- Name: todo num; Type: DEFAULT; Schema: public; Owner: kimgura
--

ALTER TABLE ONLY public.todo ALTER COLUMN num SET DEFAULT nextval('public.todo_num_seq'::regclass);


--
-- Data for Name: member; Type: TABLE DATA; Schema: public; Owner: kimgura
--

COPY public.member (num, name, addr) FROM stdin;
1	김구라	노량진
2	해골	행신동
3	원숭이	동물원
\.


--
-- Data for Name: post; Type: TABLE DATA; Schema: public; Owner: kimgura
--

COPY public.post (num, writer, title, content, created_at) FROM stdin;
1	kim	hello	어쩌구..저쩌구..	2026-04-02 16:08:54.65206
2	lee	hello2	어쩌구2..저쩌구2..	2026-04-02 16:09:43.888704
3	park	hello3	어쩌구3..저쩌구3..	2026-04-02 16:09:59.947979
\.


--
-- Data for Name: todo; Type: TABLE DATA; Schema: public; Owner: kimgura
--

COPY public.todo (num, content, created_at) FROM stdin;
1	python 공부하기	2026-04-02 17:07:03.623234
2	linux 공부하기	2026-04-02 17:07:11.534405
3	docker 공부하기	2026-04-02 17:07:17.712611
\.


--
-- Name: member_seq; Type: SEQUENCE SET; Schema: public; Owner: kimgura
--

SELECT pg_catalog.setval('public.member_seq', 3, true);


--
-- Name: post_seq; Type: SEQUENCE SET; Schema: public; Owner: kimgura
--

SELECT pg_catalog.setval('public.post_seq', 3, true);


--
-- Name: test_seq; Type: SEQUENCE SET; Schema: public; Owner: kimgura
--

SELECT pg_catalog.setval('public.test_seq', 30, true);


--
-- Name: todo_num_seq; Type: SEQUENCE SET; Schema: public; Owner: kimgura
--

SELECT pg_catalog.setval('public.todo_num_seq', 3, true);


--
-- Name: member member_pkey; Type: CONSTRAINT; Schema: public; Owner: kimgura
--

ALTER TABLE ONLY public.member
    ADD CONSTRAINT member_pkey PRIMARY KEY (num);


--
-- Name: post post_pkey; Type: CONSTRAINT; Schema: public; Owner: kimgura
--

ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_pkey PRIMARY KEY (num);


--
-- Name: todo todo_pkey; Type: CONSTRAINT; Schema: public; Owner: kimgura
--

ALTER TABLE ONLY public.todo
    ADD CONSTRAINT todo_pkey PRIMARY KEY (num);


--
-- PostgreSQL database dump complete
--

\unrestrict pCh4vLdnW6qERLgBBrxEQLaFbtdbhoGwl1fm9W4VKeQZvBPTqOzej5PKlZNYZgS

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

\restrict jPKwWStJJIQfh0wXVzUdjsNXc4hDXdMFWD0bUamPWOyuCT4kOVr1Rw5Kq2A1eiF

-- Dumped from database version 15.17
-- Dumped by pg_dump version 15.17

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

--
-- PostgreSQL database dump complete
--

\unrestrict jPKwWStJJIQfh0wXVzUdjsNXc4hDXdMFWD0bUamPWOyuCT4kOVr1Rw5Kq2A1eiF

--
-- Database "scott2_db" dump
--

--
-- PostgreSQL database dump
--

\restrict 1NY7q9rWY5MTAKiQS8Im1M8xGc4I3O1eV5Cq01SiGgrantPwrRxZFKlk31aXMLX

-- Dumped from database version 15.17
-- Dumped by pg_dump version 15.17

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

--
-- Name: scott2_db; Type: DATABASE; Schema: -; Owner: scott2
--

CREATE DATABASE scott2_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';


ALTER DATABASE scott2_db OWNER TO scott2;

\unrestrict 1NY7q9rWY5MTAKiQS8Im1M8xGc4I3O1eV5Cq01SiGgrantPwrRxZFKlk31aXMLX
\connect scott2_db
\restrict 1NY7q9rWY5MTAKiQS8Im1M8xGc4I3O1eV5Cq01SiGgrantPwrRxZFKlk31aXMLX

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
-- Name: dept; Type: TABLE; Schema: public; Owner: scott2
--

CREATE TABLE public.dept (
    deptno integer NOT NULL,
    dname character varying(14),
    loc character varying(13)
);


ALTER TABLE public.dept OWNER TO scott2;

--
-- Name: emp; Type: TABLE; Schema: public; Owner: scott2
--

CREATE TABLE public.emp (
    empno integer NOT NULL,
    ename character varying(10),
    job character varying(9),
    mgr integer,
    hiredate date,
    sal numeric(7,2),
    comm numeric(7,2),
    deptno integer
);


ALTER TABLE public.emp OWNER TO scott2;

--
-- Data for Name: dept; Type: TABLE DATA; Schema: public; Owner: scott2
--

COPY public.dept (deptno, dname, loc) FROM stdin;
10	ACCOUNTING	NEW YORK
20	RESEARCH	DALLAS
30	SALES	CHICAGO
40	OPERATIONS	BOSTON
\.


--
-- Data for Name: emp; Type: TABLE DATA; Schema: public; Owner: scott2
--

COPY public.emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) FROM stdin;
7369	SMITH	CLERK	7902	1980-12-17	800.00	\N	20
7499	ALLEN	SALESMAN	7698	1981-02-20	1600.00	300.00	30
7521	WARD	SALESMAN	7698	1981-02-22	1250.00	500.00	30
7566	JONES	MANAGER	7839	1981-04-02	2975.00	\N	20
7654	MARTIN	SALESMAN	7698	1981-09-28	1250.00	1400.00	30
7698	BLAKE	MANAGER	7839	1981-05-01	2850.00	\N	30
7782	CLARK	MANAGER	7839	1981-06-09	2450.00	\N	10
7788	SCOTT	ANALYST	7566	1987-07-13	3000.00	\N	20
7839	KING	PRESIDENT	\N	1981-11-17	5000.00	\N	10
7844	TURNER	SALESMAN	7698	1981-09-08	1500.00	0.00	30
7876	ADAMS	CLERK	7788	1987-07-13	1100.00	\N	20
7900	JAMES	CLERK	7698	1981-12-03	950.00	\N	30
7902	FORD	ANALYST	7566	1981-12-03	3000.00	\N	20
7934	MILLER	CLERK	7782	1982-01-23	1300.00	\N	10
\.


--
-- Name: dept dept_pkey; Type: CONSTRAINT; Schema: public; Owner: scott2
--

ALTER TABLE ONLY public.dept
    ADD CONSTRAINT dept_pkey PRIMARY KEY (deptno);


--
-- Name: emp emp_pkey; Type: CONSTRAINT; Schema: public; Owner: scott2
--

ALTER TABLE ONLY public.emp
    ADD CONSTRAINT emp_pkey PRIMARY KEY (empno);


--
-- Name: emp emp_deptno_fkey; Type: FK CONSTRAINT; Schema: public; Owner: scott2
--

ALTER TABLE ONLY public.emp
    ADD CONSTRAINT emp_deptno_fkey FOREIGN KEY (deptno) REFERENCES public.dept(deptno);


--
-- PostgreSQL database dump complete
--

\unrestrict 1NY7q9rWY5MTAKiQS8Im1M8xGc4I3O1eV5Cq01SiGgrantPwrRxZFKlk31aXMLX

--
-- Database "scott_db" dump
--

--
-- PostgreSQL database dump
--

\restrict JeYetc3vVKi4fQ5f2uj3Ylp3PKTmDz5ZOJWGyhY6H2FgZj0kuwApJiOXfBA0CRN

-- Dumped from database version 15.17
-- Dumped by pg_dump version 15.17

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

--
-- Name: scott_db; Type: DATABASE; Schema: -; Owner: scott
--

CREATE DATABASE scott_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';


ALTER DATABASE scott_db OWNER TO scott;

\unrestrict JeYetc3vVKi4fQ5f2uj3Ylp3PKTmDz5ZOJWGyhY6H2FgZj0kuwApJiOXfBA0CRN
\connect scott_db
\restrict JeYetc3vVKi4fQ5f2uj3Ylp3PKTmDz5ZOJWGyhY6H2FgZj0kuwApJiOXfBA0CRN

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
-- Name: dept; Type: TABLE; Schema: public; Owner: scott
--

CREATE TABLE public.dept (
    deptno integer NOT NULL,
    dname character varying(14),
    loc character varying(13)
);


ALTER TABLE public.dept OWNER TO scott;

--
-- Name: emp; Type: TABLE; Schema: public; Owner: scott
--

CREATE TABLE public.emp (
    empno integer NOT NULL,
    ename character varying(10),
    job character varying(9),
    mgr integer,
    hiredate date,
    sal numeric(7,2),
    comm numeric(7,2),
    deptno integer
);


ALTER TABLE public.emp OWNER TO scott;

--
-- Name: files; Type: TABLE; Schema: public; Owner: scott
--

CREATE TABLE public.files (
    num integer NOT NULL,
    writer character varying(50) NOT NULL,
    org_file_name character varying(255) NOT NULL,
    save_file_name character varying(255) NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.files OWNER TO scott;

--
-- Name: files_num_seq; Type: SEQUENCE; Schema: public; Owner: scott
--

CREATE SEQUENCE public.files_num_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_num_seq OWNER TO scott;

--
-- Name: files_num_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: scott
--

ALTER SEQUENCE public.files_num_seq OWNED BY public.files.num;


--
-- Name: member; Type: TABLE; Schema: public; Owner: scott
--

CREATE TABLE public.member (
    num integer NOT NULL,
    name text NOT NULL,
    addr text
);


ALTER TABLE public.member OWNER TO scott;

--
-- Name: member_num_seq; Type: SEQUENCE; Schema: public; Owner: scott
--

CREATE SEQUENCE public.member_num_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.member_num_seq OWNER TO scott;

--
-- Name: member_num_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: scott
--

ALTER SEQUENCE public.member_num_seq OWNED BY public.member.num;


--
-- Name: notice; Type: TABLE; Schema: public; Owner: scott
--

CREATE TABLE public.notice (
    num integer NOT NULL,
    content text
);


ALTER TABLE public.notice OWNER TO scott;

--
-- Name: notice2; Type: TABLE; Schema: public; Owner: scott
--

CREATE TABLE public.notice2 (
    num integer NOT NULL,
    content text
);


ALTER TABLE public.notice2 OWNER TO scott;

--
-- Name: notice2_num_seq; Type: SEQUENCE; Schema: public; Owner: scott
--

CREATE SEQUENCE public.notice2_num_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notice2_num_seq OWNER TO scott;

--
-- Name: notice2_num_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: scott
--

ALTER SEQUENCE public.notice2_num_seq OWNED BY public.notice2.num;


--
-- Name: notice_num_seq; Type: SEQUENCE; Schema: public; Owner: scott
--

CREATE SEQUENCE public.notice_num_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notice_num_seq OWNER TO scott;

--
-- Name: notice_num_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: scott
--

ALTER SEQUENCE public.notice_num_seq OWNED BY public.notice.num;


--
-- Name: post; Type: TABLE; Schema: public; Owner: scott
--

CREATE TABLE public.post (
    num integer NOT NULL,
    writer character varying(50) NOT NULL,
    title character varying(200) NOT NULL,
    content text NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.post OWNER TO scott;

--
-- Name: post_num_seq; Type: SEQUENCE; Schema: public; Owner: scott
--

CREATE SEQUENCE public.post_num_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.post_num_seq OWNER TO scott;

--
-- Name: post_num_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: scott
--

ALTER SEQUENCE public.post_num_seq OWNED BY public.post.num;


--
-- Name: todo; Type: TABLE; Schema: public; Owner: scott
--

CREATE TABLE public.todo (
    num integer NOT NULL,
    content text,
    created_at timestamp without time zone
);


ALTER TABLE public.todo OWNER TO scott;

--
-- Name: todo_num_seq; Type: SEQUENCE; Schema: public; Owner: scott
--

CREATE SEQUENCE public.todo_num_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.todo_num_seq OWNER TO scott;

--
-- Name: todo_num_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: scott
--

ALTER SEQUENCE public.todo_num_seq OWNED BY public.todo.num;


--
-- Name: files num; Type: DEFAULT; Schema: public; Owner: scott
--

ALTER TABLE ONLY public.files ALTER COLUMN num SET DEFAULT nextval('public.files_num_seq'::regclass);


--
-- Name: member num; Type: DEFAULT; Schema: public; Owner: scott
--

ALTER TABLE ONLY public.member ALTER COLUMN num SET DEFAULT nextval('public.member_num_seq'::regclass);


--
-- Name: notice num; Type: DEFAULT; Schema: public; Owner: scott
--

ALTER TABLE ONLY public.notice ALTER COLUMN num SET DEFAULT nextval('public.notice_num_seq'::regclass);


--
-- Name: notice2 num; Type: DEFAULT; Schema: public; Owner: scott
--

ALTER TABLE ONLY public.notice2 ALTER COLUMN num SET DEFAULT nextval('public.notice2_num_seq'::regclass);


--
-- Name: post num; Type: DEFAULT; Schema: public; Owner: scott
--

ALTER TABLE ONLY public.post ALTER COLUMN num SET DEFAULT nextval('public.post_num_seq'::regclass);


--
-- Name: todo num; Type: DEFAULT; Schema: public; Owner: scott
--

ALTER TABLE ONLY public.todo ALTER COLUMN num SET DEFAULT nextval('public.todo_num_seq'::regclass);


--
-- Data for Name: dept; Type: TABLE DATA; Schema: public; Owner: scott
--

COPY public.dept (deptno, dname, loc) FROM stdin;
10	ACCOUNTING	NEW YORK
20	RESEARCH	DALLAS
30	SALES	CHICAGO
40	OPERATIONS	BOSTON
\.


--
-- Data for Name: emp; Type: TABLE DATA; Schema: public; Owner: scott
--

COPY public.emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) FROM stdin;
7369	SMITH	CLERK	7902	1980-12-17	800.00	\N	20
7499	ALLEN	SALESMAN	7698	1981-02-20	1600.00	300.00	30
7521	WARD	SALESMAN	7698	1981-02-22	1250.00	500.00	30
7566	JONES	MANAGER	7839	1981-04-02	2975.00	\N	20
7654	MARTIN	SALESMAN	7698	1981-09-28	1250.00	1400.00	30
7698	BLAKE	MANAGER	7839	1981-05-01	2850.00	\N	30
7782	CLARK	MANAGER	7839	1981-06-09	2450.00	\N	10
7788	SCOTT	ANALYST	7566	1987-07-13	3000.00	\N	20
7839	KING	PRESIDENT	\N	1981-11-17	5000.00	\N	10
7844	TURNER	SALESMAN	7698	1981-09-08	1500.00	0.00	30
7876	ADAMS	CLERK	7788	1987-07-13	1100.00	\N	20
7900	JAMES	CLERK	7698	1981-12-03	950.00	\N	30
7902	FORD	ANALYST	7566	1981-12-03	3000.00	\N	20
7934	MILLER	CLERK	7782	1982-01-23	1300.00	\N	10
\.


--
-- Data for Name: files; Type: TABLE DATA; Schema: public; Owner: scott
--

COPY public.files (num, writer, org_file_name, save_file_name, created_at) FROM stdin;
1	kim	main.py	20adbf1df2a64825afa9ed5f09723e9e_main.py	2026-04-29 15:32:31.364705
\.


--
-- Data for Name: member; Type: TABLE DATA; Schema: public; Owner: scott
--

COPY public.member (num, name, addr) FROM stdin;
1	김구라	노량진
3	김구라3	노량진3
4	원숭이	\N
\.


--
-- Data for Name: notice; Type: TABLE DATA; Schema: public; Owner: scott
--

COPY public.notice (num, content) FROM stdin;
1	오늘은 불금입니다
2	즐거운 주말 보내세요
3	푹 쉬시고 월요일에 뵐께요...
4	월요일 입니다. Linux 가 곧 시작됩니다
5	ansible 도 배워야 합니다
\.


--
-- Data for Name: notice2; Type: TABLE DATA; Schema: public; Owner: scott
--

COPY public.notice2 (num, content) FROM stdin;
\.


--
-- Data for Name: post; Type: TABLE DATA; Schema: public; Owner: scott
--

COPY public.post (num, writer, title, content, created_at) FROM stdin;
2	adf	dfdf	ddf	2026-04-20 08:49:58.566546
3	kim	hello	...bye	2026-04-20 10:40:08.972788
4	lee	helloworld	...bye!!	2026-04-20 10:40:25.047378
8	김구라	제목12	프로젝트~~2	2026-04-21 09:39:05.974601
11	kimgura	string	string	2026-04-29 16:49:43.062543
12	kimgura	string	string	2026-04-29 17:08:20.772716
\.


--
-- Data for Name: todo; Type: TABLE DATA; Schema: public; Owner: scott
--

COPY public.todo (num, content, created_at) FROM stdin;
1	aaa	\N
\.


--
-- Name: files_num_seq; Type: SEQUENCE SET; Schema: public; Owner: scott
--

SELECT pg_catalog.setval('public.files_num_seq', 1, true);


--
-- Name: member_num_seq; Type: SEQUENCE SET; Schema: public; Owner: scott
--

SELECT pg_catalog.setval('public.member_num_seq', 4, true);


--
-- Name: notice2_num_seq; Type: SEQUENCE SET; Schema: public; Owner: scott
--

SELECT pg_catalog.setval('public.notice2_num_seq', 1, false);


--
-- Name: notice_num_seq; Type: SEQUENCE SET; Schema: public; Owner: scott
--

SELECT pg_catalog.setval('public.notice_num_seq', 5, true);


--
-- Name: post_num_seq; Type: SEQUENCE SET; Schema: public; Owner: scott
--

SELECT pg_catalog.setval('public.post_num_seq', 12, true);


--
-- Name: todo_num_seq; Type: SEQUENCE SET; Schema: public; Owner: scott
--

SELECT pg_catalog.setval('public.todo_num_seq', 1, true);


--
-- Name: dept dept_pkey; Type: CONSTRAINT; Schema: public; Owner: scott
--

ALTER TABLE ONLY public.dept
    ADD CONSTRAINT dept_pkey PRIMARY KEY (deptno);


--
-- Name: emp emp_pkey; Type: CONSTRAINT; Schema: public; Owner: scott
--

ALTER TABLE ONLY public.emp
    ADD CONSTRAINT emp_pkey PRIMARY KEY (empno);


--
-- Name: files files_pkey; Type: CONSTRAINT; Schema: public; Owner: scott
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (num);


--
-- Name: member member_pkey; Type: CONSTRAINT; Schema: public; Owner: scott
--

ALTER TABLE ONLY public.member
    ADD CONSTRAINT member_pkey PRIMARY KEY (num);


--
-- Name: notice2 notice2_pkey; Type: CONSTRAINT; Schema: public; Owner: scott
--

ALTER TABLE ONLY public.notice2
    ADD CONSTRAINT notice2_pkey PRIMARY KEY (num);


--
-- Name: notice notice_pkey; Type: CONSTRAINT; Schema: public; Owner: scott
--

ALTER TABLE ONLY public.notice
    ADD CONSTRAINT notice_pkey PRIMARY KEY (num);


--
-- Name: post post_pkey; Type: CONSTRAINT; Schema: public; Owner: scott
--

ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_pkey PRIMARY KEY (num);


--
-- Name: todo todo_pkey; Type: CONSTRAINT; Schema: public; Owner: scott
--

ALTER TABLE ONLY public.todo
    ADD CONSTRAINT todo_pkey PRIMARY KEY (num);


--
-- Name: emp emp_deptno_fkey; Type: FK CONSTRAINT; Schema: public; Owner: scott
--

ALTER TABLE ONLY public.emp
    ADD CONSTRAINT emp_deptno_fkey FOREIGN KEY (deptno) REFERENCES public.dept(deptno);


--
-- PostgreSQL database dump complete
--

\unrestrict JeYetc3vVKi4fQ5f2uj3Ylp3PKTmDz5ZOJWGyhY6H2FgZj0kuwApJiOXfBA0CRN

--
-- PostgreSQL database cluster dump complete
--

