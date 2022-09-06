--
-- PostgreSQL database dump
--

-- Dumped from database version 13.7 (Ubuntu 13.7-0ubuntu0.21.10.1)
-- Dumped by pg_dump version 13.7 (Ubuntu 13.7-0ubuntu0.21.10.1)

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
-- Name: action_text_rich_texts; Type: TABLE; Schema: public; Owner: u3
--

CREATE TABLE public.action_text_rich_texts (
    id bigint NOT NULL,
    name character varying NOT NULL,
    body text,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.action_text_rich_texts OWNER TO u3;

--
-- Name: action_text_rich_texts_id_seq; Type: SEQUENCE; Schema: public; Owner: u3
--

CREATE SEQUENCE public.action_text_rich_texts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.action_text_rich_texts_id_seq OWNER TO u3;

--
-- Name: action_text_rich_texts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: u3
--

ALTER SEQUENCE public.action_text_rich_texts_id_seq OWNED BY public.action_text_rich_texts.id;


--
-- Name: active_storage_attachments; Type: TABLE; Schema: public; Owner: u3
--

CREATE TABLE public.active_storage_attachments (
    id bigint NOT NULL,
    name character varying NOT NULL,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    blob_id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.active_storage_attachments OWNER TO u3;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: u3
--

CREATE SEQUENCE public.active_storage_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_attachments_id_seq OWNER TO u3;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: u3
--

ALTER SEQUENCE public.active_storage_attachments_id_seq OWNED BY public.active_storage_attachments.id;


--
-- Name: active_storage_blobs; Type: TABLE; Schema: public; Owner: u3
--

CREATE TABLE public.active_storage_blobs (
    id bigint NOT NULL,
    key character varying NOT NULL,
    filename character varying NOT NULL,
    content_type character varying,
    metadata text,
    service_name character varying NOT NULL,
    byte_size bigint NOT NULL,
    checksum character varying NOT NULL,
    created_at timestamp without time zone NOT NULL
);


ALTER TABLE public.active_storage_blobs OWNER TO u3;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE; Schema: public; Owner: u3
--

CREATE SEQUENCE public.active_storage_blobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_blobs_id_seq OWNER TO u3;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: u3
--

ALTER SEQUENCE public.active_storage_blobs_id_seq OWNED BY public.active_storage_blobs.id;


--
-- Name: active_storage_variant_records; Type: TABLE; Schema: public; Owner: u3
--

CREATE TABLE public.active_storage_variant_records (
    id bigint NOT NULL,
    blob_id bigint NOT NULL,
    variation_digest character varying NOT NULL
);


ALTER TABLE public.active_storage_variant_records OWNER TO u3;

--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE; Schema: public; Owner: u3
--

CREATE SEQUENCE public.active_storage_variant_records_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_variant_records_id_seq OWNER TO u3;

--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: u3
--

ALTER SEQUENCE public.active_storage_variant_records_id_seq OWNED BY public.active_storage_variant_records.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: u3
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO u3;

--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: u3
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO u3;

--
-- Name: topics; Type: TABLE; Schema: public; Owner: u3
--

CREATE TABLE public.topics (
    id bigint NOT NULL,
    name character varying,
    seq integer,
    user_id bigint,
    topic_id bigint,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    content text,
    cover_level integer DEFAULT 0,
    skip_child_seq boolean DEFAULT false,
    hide_child_seq boolean DEFAULT false
);


ALTER TABLE public.topics OWNER TO u3;

--
-- Name: topics_id_seq; Type: SEQUENCE; Schema: public; Owner: u3
--

CREATE SEQUENCE public.topics_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.topics_id_seq OWNER TO u3;

--
-- Name: topics_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: u3
--

ALTER SEQUENCE public.topics_id_seq OWNED BY public.topics.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: u3
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip character varying,
    last_sign_in_ip character varying,
    confirmation_token character varying,
    confirmed_at timestamp without time zone,
    confirmation_sent_at timestamp without time zone,
    unconfirmed_email character varying,
    failed_attempts integer DEFAULT 0 NOT NULL,
    unlock_token character varying,
    locked_at timestamp without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.users OWNER TO u3;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: u3
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO u3;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: u3
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: action_text_rich_texts id; Type: DEFAULT; Schema: public; Owner: u3
--

ALTER TABLE ONLY public.action_text_rich_texts ALTER COLUMN id SET DEFAULT nextval('public.action_text_rich_texts_id_seq'::regclass);


--
-- Name: active_storage_attachments id; Type: DEFAULT; Schema: public; Owner: u3
--

ALTER TABLE ONLY public.active_storage_attachments ALTER COLUMN id SET DEFAULT nextval('public.active_storage_attachments_id_seq'::regclass);


--
-- Name: active_storage_blobs id; Type: DEFAULT; Schema: public; Owner: u3
--

ALTER TABLE ONLY public.active_storage_blobs ALTER COLUMN id SET DEFAULT nextval('public.active_storage_blobs_id_seq'::regclass);


--
-- Name: active_storage_variant_records id; Type: DEFAULT; Schema: public; Owner: u3
--

ALTER TABLE ONLY public.active_storage_variant_records ALTER COLUMN id SET DEFAULT nextval('public.active_storage_variant_records_id_seq'::regclass);


--
-- Name: topics id; Type: DEFAULT; Schema: public; Owner: u3
--

ALTER TABLE ONLY public.topics ALTER COLUMN id SET DEFAULT nextval('public.topics_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: u3
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: action_text_rich_texts; Type: TABLE DATA; Schema: public; Owner: u3
--

COPY public.action_text_rich_texts (id, name, body, record_type, record_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: active_storage_attachments; Type: TABLE DATA; Schema: public; Owner: u3
--

COPY public.active_storage_attachments (id, name, record_type, record_id, blob_id, created_at) FROM stdin;
\.


--
-- Data for Name: active_storage_blobs; Type: TABLE DATA; Schema: public; Owner: u3
--

COPY public.active_storage_blobs (id, key, filename, content_type, metadata, service_name, byte_size, checksum, created_at) FROM stdin;
\.


--
-- Data for Name: active_storage_variant_records; Type: TABLE DATA; Schema: public; Owner: u3
--

COPY public.active_storage_variant_records (id, blob_id, variation_digest) FROM stdin;
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: u3
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	production	2021-06-16 04:38:32.743225	2021-06-16 04:38:32.743225
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: u3
--

COPY public.schema_migrations (version) FROM stdin;
20210616020113
20210616020535
20210616021249
20210616021250
20210616040209
20210616080204
20210617013438
20210618015716
\.


--
-- Data for Name: topics; Type: TABLE DATA; Schema: public; Owner: u3
--

COPY public.topics (id, name, seq, user_id, topic_id, created_at, updated_at, content, cover_level, skip_child_seq, hide_child_seq) FROM stdin;
3	Browser: Document, Events, Interfaces	2	1	1	2021-06-16 05:00:00.304801	2021-06-18 02:24:00.843538	Learning how to manage the browser page: add elements, manipulate their size and position, dynamically create interfaces and interact with the visitor.\r\n\r\n	3	f	f
4	Additional articles	3	1	1	2021-06-16 05:00:14.418496	2021-06-18 02:23:58.495047	List of extra topics that assume you've covered the first two parts of tutorial. There is no clear hierarchy here, you can read articles in the order you want.	3	f	f
116	Prototypal inheritance	1	1	52	2021-06-16 10:30:17.726754	2021-06-16 10:30:17.726754	\N	3	f	f
10	精通機器學習	\N	1	\N	2021-06-16 07:37:27.340123	2021-06-16 07:37:27.340123		3	f	f
11	導讀	\N	1	10	2021-06-16 07:37:48.718345	2021-06-16 07:37:48.718345		3	f	f
15	專家篇	3	1	12	2021-06-16 07:54:00.192187	2021-06-17 01:44:19.743982		1	f	f
5	An introduction	1	1	2	2021-06-16 06:07:17.273215	2021-06-16 10:05:59.86276		3	f	f
24	歷年比賽題目題型及成績	6	1	14	2021-06-16 07:55:35.490362	2021-06-18 02:49:46.366978	了解過往題型，有助得悉比賽難度及要求，亦能因應趨勢預測將來比賽題型。\r\n\r\n比賽期間扣分得分細節可以參閱專家篇。\r\n	1	f	f
6	An Introduction to JavaScript	1	1	5	2021-06-16 06:07:27.136689	2021-06-16 10:06:17.882248		3	f	f
7	Manuals and specifications	2	1	5	2021-06-16 07:25:46.440196	2021-06-16 10:06:26.361939		3	f	f
16	學生篇	4	1	12	2021-06-16 07:54:08.760977	2021-06-17 01:44:47.141483		1	f	f
33	討論區	6	1	15	2021-06-16 07:59:40.800956	2021-06-17 13:35:51.488047	成為專家後經勞工事務局獲得 WorldSkills Forums （http://forums.worldskills.org）帳號，專家要經常登入查看最新動向，所有更新也會經 email 每日發送給專家。\r\n\r\n要保持主動上討論區。\r\n\r\n因為對比賽題目、評分表、人員或行程安排等，都會事先在討論區上公佈及討論。而且，討論區上亦會有投票決定。\r\n\r\n如果不多上討論區，便會錯過表決及表達意見的機會。\r\n\r\n在比賽期間，討論區亦會非常活躍。要抽空多於討論區獲取最新項目文件及討論下屆技術描述文件的更新。\r\n	3	f	f
17	Appendix	5	1	12	2021-06-16 07:54:16.797001	2021-06-17 01:44:54.869766		1	f	f
1	The Modern JavaScript Tutorial	\N	1	\N	2021-06-16 04:59:35.58604	2021-06-18 02:24:25.031243	How it's done now. From the basics to advanced topics with simple, but detailed explanations.	2	t	t
20	競賽概況	1	1	13	2021-06-16 07:54:47.680223	2021-06-17 12:54:18.323678	關於世界職業技能競賽的歷史、背景及澳門區發展情況。	1	f	f
99	Object.keys, values, entries	9	1	49	2021-06-16 10:28:31.930129	2021-06-16 10:28:31.930129	\N	3	f	f
100	Destructuring assignment	10	1	49	2021-06-16 10:28:37.224765	2021-06-16 10:28:37.224765	\N	3	f	f
101	Date and time	11	1	49	2021-06-16 10:28:40.280297	2021-06-16 10:28:40.280297	\N	3	f	f
102	JSON methods, toJSON	12	1	49	2021-06-16 10:28:43.669026	2021-06-16 10:28:43.669026	\N	3	f	f
103	Recursion and stack	1	1	50	2021-06-16 10:29:09.033916	2021-06-16 10:29:09.033916	\N	3	f	f
104	Rest parameters and spread syntax	2	1	50	2021-06-16 10:29:12.909946	2021-06-16 10:29:12.909946	\N	3	f	f
105	Variable scope, closure	3	1	50	2021-06-16 10:29:15.938015	2021-06-16 10:29:15.938015	\N	3	f	f
106	The old "var"	4	1	50	2021-06-16 10:29:19.588433	2021-06-16 10:29:19.588433	\N	3	f	f
107	Global object	5	1	50	2021-06-16 10:29:23.329754	2021-06-16 10:29:23.329754	\N	3	f	f
108	Function object, NFE	6	1	50	2021-06-16 10:29:27.181678	2021-06-16 10:29:27.181678	\N	3	f	f
109	The "new Function" syntax	7	1	50	2021-06-16 10:29:31.830599	2021-06-16 10:29:31.830599	\N	3	f	f
110	Scheduling: setTimeout and setInterval	8	1	50	2021-06-16 10:29:35.845795	2021-06-16 10:29:35.845795	\N	3	f	f
111	Decorators and forwarding, call/apply	9	1	50	2021-06-16 10:29:40.379749	2021-06-16 10:29:40.379749	\N	3	f	f
112	Function binding	10	1	50	2021-06-16 10:29:44.615995	2021-06-16 10:29:44.615995	\N	3	f	f
113	Arrow functions revisited	11	1	50	2021-06-16 10:29:49.030144	2021-06-16 10:29:49.030144	\N	3	f	f
114	Property flags and descriptors	1	1	51	2021-06-16 10:30:00.958807	2021-06-16 10:30:00.958807	\N	3	f	f
115	Property getters and setters	2	1	51	2021-06-16 10:30:05.197524	2021-06-16 10:30:05.197524	\N	3	f	f
117	F.prototype	2	1	52	2021-06-16 10:30:22.999445	2021-06-16 10:30:22.999445	\N	3	f	f
118	Native prototypes	3	1	52	2021-06-16 10:30:27.89126	2021-06-16 10:30:27.89126	\N	3	f	f
119	Prototype methods, objects without __proto__	4	1	52	2021-06-16 10:30:32.712289	2021-06-16 10:30:32.712289	\N	3	f	f
120	Class basic syntax	1	1	53	2021-06-16 10:30:43.436822	2021-06-16 10:30:43.436822	\N	3	f	f
121	Class inheritance	2	1	53	2021-06-16 10:30:48.120512	2021-06-16 10:30:48.120512	\N	3	f	f
122	Static properties and methods	3	1	53	2021-06-16 10:30:52.430767	2021-06-16 10:30:52.430767	\N	3	f	f
123	Private and protected properties and methods	4	1	53	2021-06-16 10:30:56.974884	2021-06-16 10:30:56.974884	\N	3	f	f
124	Extending built-in classes	5	1	53	2021-06-16 10:31:00.44481	2021-06-16 10:31:00.44481	\N	3	f	f
125	Class checking: "instanceof"	6	1	53	2021-06-16 10:31:04.518962	2021-06-16 10:31:04.518962	\N	3	f	f
126	Mixins	7	1	53	2021-06-16 10:31:07.39759	2021-06-16 10:31:07.39759	\N	3	f	f
31	重要角色	5	1	15	2021-06-16 07:59:07.846075	2021-06-17 13:34:50.608226		1	f	f
30	練習注意	10	1	15	2021-06-16 07:59:00.394853	2021-06-17 13:37:16.983199	比賽不能上網，遇到問題需要查詢時都是使用本地軟件進行，平時要盡量模擬比賽環境，避免網絡依賴。\r\n\r\n主張練習不同的變化，而不是死背某道題。\r\n\r\n可以就某個題目或題型。\r\n\r\n一些特定程序碼還是需要背熟。\r\n	3	f	f
41	官方網上選手區域	4	1	16	2021-06-16 08:01:08.088008	2021-06-17 13:45:12.225587	一旦成為澳門代表選手後，將獲得一組登入官方網上選手區域的帳號，帳號一樣由勞工事務局提供。	3	f	f
36	Lesson Learned	13	1	15	2021-06-16 08:00:09.119092	2021-06-17 13:41:52.154134	此部份記錄多屆學懂以後再多加留意的地方。所述內容不只針對本澳培訓及擔任專家，亦包括作為 SMT 一員下管理整個比賽的經驗教訓。	1	f	f
13	世賽篇	1	1	12	2021-06-16 07:53:28.432302	2021-06-17 23:09:00.053231	此部份概述世界賽的背景，宏觀的。\r\n\r\n	1	f	f
38	競賽期間	6	1	16	2021-06-16 08:00:39.624123	2021-06-17 13:47:20.941398	競賽期間，需要外出到比賽地區。前後長達十日。故除了比賽知識外，亦有出外所需設備及飲食注意事項。\r\n\r\n一定要與專家保持聯繫。\r\n	1	f	f
44	Code editors	3	1	5	2021-06-16 10:08:02.225738	2021-06-16 10:08:02.225738	\N	3	f	f
45	Developer console	4	1	5	2021-06-16 10:08:09.684775	2021-06-16 10:08:09.684775	\N	3	f	f
46	JavaScript Fundamentals	2	1	2	2021-06-16 10:08:27.066909	2021-06-16 10:08:27.066909	\N	3	f	f
47	Code quality	3	1	2	2021-06-16 10:08:32.63444	2021-06-16 10:08:32.63444	\N	3	f	f
48	Objects: the basics	4	1	2	2021-06-16 10:08:37.939752	2021-06-16 10:08:37.939752	\N	3	f	f
49	Data types	5	1	2	2021-06-16 10:08:42.708788	2021-06-16 10:08:42.708788	\N	3	f	f
50	Advanced working with functions	6	1	2	2021-06-16 10:08:48.40055	2021-06-16 10:08:48.40055	\N	3	f	f
51	Object properties configuration	7	1	2	2021-06-16 10:08:54.430221	2021-06-16 10:08:54.430221	\N	3	f	f
52	Prototypes, inheritance	8	1	2	2021-06-16 10:08:59.281096	2021-06-16 10:08:59.281096	\N	3	f	f
53	Classes	9	1	2	2021-06-16 10:09:04.461572	2021-06-16 10:09:04.461572	\N	3	f	f
54	Error handling	10	1	2	2021-06-16 10:09:10.211001	2021-06-16 10:09:10.211001	\N	3	f	f
55	Promises, async/await	11	1	2	2021-06-16 10:09:15.08066	2021-06-16 10:09:15.08066	\N	3	f	f
56	Generators, advanced iteration	12	1	2	2021-06-16 10:09:20.095178	2021-06-16 10:09:20.095178	\N	3	f	f
57	Modules	13	1	2	2021-06-16 10:09:24.844847	2021-06-16 10:09:24.844847	\N	3	f	f
58	Miscellaneous	14	1	2	2021-06-16 10:09:29.469617	2021-06-16 10:09:29.469617	\N	3	f	f
59	Hello, world!	1	1	46	2021-06-16 10:10:16.797672	2021-06-16 10:10:16.797672	\N	3	f	f
60	Code structure	2	1	46	2021-06-16 10:10:25.386127	2021-06-16 10:10:25.386127	\N	3	f	f
61	The modern mode, "use strict"	3	1	46	2021-06-16 10:10:31.001701	2021-06-16 10:10:31.001701	\N	3	f	f
62	Variables	4	1	46	2021-06-16 10:10:35.510665	2021-06-16 10:10:35.510665	\N	3	f	f
63	Data types	5	1	46	2021-06-16 10:10:40.46623	2021-06-16 10:10:40.46623	\N	3	f	f
64	Interaction: alert, prompt, confirm	6	1	46	2021-06-16 10:10:44.753091	2021-06-16 10:10:44.753091	\N	3	f	f
65	Type Conversions	7	1	46	2021-06-16 10:10:53.54021	2021-06-16 10:10:53.54021	\N	3	f	f
66	Basic operators, maths	8	1	46	2021-06-16 10:10:58.135619	2021-06-16 10:10:58.135619	\N	3	f	f
67	Comparisons	9	1	46	2021-06-16 10:11:02.544555	2021-06-16 10:11:02.544555	\N	3	f	f
68	Conditional branching: if, '?'	10	1	46	2021-06-16 10:11:07.783178	2021-06-16 10:11:07.783178	\N	3	f	f
69	Logical operators	11	1	46	2021-06-16 10:11:12.461331	2021-06-16 10:11:12.461331	\N	3	f	f
70	Nullish coalescing operator '??'	12	1	46	2021-06-16 10:11:16.611268	2021-06-16 10:11:16.611268	\N	3	f	f
71	Loops: while and for	13	1	46	2021-06-16 10:11:22.307277	2021-06-16 10:11:22.307277	\N	3	f	f
72	The "switch" statement	14	1	46	2021-06-16 10:11:26.135891	2021-06-16 10:11:26.135891	\N	3	f	f
73	Functions	15	1	46	2021-06-16 10:11:30.532203	2021-06-16 10:11:30.532203	\N	3	f	f
74	Function expressions	16	1	46	2021-06-16 10:11:34.972445	2021-06-16 10:11:34.972445	\N	3	f	f
75	Arrow functions, the basics	17	1	46	2021-06-16 10:11:40.223201	2021-06-16 10:11:40.223201	\N	3	f	f
76	JavaScript specials	18	1	46	2021-06-16 10:11:45.303115	2021-06-16 10:11:45.303115	\N	3	f	f
77	Debugging in the browser	1	1	47	2021-06-16 10:19:49.625783	2021-06-16 10:19:49.625783	\N	3	f	f
78	Coding Style	2	1	47	2021-06-16 10:19:54.615228	2021-06-16 10:19:54.615228	\N	3	f	f
79	Comments	3	1	47	2021-06-16 10:19:59.385139	2021-06-16 10:19:59.385139	\N	3	f	f
80	Ninja code	4	1	47	2021-06-16 10:20:02.607699	2021-06-16 10:20:02.607699	\N	3	f	f
81	Automated testing with Mocha	5	1	47	2021-06-16 10:20:07.013045	2021-06-16 10:20:07.013045	\N	3	f	f
82	Polyfills and transpilers	6	1	47	2021-06-16 10:20:10.829589	2021-06-16 10:20:10.829589	\N	3	f	f
83	Objects	1	1	48	2021-06-16 10:20:23.433834	2021-06-16 10:20:23.433834	\N	3	f	f
84	Object references and copying	2	1	48	2021-06-16 10:20:28.537174	2021-06-16 10:20:28.537174	\N	3	f	f
85	Garbage collection	3	1	48	2021-06-16 10:27:21.155087	2021-06-16 10:27:21.155087	\N	3	f	f
86	Object methods, "this"	4	1	48	2021-06-16 10:27:26.972231	2021-06-16 10:27:26.972231	\N	3	f	f
87	Constructor, operator "new"	5	1	48	2021-06-16 10:27:30.43255	2021-06-16 10:27:30.43255	\N	3	f	f
88	Optional chaining '?.'	6	1	48	2021-06-16 10:27:34.069142	2021-06-16 10:27:34.069142	\N	3	f	f
89	Symbol type	7	1	48	2021-06-16 10:27:37.941975	2021-06-16 10:27:37.941975	\N	3	f	f
90	Object to primitive conversion	8	1	48	2021-06-16 10:27:42.215124	2021-06-16 10:27:42.215124	\N	3	f	f
91	Methods of primitives	1	1	49	2021-06-16 10:28:01.38938	2021-06-16 10:28:01.38938	\N	3	f	f
92	Numbers	2	1	49	2021-06-16 10:28:04.622812	2021-06-16 10:28:04.622812	\N	3	f	f
93	Strings	3	1	49	2021-06-16 10:28:07.980362	2021-06-16 10:28:07.980362	\N	3	f	f
94	Arrays	4	1	49	2021-06-16 10:28:12.728469	2021-06-16 10:28:12.728469	\N	3	f	f
95	Array methods	5	1	49	2021-06-16 10:28:16.70136	2021-06-16 10:28:16.70136	\N	3	f	f
96	Iterables	6	1	49	2021-06-16 10:28:20.493046	2021-06-16 10:28:20.493046	\N	3	f	f
97	Map and Set	7	1	49	2021-06-16 10:28:23.473551	2021-06-16 10:28:23.473551	\N	3	f	f
98	WeakMap and WeakSet	8	1	49	2021-06-16 10:28:27.1544	2021-06-16 10:28:27.1544	\N	3	f	f
127	Error handling, "try...catch"	1	1	54	2021-06-16 10:31:20.695318	2021-06-16 10:31:20.695318	\N	3	f	f
128	Custom errors, extending Error	2	1	54	2021-06-16 10:31:26.142697	2021-06-16 10:31:26.142697	\N	3	f	f
129	Introduction: callbacks	1	1	55	2021-06-16 10:31:37.034796	2021-06-16 10:31:37.034796	\N	3	f	f
130	Promise	2	1	55	2021-06-16 10:31:42.763291	2021-06-16 10:31:42.763291	\N	3	f	f
131	Promises chaining	3	1	55	2021-06-16 10:31:47.439701	2021-06-16 10:31:47.439701	\N	3	f	f
132	Error handling with promises	4	1	55	2021-06-16 10:31:54.911641	2021-06-16 10:31:54.911641	\N	3	f	f
133	Promise API	5	1	55	2021-06-16 10:31:59.244387	2021-06-16 10:31:59.244387	\N	3	f	f
134	Promisification	6	1	55	2021-06-16 10:32:03.164149	2021-06-16 10:32:03.164149	\N	3	f	f
135	Microtasks	7	1	55	2021-06-16 10:32:06.880912	2021-06-16 10:32:06.880912	\N	3	f	f
136	Async/await	8	1	55	2021-06-16 10:32:10.798352	2021-06-16 10:32:10.798352	\N	3	f	f
137	Generators	1	1	56	2021-06-16 10:32:21.03644	2021-06-16 10:32:21.03644	\N	3	f	f
138	Async iteration and generators	2	1	56	2021-06-16 10:32:29.326232	2021-06-16 10:32:29.326232	\N	3	f	f
139	Modules, introduction	1	1	57	2021-06-16 10:32:38.845124	2021-06-16 10:32:38.845124	\N	3	f	f
140	Export and Import	2	1	57	2021-06-16 10:32:42.416094	2021-06-16 10:32:42.416094	\N	3	f	f
141	Dynamic imports	3	1	57	2021-06-16 10:32:45.856175	2021-06-16 10:32:45.856175	\N	3	f	f
142	Proxy and Reflect	1	1	58	2021-06-16 10:32:55.595695	2021-06-16 10:32:55.595695	\N	3	f	f
143	Eval: run a code string	2	1	58	2021-06-16 10:32:59.513469	2021-06-16 10:32:59.513469	\N	3	f	f
144	Currying	3	1	58	2021-06-16 10:33:03.066912	2021-06-16 10:33:03.066912	\N	3	f	f
145	Reference Type	4	1	58	2021-06-16 10:33:07.154629	2021-06-16 10:33:07.154629	\N	3	f	f
146	BigInt	5	1	58	2021-06-16 10:33:10.445263	2021-06-16 10:33:10.445263	\N	3	f	f
148	Installation	1	1	147	2021-06-17 02:09:32.908652	2021-06-17 02:09:32.908652	\N	0	f	f
149	Setup Cap Deploy for Rails	2	1	147	2021-06-17 02:09:43.696662	2021-06-17 02:09:43.696662	\N	0	f	f
150	開機啟動 fisco	3	1	147	2021-06-17 02:09:55.725398	2021-06-17 02:09:55.725398	\N	0	f	f
151	Introduction to Ruby on Rails	4	1	147	2021-06-17 02:10:08.998763	2021-06-17 02:10:08.998763	\N	0	f	f
258	营养素	1	1	257	2021-06-17 22:52:11.090969	2021-06-17 22:52:11.090969	营养素有42种，一说50种的（噱头而已）。任何一本营养学的书，翻开来，必讲营养素，这个是基础。就像字母表、元素周期表一样。后面的千变万化都是和营养素有关。\r\n\r\n- 各种营养素“化合”形成了食物，研究食物也是把它分解成营养素；\r\n- 各种营养素“搭建”了人体，人的各种疾病和缺陷大都和营养有关，可以通过营养治疗。\r\n- 食物通过营养素作用于人体，人通过食物来获取营养素。	0	f	f
152	Ruby on Rails	1	1	151	2021-06-17 02:10:25.621326	2021-06-17 02:10:25.621326	\N	0	f	f
153	Rails is a framework	2	1	151	2021-06-17 02:10:31.931495	2021-06-17 02:10:31.931495	\N	0	f	f
154	Convention over Configuration	3	1	151	2021-06-17 02:10:42.791524	2021-06-17 02:10:42.791524	\N	0	f	f
155	Don't Repeat Yourself (DRY)	4	1	151	2021-06-17 02:10:54.210583	2021-06-17 02:10:54.210583	\N	0	f	f
156	開機啟動 hola-college (hola-wallet 類似)	1	1	150	2021-06-17 02:11:57.764983	2021-06-17 02:11:57.764983	\N	0	f	f
157	開機啟動 cert-api	2	1	150	2021-06-17 02:12:04.077828	2021-06-17 02:12:04.077828	\N	0	f	f
158	設置本地 Cap Deploy 和開機自啟動	1	1	149	2021-06-17 02:12:27.582984	2021-06-17 02:12:27.582984	\N	0	f	f
159	設置本地 Git 倉庫	2	1	149	2021-06-17 02:12:37.533604	2021-06-17 02:12:37.533604	\N	0	f	f
160	提交更新到本地倉庫	3	1	149	2021-06-17 02:12:44.815233	2021-06-17 02:12:44.815233	\N	0	f	f
161	設置 cert-api 產品環境	4	1	149	2021-06-17 02:12:55.593294	2021-06-17 02:12:55.593294	\N	0	f	f
162	更新 Deploy 環境的設定代碼	5	1	149	2021-06-17 02:13:09.968061	2021-06-17 02:13:09.968061	\N	0	f	f
163	檢查產品環境	6	1	149	2021-06-17 02:13:17.762086	2021-06-17 02:13:17.762086	\N	0	f	f
164	安裝 Nginx	7	1	149	2021-06-17 02:13:22.741564	2021-06-17 02:13:22.741564	\N	0	f	f
165	複製配置檔	8	1	149	2021-06-17 02:13:30.292424	2021-06-17 02:13:30.292424	\N	0	f	f
169	搭建單群組 4 節點聯盟鏈	4	1	148	2021-06-17 02:22:35.973537	2021-06-17 02:22:35.973537	\N	0	f	f
170	FISCO BCOS 技術文檔	5	1	148	2021-06-17 02:22:45.959962	2021-06-17 02:22:45.959962	\N	0	f	f
171	搭建第一個區塊鏈網絡	6	1	148	2021-06-17 02:23:00.087474	2021-06-17 02:23:00.087474	\N	0	f	f
172	下載和使用控制台	7	1	148	2021-06-17 02:23:25.249848	2021-06-17 02:23:25.249848	\N	0	f	f
173	安裝 JAVA	8	1	148	2021-06-17 02:23:32.101739	2021-06-17 02:23:32.101739	\N	0	f	f
174	複製節點證書	9	1	148	2021-06-17 02:23:41.969963	2021-06-17 02:23:41.969963	\N	0	f	f
175	啟動節點	10	1	148	2021-06-17 02:23:46.457613	2021-06-17 02:23:46.457613	\N	0	f	f
176	安裝 MariaDB	11	1	148	2021-06-17 02:23:52.680377	2021-06-17 02:23:52.680377	\N	0	f	f
177	建立 db 和 user	12	1	148	2021-06-17 02:24:00.353975	2021-06-17 02:24:00.353975	\N	0	f	f
178	安裝 weidentity 網頁管理工具	13	1	148	2021-06-17 02:24:09.793104	2021-06-17 02:24:09.793104	\N	0	f	f
179	安裝 weidentity SDK Adapter	14	1	148	2021-06-17 02:24:20.920002	2021-06-17 02:24:20.920002	\N	0	f	f
180	Cert API	15	1	148	2021-06-17 02:24:29.670969	2021-06-17 02:24:29.670969	\N	0	f	f
182	安裝會用到的 software	2	1	166	2021-06-17 03:31:32.247404	2021-06-17 03:32:58.30633	```\r\nwebmaster@endpoint:~/fisco$ sudo apt install unzip\r\n```	0	f	f
181	更新系統	1	1	166	2021-06-17 03:31:25.83794	2021-06-17 03:32:11.064661	```\r\nwebmaster@endpoint:~$ sudo apt update\r\nwebmaster@endpoint:~$ sudo apt upgrade\r\nwebmaster@endpoint:~$ sudo reboot\r\n```	0	f	f
183	設置時區	3	1	166	2021-06-17 03:31:37.678005	2021-06-17 03:33:18.155934	```\r\n$ sudo timedatectl set-timezone Asia/Macau\r\n```	0	f	f
166	準備 Ubuntu	1	1	148	2021-06-17 02:14:31.136886	2021-06-17 03:33:53.545893	使用最新的 20.04 版本 ubuntu	2	f	f
235	SCM - Skill Competition Manager	1	1	31	2021-06-17 13:34:33.970763	2021-06-17 13:34:33.970763	項目經理，2019 年 Web Technologies 的 SCM 是來自中心的麥誠軒擔任。\r\n	0	f	f
236	CE - Chief Expert	2	1	31	2021-06-17 13:34:45.693078	2021-06-17 13:34:45.693078	總專家，2019 年由巴西的 Marcelo 擔任，安排和主持競賽期間的各項會議、專家分組等工作。\r\n	0	f	f
237	DEC - Deputy Chief Expert	3	1	31	2021-06-17 13:35:06.152492	2021-06-17 13:35:06.152492	副總專家，2019年由韓國的 Ryu 擔任，協助總專家進行競賽期間的各項安排。\r\n\r\nSCM、CE、DCE 合組為 SMT—Skill Management Team。\r\n	0	f	f
147	IN16 eWallet Teaching Material	\N	1	\N	2021-06-17 02:04:05.408441	2021-06-18 02:26:47.024933		1	f	t
186	比賽目的	3	1	20	2021-06-17 04:55:28.906683	2021-06-17 04:55:28.906683	在 WorldSkills 的宗旨入面，沒有出現「比賽」二字，他們追求的是比賽是手段，提升地區的職業技能水平及重視是目的。\r\n\r\n當不同的國家地區，通過鼓勵年青人參加技能競賽時，便會對該地區對於職業技能的重視有所提高。從而，亦令到家長會知道，自己的子女除了走傳統大學這一條升學老師內，亦可以掌握一技之長，並在參賽過程中與世界各地選手切磋，追求超過 500 分以獲得卓越表現奬。甚至爭取頭三名奬牌已獲得世界性肯定。將來亦可以在相關技能變成終身職業。\r\n\r\n以網站設計為例，歷年來的參賽者，在升大學時都會繼續以電腦專科作為主科，畢業後繼續投身網站設計及手機應用程式設計這一行業。	0	f	f
193	主要資訊網站	3	1	13	2021-06-17 12:53:27.492144	2021-06-17 12:53:45.278277	世賽主頁： https://worldskills.org/\r\n官方 Media：https://www.flickr.com/photos/worldskills/\r\nYoutube：https://www.youtube.com/user/WorldSkillsTV\r\nFacebook：https://www.facebook.com/WorldSkills/	0	f	f
184	背景	1	1	20	2021-06-17 04:54:50.48184	2021-06-17 12:56:22.338833	二次大戰後，西班牙國內技術工人大量短缺，為吸引一些年青人加入行 業，提升人力資源，於是在 1947 年舉辦全國職業技能競賽，取得圓滿成功， 其後西班牙與葡萄牙合作，在 1950 年於西班牙共同舉辦第一屆世界技能大賽 (現稱:世界職業技能競賽)，並成立國際職業技能訓練組織(現稱:世界技能組 織)，陸續邀請德國、英國等歐洲國家加入世界職業技能競賽。至 2015 年的 成員國已有 75 個國家/地區。其宗旨是讓世界各地 22 歲或以下的青少年聚首 一堂(部份項目的選手年齡為 25 歲或以上)，互相切磋技能、觀摩及增進友 誼，同時通過競賽，加強世界各地職業培訓的資訊交流，促進各地職業教育 之發展。\r\n\r\n（文字來源：流行時裝技術項目手冊）	0	f	f
185	競賽介紹	2	1	20	2021-06-17 04:55:13.698709	2021-06-17 12:56:34.182472	競賽每兩年舉行一次，每屆賽事都吸引上千青少年參加，而每名參賽者 一生只可參加一次，競賽更被喻為是世界職業培訓界的奧林匹克。每屆競賽 均會安排在不同的國家/地區舉行，至今已舉辦至 43 屆，而第 43 屆已於 2015 年巴西聖保羅舉行，共有 50 個競賽項目，吸引 59 個國家/地區參與，參賽人 數達 1189 人。\r\n\r\n（文字來源：流行時裝技術項目手冊）	0	f	f
187	澳門參與情況	4	1	20	2021-06-17 04:55:44.92617	2021-06-17 12:56:45.010403	澳門於 1983 年加入國際職業技能訓練組織，成為其成員國/地區之一。 澳門生產力暨科技轉移中心從第 37 屆世界職業技能競賽開始便得到勞工事務局的邀請，擔任時裝項目的培訓單位。（文字來源：流行時裝技術項目手冊）\r\n\r\n澳門區參賽及獲獎情況：https://www.dsal.gov.mo/worldskills/zh_tw/standard/winning/folder/root.html	0	f	f
188	成員國及地區	5	1	20	2021-06-17 04:56:03.069326	2021-06-17 12:56:53.842192	截至 2019 年 8 月，世界技能組織共有 82 個成員國及地區。每個成員國及地區都有一個代碼，參與競賽人員需要熟記各地區名稱及代碼，以免交流時出現不知其地方的尷尬場面。\r\n\r\nAE - United Arab Emirates 阿拉伯聯合酋長國\r\nAM - Armenia 亞美尼亞\r\nAR - Argentina 阿根廷\r\nAT - Austria 奧地利\r\nAU - Australia 澳大利亞\r\nBB - Barbados 巴巴多斯\r\nBD - Bangladesh 孟加拉\r\nBE - Belgium 比利時\r\nBH - Kingdom of Bahrain 巴林王國\r\nBN - Brunei Darussalam 文萊達魯薩蘭國\r\nBR - Brazil 巴西\r\nBY - Belarus 白俄羅斯\r\nCA - Canada 加拿大\r\nCH - Switzerland 瑞士\r\nCL - Chile 智利\r\nCN - China 中國\r\nHR - Croatia 克羅地亞\r\nCO - Colombia 哥倫比亞\r\nCR - Costa Rica 哥斯達黎加\r\nDE - Germany 德國\r\nGH - Ghana 加納\r\nDK - Denmark 丹麥\r\nDO - Dominican Republic 多米尼加共和國\r\nEC - Ecuador 厄瓜多爾\r\nEE - Estonia 愛沙尼亞\r\nEG - Egypt 埃及\r\nES - Spain 西班牙\r\nFI - Finland 芬蘭\r\nFR - France 法國\r\nGE - Georgia 格魯尼亞\r\nHK - Hong Kong, China 中國香港\r\nHR - Croatia 克羅地亞\r\nHU - Hungary 匈牙利\r\nID - Indonesia 印度尼西亞\r\nIE - Ireland 愛爾蘭\r\nIL - Israel 以色列\r\nIN - India 印度\r\nIR - Iran 伊朗\r\nIS - Iceland 冰島\r\nIT - South Tyrol, Italy 意大利南蒂羅爾\r\nJM - Jamaica 牙買加\r\nJP - Japan 日本\r\nKR - Korea 韓國\r\nKW - Kuwait 科威特\r\nKZ - Kazakhstan 哈薩克斯坦\r\nLI - P.of Liechtenstein 列支敦士登公國\r\nLK - Sri Lanka 斯里蘭卡\r\nLU - Luxembourg 盧森堡\r\nLV - Latvia 拉脫維亞\r\nMA - Morocco 摩洛哥\r\nMN - Mongolia 蒙古國\r\nMO - Macao, China 中國澳門\r\nMX - Mexico 墨西哥\r\nMY - Malaysia 馬來西亞\r\nNA - Namibia 納米比亞\r\nNL - Netherlands 荷蘭\r\nNO - Norway 挪威\r\nNZ - New Zealand 新西蘭\r\nOM - Oman 阿曼\r\nPH - Philippines 菲律賓\r\nPK - Pakistan 巴基斯坦\r\nPL - Poland 波蘭\r\nPS - Palestine 巴勒斯坦\r\nPT - Portugal 葡萄牙\r\nPY - Paraguay 巴拉圭\r\nRO - Romania 羅馬尼亞\r\nRU - Russia 俄羅斯\r\nSA - Saudi Arabia 沙特阿拉伯\r\nSE - Sweden 瑞典\r\nSG - Singapore 新加坡\r\nTH - Thailand 泰國\r\nTN - Tunisia 突尼斯\r\nTR - Turkey 土耳其\r\nTT - Trinidad and Tobago 特立尼達和多巴哥\r\nTW - Chinese Taipei 中華台北\r\nUG - Uganda 烏干達\r\nUK - United Kingdom 英國\r\nUS - United States of America 美國\r\nUA - Ukraine 烏克蘭\r\nVE - Venezuela 委內瑞拉\r\nVN - Vietnam 越南\r\nZA - South Africa 南非\r\nZM - Zambia 贊比亞	0	f	f
263	From zero to deploy	1	1	262	2021-06-18 01:01:55.50477	2021-06-18 01:01:55.50477		0	f	f
261	Ruby on Rails Guide	\N	1	\N	2021-06-17 23:35:37.039147	2021-06-18 03:04:35.506903	Ruby on Rails Guides (v6.1.3.2)\r\nThese are the new guides for Rails 6.1 based on v6.1.3.2. These guides are designed to make you immediately productive with Rails, and to help you understand how all of the pieces fit together.\r\n\r\nhttps://guides.rubyonrails.org/	1	f	t
189	Measurement 客觀評分	1	1	21	2021-06-17 04:58:20.004032	2021-06-17 13:04:47.815052	客觀評分原本稱為 Objective，於 2017 年改名叫 Measurement，常見於 Server Side、API 等題目。\r\n\r\n在客觀評分中，只能按 Marking Scheme 文字描述給分或扣分。\r\n\r\n即不能主觀地比較做得好或不好，只求有沒有做到評分標準所寫的要求。\r\n\r\n客觀評分中也有部分會註明扣分機制，例如要求做到幾點，錯一點扣除 0.5分，如有註明則按規則進行扣分，否則只要出錯就會全部扣除。\r\n\r\n客觀評分時，評分小組裡所有專家一齊根據 Marking Scheme 進行評分並由任意一人記錄，這麼做的原因是客觀評價只有『做到』和『沒做到』題目要求兩種狀態，不應且不會出現部分人認為『做到』而其他人認為『沒做到』的情況。\r\n	0	f	f
259	書單	2	1	257	2021-06-17 22:52:45.384419	2021-06-17 23:00:19.718039	教科書\r\n\r\n《公共营养师》比较浅显\r\n《营养与食品卫生学》好一點\r\n《中国营养科学全书》最全面\r\n《营养学，概念与争论》國外，理論性很強\r\n\r\n食物营养\r\n\r\n《食物营养与配餐》\r\n《中国功能食品原料基本成分数据表》\r\n《食物与厨艺》\r\n\r\n\r\n人与食物/营养\r\n\r\n《中國居民膳食指南2016》\r\n《吃的营养科学观》 1954年出版，經典\r\n《饥饿的大脑》\r\n\r\n\r\n其他\r\n\r\n《未来食物》\r\n《饮食的迷思》\r\n《吃的美德》\r\n\r\n周邊\r\n\r\n《荷兰奶牛肉》、《黄油烙饼》、《旅食集》汪曾祺\r\n《随园食单》袁枚\r\n《美食与文明》\r\n《身体使用手册》\r\n	0	f	f
190	階段性分數 #廢棄	2	1	21	2021-06-17 04:58:35.411884	2021-06-17 13:06:00.614884	若符合描述所說的階段性分數，就按階段性分數計算，最少為零分，最多為該評分項的分數。中間的數值只能按階段描述計算。	0	f	f
191	Subjective 主觀評分 #廢棄	12	1	21	2021-06-17 04:58:46.59089	2021-06-17 13:07:32.678499	主觀評分由 1 至 10 分。\r\n\r\n主觀評分中，五位評審的分差必須在 4 分或以內。\r\n\r\n2015 年開始淡出，由 Judgement 分代替。	0	f	f
14	網站技術競賽篇	2	1	12	2021-06-16 07:53:52.977152	2021-06-17 23:10:31.01459	此部份詳述網站設計項目的背景。	1	f	f
264	A toy app	2	1	262	2021-06-18 01:02:16.039966	2021-06-18 01:02:16.039966		0	f	f
265	Mostly static pages	3	1	262	2021-06-18 01:02:32.596841	2021-06-18 01:02:32.596841		0	f	f
266	Rails-flavored Ruby	4	1	262	2021-06-18 01:02:46.174288	2021-06-18 01:02:46.174288		0	f	f
267	Filling in the layout	5	1	262	2021-06-18 01:02:58.917832	2021-06-18 01:02:58.917832		0	f	f
12	世界技能大賽 Skills #17 網站技術 項目手冊	\N	1	\N	2021-06-16 07:52:14.006247	2021-06-18 02:25:30.123413	第一版 2017-12-29，麥誠軒\r\n第二版 2019-12-06，鄭劍輝\r\n\r\n這本手冊包括 Web Technologies 專家需要注意的事項。\r\n\r\n2019年項目由 Web Design and Development 更名為 Web Technologies	1	f	t
331	Maintenance Policy	1	1	330	2021-06-18 02:46:19.006931	2021-06-18 02:46:19.006931		0	f	f
196	Website Design 設計	1	1	22	2021-06-17 13:01:36.354651	2021-06-17 13:01:36.354651	設計題目通常需要學生利用繪圖軟件 Photoshop 或者 Adobe Illustrator 將網站設計製作成為展示圖片，2019 年允許選手使用 Adobe XD，在製作網頁及動畫上效率較高。\r\n\r\n選手需要為一個假設嘅客戶需求設計網頁，包括採用針對用者使用群的顏色，選擇適當及易讀的字型，設計內容架構及佈局。\r\n\r\n可以使用 Adobe XD 等原型工具，但比賽並沒有要求必須使用，成品只要表達到選手的設計理念即可。\r\n\r\n2019 年比賽的設計部分只要求出圖，沒有要求將結果實現出來。\r\n	0	f	f
209	2013 德國 Leipzig	7	1	24	2021-06-17 13:13:06.28982	2021-06-17 13:13:06.28982	參賽選手為謝俊昇，參賽時為培正中學升高一學生。專家及培訓導師為麥誠軒。\r\n\r\n謝俊昇原為培正 iOS 手機 App 開發班的學生，後來中麥誠軒教學時推介報名網站設計項目選拔，並𣊬速超越同班其他學生，以高分成績獲得澳門代表資格。\r\n\r\n賽題分為設計、佈局、前端、伺服器四大模組八個題目，每個題目二至三小時。\r\n\r\n成績\r\n\r\n金銀銅分佈：一金一銀一銅\r\n\r\n澳門成績：第二名，銀牌。第一名為南韓，第三名為伊朗。競賽期間發揮穩定，以 78 分成績完成四日賽題。\r\n\r\n澳門區選手發展：現在於美國學院就讀，準備升讀 UC Berkeley 資訊科技相關學科。\r\n	0	f	f
22	比賽範圍	4	1	14	2021-06-16 07:55:05.029199	2021-06-18 02:49:49.873555		0	f	f
197	Layout 排版	2	1	22	2021-06-17 13:02:06.120723	2021-06-17 13:02:06.120723	此範圍要求選手熟悉 HTML 內容結構及 CSS 版面及視覺效覺的運用。澳門專家是 2013, 2015 於這個分項擔任出題組長。\r\n\r\nCSS 排版一般不會提供第三方排版工具，選手必須能獨立從無到有構建起網站所需要的排版。主要使用 float 來達成，但近年更多要求使用 flexbox 來製作版面佈局。2019 年 Grid 技術已經成熟，不過比賽期間已經不再限制選手使用什麼技術。\r\n\r\nCSS3 內的不同視覺效果、特效亦是考核範圍之一，包括運用 box-shadow, text-shadow, gradient, transition, transform, animation, 3D effects 等。\r\n	0	f	f
198	Front-end Development 前端開發	3	1	22	2021-06-17 13:02:26.164152	2021-06-17 13:02:26.164152	此範圍以 JavaScript 為主，亦包括 SVG 或其他前端技術應用。\r\n\r\n2019 年前端開發主要分兩部分，一部分是使用 Angular / React / Vue 等前端框架配合後端 API 進行界面的實現。另一部分則是純 JavaScript 製作一個小應用。\r\n\r\nJS 應用部分往年以小工具或者小游戲製作為主，例如 2013 年的動態賣車介面，2015 年及 2017 年均為小遊戲。\r\n\r\n如果題目為小遊戲製作，每年製作的小遊戲類型都難以捉摸。以 2015 年為例，Pre Test Project 的小遊戲和最終使用的 Test Project 小遊戲，雖然望上去差不多，但實際技術要求是完全種不同的技術。JavaScript 小遊戲就是會有這種特性，所以訓練及練習都需要廣泛向不同方向發展，撰寫不同類型的小遊戲。\r\n\r\n2019年則是主要考核選手對事件（Events）的處理，遊戲因為需要描述大量的遊戲規則，大多數選手的母語不是英語，考遊戲容易演變成題目難以理解，而遊戲的操作方式相對又比較簡單，可以考核的點相對較少，因此這一屆不是出遊戲，而是寫一個鏈接 Slide 的工具，主要用到各種鼠標事件處理、SVG等技術。 \r\n	0	f	f
199	Back-end Development 後台開發	4	1	22	2021-06-17 13:02:49.951697	2021-06-17 13:02:49.951697	以考 PHP 為主，以後台連接數據庫，並按題目要求設定數據庫儲存資料的結構，然後處理後端與前端的資料傳遞，並根據功能要求適當修改數據庫資料，以達成題目中要求使用者能使用系統做到的功能。\r\n\r\n2015 起加入了 Framework 框架的使用。常見的框架有 Laravel 、 Yii 等，選手可以自選不同的框架進行比賽，2019年大部分選手是 Laravel，只有一兩位選手使用 Yii，現場遇到問題時都很難找到專家能夠協助。\r\n\r\nLaravel 當年以參考 Ruby on Rails 框架而設計，但到 5.0 版本以後，變化比以往大，所以練習可以集中在 5.0 之後。其特點是使用者群較大，網上教學較多及更新快。\r\n\r\nYii 是中國及俄羅斯較常用的 PHP 框架，其特點是有 Generator 生成器生成 CRUD 的操作。但使用人數逐漸減少。\r\n\r\n經過兩屆使用 PHP 框架後，都發現框架的設立與現場比賽環境設立都不太配合，導致兩屆都出現不同情況的問題，例如 2015 年的 Laravel composer CLI 環境及 2017 年的 Yii API 路徑及 JS CLI 環境。\r\n\r\n2019 年的  Server Side 部分題目由第三方出題，引入了自動化測試，題目的數量非常密集，大多數選手都不能在限定的時間內完成。\r\n	0	f	f
200	CMS	5	1	22	2021-06-17 13:03:09.716684	2021-06-17 13:03:09.716684	這是 2017 年新增加的模組。\r\n\r\n2019 年的仍然沿用 WordPress，由於 WordPress佔全球使用量達 35%，遠超其他 CMS 平台（不多於 5% 佔有量）預計將來會繼續使用 Wordpress 作考題。部分專家也有提議 CMS 不能只現定於 WordPress，不過可預見的未來不會有較大改變。\r\n\r\n技術要求選手可以製作 Wordpress 主題、使用各種 Wordpress plugin、編寫 Wordpress plugin、theme、修改主後台介面及功能等。\r\n\r\n相對於上一届，2019年 CMS 部分對於 Plugin、Theme 的開發部分已大量減少。\r\n	0	f	f
208	2011 英國 London	6	1	24	2021-06-17 13:12:42.638512	2021-06-17 13:12:42.638512	參賽選手為何文輝，參賽時就讀粵華中學。專家為麥誠軒，特訓課導師 Hebert Choi。\r\n\r\n賽題分為四日，佈局、設計、前端開發、伺服器開發四大題目。另外，第三日下午有 Surprise Project，要求選手利用 PHP 讀取 Web Service 上的 XML，再利用前端佈局技術呈現資料。當中 XML 資料為歷屆世賽不同項目的金銀銅成績。考驗選手列出記錄及製作互動選單的技巧及伺服器端處理數據的能力。\r\n\r\n成績\r\n\r\n金銀銅分佈：一金一銀一銅。\r\n\r\n澳門成績：第三名，銅牌。第一名巴西，第二名南韓。\r\n\r\n澳門區選手發展：剛於香港理工大學就讀電腦系畢業，進入 Microsoft 工作。\r\n	0	f	f
204	2003 瑞士 St. Galen	2	1	24	2021-06-17 13:10:48.273565	2021-06-17 13:11:13.618587	2003年網站設計作為示範比賽正式舉行，亦是澳門首次參與網站設計項目。\r\n\r\n代表選手麥誠軒，參賽時就讀培正中學中五。譚海西為專家，特訓課導師 Hebert Choi。麥誠軒自中二起便與 2005 年代表陳梓俊參與不同的本澳及地區性網站設計項目比賽，亦時有獲得本澳比賽獎項，為出席世界賽累積一定技術經驗。\r\n\r\n2003 年共有 12 個國家及地區參加，包括澳門、香港、南韓、荷蘭、德國等。\r\n\r\n賽題\r\n\r\n四天的比賽中，參賽者要完成一個網站。由空白到設計到使用 HTML 及 CSS 實現設計，至後台 PHP 及數據庫管理。\r\n\r\n比賽題目為設計世界職業技能競賽官方網站。冠軍選手於賽後獲得兩年大會網站製作合約。\r\n\r\n評分評分要求中，有一項為演示技巧分。這個分數就是要選手在比賽以外時間，將網站設計項目向在場的觀眾進行示範，以推廣網站設計這個項目。\r\n\r\n四天的比賽合共十六小時，其餘是兩、三小時的對外演示時間，及自由活動時間。學生可利用自由活動時間往其他競賽項目參觀，有助開拓視野。\r\n\r\n評審評分於四天比賽後開始，所以最後評分至很晚。\r\n\r\n成績\r\n\r\n金銀銅分佈：一金一銀三銅。\r\n\r\n澳門成績：同分並列銅牌。第一名南韓，第二名德國，銅牌另有荷蘭及葡萄牙。\r\n\r\n只有十二個選手參賽，本澳代表得到第五名，但分數與第四及第三名接近，五百分制相差兩分或以內。所以並列銅牌。\r\n\r\n澳門區選手發展：現在於澳門生產力暨科技轉移中心資訊系統及科技部任職，繼續作為專家參與世界職業技能競賽。\r\n	0	f	f
192	Judgement 行業標準評分	4	1	21	2021-06-17 04:59:00.130537	2021-06-17 13:05:34.323262	Judgement 類的評分則是一些主觀類的評分，常見於設計部分，這個評分的由 0 至 3 分。\r\n\r\n對於 0–3，大會有標準定義：\r\n\r\n0 分代表不符合或未達到行業標準。 \r\n1 分代表作品就要求所描述考核點，符合業界行業標準。 \r\n2 分代表比行業標準要好。\r\n3 分代表遠超行業標準需求。\r\n\r\n在制定 Marking Scheme 時，Judgement 的每個評分點都要詳細註明每個評分點所代表的意義，這是網上討論中最繁複的地方，也是現場評分前最容易引起無休止討論的地方。\r\n\r\n評分前小組內專家先會討論評分點內容，確保所有人對評分點的理解是一致的，然後一起查看每位選手的作品，每位專家各自在自己的平板電腦上輸入分數。\r\n\r\n行業標準主觀評分中，三位評審的分差必須在一分或以內。\r\n\r\n評分完成後，總專家會過來查看所有專家的評分，如評分相差兩份或以上，就會要求雙方提出評分的依據，本屆總專家表示傾向於拉高選手的分數，優先要求給出較低評分的專家發表意見。\r\n	0	f	f
201	評分難點	3	1	21	2021-06-17 13:07:02.172896	2021-06-17 13:07:44.956138	評分的難點是在評判每一個評分點時，即要求所有專家評判的是同一個物件，也要求專家在評判每一位選手時保持一致的標準。\r\n\r\n專家在評判時，找尋一個合適的標準是極其困難的，在進行評分時不可避免地會將當前的選手和之前的選手的作品進行比較，在遇到較好的作品後專家評判的標準不自覺被拉高，從而令隨後的評分偏低，反之亦然。\r\n\r\n正確的做法應該是保持所有選手的作品和專家自己認定某個標準進行評判，這個標準有可能過高或者過低，一旦開始評分，不論事先設好的標準過高或者過低都應該保持一致。\r\n\r\n競賽期間評分時，專家只能看到自己所在分組的評分點，通常一組只會評 2-3 個評分點。一位專家只會參與 2-3 組評分。\r\n\r\n擔任 ESR 的專家有機會看到更多的評分點，也就更能夠知道自己地區選手的得分情況。	0	f	f
206	2007 日本靜岡 Shizuoka	4	1	24	2021-06-17 13:12:01.931964	2021-06-17 13:12:01.931964	項目代表選手鄭志威，當年就讀東南中學中五，專家為譚海西，特訓課導師 Hebert Choi。鄭志威曾表示，從 2003 年麥誠軒獲獎後，得悉此比賽，亦希望有朝一日能成為代表，其後於 2007 年積極報名參加選拔，期間於生產力 8 個月的特訓中，各候選代表競爭激烈，要鬥到最後一刻才獲得代表出賽資格。\r\n\r\n賽題未知。\r\n\r\n成績\r\n\r\n共有 19 個國家及地區參與。\r\n\r\n金銀銅分佈：一金三銀\r\n\r\n澳門成績與巴西、加拿大並銀牌，南韓金牌。\r\n\r\n澳門區選手發展：現在於澳門開設資訊系統解決方案公司。\r\n	0	f	f
202	2019 年各模塊分數佔比：	6	1	22	2021-06-17 13:09:16.219517	2021-06-17 13:09:16.219517	Work organization and management: 6%\r\nCommunication and interpersonal skills: 6%\r\nWebsite Design: 22%\r\nLayout: 22%\r\nFront-end Development: 22%\r\nBack-end Development: 14%\r\nContent Management Systems: 8%	0	f	f
207	2009 加拿大 Calgary	5	1	24	2021-06-17 13:12:22.787839	2021-06-17 13:12:22.787839	項目代表林健源，參賽時為中學生。專家為麥誠軒，特訓課導師 Hebert Choi。自 2007 年起，專家人選便有意轉換，譚海西因個人理由不再擔任項目專家，但新專家人選臨時有事不能出席，故由麥誠軒於臨賽前兩星期臨時替補作為專家代表。\r\n\r\n四日的賽題分為設計、動畫、前端開發、伺服器開發四個模組。\r\n\r\n成績\r\n\r\n金銀銅分佈：一金一銀三銅\r\n\r\n瑞士金牌，加拿大銀牌，澳洲、南韓、巴西并列銅牌。\r\n\r\n澳門成績：第八名，獲優異獎。一百分制成績 75.4 分。\r\n\r\n澳門區選手發展：現在於澳門開設資訊系統解決方案公司。\r\n	0	f	f
203	2001 韓國首爾	1	1	24	2021-06-17 13:10:28.807724	2021-06-17 13:15:28.380172	這是網站設計項目的第一屆比賽，但其實只是測試運行，只有兩個地區參與，所以不算正式比賽，亦不設奬項。\r\n	0	f	f
231	TP - Test Project	5	1	29	2021-06-17 13:32:03.324891	2021-06-17 13:32:03.324891	Test Project 是選手所拿到的題目文件。專家除了在可以公開題目後須馬上將文件轉交到選手外，亦需要熟讀這份題目，以找出有疑問的地方，盡快於專家討論區提出。另外，熟讀題目文件，亦能夠於選手提出疑問時馬上回答。\r\n	0	f	f
232	MS - Marking Scheme	6	1	29	2021-06-17 13:32:20.180684	2021-06-17 13:32:20.180684	自從 2015 年起，Marking Scheme 不再於比賽時發放給參賽者。\r\n\r\n可以於賽後將所發佈的往屆的 Marking Scheme 作為教學參考之一。\r\n\r\n知道評分表後，需要了解字面上所有文字是否有不同意思的可能性出現。因為如果教導學生用的方法是一個方法，但原來評審隊伍所認為的方法是方法二，便有機會因為評分方法的不同，而導致做了也有失分的情況出現。而這個情況曾經多次發生。\r\n\r\n所以，要非常仔細了解評分表可能會出現的各種情況，即是一句文字背後的延申。\r\n	0	f	f
233	SMP—Skills Management Plan	7	1	29	2021-06-17 13:32:41.681435	2021-06-17 13:32:41.681435	這是一個網上時間表，包括項目的事項安排。屬於 Live Document，在競賽期間有持續更新，所以每日要起碼 Refresh 這個頁面三次，上午一次，中午一次，傍晚一次，以確保熟知當天及未來數天的項目行程安排。\r\n	0	f	f
210	2015 巴西 São Paulo	8	1	24	2021-06-17 13:13:28.836154	2021-06-17 13:13:28.836154	項目代表選手何家進，參賽時就讀勞工子弟學校。專家及培訓導師為麥誠軒。另有一初期培訓導師林倫灝。何家進自學網站技巧，以製作巴士介紹及路線查詢網站及手機應用。於參加澳門選拔培訓班後，慢慢學習更多深度網站開發技巧。\r\n\r\n賽題分四大模組八個題目。每個題目二至三小時。\r\n\r\n本屆首次使用分組比賽，分為 A／B 兩組。本屆亦採用 100% Pre Test Project 與 Final Test Project 不同的方案。\r\n\r\n結果 JavaScript 的 Final Test Project 由於出現技術上很大轉變，選手於兩小時內未能解決遇到的問題，致失分不少。\r\n\r\n成績\r\n\r\n金銀銅分佈：一金一銀兩銅。第一名巴西，第二名澳洲，第三名南韓、伊朗並列。\r\n\r\n澳門成績：第十一名，優異\r\n\r\n澳門區選手發展：現在於澳門大學就讀計算機科學系。\r\n\r\n頭三名除了澳洲是 DEPUTY CHIEF 外，其他全是 JAVASCRIPT 團隊的。因為這一年的 JAVSCRIPT 玩法變化太大，所以預知題目對選手培訓及爭取成績有一定優勢。\r\n	0	f	f
211	2017 阿聯酋 Abu Dhabi	9	1	24	2021-06-17 13:13:55.758909	2021-06-17 13:13:55.758909	參賽選手為馮學健，參賽時就讀澳門理工電腦系三年級。專家及培訓導師為麥誠軒，另有初期設計導師李達潮。\r\n\r\n馮學健為 2013 年網絡項目澳門區候選選手及 2015 年網站設計項目候選選手，此兩屆分別獲得澳門區第三名。憑著多年澳門區選拔經驗，馮學健於 2017 年參與本澳選拔，與另外兩名候選鬥得難分難解，最後於決賽驚險勝出，獲得澳門區參賽資格。馮學健於其後的特訓環節表現出其專注及苦練能耐，並於世界賽將所學知識穩定發揮，獲得好成績。\r\n\r\n首設 SCM\r\n\r\n2017年將會有 SCM, Skills Competition Manager 的角色。此角色專門負責出題目，所以林比賽前一年，SCM 不能接觸任何地區的培訓人員及專家學生。\r\n\r\n新增 SCM 後，對比賽及備戰的影響，及對評分分組之影響，有待觀察並再進行紀錄。\r\n\r\n賽題\r\n\r\n三日計分題，加一日不計分合作題目。\r\n\r\n三日的計分題，都採用一日一個項目的做法，稱為 Integrated Project，有別於過往的兩/三小時一個獨立項目。\r\n\r\nIntegrated 的意思是，一日的項目，會考核不同範圍的內容。但為方便稱呼，每日仍然會定一個主題，例如第一日是 CMS，第二日是 Server-side，第三日是 Client-side。但這只是一個名稱，實際上考核不同的內容。\r\n\r\n例如第一日的 CMS，有一半的評分是版面設計及字型美學運用。第二日的 Server-side，上午考 PHP Laravel/Yii 輸出 API，下午考 Client-side JS frameworks 利用上午的 API 進行界面製作及客戶端開發。\r\n\r\n第三日的 Client-side，原意是客戶端開發再加上 Layout 版面排版技巧及輔以伺服器端開發。但實際上排版技巧沒有多考，伺服器端開發亦由於技術限制而減少了，整個題目變成九成半都是 Client-side 項目。\r\n\r\n成績\r\n\r\n金銀銅分佈：四金。\r\n\r\n四名金牌：由俄羅斯、南韓、瑞士、澳門並列，第五名中國，第六名巴西，第七名香港。\r\n	0	f	f
212	2019 喀山 Kazan	10	1	24	2021-06-17 13:14:52.281976	2021-06-17 13:14:52.281976	2019年喀山，麥誠軒擔任 SCM 職位。網站技術項目則由鄭劍輝接任，網站技術的培訓工作則是邀請到數位重量級的專業導師進行。\r\n\r\nSCM 於競賽開始前一年內，或當地選出選手後，都不能直接參與培訓及指導選手的工作。\r\n\r\n原 SCM 來自加拿大的 Jeff 由於 2019 年 8 月舉行競賽時間和個人時間有衝突，所以經仔細考慮後，決定缺席一屆 WorldSkills。\r\n\r\n申請 SCM 資格需要層經兩屆擔任 SCM/CE/DEC/ESR，故人選不多，CE 來自瑞典的 Arwid 表示不申請，DCE 來自巴西的 Marcelo 表示可以申請，但不符合上述資格，以往做過多屆 DCE 的澳洲 Jarrad 亦表示不申請，因此麥誠軒成功擔任本届的 SCM。\r\n\r\n賽題\r\n\r\n三日計分題，加一日合作題目。\r\n\r\n第一日早上是 Speed Test，賽前從上百個小的 Task 中抽取 10 道題目，這部分主要是給選手們熱身。\r\n\r\n下午是 CMS，這一屆 CMS 内容占比較少，CMS 中包含版面設計、排版、字型、顏色等，整個模塊在三個小時內完成。\r\n\r\n第二日的 Server-side，上午考 PHP Laravel / Yii 輸出 API，下午考 Client-side JS frameworks 利用 API 進行界面製作及客戶端開發。下午的 API 是由第三方公司事先準備好的，避免選手因為早上未完成而影響到下午的比賽。\r\n\r\n第三方公司提供了自動化工具驗證 API 是否符合要求，要按照提供的説明運行。\r\n\r\n第三日的 Client-side，早上按視頻去實現一個編輯 Slide 鏈接的 App，下午則是製作一個的宣傳頁面。 \r\n\r\n第四日合作題目是選手們隨機分組，四人一組合作完成一個 AR / VR 項目，這部分主要是看選手們之間是否有無進行合作，佔 3 分，但幾乎每位選手都會有。\r\n\r\n成績\r\n\r\n金銀銅分佈：一金三銀。\r\n\r\n金牌為韓國獲得，三枚銀牌為印度、瑞士、中華台北並列，本澳和匈牙利選手並列第十一名。\r\n\r\n澳門區選手發展：現職中學導師，IOT 物聯網方向。\r\n	0	f	f
205	2005 芬蘭赫爾辛基	3	1	24	2021-06-17 13:11:37.714161	2021-06-17 13:15:41.765384	項目代表選手陳梓俊，參賽時為培正中學中五學生，專家譚海西，特訓課導師 Hebert Choi。陳梓俊自中二起便與 2003 年代表麥誠軒參與不同的本澳及地區性網站設計項目比賽，亦時有獲得本澳比賽獎項，為出席世界賽累積一定技術經驗。他表示，於麥誠軒獲獎後，亦想挑戰自己，便積極報名參賽澳門區選拔賽。\r\n\r\n賽題為設計諾基亞公司網站，包括使用 Photoshop 及 Illustrator 設計、前端 HTML, JavaScript, CSS 佈局及界面製作、後台 PHP 與 MySQL 數據庫開發。\r\n\r\n成績\r\n\r\n金銀銅分佈：兩金兩銅。\r\n\r\n澳門成績：第三名，與新加玻並列銅牌。\r\n\r\n金牐有加拿大及澳洲 Jarrad。Jarrad 後來成為專家及副總專家，缺席 2017 年 WorldSkills。\r\n\r\n澳門區選手發展：現在於澳門開設資訊系統解決方案公司，並有為澳門中學提供 iOS 培訓課程。\r\n	0	f	f
214	行程單	1	1	213	2021-06-17 13:19:26.478328	2021-06-17 13:19:26.478328	2019-08-16\r\n專家團隊出發\r\n2019-08-17\r\n抵達俄羅斯喀山\r\n2019-08-18 C-5\r\n新專家的培訓、參觀本地著名景點、專家互動\r\n2019-08-19 C-4\r\n專家正式介紹、評分培訓、CIS 介紹、分組評分訓練\r\n2019-08-20 C-3\r\n公佈最終題目，場地測試\r\n2019-08-21 C-2\r\n選手熟悉場地\r\n2019-08-22 C-1\r\nSpeed Test 抽籤、選手繼續測試競賽設備、開幕式\r\n2019-08-23 C1\r\n第一日比賽：Speed Test 、內容管理系統開發、專家評分\r\n2019-08-24 C2\r\n第二日比賽：伺服器端開發\r\n2019-08-25 C3\r\n第三日比賽：客戶端開發、專家評分\r\n2019-08-26 C4\r\n第四日比賽：Team Challenge、成果展示\r\n2019-08-27 C5\r\n專家技術分享、閉幕式\r\n2019-08-28\r\n啟程回澳\r\n2019-08-29\r\n抵達澳門	0	f	f
215	C-5	2	1	213	2021-06-17 13:19:41.459228	2021-06-17 13:19:41.459228	早上進行新專家培訓，主要是介紹比賽的背景，大會的宗旨，強調比賽的公平、公正、公開，亦有邀請到前一屆的優秀選手和專家分享經驗。\r\n\r\n大會通常會安排一次比賽舉辦城市參觀考察，一是向世界各地人士介紹城市背景，二是創造機會給專家們互相認識，當日參觀組團方式比較自由，可以和澳門本地所有專家團隊組團也可以找網站技術項目的專家組團，最好是和項目專家們組團，沿途可以和專家們先互相打個招呼。\r\n\r\n當日晚上大會也有安排歡迎宴，和傳統印象中的大家圍成一桌的方式不同，喀山這次的歡迎宴是安排在一個賽馬場，飲食自助，也是一個很好的和其他國家及地區專家交流的好機會。	0	f	f
216	C-4	3	1	213	2021-06-17 13:19:57.131364	2021-06-17 13:19:57.131364	開始專家會議，SMT 會向所有專家介紹競賽的場地、過程、應急措施等安排，對專家們進行評分培訓。\r\n\r\n世賽使用 CIS 系統進行評分，一些地區專家可能未有接觸過，所以都會再培訓一次。\r\n\r\n在前往比賽前各個地區會舉辦一些邀請賽，例如今年的廣州技師學院就邀請網站技術和網絡管理項目的選手參加邀請賽，網站技術項目邀請到了俄羅斯、中華台北、新加坡、澳門、香港，連同廣州共六個國家及地區的選手參加。\r\n\r\n邀請賽會參照世賽進行，是對評分系統的一次很好的預演，應積極參與。\r\n\r\n事先了解評分的方式和規則，對之後的工作也有幫助。例如為選手爭取分數，每日評分完成後每位專家會收到自己選手的當日得分，專家查看所有得分無誤後確認接受結果。\r\n\r\n項目專家來自世界各地，絕大多數精於技術但不一定有做評判的經驗，有可能在評分過程中出現意外令選手失分，更有可能因為評分用的伺服器出問題而非選手問題而令選手失分。\r\n\r\n而有些新專家就不了解在當日查看分數時，對於選手不應被扣分的地方可以要求重評。	0	f	f
217	C-3	4	1	213	2021-06-17 13:20:14.585273	2021-06-17 13:20:14.585273	早晨 SMT 公佈包括至少 30% 以上修改的最終競賽題目，公佈期間所有專家不能上網，但午餐期間就可以將題目發給所有選手了。\r\n\r\n值得一提的是今年的 Speed Test 部分，這部分的題目蒐集自世界各地的專家，有數十個不同難度的題目，會在 C-1 隨機抽選 10 題。\r\n\r\n如果直接把這數十個題目給選手，有可能造成選手將大量時間放在練習不會考到的內容，所以本次這份題目並沒有給選手，而是最後抽取題目的那 10 題才給。\r\n\r\n未知的考題對選手的壓力是很大的，因此對 Speed Test 的安排要提前和選手商定。\r\n\r\n當日專家會對場地進行測試，檢查軟硬件安裝情況，但並不是所有專家都需要參與，大部分還是在繼續進行評分練習。	0	f	f
218	C-2	5	1	213	2021-06-17 13:20:30.406241	2021-06-17 13:20:30.406241	選手開始進行場地測試，本次比賽毫無意外地出現意外了，首先是 windows license 過期，電腦每小時重啟，然後是 adobe 必須聯網才能激活開啟。\r\n\r\n專家在選手試機期間會被安排在現場協助解決，在解決問題的同時也會了解到一些容易出問題的地方，把這些資訊傳遞給自己地區的選手也有助於建立優勢，所以看到選手提出問題時應該積極協助，即使是自己不熟的領域，也可以諮詢其他專家，互相學習。	0	f	f
219	C-1	6	1	213	2021-06-17 13:20:46.858052	2021-06-17 13:20:46.858052	因為場地測試意外，當日補了一些時間給選手們繼續測試，然後就是晚間的開幕式。	0	f	f
234	Quality Audit Report	8	1	29	2021-06-17 13:32:59.32485	2021-06-17 13:32:59.32485	每年結束後，大會 Auditor 會提交分審計報告，指出大會的各項有待改善的地方。這份報告可以於網上專家區域找到。細讀這份報告，可以了解不同項目遇到的問題及做得好的地方，有助借鑑，以辦好下屆的競賽項目。\r\n	0	f	f
220	C1-4	7	1	213	2021-06-17 13:21:03.995896	2021-06-17 13:21:03.995896	比賽期間，專家會被安排各種工作，主要是場地監考、評分、驗收選手評分等，也有些專家被安排了特別的工作，例如現場攝影。基本上除了一段被安排的自由時間之外，所有時間都會有工作。自由時間是 SMT 特地安排，讓專家有機會參觀世賽活動現場，感受比賽的規模和氛圍。\r\n\r\nC4 比賽完成後，所有專家都要參與 TD 的更新會議，在 4 日的比賽期間專家們會輪流在 Forum 上提出 TD 的修改意見，然後在 C4 對做出的修改投票和提出意見。\r\n\r\n對 TD 的更新應該根據 TD 的原文進行，和原文無關的意見有可能最後被忽略掉，例如有專家在 Forum 裡提議不再考 WordPress 的 Plugin 開發。	0	f	f
221	C5	8	1	213	2021-06-17 13:21:21.429148	2021-06-17 13:21:21.429148	專家技術分享，是了解領域內技術動向的非常好的機會。	0	f	f
25	專家職責	1	1	15	2021-06-16 07:56:13.39765	2021-06-17 13:23:05.129222	專家通常在比賽前一年至兩年已經開始密切參與到競賽事項的籌劃中。\r\n\r\n職責主要分爲賽前、期間、賽後。\r\n\r\n賽前主要職責是跟進選手的培訓、選拔；參與世賽委托單位（勞工事務局）提供的專家培訓、學習世賽大會提供各種文檔、參與出題、制定評分標準等。\r\n\r\n比賽期間主要職責是照顧好選手及有效率地公正地完成評分。\r\n\r\n賽後工作主要是提交比賽報告，總結經驗，更新本手冊等。\r\n	3	f	f
222	選手的培訓和選拔	2	1	15	2021-06-17 13:23:57.158967	2021-06-17 13:23:57.158967	專家是比賽項目中最先獲取競賽最新資訊的角色，需確保將獲取的資訊及時傳達給選手，根據競賽範圍和規則指定培訓計劃，等等。\r\n\r\n網站技術項目歷届的選手培訓通常分爲强化培訓和密集培訓兩部分，于强化培訓中評估學員水平，選拔合資格的選手。\r\n\r\n進行選拔時可挑選前三名進入密集培訓，非第一名的選手有可能是下届比賽的潛在選手。\r\n\r\n培訓不必全部由專家進行，網站技術項目涉及的技術點較廣，可以針對不同的技術點安排具備專業資格的導師進行輔導。\r\n\r\n但專家應盡可能參與整個培訓過程，瞭解培訓内容及進度，適時調整。\r\n\r\n强化培訓是針對競賽範圍所提到的知識點進行基礎鞏固，同時考察學員水平。\r\n\r\n密集培訓通常于世賽 Pre Test Project 公佈后進行，這份題目會在賽前 90 日公佈，此時已大致上知道比賽的主要内容，培訓可以圍繞這些内容進行，查缺補漏。\r\n\r\nPre Test Project 只是一份參考，比賽前會由 SMT 安排至少 30% 的修改，以前亦出現 100% 更換的情況，培訓不能只針對公佈的比賽題目進行練習，要考慮到各種變化。\r\n\r\n2019年賽前籌備工作歷時約十個月：\r\n\r\n2018年11月底\r\n勞工事事務局負責招生，中心負責舉辦入圍賽，最終收取10位合資格學生進入強化培訓。\r\n2018年11月至2019年4月\r\n對合資格學員進行基礎強化培訓，強化培訓分為8個不同的主題，分別由4位中心特約導師進行培訓。\r\n2019年3月\r\n進行選拔賽，挑選3位學生進入密集培訓。\r\n2019年4月至8月\r\n對選手進行密集培訓，主要由本人教導，另根據學生的具體情況安排專業導師進行特訓。\r\n \r\n選拔賽原本安排在4月底，因應賽事的時間安排，提前至3月初進行，選拔賽參照歷屆世賽之題型分為設計、前端開發、伺服器端開發三個部分，每部分三個小時，並綜合考慮學員平時表現及功課\r\n\r\n	0	f	f
223	世賽學習資料	3	1	15	2021-06-17 13:24:49.895458	2021-06-17 13:24:49.895458	網上內容主要分為兩部分，WorldSkills 網站（http://www.worldskills.org）上主要為競賽安排方面的內容，另有一個 Forum 給所有專家進行賽事的具體討論。\r\n\r\n兩部分都是通過勞工事務局協助提交資料進行註冊。專家經登記後，會獲得一組網上登入密碼。\r\n\r\nWorldSkills 網站上有大量比賽相關的資料，一些閱讀的資料點擊連接下載後相關的欄位就會變綠色，另一些則是在線的問卷，要花一定的時間填寫。\r\n\r\n下載文檔或者參加問卷都會累計 Prepared 的百分比，努力取得 100% ，不足 100% 不可以作為專家參與評分的。\r\n\r\n網站的內容持續更新，通常到賽前幾日才會達到 100%。\r\n	0	f	f
224	PIN 碼	1	1	223	2021-06-17 13:25:09.543331	2021-06-17 13:25:09.543331	登入專家區域後，上方有一個連結可以設定一個四位數字的 PIN 碼。\r\n\r\n這個 PIN 碼是用來簽署各項電子表格用。例如賽前 SCM 安排公佈 Test Project 的 30% 修改之後，每位專家就會在電腦上輸入 PIN 碼，代表確認收到 30% 的修改且無異議。\r\n	0	f	f
225	100% 準備	2	1	223	2021-06-17 13:25:26.281424	2021-06-17 13:25:26.281424	要能夠作為專家於競賽期間參與評分，專家必須於競賽前達到 100% 準備。\r\n\r\n截止日期可能為 C - 3 中午時段，屆時若有專家仍未能達到 100%，則不能參與評分。但可以旁觀學習評分。\r\n	0	f	f
226	Access Programme	3	1	223	2021-06-17 13:25:44.412797	2021-06-17 13:25:44.412797	登入專家網上區域後，100% 準備當中的一個項目是 “Access Programme”。而這項你可能會發覺沒有完成，而且亦沒有連結去完成。\r\n\r\n這個是地區性的培訓，於 2017 年增加的流程。所有專家及學生必須參與由所屬地區所提供的 WorldSkills 培訓。專家培訓為期六日，包括介紹 WorldSkills 競賽歷史、學習 WorldSkills 的各種舉辦概念、專家們的討論、完成填寫各項工作紙等。\r\n\r\n當完成後，Technical Delegate 便會收集所有工作紙及出席培訓證明，一併交到 WorldSkills 競賽委員會，經大會審批後，這項 Access Programme 便會變成已完成。\r\n	0	f	f
29	重要文件	4	1	15	2021-06-16 07:58:49.327949	2021-06-17 13:30:06.552524	在專家網上區域，有很多不同的文件。有些文件必須仔細閱讀。而且必須定期登入，查看相關文件有沒有更新。2017 年試過有必要文件於競賽前一星期再有更新。令到很多已經拿取 100% 準備的專家變成不足 100%，他們必須登入並重新下載已更新文件才能重獲 100%。\r\n	1	f	f
228	Code of Ethics	2	1	29	2021-06-17 13:29:52.792911	2021-06-17 13:29:52.792911	描述了如何公平公正地比賽。遇上爭拗時如何解決。\r\n	0	f	f
227	Competition Rule A & B	1	1	29	2021-06-17 13:26:40.684265	2021-06-17 13:30:01.659795	競賽規則，於競賽期間為選手爭取最好環境、防止選手不公平對待、洞察對方不公平行為等，都全靠這份規則。\r\n\r\nmike 馮曾介紹，如果選手被不公平對待，在向大會爭取的時候，不能直接要求「獲得公平對待」，因為這個要求本身就是在指控對方有不公平對待的行為，而應該使用詞彙「duty of care」	0	f	f
229	TD - Technical Description	3	1	29	2021-06-17 13:31:33.334621	2021-06-17 13:31:33.334621	定義項目及考核範圍。於每屆由各專家共同撰寫並經專家同意通過。\r\n\r\n每屆比賽題目不能超過這份文件所描述的範圍。\r\n\r\n比賽期間會要求專家分組討論文檔的更新，並在最後一天對提出的更新進行投票表決是否執行，例如 2019 年有提到是否取消翻譯改為全英文競賽。	0	f	f
230	WSSS - WorldSkills Standard Specification	4	1	29	2021-06-17 13:31:48.553143	2021-06-17 13:31:48.553143	競賽範圍，代表世界級比賽所涉及的知識點，給全世界各個地區提供培訓參考。\r\n	0	f	f
238	ESR - Experts with Special Responsibility	4	1	31	2021-06-17 13:35:24.329851	2021-06-17 13:35:24.329851	競賽期間需要部分資歷較深，或者較為勝任指定工作的專家去執行額外的工作，例如場地攝影（Media）、應急（Safety） 等。\r\n\r\nAssessment ESR 負責協助操作 CIS 評分系統。\r\n\r\nSafety 確保項目場地安全，及還上問題時的解決流程。\r\n\r\nSkill Development ESR 負責領導所有專家更新下屆的 Technical Description 文件。\r\n\r\nSustainability ESR 負責確保項目能可持續發展。\r\n參與 ESR 能對整個比賽的進展有更多的了解，所以專家應盡可能地參與這些工作，或者協助擔任這些工作的專家的工作。\r\n	0	f	f
35	出題 Test Project	7	1	15	2021-06-16 08:00:00.166969	2021-06-17 13:36:13.794526	出題目要格外留神，一份差的題目，會破壞整個比賽。\r\n\r\n應該是鼓勵給分及不重覆扣分。\r\n\r\n鼓勵給分是指題型盡量是一些可以拆分且相對獨立的 Task，即使題目較難，選手們也可以完成部分而得分。最差的題型是選手什麼都沒有做，但所得分數和動手做的選手相同甚至更高，這種題型嚴重影響選手挑戰問題的積極性。\r\n\r\n不重複扣分則是要考慮會不會因為某一項要求而影響到其他多項評分，例如網站中常見的登入介面，如果選手沒有完成登入功能，那登入之後的其他功能都因為無法登入而無法評分，即相當於重複扣分。\r\n\r\n較為正向的做法，例如 2019 年的 Server Side 部分，早上要求選手實現一個 API， 下午則是用 API 進行前端的實現，如果早上選手沒有完成就會影響到下午比賽的進行，因此負責出題的第三方在下午則是提供了另一份完整版的 API， 確保所有選手在相同的條件下進行比賽。\r\n\r\n評分定義及規則，可參考「競賽篇」。\r\n\r\n出題目可以先定評分標準，然後就會明瞭哪些要做，哪些要考學生。\r\n	3	f	f
26	客觀分與主觀分比例	8	1	15	2021-06-16 07:58:18.315562	2021-06-17 13:36:32.486149	2015 年為 60% 客觀 比 40% 主觀\r\n\r\n這個比例在每次都有些微調整，徘回在 7/3 比及 6/4 比之間。\r\n\r\n2017 年後，比例不再硬性規定，因為 Judgement / Measurement 評分兩者都可以自由比例分配。原因是 Judgement 的評分理論上變得更客觀性。\r\n\r\n實際上，由於 Judgement 的評分使好的作品與差的作品比分拉近了，只有非常好的作品亦能突圍而出。\r\n	3	f	f
28	出題策略	9	1	15	2021-06-16 07:58:39.564666	2021-06-17 13:36:51.366799	出題必須嚴格按照 Technical Description 進行，不能超出 TD 所畫出的範圍。\r\n\r\n出題時，要注要想考學生什麼樣的技能。\r\n\r\n不容易被撓過，即原本想考的技能，被學生用其他更容易的方法，行捷徑避開，然後就考不到學生這技能。同時由於這名學生時間會更快（行了捷徑），亦對其他學生不公平。\r\n\r\n出題不能太難。\r\n\r\n看要追求什麼，是要求量少而精，還是量多。\r\n\r\n如果想考學生的思考解決問題能力，應該追求量少而精。即評分項可以體現出對題目的深度了解。\r\n\r\n相反，若選擇量多，則評分項會體現出是否能在短時間內掌握整盤計劃。即是否做到熟能生巧。\r\n\r\n但通常一份題目是不能要求量多而精的，因為只有有限兩小時或三小時時間。\r\n	3	f	f
239	2003 瑞士 St. Garden	1	1	32	2021-06-17 13:38:22.74009	2021-06-17 13:38:22.74009	\r\n\r\nFlash 客觀分數，只要有 SWF 就有 3 分。但選手麥誠軒因連打開 Flash 的時間也沒有，其實只要隨便輸出一個白底黑字的 Flash SWF 就有 3 分，卻丟失這能輕鬆拿到的 3 分。\r\n	0	f	f
240	2009 加拿大 Calgary	2	1	32	2021-06-17 13:38:41.244868	2021-06-17 13:38:41.244868	賽後被告知 URL 包含 index.php….. 不算 Restful API\r\n	0	f	f
241	2013 德國 Leipzig	3	1	32	2021-06-17 13:38:55.391728	2021-06-17 13:38:55.391728	背景 Parallax 效果由於評分表要照字面解釋，所以用 background-position:fixed 被扣分了。\r\n\r\n題目要求有 parallax scroll 效果，專家經查詢，被告知 background-position:fixed 都選係 parallax 效果，然而評分表寫著 “Background moves when scroll”，於是 background-position:fixed 不算數，導致失分。\r\n	0	f	f
242	2015 巴西 São Paulo	4	1	32	2021-06-17 13:39:11.96042	2021-06-17 13:39:11.96042	\r\n\r\n本屆使用了 100% 改題制度。此制度下， JavaScript 的難度更甚。所以要小心 JavaScript 的千變萬化。\r\n	0	f	f
243	2019 喀山 Kazan	5	1	32	2021-06-17 13:39:26.84643	2021-06-17 13:39:45.184144	\r\n\r\nSpeed Test 題目要求 0.3 秒的動畫，但習慣填 0.5 秒；提交作品時的檔案地址及檔案名稱。\r\n	0	f	f
32	歷年比賽扣分加分事例	11	1	15	2021-06-16 07:59:33.472713	2021-06-17 13:40:12.446391	紀錄這些年一些丟分的事件。\r\n	1	f	f
34	評分成績表	12	1	15	2021-06-16 07:59:49.335346	2021-06-17 13:40:37.131535	【Marking Form 範本】\r\n\r\n可以有效分析競賽的回顧及發展。\r\n\r\n於比賽期間都會口頭了解學員做到及做不到的項目。但最終評分表則客觀地列出這些項目的取分情況。\r\n\r\n尤其要留意學員表明做到，但實際沒有取分的地方。再作了解分析因何故會失分。這樣便可以於往後競賽中，更好掌握如何在過往失分的地方，確切指示學員執行取分。\r\n	3	f	f
244	IL 必須包括 Plugin List	1	1	36	2021-06-17 13:41:32.234996	2021-06-17 13:41:32.234996	2017 年的軟件列表早以定下，但 Plugin 列表只是於討論區列出過，但沒有獨立使用一個文件複製下來，結果便引發是否提供 Angular CLI 及 Vue CLI 的爭議。所以以後所有列表都必須以獨立文件貼出討論區並經大家確認。\r\n\r\n2019 年仍然沒有將 CLI 寫入，最終是以提供用 CLI generate 出來的 Template Project 的方式給選手使用，而最麻煩的部分是，在場的專家中幾乎都不熟 Angular，使用 Angular 的選手在遇到技術問題時無法從其他地區專家處獲得幫助，最終可能變成由選手所在地區的導師進行協助，而此時如果他們用的是本地語言，在場的大多數人是不知道他們之間在溝通什麼內容的。\r\n	0	f	f
245	討論區已確定內容不能再現場更改	2	1	36	2021-06-17 13:41:48.57268	2021-06-17 13:41:48.57268	\r\n在比賽前應盡最大可能參與到網上討論，本地區的選手相關的問題要儘早提出，在競賽前的討論中，一些問題會因為時間不足以及大多數專家的反對而無法改變。\r\n	0	f	f
18	鳴謝	3	1	17	2021-06-16 07:54:23.186972	2021-06-17 13:51:12.84001	感謝澳門勞工事務局及澳門生產力暨科技轉移中心大力支持。\r\n	3	f	f
19	關於作者	4	1	17	2021-06-16 07:54:30.533605	2021-06-17 13:51:41.38021	麥誠軒，2003 年選手，獲得世界職業技能競賽網站設計項目銅牌，2009 年起成為專家，2013 年加入澳門生產力暨科技轉移中心，2017 年帶領選手獲得澳門參加世賽以來的首枚金牌，2019年擔任世界職業技能競賽網站技術項目經理（SCM）。\r\n\r\n鄭劍輝，2019年網站技術項目專家。	3	f	f
246	分組比賽之公平性考慮	3	1	36	2021-06-17 13:42:08.646872	2021-06-17 13:42:08.646872	\r\n\r\n2015 年使用 A/B 兩組選手制度。此制度有可能出現公平性考慮。\r\n\r\n分兩組之不公平性，因為每個模組難易度及所需要思維都不同，所以分組不同次序做題目，可以有頗大誤差。例如如果是 JavaScript 編程和設計兩份題目，由於設計是以思考創意為主，而編程題目需要理解要求，尋求最佳解決方法。假設早上考設計的學生，可以預先查看 JavaScript 編程題目所提供的素材，並利用中午休息時間思考。相反，若然上午考 JavaScript 編程的學生，則只有在比賽時間兩小時內，完成所有編程，包括思考最優解的方法。如果所有人的做題目次序是一樣，其實沒有差別，但如果分成兩組，則明顯有一組會有更多思考解決問題方法的時間。\r\n	0	f	f
37	參賽	1	1	16	2021-06-16 08:00:30.047457	2021-06-17 13:44:13.659958	參賽資格為世界競賽當年仍然是 23 歲以下澳門居民。一般報名及培訓為世界競賽前一年開始，所以報名時可能會須要 22 歲以下。\r\n\r\n2021 年因疫情比賽向後延期一年，有資格參加 2021 年比賽的學生仍然有資格參加 2022 年的大賽。	3	f	f
39	選拔	2	1	16	2021-06-16 08:00:47.927332	2021-06-17 13:44:29.878217	選拔分為入圍賽、選拔賽。\r\n\r\n總決賽形式一般分為兩種：計分功課及現場做題。\r\n\r\n入圍賽通常是一些基本知識的多選題，選中的學生會進行一輪基礎強化培訓，培訓完成後進行選拔賽，挑選出參賽選手後還會再進行一輪密集培訓，之後才參賽。\r\n\r\n不過經常有意外出現，引致選拔賽的提前進行，例如 2019 年原定強化培訓到 4 月底進行選拔，但因為要派出選手代表澳門參加廣州的交流賽，選拔賽的日期被迫提前至 4 月初進行。\r\n\r\n強化培訓開始時，應提醒學生有可能出現這種情況。\r\n	3	f	f
247	友誼賽	3	1	16	2021-06-17 13:44:56.269208	2021-06-17 13:44:56.269208	臨近正式世界競賽，通常都會有各個地區具辦不同的友誼賽。中期賽或決賽成績良好的學生，將會獲推薦出席友誼賽。友誼賽可以幫助學員獲取更多實戰經驗。\r\n\r\n2019 年接獲通知必須是參賽選手才能參加交流賽。\r\n\r\n交流賽主要是起到預演的作用，不必去爭比賽的名次，應把重心放在相同場景下如何令專家和學員保持有效及高效的協作。\r\n\r\n交流賽通常由參賽地區的專家負責出一份等同世賽的題目，並且題目較早公佈給所有專家。不同地區的專家對自己的選手的交流目的不同有機會出現不同的策略，例如有些專家是在比賽前一天晚上才給選手看題目，選手準備時間較短，主要是練習臨場發揮。\r\n\r\n世賽是提前 2 天公佈題目，專家在獲得題目之後並不會有很多時間和選手溝通，選手拿到所有題目後如何安排時間閱讀和準備，也是選手應具備的能力之一。\r\n	0	f	f
248	個人準備	5	1	16	2021-06-17 13:46:09.506805	2021-06-17 13:46:09.506805	出發前準備一小段英文的自我介紹，了解一些參賽國家及地區的大致背景，選手的實力，了解比賽所在的城市的背景、特點等等，都有助於競賽以及認識新朋友以及和其他國家及地區的專家/選手交流。\r\n\r\n參加世賽不僅僅可以拿名次，更能夠認識一批國際上超水準的同齡人，這是一筆不可多得的財富。\r\n	0	f	f
40	攜帶物品	1	1	38	2021-06-16 08:00:58.01872	2021-06-17 13:47:13.507131	耳機：可自帶耳機，不過必須是有線的。就算現場唔聽音樂， 也可以用來阻擋外界噪音。\r\n\r\n音樂：另外，可以向專家了解，現場如果需要播放音樂的格式及限制。然後，可以準備平時能夠提高生產力的背景音樂大去。又或者，可以是一些柔和的海浪聲，或者令到心情激昂的聲音。\r\n\r\n筆：一定要帶筆，會場不一定會提供合用的筆，比賽時一定要在題目上畫出或者圈出重點內容。可以準備螢光筆，用來於比賽題目上畫出重點。\r\n	3	f	f
249	自攜鍵盤滑鼠	2	1	38	2021-06-17 13:47:31.533154	2021-06-17 13:47:31.533154	\r\n\r\n可以自帶鍵盤及滑鼠，2019年允許選手帶兩個鍵盤，但只可以在其中一個壞了的情況下由現場工作人員替換。\r\n\r\n鍵盤和鼠標要在熟悉場地前交給大會安裝，安裝後就只能留在場地不能帶走。\r\n\r\n建議可於練習時嘗試一下不同的鍵盤，例如不同軸的機械鍵盤，然後將最好打的帶去比賽賽地使用。\r\n	0	f	f
250	熟悉場地	3	1	38	2021-06-17 13:47:45.850567	2021-06-17 13:47:45.850567	\r\n\r\n熟悉場地期間，選手們已收到最終的題目了，但盡量不要在熟悉場地期間就開始做題，大會也會要求選手不能做題。\r\n\r\n要盡量利用這段時間去試下各種軟件中會用到的功能、平時常用的 cmd 等等，避免在比賽期間才發現某些功能不能用等意外情況。\r\n\r\n熟悉場地期間還是有一些時間是可以和專家碰面的，例如午餐，遇到問題要及時向專家反映。\r\n	0	f	f
251	搶分策略	4	1	38	2021-06-17 13:48:00.81959	2021-06-17 13:48:00.81959	\r\n\r\n關於比賽評分表。自從2015年起，選手不能看到比賽評分表。所以選手和專家之間，需要將重點評分項目及一些巧妙的評分項目背好。\r\n\r\n查看比賽評分表時，或閱讀比賽題目時，除了正常的閱讀方向外，亦需要不是將題目由尾到頭閱讀。以防止因為慣性的閱讀習慣，而略過了某些題目須求資訊。\r\n	0	f	f
252	繞過比賽障礙	5	1	38	2021-06-17 13:48:14.898018	2021-06-17 13:48:14.898018	\r\n\r\n當比賽遇到障礙時，尤其是程序問題，往往問題不能在短時間內解決。此時可以考慮避開問題，使用不同的方法，達到同樣的評分要求。因為在評分時，評審只會看評分要求的文字作評分，而不會理會達成效果的方法。\r\n	0	f	f
253	飲食注意	6	1	38	2021-06-17 13:48:27.379241	2021-06-17 13:48:27.379241	\r\n\r\n不要吃生冷食物。\r\n\r\n準備好日常愛吃的小食，如杯面、小食（一些包裝不易碎的頂乾，以防止在酒店晚上會肚餓。）、喜好飲品（如葡萄適、盒裝飲品或罐裝咖啡）。\r\n	0	f	f
254	休息	7	1	38	2021-06-17 13:48:41.315524	2021-06-17 13:48:41.315524	\r\n\r\n拿到最終公佈的題目後選手們就會開始準備，通常晚上會複習到很晚，不宜過分，避免影響第二日精神。\r\n\r\n切忌為了提神在平時沒有飲用咖啡、茶等飲料的習慣下，在比賽期間突然飲用。\r\n	0	f	f
255	小紀念品	1	1	17	2021-06-17 13:49:28.861784	2021-06-17 13:50:17.536014	\r\n\r\n勞工事務局在啟程儀式上派發的材料附有大量的代表澳門的徽章（也叫 PIN，和之前提到的 PIN 碼不同），專家和選手都有，用於比賽期間認識其他國家及地區的朋友時互相交換。\r\n\r\n大多數國家及地區的專家會另外再帶一些有特色的小紀念品，在賽前專家會議期間會互相交換，通常是一些文具、名片夾、美食等等。\r\n\r\n選手們在比賽前通常較為緊張，一般會在比賽結束後才互相交換。\r\n	0	f	f
256	專家分享	2	1	17	2021-06-17 13:50:38.789153	2021-06-17 13:50:38.789153	\r\n\r\n比賽結束後 SMT 會組織專家做一些技術交流和分享，類似 TED 的方式，每位專家10-15分鐘左右，都是一些精彩的主題，有助於了解行業動向，專家選手都可以參加。\r\n	0	f	f
257	營養學	\N	1	\N	2021-06-17 22:51:17.981672	2021-06-17 22:51:17.981672		0	f	f
262	Ruby on Rails Tutorial	\N	1	\N	2021-06-18 01:00:55.931569	2021-06-18 01:03:06.177771	Newly updated for Rails 6, the Ruby on Rails Tutorial book and screencast series teach you how to develop and deploy real, industrial-strength web applications with Ruby on Rails, the open-source web framework that powers top websites such as GitHub, Hulu, Shopify, and Airbnb. The Ruby on Rails Tutorial book is available for purchase as an ebook (PDF, EPUB, and MOBI formats). The companion screencast series includes 14 individual lessons, one for each chapter of the Ruby on Rails Tutorial book.	1	f	f
268	Modeling users	6	1	262	2021-06-18 01:03:19.680447	2021-06-18 01:03:19.680447		0	f	f
269	Sign up	7	1	262	2021-06-18 01:03:32.516591	2021-06-18 01:03:32.516591		0	f	f
270	Basic login	8	1	262	2021-06-18 01:03:44.870008	2021-06-18 01:03:44.870008		0	f	f
271	Advanced login	9	1	262	2021-06-18 01:04:02.480673	2021-06-18 01:04:02.480673		0	f	f
272	Updating, showing, and deleting users	10	1	262	2021-06-18 01:04:38.696399	2021-06-18 01:04:38.696399		0	f	f
273	Account activation	11	1	262	2021-06-18 01:04:49.975485	2021-06-18 01:04:49.975485		0	f	f
274	Password reset	12	1	262	2021-06-18 01:05:01.731607	2021-06-18 01:05:01.731607		0	f	f
275	User microposts	13	1	262	2021-06-18 01:05:13.873453	2021-06-18 01:05:13.873453		0	f	f
276	Following users	14	1	262	2021-06-18 01:05:26.086576	2021-06-18 01:05:26.086576		0	f	f
304	Rails Internationalization (I18n) API	1	1	303	2021-06-18 02:43:18.41424	2021-06-18 02:43:18.41424		0	f	f
2	The JavaScript language	1	1	1	2021-06-16 04:59:46.951257	2021-06-18 02:24:46.824007	Here we learn JavaScript, starting from scratch and go on to advanced concepts like OOP.\r\n\r\nWe concentrate on the language itself here, with the minimum of environment-specific notes.	1	f	t
277	Start Here	1	1	261	2021-06-18 02:39:23.496015	2021-06-18 02:39:23.496015		0	f	f
278	Getting Started with Rails	1	1	277	2021-06-18 02:39:31.829128	2021-06-18 02:39:31.829128		0	f	f
279	Models	2	1	261	2021-06-18 02:39:40.983297	2021-06-18 02:39:40.983297		0	f	f
282	Validations	3	1	279	2021-06-18 02:39:58.313535	2021-06-18 02:39:58.313535		0	f	f
280	Basics	1	1	279	2021-06-18 02:39:47.73956	2021-06-18 02:40:04.803332		0	f	f
281	Migrations	2	1	279	2021-06-18 02:39:50.941631	2021-06-18 02:40:14.094294		0	f	f
283	Callbacks	4	1	279	2021-06-18 02:40:20.223594	2021-06-18 02:40:20.223594		0	f	f
284	Associations	5	1	279	2021-06-18 02:40:23.715836	2021-06-18 02:40:23.715836		0	f	f
285	Query Interface	6	1	279	2021-06-18 02:40:27.364181	2021-06-18 02:40:27.364181		0	f	f
286	Active Model Basics	7	1	279	2021-06-18 02:40:34.597933	2021-06-18 02:40:34.597933		0	f	f
287	Views	3	1	261	2021-06-18 02:40:41.66532	2021-06-18 02:40:41.66532		0	f	f
288	Overview	1	1	287	2021-06-18 02:40:47.750353	2021-06-18 02:40:47.750353		0	f	f
289	Layouts and Rendering	2	1	287	2021-06-18 02:40:55.272535	2021-06-18 02:40:55.272535		0	f	f
290	Helpers	3	1	287	2021-06-18 02:41:01.812272	2021-06-18 02:41:01.812272		0	f	f
291	Form Helpers	4	1	287	2021-06-18 02:41:05.692539	2021-06-18 02:41:05.692539		0	f	f
292	Controllers	4	1	261	2021-06-18 02:41:10.811864	2021-06-18 02:41:10.811864		0	f	f
295	Other Components	5	1	261	2021-06-18 02:41:42.848016	2021-06-18 02:41:42.848016		0	f	f
298	Action Mailbox Basics	3	1	295	2021-06-18 02:42:16.159165	2021-06-18 02:42:42.113467		0	f	f
299	Action Text Overview	4	1	295	2021-06-18 02:42:19.370896	2021-06-18 02:42:42.120759		0	f	f
300	Active Job Basics	5	1	295	2021-06-18 02:42:23.184182	2021-06-18 02:42:42.127615		0	f	f
301	Active Storage Overview	6	1	295	2021-06-18 02:42:26.170142	2021-06-18 02:42:42.135261		0	f	f
302	Action Cable Overview	7	1	295	2021-06-18 02:42:29.437417	2021-06-18 02:42:42.143269		0	f	f
296	Active Support Core Extensions	1	1	295	2021-06-18 02:41:55.678789	2021-06-18 02:42:43.346809		0	f	f
297	Action Mailer Basics	2	1	295	2021-06-18 02:42:12.916643	2021-06-18 02:42:43.371689		0	f	f
307	Debugging	4	1	303	2021-06-18 02:43:32.77707	2021-06-18 02:43:32.77707		0	f	f
308	Configuring	5	1	303	2021-06-18 02:43:40.574642	2021-06-18 02:43:40.574642		0	f	f
293	Overview	1	1	292	2021-06-18 02:41:16.422871	2021-06-18 02:42:51.530398		0	f	f
294	Routing from the Outside In	2	1	292	2021-06-18 02:41:34.859643	2021-06-18 02:42:51.5393		0	f	f
303	Digging Deeper	6	1	261	2021-06-18 02:43:11.109181	2021-06-18 02:43:11.109181		0	f	f
309	Command Line	6	1	303	2021-06-18 02:43:48.80542	2021-06-18 02:43:48.80542		0	f	f
310	The Asset Pipeline	7	1	303	2021-06-18 02:43:52.416534	2021-06-18 02:43:52.416534		0	f	f
306	Securing	3	1	303	2021-06-18 02:43:25.035406	2021-06-18 02:43:59.362671		0	f	f
305	Testing	2	1	303	2021-06-18 02:43:22.230843	2021-06-18 02:44:10.365103		0	f	f
311	Working with JavaScript	8	1	303	2021-06-18 02:44:23.970474	2021-06-18 02:44:23.970474		0	f	f
313	Autoloading and Reloading Constants (Zeitwerk Mode)	10	1	303	2021-06-18 02:44:44.23923	2021-06-18 02:44:44.23923		0	f	f
314	Autoloading and Reloading Constants (Classic Mode)	11	1	303	2021-06-18 02:44:47.038309	2021-06-18 02:44:47.038309		0	f	f
320	Extending Rails	7	1	261	2021-06-18 02:45:26.164425	2021-06-18 02:45:26.164425		0	f	f
321	The Basics of Creating Rails Plugins	1	1	320	2021-06-18 02:45:32.420313	2021-06-18 02:45:32.420313		0	f	f
322	Rails on Rack	2	1	320	2021-06-18 02:45:35.641064	2021-06-18 02:45:35.641064		0	f	f
323	Creating and Customizing Rails Generators & Templates	3	1	320	2021-06-18 02:45:39.254543	2021-06-18 02:45:39.254543		0	f	f
324	Getting Started with Engines	4	1	320	2021-06-18 02:45:43.428228	2021-06-18 02:45:43.428228		0	f	f
325	Threading and Code Execution in Rails	5	1	320	2021-06-18 02:45:46.814914	2021-06-18 02:45:46.814914		0	f	f
326	Contributions	8	1	261	2021-06-18 02:45:53.561524	2021-06-18 02:45:53.561524		0	f	f
327	Contributing to Ruby on Rails	1	1	326	2021-06-18 02:46:01.035418	2021-06-18 02:46:01.035418		0	f	f
328	API Documentation Guidelines	2	1	326	2021-06-18 02:46:04.752409	2021-06-18 02:46:04.752409		0	f	f
329	Guides Guidelines	3	1	326	2021-06-18 02:46:07.386168	2021-06-18 02:46:07.386168		0	f	f
330	Policies	9	1	261	2021-06-18 02:46:13.439391	2021-06-18 02:46:13.439391		0	f	f
317	API-only Applications	14	1	303	2021-06-18 02:45:02.440543	2021-06-18 03:11:42.846308		0	f	f
315	Caching	12	1	303	2021-06-18 02:44:55.433449	2021-06-18 03:12:04.502692		0	f	f
316	Active Support	13	1	303	2021-06-18 02:44:58.541517	2021-06-18 03:12:14.473971		0	f	f
318	PostgreSQL	15	1	303	2021-06-18 02:45:09.986482	2021-06-18 03:12:25.594873		0	f	f
319	Multiple Databases	16	1	303	2021-06-18 02:45:13.878799	2021-06-18 03:12:36.950962		0	f	f
23	競賽的可持續發展	8	1	14	2021-06-16 07:55:17.988477	2021-06-18 02:49:43.704701	世界職業技能競賽都將可持續發展放在重要的目標。\r\n\r\n網站設計中，有不少題目製作的出發點，都是要參賽者完成的作品，會實際地應用在現實項目中。\r\n\r\n例如 2003 年的題目，就實際成為世界職業技能競賽大會網站兩年。\r\n\r\n又例如 2015 年的題目，其中一個設計題目也會實際應用。而另一份餐飲管理系統製作的題目，目標也是製作來讓餐飲項目作真實讓客人訂枱用。\r\n\r\n以後在出題時，可以將可持續發展列入考量之列。\r\n	3	f	f
213	2019 喀山 Kazan 主要行程	7	1	14	2021-06-17 13:18:39.103967	2021-06-18 02:49:45.113426	專家於比賽前一周抵達會場，並於會場與各個國家及地區的專家進行緊密合作，參與賽前的最後準備工作，確定競賽的最終題目及評分表，根據總專家的分組安排進行評分訓練等。\r\n\r\n比賽日期以開始比賽的第一天記為 C1。\r\n\r\n	1	f	f
336	Monolith	\N	1	\N	2021-06-18 08:20:48.166931	2021-06-21 01:31:25.063904		0	f	f
21	評分機制	5	1	14	2021-06-16 07:54:55.320235	2021-06-18 02:49:48.110939	舊評分機制分為客觀評分、主觀評分及行業標準評分，而2019年則轉為新的評分機制： Measurement & Judgement 。	0	f	f
332	Launch!	1	1	312	2021-06-18 03:15:57.862074	2021-06-18 03:16:54.83611	Let's start to boot and initialize the app. A Rails application is usually started by running `bin/rails console` or `bin/rails server`.	1	f	f
195	歷屆成績	3	1	14	2021-06-17 13:00:17.45955	2021-06-18 02:49:51.575873	其中 2003 年澳門首度參賽網站設計項目。麥誠軒獲得澳門參加世界職業技能競賽以來首面獎牌—網站設計銅牌。而2017年則在麥誠軒的帶領下，馮學健獲得澳門參賽以來的首枚金牌，亦為澳門參加世界職業技能競賽所有項目中唯一一枚金牌。\r\n2003 年麥誠軒獲得銅牌。\r\n2005 年陳梓俊獲得銅牌。\r\n2007 年鄭志威獲得銀牌。\r\n2009 年林建源名列第八，獲卓越表現奬。\r\n2011 年何文輝獲得銅牌。\r\n2013 年謝俊昇獲得銀牌。\r\n2015 年何家俊名列十一，獲卓越表現奬。\r\n2017 年馮學健成功與另外三名選手並列第一位，獲得金牌。\r\n2019 年陳藝升和匈牙利選手並列十一，獲卓越表現獎。\r\n	0	f	f
260	項目背景	1	1	14	2021-06-17 23:10:16.881882	2021-06-18 02:49:53.42218	網站設計項目於 2001 年作為早期測試項目，在只有兩個國家及地區選手參與的實驗下，於南韓首爾試運行。 2003 年正式成為示範項目, 2005 年起列入正式比賽項目。\r\n\r\n項目歷届資料可在官網找到：https://worldskills.org/skills/id/127/	0	f	f
194	參賽國家及地區	2	1	14	2021-06-17 12:58:46.510187	2021-06-18 02:49:53.431976	2019年網站技術項目參賽國家及地區共32個，按所獲得的成績名次排列：\r\nKorea\r\nIndia\r\nSwitzerland\r\nChinese Taipei\r\nSingapore\r\nIndonesia\r\nRussia\r\nBrazil\r\nChina\r\nHong Kong, China\r\nHungary\r\nMacao, China\r\nBelarus\r\nIran\r\nJapan\r\nVietnam\r\nPhilippines\r\nColombia\r\nUnited States of America\r\nMorocco\r\nFinland\r\nUnited Arab Emirates\r\nCanada\r\nAustria\r\nSweden\r\nSpain\r\nKazakhstan\r\nRomania\r\nOman\r\nCosta Rica\r\nGermany\r\nMexico\r\n	0	f	f
333	bin/rails	1	1	332	2021-06-18 03:16:40.757096	2021-06-18 03:18:58.578683	```\r\n#!/usr/bin/env ruby\r\nAPP_PATH = File.expand_path('../config/application', __dir__)\r\nrequire_relative "../config/boot"\r\nrequire "rails/commands"\r\n```\r\n\r\nAPP_PATH 在之後的 `rails/commands`， `config/boot` 對應 `config/boot.rb` 檔案，負責加載 Bundler	0	f	f
334	config/boot.rb	2	1	332	2021-06-18 03:20:54.90852	2021-06-18 03:22:56.703855	```\r\nENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __dir__)\r\n\r\nrequire "bundler/setup" # Set up gems listed in the Gemfile.\r\n```\r\n\r\n標準的 Rails App 中包含 `Gemfile` 檔案申明所有依賴包，`config/boot.rb` 預設了 `ENV['BUNDLE_GEMFILE']`  指向此檔案	0	f	f
335	Loading Rails	2	1	312	2021-06-18 04:25:31.597713	2021-06-18 04:25:31.597713		0	f	f
312	Initialization Process	9	1	303	2021-06-18 02:44:29.668875	2021-06-18 04:25:38.522606	This guide goes through every method call that is required to boot up the Ruby on Rails stack for a default Rails application, explaining each part in detail along the way. For this guide, we will be focusing on what happens when you execute bin/rails server to boot your app.\r\n\r\n本文介紹每個在傳統 Rails App 啟動過程中需要被使用的每個方法，詳細解釋過程中的每個步驟。	1	f	f
341	进化算法 简介	1	1	340	2021-07-07 00:52:43.621051	2021-07-07 00:53:34.55137		1	f	f
337	list item 的數字樣式	1	1	336	2021-06-18 08:21:31.496859	2021-06-18 09:34:33.151864	HTML 中 ul/ol 下的 li 前面的點或數字稱之為 marker，在 css 中可以使用 `::marker` 來替換內容\r\n\r\n```\r\n[data-marker]::marker {\r\n\tcontent: 'content here';\r\n}\r\n```\r\n\r\nordered list 可以給 li 元素加上 data-marker 屬性，實現動態替換\r\n\r\n```\r\n<li data-marker="<%= seq %>">\r\n\titem here\r\n</li>\r\n```\r\n\r\n```\r\n[data-marker]::marker {\r\n\tcontent: attr(data-marker);\r\n}\r\n```\r\n\r\n但是 chrome 瀏覽器預設的 ul/ol padding 是固定的 40px，自定義 marker 如果超過 40px 就會向左凸出所在的 space，比較難看。\r\n\r\n我們給容器設置一個變量，容器中的所有 li 元素的 marker 寬度都使用這個變量，方便統一調整，這裡預設使用 chrome 的 40px;\r\n\r\n```\r\n.toc {\r\n\t--min-dm-width: 40px;\r\n}\r\n```\r\n\r\n由於 `::marker` 不能修改 width，我們將 data-marker 放在 `::before` 偽元素上\r\n\r\n```\r\n[data-marker]::before {\r\n  content: attr(data-marker);\r\n  user-select: none;\r\n  text-align: right;\r\n}\r\n```\r\n\r\n用 JavaScript 計算所有 before 的最大值，設置到 css 變量中\r\n\r\n```\r\ndocument.querySelectorAll(".toc").forEach(toc => {\r\n  let max = 0;\r\n  toc.querySelectorAll("[data-marker]").forEach(el => {\r\n\tlet w = parseFloat(window.getComputedStyle(el, ':before').width);\r\n\tif (w > max) {\r\n\t  max = w;\r\n\t}\r\n  });\r\n  console.log("max: ", max);\r\n  toc.style.setProperty('--min-dm-width', max + "px");\r\n});\r\n\r\n```\r\n\r\n記得把 ul 的樣式去掉\r\n\r\n```\r\n.toc ul {\r\n\tpadding: 0;\r\n}\r\n.toc ul li {\r\n  list-style: none;\r\n}\r\n```\r\n\r\n這時候的樣式文字換行後從行首開始顯示\r\n\r\n用 flex 或者 inline-block 等方式也可以強制文字從數字後面開始第二行，但影響複製文字的使用體驗，不喜歡，改為用 padding + margin 的方式保留 inline 文字的同時讓文字向後縮進\r\n\r\n將 li 元素的 padding-left 設置為 數字序號 的寬度，再用 margin-left 將整個 block 向左移動回到原始的位置\r\n\r\n```\r\n.toc ul li {\r\n  padding-left: var(--min-dm-width);\r\n}\r\n.toc [data-marker]::before {\r\n  min-width: var(--min-dm-width);\r\n  margin-left: calc(0px - var(--min-dm-width));\r\n}\r\n```\r\n\r\n由於 inline 文字之間會有一個隱藏的空格，影響到位置的計算，第二行和第一行之間會相差一個空格的空間，可以用 float 去掉\r\n\r\n```\r\n[data-marker]::before {\r\n    float: left; \r\n}\r\n```\r\n\r\n\r\n不過去掉空格後，用 padding 或者 margin 都無法將數字序號和後面的文字隔開，要在 content 裡加 `&nbsp;` 來改變間隔\r\n在 content 裡的空格是 "\\00a0"\r\n\r\n```\r\n[data-marker]::before {\r\n    content: attr(data-marker) "\\00a0";\r\n}\r\n```\r\n\r\n最後樣式仍然有些奇怪的 bug，暫時先不理\r\n\r\n\r\n## All in One\r\n\r\n```\r\n.toc ul {\r\n    padding: 0;\r\n}\r\n\r\n.toc li[data-marker] {\r\n    list-style: none;\r\n    padding-left: var(--min-dm-width);\r\n}\r\n\r\n.toc li[data-marker]::before {\r\n    min-width: var(--min-dm-width);\r\n    margin-left: calc(0px - var(--min-dm-width));\r\n}\r\n\r\n[data-marker]::before {\r\n    content: attr(data-marker) "\\00a0";\r\n    user-select: none;\r\n    text-align: right;\r\n    float: left; \r\n}\r\n```\r\n\r\n```\r\ndocument.querySelectorAll(".toc").forEach(toc => {\r\n  let max = 0;\r\n  toc.querySelectorAll("[data-marker]").forEach(el => {\r\n\tlet w = parseFloat(window.getComputedStyle(el, ':before').width);\r\n\tif (w > max) {\r\n\t  max = w;\r\n\t}\r\n  });\r\n  console.log("max: ", max);\r\n  toc.style.setProperty('--min-dm-width', max + "px");\r\n});\r\n\r\n```	0	f	f
339	Web Technologies 精要 (HTML & CSS）	1	1	338	2021-06-21 00:52:16.24142	2021-06-21 00:56:54.173212	網頁技術簡介，HTML、CSS、JavaScript 的角色，熱身練習\r\nHTML 基礎，CSS 基礎（CSS Selector）以及練習\r\nCSS 佈局 (Flexbox) 講解\r\n使用 figma 繪畫一個簡單網站\r\n使用 HTML + CSS 將 Figma 繪畫的網站開發出來\r\nCSS 動畫（Animation、transition、transform） 以及動畫案例練習\r\nJavaScript 基礎（DataType、Events）及練習\r\nJavaScript DOM Manipulation 及 Data Binding 簡介\r\n多頁網站建構練習\r\nCSS 特效解說（常見特效）及練習\r\nVue 框架基礎用法及製作簡單計算器\r\nReact 框架基礎用法及製作簡單計算器	0	f	f
345	要点	1	1	341	2021-07-07 00:53:30.914499	2021-07-07 00:53:30.914499	"进化" Evolution, 可以说是人类历史上伟大的发现之一. 适者生存, 不适者淘汰, 达尔文的进化理论让我们见识到了自己是怎么来的. 那, 现在想象一下, 如果你的程序也能进化, 也用适者生存, 不适者淘汰的原则生长出一个牛逼的物种, 是不是很开心, 是不是很激动! 反正这就是我为什么会对这类算法特别感兴趣的原因之一了.	0	f	f
350	找一个好的fitness方程	2	1	342	2021-07-07 00:57:05.288188	2021-07-07 00:57:31.890291	所有的遗传算法 (Genetic Algorithm), 后面都简称 GA, 我们都需要一个评估好坏的方程, 这个方程通常被称为 fitness. 在今天的问题中, 我们找到下面这个曲线当中的最高点. 那么这个 fitness 方程就很好定, 越高的点, fitness 越高.\r\n\r\n\r\n如果这个曲线上任一点的 y 值是 pred 的话, 我们的 fitness 就是下面这样:\r\n\r\n```\r\ndef get_fitness(pred):\r\n    return pred\r\n```	0	f	f
346	大神们都拿它做了些什么	2	1	341	2021-07-07 00:53:44.128116	2021-07-07 00:54:33.888612	在 Youtube 上, 一搜就能搜到很多关于 Evolution Algorithm (之后简称为 EA) 的实验短片. 我截取了几个给大家看看, 后面也附上他们的链接. 如果你能翻墙, 也能看看他们有趣的实验.\r\n\r\n这些是上面实验的部分链接 ( 马里奥, 微生物进化)\r\nhttps://www.youtube.com/watch?v=qv6UVOQ0F44\r\nhttps://www.youtube.com/watch?v=2kupe2ZKK58\r\n	0	f	f
347	算法们	3	1	341	2021-07-07 00:55:11.035736	2021-07-07 00:55:11.035736	EA 包括了很多种类的算法, 但是这些算法的精髓都是围绕着达尔文的进化理论, 虽然有一些发展到后面, 有点偏离的这个轨道, 不过他们都是受这个的启蒙. 在 wiki上, EA 包括了:\r\n\r\n- 遗传算法 (Genetic Algorithm)\r\n- 进化策略 (Evolution strategy)\r\n- 神经进化 (Neuroevolution)\r\n- Genetic programming\r\n- ...\r\n\r\n在这一系列的教程中我们会着重讲解比较著名的 遗传算法 (Genetic Algorithm), 进化策略 (Evolution strategy) 和 神经进化 (Neuroevolution). 看看在多种多样的问题中, 他们是如何自由穿梭. 尤其是之后, 我们还会涉及到强化学习的内容. 在后续教程中我们就来看看能挑战当今流行的强化学习的 "进化方法".	0	f	f
348	这个教程的内容	4	1	341	2021-07-07 00:56:08.924953	2021-07-07 00:56:08.924953	在这个教程中, 我们会用实践的方式, 手把手教你如何在电脑里进化. 让你也能动手实践, 更好的理解消化知识点.\r\n\r\n比如用 OpenAI gym 来[训练你的小机器人].\r\n\r\n\r\n\r\n用简单的代码, 可视化各种进化算法的本质.\r\n\r\n\r\n旅行商人的[最短路径]问题:\r\n\r\n\r\n[配对句子]问题:\r\n\r\n\r\n结合了梯度下降的原则的[进化算法]:\r\n\r\n\r\n等等等等. 我们就来慢慢理解消化啦~	0	f	f
343	进化策略	4	1	340	2021-07-07 00:52:57.570388	2021-07-07 01:27:40.533696		2	f	f
349	要点	1	1	342	2021-07-07 00:56:49.781027	2021-07-07 00:56:49.781027	如果让我用一句话概括遗传算法: "在程序里生宝宝, 杀死不乖的宝宝, 让乖宝宝继续生宝宝".\r\n\r\n在这一节中, 我们的 "乖宝宝" 就是图中更高的点, 用遗传算法, 我们就能轻松找到 "最乖的宝宝".	0	f	f
344	神经进化	5	1	340	2021-07-07 00:53:03.42214	2021-07-07 01:34:46.517092		1	f	f
342	遗传算法 簡介	3	1	353	2021-07-07 00:52:52.012845	2021-07-07 00:59:59.208347		1	f	f
338	#17 培訓課程	\N	1	\N	2021-06-21 00:51:37.931501	2021-09-02 01:42:34.427067		1	f	f
340	進化算法	\N	1	\N	2021-07-07 00:52:25.411682	2021-07-07 01:26:51.959401	來自\r\nhttps://www.echenshe.com/class/ea/	1	f	f
351	DNA 编码	3	1	342	2021-07-07 00:58:00.957943	2021-07-07 00:58:00.957943	在 GA 中有基因, 为了方便, 我们直接就称为 DNA 吧. GA 中第二重要的就是这 DNA 了, 如何编码和解码 DNA, 就是你使用 GA 首先要想到的问题. 传统的 GA 中, DNA 我们能用一串二进制来表示, 比如:\r\n\r\n```\r\nDNA1 = [1, 1, 0, 1, 0, 0, 1]\r\nDNA2 = [1, 0, 1, 1, 0, 1, 1]\r\n```\r\n\r\n为什么会要用二进制编码, 我们之后在下面的内容中详细说明这样编码的好处. 但是长成这样的 DNA 并不好使用. 如果要将它解码, 我们可以将二进制转换成十进制, 比如二进制的 11 就是十进制的 3. 这种转换的步骤在程序中很好执行. 但是有时候我们会需要精确到小数, 其实也很简单, 只要再将十进制的数浓缩一下就好. 比如我有 1111 这么长的 DNA, 我们产生的十进制数范围是 [0, 15], 而我需要的范围是 [-1, 1], 我们就将 [0, 15] 缩放到 [-1, 1] 这个范围就好.\r\n\r\n```\r\ndef translateDNA(pop):\r\n    return pop.dot(2 ** np.arange(DNA_SIZE)[::-1]) / float(2**DNA_SIZE-1) * X_BOUND[1]\r\n```\r\n\r\n注意, 这里的 pop 是一个储存二进制 DNA 的矩阵, 他的 shape 是这样 (pop_size, DNA_size).	0	f	f
352	进化啦	4	1	342	2021-07-07 00:59:07.968219	2021-07-07 00:59:07.968219	进化分三步:\r\n\r\n- 适者生存 (selection)\r\n- DNA 交叉配对 (crossover)\r\n- DNA 变异 (mutation)\r\n\r\n我们用 python 的三个功能, 一个循环表示:\r\n\r\n```\r\n# 种群 DNA\r\npop = np.random.randint(2, size=(POP_SIZE, DNA_SIZE))\r\n\r\nF_values = F(translateDNA(pop))\r\nfitness = get_fitness(F_values)\r\npop = select(pop, fitness)      # 按适应度选 pop\r\npop_copy = pop.copy()           # 备个份\r\nfor parent in pop:\r\n    child = croseeover(parent, pop_copy)\r\n    child = mutate(child)\r\n    parent[:] = child           # 宝宝变大人\r\n```\r\n\r\n适者生存的 select() 很简单, 我们只要按照适应程度 fitness 来选 pop 中的 parent 就好. fitness 越大, 越有可能被选到.\r\n\r\n```\r\ndef select(pop, fitness):\r\n    idx = np.random.choice(np.arange(POP_SIZE), size=POP_SIZE, replace=True,\r\n                           p=fitness/fitness.sum()) # p 就是选它的比例\r\n    return pop[idx]\r\n```\r\n\r\n接下来进行交叉配对. 方式很简单. 比如这两个 DNA, Y 的点我们取 DNA1 中的元素, N 的点取 DNA2 中的. 生成的 DNA3 就有来自父母的基因了.\r\n\r\n```\r\nDNA1 = [1, 1, 0, 1, 0, 0, 1]\r\n       [Y, N, Y, N, N, Y, N]\r\nDNA2 = [1, 0, 1, 1, 0, 1, 1]\r\n\r\nDNA3 = [1, 0, 0, 1, 0, 0, 1]\r\n```\r\n\r\n而 python 写出来也很方便, 从 pop_copy 中随便选一个当另一个父辈 和 parent 进行随机的 crossover:\r\n\r\n```\r\ndef crossover(parent, pop):\r\n    if np.random.rand() < CROSS_RATE:\r\n        i_ = np.random.randint(0, POP_SIZE, size=1)  # select another individual from pop\r\n        cross_points = np.random.randint(0, 2, DNA_SIZE).astype(np.bool)  # choose crossover points\r\n        parent[cross_points] = pop[i_, cross_points]  # mating and produce one child\r\n    return parent\r\n```\r\n\r\nmutation 就更好写了, 将某些 DNA 中的 0 变成 1, 1 变成 0.\r\n\r\n```\r\ndef mutate(child):\r\n    for point in range(DNA_SIZE):\r\n        if np.random.rand() < MUTATION_RATE:\r\n            child[point] = 1 if child[point] == 0 else 0\r\n    return child\r\n```\r\n\r\n有了这些规则, select, crossover, mutate, 我们就能在程序里上演进化论啦.\r\n\r\n接下来几节内容, 我们就来看看在不同的情况中如何根据不同的标准选择 fitness 和 DNA 编码.	0	f	f
358	旅行商人问题 (Travel Sales Problem)	5	1	353	2021-07-07 01:02:05.083667	2021-07-07 01:02:22.888226		1	f	f
360	fitness 和 DNA	2	1	358	2021-07-07 01:02:49.648313	2021-07-07 01:02:49.648313	这次的编码 DNA 方式又不一样, 我们可以尝试对每一个城市有一个 ID, 那经历的城市顺序就是按 ID 排序咯. 比如说商人要经过3个城市, 我们就有\r\n\r\n```\r\n0-1-2\r\n0-2-1\r\n1-0-2\r\n1-2-0\r\n2-0-1\r\n2-1-0\r\n```\r\n\r\n这6种排列方式. 每一种排列方式我们就能把它当做一种 DNA 序列, 用 numpy 产生这种 DNA 序列的方式很简单.\r\n\r\n```\r\n>>> np.random.permutation(3)\r\n# array([1, 2, 0])\r\n```\r\n\r\n计算 fitness 的时候, 我们只要将 DNA 中这几个城市连成线, 计算一下总路径的长度, 根据长度, 我们定下规则, 越短的总路径越好, 下面的 fitness0 就用来计算 fitness 啦. 因为越短的路径我们更要价大幅度选择, 所以这里我用到了 fitness1 这种方式.\r\n\r\n```\r\nfitness0 = 1/total_distance\r\nfitness1 = np.exp(1/total_distance)\r\n```	0	f	f
353	遗传算法	2	1	340	2021-07-07 00:59:37.034873	2021-07-07 01:27:30.897634		2	f	f
355	要点	1	1	354	2021-07-07 01:00:24.345441	2021-07-07 01:00:24.345441	在这一节中, 我们用通过不同的编码 DNA 方式, 不同的 fitness 定义方式来让程序生成出自己设定的句子来.\r\n\r\n	0	f	f
356	fitness 和 DNA	2	1	354	2021-07-07 01:01:03.290109	2021-07-07 01:01:03.290109	上次我们提到过 GA 中最重要的就是怎么定义 fitness function, 怎么给 DNA 编码. 这次我们来句另一个例子. 比如我们有一个要生成的句子:\r\n\r\n```\r\nTarget:    You get it!\r\nGenerate:  YhtBget i@!\r\n```\r\n\r\n可以想象, 我们能够用这个句子长度的 DNA 来生成这个句子. 每个 DNA 代表一个字母. 如果对上的字母越多, 我的 fitness 就越高. 因为用一个 class 来代表 GA 会比较方便, 我们之后都用 class 来写.\r\n\r\n```\r\nclass GA:\r\n    def get_fitness(self):             # count how many character matches\r\n        match_count = (self.pop == TARGET_ASCII).sum(axis=1)\r\n        return match_count\r\n```\r\n\r\n而 DNA 呢, 可以都用数字, 而且可以用 ASCII 编码. 将数字转化成字符, 或者字符转数字都可以, 我们为了统一, DNA 都用数字形式.\r\n\r\n```\r\nclass GA:\r\n    def translateDNA(self, DNA):    # convert to readable string\r\n        return DNA.tostring().decode('ascii')\r\n```\r\n\r\n而字符转数字可以用 numpy 的这个功能:\r\n\r\n```\r\n>>> np.fromstring('dasd@', dtype=np.uint8)\r\n# array([100,  97, 115, 100,  64], dtype=uint8)\r\n```	0	f	f
357	进化啦	3	1	354	2021-07-07 01:01:36.928284	2021-07-07 01:01:36.928284	如果 GA 用一个 class 代替, 那 select, mutate, crossover 都是 class 里的功能了.\r\n\r\n```\r\nclass GA:\r\n    def select(self):\r\n\r\n    def crossover(self, parent, pop):\r\n\r\n    def mutate(self, child):\r\n```\r\n\r\n上面这三个功能的算法和[上节内容]差不多. 但是这个 class 中还有一个功能来将上面的三个功能联系起来. 其实这就是上节内容里面的 forloop 中的内容.\r\n\r\n```\r\nclass GA:\r\n    def evolve(self):\r\n        pop = self.select()\r\n        pop_copy = pop.copy()\r\n        for parent in pop:  # for every parent\r\n            child = self.crossover(parent, pop_copy)\r\n            child = self.mutate(child)\r\n            parent[:] = child\r\n        self.pop = pop\r\n```\r\n\r\n有了上面定义的这些功能, 再将其他的[小部分]补全. 我们就能很容易的使用这个 GA class 了.\r\n\r\n```\r\nga = GA(DNA_size=DNA_SIZE, DNA_bound=ASCII_BOUND, cross_rate=CROSS_RATE,\r\n            mutation_rate=MUTATION_RATE, pop_size=POP_SIZE)\r\n\r\nfor generation in range(N_GENERATIONS):\r\n    fitness = ga.get_fitness()\r\n    best_DNA = ga.pop[np.argmax(fitness)]\r\n    best_phrase = ga.translateDNA(best_DNA)\r\n    print('Gen', generation, ': ', best_phrase)\r\n    if best_phrase == TARGET_PHRASE:\r\n        break\r\n    ga.evolve()\r\n\r\n"""\r\nGen 0 :  !hT'ge0[px$\r\nGen 1 :  !n#'ged[p&!\r\nGen 2 :  YHJA(er6QM!\r\nGen 3 :  8=K@ge  "tZ\r\nGen 4 :  ThTVKet X7!\r\nGen 5 :  'oJ@ge06iM!\r\n...\r\nGen 179 :  Youqget it!\r\nGen 180 :  You'get it!\r\nGen 181 :  You get it!\r\n"""\r\n```\r\n\r\n接下来几节内容, 我们就来看看在不同的情况中如何根据不同的标准选择 fitness 和 DNA 编码.	0	f	f
354	配对句子	4	1	353	2021-07-07 01:00:12.340653	2021-07-07 01:02:01.013071		1	f	f
359	要点	1	1	358	2021-07-07 01:02:16.398734	2021-07-07 01:02:16.398734	我们在上几节内容中说道 遗传算法 (GA) 算法最主要的就是我们要想明白什么是他的 DNA 和怎么样对个体进行评估 (他们的 Fitness). 这次的旅行商人问题 (之后简称 TSP), 商人需要经过某几个城市, 但是城市之间的距离不一, 我们怎么规划路径, 成了一个复杂的问题. 如果计算每一条可行的路径, 就需要相当大的计算资源. 如果使用 GA, TSP 就能被当成一个非常典型的活学活用 GA 算法的问题. 他的 DNA 编码会有不一样的故事.	0	f	f
361	进化啦	3	1	358	2021-07-07 01:04:06.034898	2021-07-07 01:04:06.034898	同上次一样, 我们用一个 GA class 代替 GA 算法, 这个 class 里面有下面这几个主要功能.\r\n\r\n```\r\nclass GA:\r\n    def select(self, fitness):\r\n\r\n    def crossover(self, parent, pop):\r\n\r\n    def mutate(self, child):\r\n\r\n    def evolve(self):\r\n```\r\n\r\n不过我们要注意的是在 crossover 和 mutate 的时候有一点点不一样, 因为对于路径点, 我们不能随意变化. 比如 如果按平时的 crossover, 可能会是这样的结果:\r\n\r\n```\r\np1=[0,1,2,3] (爸爸)\r\n\r\np2=[3,2,1,0] (妈妈)\r\n\r\ncp=[m,b,m,b] (交叉点, m: 妈妈, b: 爸爸)\r\n\r\nc1=[3,1,1,3] (孩子)\r\n```\r\n\r\n那么这样的 c1 要经过两次城市 3, 两次城市1, 而没有经过 2, 0. 显然不行. 所以我们 crossover 以及 mutation 都要换一种方式进行. 其中一种可行的方式是这样. 同样是上面的例子.\r\n\r\n```\r\np1=[0,1,2,3] (爸爸)\r\n\r\ncp=[_,b,_,b] (选好来自爸爸的点)\r\n\r\nc1=[1,3,_,_] (先将爸爸的点填到孩子的前面)\r\n```\r\n\r\n此时除开来自爸爸的 1, 3. 还有0, 2 两个城市, 但是0,2 的顺序就按照妈妈 DNA 的先后顺序排列. 也就是 p2=[3,2,1,0] 的 0, 2 两城市在 p2 中是先有 2, 再有 0. 所以我们就按照这个顺序补去孩子的 DNA.\r\n\r\n```\r\nc1=[1,3,2,0]\r\n```\r\n\r\n按照这样的方式, 我们就能成功避免在 crossover 产生的问题: 访问多次通过城市的问题了. 用 Python 的写法很简单.\r\n\r\n```\r\nif np.random.rand() < self.cross_rate:\r\n    i_ = np.random.randint(0, self.pop_size, size=1)                        # select another individual from pop\r\n    cross_points = np.random.randint(0, 2, self.DNA_size).astype(np.bool)   # choose crossover points\r\n    keep_city = parent[~cross_points]                                       # find the city number\r\n    swap_city = pop[i_, np.isin(pop[i_].ravel(), keep_city, invert=True)]   # 找到与爸爸不同的城市\r\n    parent[:] = np.concatenate((keep_city, swap_city))\r\n\r\n```\r\n在 mutate 的时候, 也是找到两个不同的 DNA 点, 然后交换这两个点就好了.\r\n\r\n```\r\nfor point in range(self.DNA_size):\r\n    if np.random.rand() < self.mutate_rate:\r\n        swap_point = np.random.randint(0, self.DNA_size)\r\n        swapA, swapB = child[point], child[swap_point]\r\n        child[point], child[swap_point] = swapB, swapA\r\n```\r\n\r\n在 GA class 中, 其他的部分就和以前的例子非常相近了\r\n\r\n最后的循环主框架还是没变, 就像下面这么简单.\r\n\r\n```\r\nga = GA(...)\r\n\r\nfor generation in range(N_GENERATIONS):\r\n    fitness = ga.get_fitness()\r\n    ga.evolve(fitness)\r\n```	0	f	f
363	学习资料	1	1	362	2021-07-07 01:04:52.524623	2021-07-07 01:04:52.524623	\r\n论文 \r\n\r\nThe Microbial Genetic Algorithm \r\nhttps://pdfs.semanticscholar.org/b079/54447f861b074a54752b61af63d960862f92.pdf	0	f	f
362	Microbial Genetic Algorithm	6	1	353	2021-07-07 01:04:23.651125	2021-07-07 01:04:55.618443		1	f	f
364	要点	2	1	362	2021-07-07 01:05:01.776491	2021-07-07 01:05:01.776491	\r\n说到遗传算法 (GA), 有一点不得不提的是如何有效保留好的父母 (Elitism), 让好的父母不会消失掉. 这也是永远都给自己留条后路的意思. Microbial GA (后面统称 MGA) 就是一个很好的保留 Elitism 的算法. 一句话来概括: 在袋子里抽两个球, 对比两个球, 把球大的放回袋子里, 把球小的变一下再放回袋子里, 这样在这次选着中, 大球不会被改变任何东西, 就被放回了袋子, 当作下一代的一部分.	0	f	f
365	算法	3	1	362	2021-07-07 01:05:13.639751	2021-07-07 01:05:13.639751	像最开始说的那样, 我们有一些 population, 每次在进化的时候, 我们会从这个 pop 中随机抽 2 个 DNA 出来, 然后对比一下他们的 fitness, 我们将 fitness 高的定义成 winner, 反之是 loser. 我们不会去动任何 winner 的 DNA, 要动手脚的只有这个 loser, 比如对 loser 进行 crossover 和 mutate. 动完手脚后将 winner 和 loser 一同放回 pop 中.\r\n\r\n通过这样的流程, 我们就不用担心有时候变异着变异着, 那些原本好的 pop 流失掉了, 有了这个 MGA 算法, winner 总是会被保留下来的. GA 中的 Elitism 问题通过这种方法巧妙解决了.	0	f	f
366	进化啦	4	1	362	2021-07-07 01:05:53.574579	2021-07-07 01:05:53.574579	这次我们还是通过之前那个找曲线中最大点的方式诠释 MGA 算法. class 中的结构框架基本没变, 只是少了 select 的功能. 因为我们会将 select 功能写在 evolve 中. 这样方便点.\r\n\r\n```\r\nclass MGA:\r\n    def crossover(self, loser_winner):\r\n\r\n    def mutate(self, loser_winner):\r\n\r\n    def evolve(self, n):\r\n```\r\n\r\n首先我们先说 evolve, 在这个功能中, 两只手进入袋子去抓两个 DNA 出来的动作要进行 n 次, 然后每一次评估一下这两个抓出来的 DNA 的 fitness 怎么样. 这样我们就能定义这两个中, 哪个是 winner, 哪个是 loser. 对于 loser, 我们将 winner 的一部分 DNA crossover 去 loser 那, 期望 loser 有了 winner 的这一部分基因能变好一点. 然后 loser 再通过一部分几率 mutate 一下. 所以在 evolve 中的算法就是这样写:\r\n\r\n```\r\nclass MGA:\r\n    def evolve(self, n):    # nature selection wrt pop's fitness\r\n        for _ in range(n):  # random pick and compare n times\r\n            sub_pop_idx = np.random.choice(np.arange(0, self.pop_size), size=2, replace=False)\r\n            sub_pop = self.pop[sub_pop_idx]             # pick 2 from pop\r\n            product = F(self.translateDNA(sub_pop))\r\n            fitness = self.get_fitness(product)\r\n            loser_winner_idx = np.argsort(fitness)\r\n            loser_winner = sub_pop[loser_winner_idx]    # the first is loser and second is winner\r\n            loser_winner = self.crossover(loser_winner)\r\n            loser_winner = self.mutate(loser_winner)\r\n            self.pop[sub_pop_idx] = loser_winner\r\n```\r\n\r\ncrossover 和 mutate 都是按上面的说法, 只在 winner_loser 中进行. 因为这里的 DNA 是用二进制编码的.\r\n\r\n```\r\nclass MGA:\r\n    def crossover(self, loser_winner):      # crossover for loser\r\n        cross_idx = np.empty((self.DNA_size,)).astype(np.bool)\r\n        for i in range(self.DNA_size):\r\n            cross_idx[i] = True if np.random.rand() < self.cross_rate else False  # crossover index\r\n        loser_winner[0, cross_idx] = loser_winner[1, cross_idx]  # assign winners genes to loser\r\n        return loser_winner\r\n\r\n    def mutate(self, loser_winner):         # mutation for loser\r\n        mutation_idx = np.empty((self.DNA_size,)).astype(np.bool)\r\n        for i in range(self.DNA_size):\r\n            mutation_idx[i] = True if np.random.rand() < self.mutate_rate else False  # mutation index\r\n        # flip values in mutation points\r\n        loser_winner[0, mutation_idx] = ~loser_winner[0, mutation_idx].astype(np.bool)\r\n        return loser_winner\r\n```\r\n\r\n最后套上训练的循环, 就完事啦.\r\n\r\n```\r\nga = MGA(...)\r\n\r\nfor generation in range(N_GENERATIONS):\r\n    ga.evolve(n=5)\r\n```	0	f	f
368	要点	1	1	367	2021-07-07 01:06:44.232438	2021-07-07 01:06:44.232438	进化策略 (Evolution Strategy) 后面都简称 ES. 它和 遗传算法 GA 是好兄弟. 步骤和流程都非常相似.\r\n\r\n要我用一句话概括ES: 在程序里生宝宝, 杀死不乖的宝宝, 让乖宝宝继续生宝宝. 乍一听, 怎么和 GA 是完全一样的逻辑呢? 没关系, 我们在接下来的内容中揭晓他们的不同.\r\n\r\n本节要实践的内容提前看:	0	f	f
367	簡介	1	1	343	2021-07-07 01:06:35.783007	2021-07-07 01:06:49.302889		1	f	f
369	和遗传算法的异同	2	1	367	2021-07-07 01:07:07.242146	2021-07-07 01:07:07.242146	遗传算法 (后面简称 GA) 和 ES 真 TM 差不多. 导致很多朋友学习的时候, 都傻傻分不清. 不过我具体的列出来, 方便看清楚.\r\n\r\n- 选好父母进行繁殖 (GA); 先繁殖, 选好的孩子 (ES)\r\n- 通常用二进制编码 DNA (GA); 通常 DNA 就是实数, 比如 1.221 (ES)\r\n- 通过随机让 1 变成 0 这样变异 DNA (GA); 通过正态分布(Normal distribution)变异 DNA (ES)\r\n\r\n具体来说, 传统的 GA 的 DNA 形式是这样:\r\n\r\nDNA=11010010\r\n\r\n而传统的 ES DNA 形式分两种, 它有两条 DNA. 一个 DNA 是控制数值的, 第二个 DNA 是控制这个数值的变异强度. 比如一个问题有4个变量. 那一个 DNA 中就有4个位置存放这4个变量的值 (这就是我们要得到的答案值). 第二个 DNA 中就存放4个变量的变动幅度值.\r\n\r\nDNA1=1.23, -0.13, 2.35, 112.5 可以理解为4个正态分布的4个平均值.\r\n\r\nDNA2=0.1, 2.44, 5.112, 2.144 可以理解为4个正态分布的4个标准差.\r\n\r\n所以这两条 DNA 都需要被 crossover 和 mutate.	0	f	f
370	进化啦	3	1	367	2021-07-07 01:07:25.815805	2021-07-07 01:08:05.340648	写基础的 ES 算法其实很简单. 我总结起来, 其实就两个功能, make_kid 和 kill_bad\r\n\r\n```\r\ndef make_kid(pop, n_kid):\r\n    # 根据正态分布生孩子\r\n\r\ndef kill_bad(pop, kids):\r\n    # 杀了那些坏孩子和坏父母\r\n```\r\n\r\n对于今天的问题, 我们就是要找这张图中的最高点.\r\n\r\n\r\n而这个点只有一个, 所以我们的 DNA 的长度就只有一个. 我们用一个 python 字典来存这两种 DNA 的信息. 这里 DNA 存的是均值, mut_strength 存的是标准差.\r\n\r\n```\r\npop = dict(DNA=5 * np.random.rand(1, DNA_SIZE).repeat(POP_SIZE, axis=0),   # initialize the pop DNA values\r\n           mut_strength=np.random.rand(POP_SIZE, DNA_SIZE))\r\n```\r\n\r\n训练的主循环, (生死循环... 觉得血腥味很重..为什么我的遗传算法教程就没这么重血腥味呢..) 如下:\r\n\r\n```\r\nfor _ in range(N_GENERATIONS):\r\n    kids = make_kid(pop, N_KID)     # 生宝宝\r\n    pop = kill_bad(pop, kids)       # 杀宝宝\r\n```\r\n\r\n首先的 make_kid 功能. 我们随机找到一对父母, 然后将父母的 DNA 和 mut_strength 基因都 crossover 给 kid. 然后再根据 mut_strength mutate 一下 kid 的 DNA. 也就是用正态分布抽一个 DNA sample. 而且 mut_strength 也能变异. 将变异强度变异以后, 他就能在快收敛的时候很自觉的逐渐减小变异强度, 方便收敛.\r\n\r\n```\r\ndef make_kid(pop, n_kid):\r\n    # generate empty kid holder\r\n    kids = {'DNA': np.empty((n_kid, DNA_SIZE))}\r\n    kids['mut_strength'] = np.empty_like(kids['DNA'])\r\n    for kv, ks in zip(kids['DNA'], kids['mut_strength']):\r\n        # crossover (roughly half p1 and half p2)\r\n        p1, p2 = np.random.choice(np.arange(POP_SIZE), size=2, replace=False)\r\n        cp = np.random.randint(0, 2, DNA_SIZE, dtype=np.bool)  # crossover points\r\n        kv[cp] = pop['DNA'][p1, cp]\r\n        kv[~cp] = pop['DNA'][p2, ~cp]\r\n        ks[cp] = pop['mut_strength'][p1, cp]\r\n        ks[~cp] = pop['mut_strength'][p2, ~cp]\r\n\r\n        # mutate (change DNA based on normal distribution)\r\n        ks[:] = np.maximum(ks + (np.random.rand(*ks.shape)-0.5), 0.)    # must > 0\r\n        kv += ks * np.random.randn(*kv.shape)\r\n        kv[:] = np.clip(kv, *DNA_BOUND)    # clip the mutated value\r\n    return kids\r\n```\r\n\r\n接下来到了惊心动魄的杀人时间. 根据适应度 fitness 选择适应度最靠前的一些人, 抛弃掉那些适应度不佳的人. 这个很简单.\r\n\r\n```\r\ndef kill_bad(pop, kids):\r\n    # put pop and kids together\r\n    for key in ['DNA', 'mut_strength']:\r\n        pop[key] = np.vstack((pop[key], kids[key]))\r\n\r\n    fitness = get_fitness(F(pop['DNA']))            # calculate global fitness\r\n    idx = np.arange(pop['DNA'].shape[0])\r\n    good_idx = idx[fitness.argsort()][-POP_SIZE:]   # selected by fitness ranking (not value)\r\n    for key in ['DNA', 'mut_strength']:\r\n        pop[key] = pop[key][good_idx]\r\n    return pop\r\n```	0	f	f
372	要点	1	1	371	2021-07-07 01:08:34.659443	2021-07-07 01:08:34.659443	(1+1)-ES 是 ES 进化策略的一种形式, 也是众多形式中比较方便有效的一种. 接下来我们来细说他们的类别. 如果要我用一句话来概括 (1+1)-ES: 一个爸爸和一个孩子的战争\r\n\r\n本节要实践的内容提前看:\r\n\r\n	0	f	f
371	(1+1)-ES	2	1	343	2021-07-07 01:08:22.048784	2021-07-07 01:08:36.934809		1	f	f
373	ES的不同形式	2	1	371	2021-07-07 01:08:54.430194	2021-07-07 01:08:54.430194	像上面看到的, 统一来说都是 (μ/ρ +, λ)-ES, (1+1)-ES 只是一种特殊形式. 这里的 μ 是 population 的数量, ρ 是从 population 中选取的个数, 用来生成宝宝的. λ 是生成的宝宝数, 如果采用的是 "+" 形式的, 就是使用将 ρ + λ 混合起来进行适者生存, 如果是 "," 形式, 那么就是只使用 λ 进行适者生存.\r\n\r\n形式多种多样有些头疼. 不过在这一节中, 我们考虑的只是一个爸爸, 生成一个宝宝, 然后在爸爸和宝宝中进行适者生存的游戏, 选择爸爸和宝宝中比较好的那个当做下一代的爸爸. (1+1)-ES 总结如下:\r\n\r\n- 有一个爸爸;\r\n- 根据爸爸变异出一个宝宝;\r\n- 在爸爸和宝宝中选好的那个变成下一代爸爸.	0	f	f
374	进化啦	3	1	371	2021-07-07 01:10:02.319073	2021-07-07 01:10:02.319073	这次我们还是两个功能, make_kid 和 kill_bad\r\n\r\n```\r\ndef make_kid(parent):\r\n    # 根据 parent 正态分布生一个 kid\r\n\r\ndef kill_bad(parent, kid):\r\n    # 杀了坏孩子或者坏爸爸\r\n```\r\n\r\n所以所有的操作都只有一个数量的 pop. 这时我们在 (1+1)-ES 中的策略是 parent DNA 中只有存平均值, 没有变异强度 (标准差). 这次的变异强度 MUT_STRENGTH 是一个 global variable. 一个标量表示它就好.\r\n\r\n```\r\ndef make_kid(parent):\r\n    k = parent + MUT_STRENGTH * np.random.randn(DNA_SIZE)\r\n    return k\r\n```\r\n\r\n在 kill_bad 中, 我们选择更为适合的, 不管是爸爸还是孩子, 只要是适合的就留下, 不适合的杀掉. 但是还有注意的一点是, 在这一步我们还要对 MUT_STRENGTH 进行一点改变. 改变的方法遵循了 1/5 successful rule. 这个方法是 ES 的开山鼻祖提出来的. 文献在这:\r\n\r\nRechenberg, I. 1973. Evolutionsstrategie – Optimierung technischer Systeme nach Prinzipien der biologischen Evolution, Frommann-Holzboog.\r\n\r\n网上有个课件"Tutorial: CMA-ES — Evolution Strategies and Covariance Matrix Adaptation"里面一张图, 让你秒懂这个1/5的意思.\r\n\r\nhttps://www.lri.fr/~hansen/gecco2011-CMA-ES-tutorial.pdf\r\n\r\nimage\r\n\r\n图中的意思是, 还没到收敛的时候(上面左图), 我们增大 MUT_STRENGTH, 如果已经快到收敛了(上右图), 我们就减小 MUT_STRENGTH. 那如何判断是否快到收敛没呢, 就是如果有1/5的变异比原始的 parent 好的话, 就是快收敛了(像上右图). 在上左图中, 有一半比原始 parent 好, 一半比较差, 所以还没到收敛. 在上面提到的课件中, 用一个公式就能概括这种1/5关系.\r\n\r\nimage\r\n\r\n最后仿照上面的课件, 我写下了下面的 kill_bad 功能.\r\n\r\n```\r\ndef kill_bad(parent, kid):\r\n    global MUT_STRENGTH\r\n    fp = get_fitness(F(parent))[0]\r\n    fk = get_fitness(F(kid))[0]\r\n    p_target = 1/5\r\n    if fp < fk:     # kid better than parent\r\n        parent = kid\r\n        ps = 1.     # kid win -> ps = 1 (successful offspring)\r\n    else:\r\n        ps = 0.\r\n    # adjust global mutation strength\r\n    MUT_STRENGTH *= np.exp(1/np.sqrt(DNA_SIZE+1) * (ps - p_target)/(1 - p_target))\r\n    return parent\r\n```\r\n\r\n加上训练的主循环, 就大事告成.\r\n\r\n```\r\nparent = 5 * np.random.rand(DNA_SIZE)   # parent DNA\r\n\r\nfor _ in range(N_GENERATIONS):\r\n    kid = make_kid(parent)               # 生宝宝\r\n    parent = kill_bad(parent, kid)       # 杀宝宝\r\n```	0	f	f
376	要点	1	1	375	2021-07-07 01:10:34.750489	2021-07-07 01:10:34.750489	Natural ES 后面简称 NES, 应该就是算一种用适应度诱导的梯度下降法, 如果要我用一句话来概括 NES: 生宝宝, 用好宝宝的梯度辅助找到前进的方向\r\n\r\n本节要实践的内容提前看:	0	f	f
375	Natural Evolution Strategy	3	1	343	2021-07-07 01:10:23.76395	2021-07-07 01:10:39.04808		1	f	f
377	NES算法	2	1	375	2021-07-07 01:10:47.914144	2021-07-07 01:10:47.914144	image\r\n宝宝们的梯度是这个 gradient 加上这些宝宝们的 fitness fitness, 用梯度乘以 fitness 就是说, 加大力度往带来好 fitness 的梯度下降. 所以之后的宝宝们就会越来越多的下降到最优点啦. 那么我们要梯度下降的参数则是那些正态分布的均值和均方差.\r\n\r\n提到梯度下降, 哈哈, 那么那些 scipy, Tensorflow 都可以考虑用一用. 这个教程中将会使用到 Tensorflow 来完成这种梯度下降的做法.\r\n\r\nNES 的方法其实和强化学习中 [Policy Gradient]的方法非常接近. 简单来概括一下它们的不同: 在行为的策略上, PG 是扰动 Action, 不同的 action 带来不同的 reward, 通过 reward 大小对应上 action 来计算 gradient, 再反向传递 gradient. 但是 ES 是扰动 神经网络中的 Parameters, 不同的 parameters 带来不同的 reward, 通过 reward 大小对应上 parameters 来按比例更新原始的 parameters.	0	f	f
378	进化啦	3	1	375	2021-07-07 01:11:36.11001	2021-07-07 01:11:36.11001	Tensorflow 是神经网络模块, 虽然我们今天不拿它来做神经网络, 但是首先还是需要搭建一个计算图纸, 之后再往图纸里面灌数据. 不断自动梯度下降, 提升参数. 关于正态分布, 我们从 tf 中 import MultivariateNormalFullCovariance. 之前提出的要学习的变量包括均值和均方差, 但是到了多变量的正态分布, 我们要学习的就是协方差矩阵 Covariance matrix. 如果不太了解 Covariance matrix, 你就把他想象成要学习的均方差就行, 意思差不多.\r\n\r\n```\r\nimport tensorflow as tf\r\nfrom tensorflow.contrib.distributions import MultivariateNormalFullCovariance\r\n\r\nmean = tf.Variable(tf.random_normal([2, ], 13., 1.), dtype=tf.float32)\r\ncov = tf.Variable(5. * tf.eye(DNA_SIZE), dtype=tf.float32)\r\nmvn = MultivariateNormalFullCovariance(loc=mean, covariance_matrix=cov)\r\nmake_kid = mvn.sample(N_POP)\r\n```\r\n\r\n我们用 mean, cov 当作要学的变量, 放入 MultivariateNormalFullCovariance 中. 这时的 mvn 就是这个多变量正态分布啦. 采样的时候呢, 我们就能用 mvn.sample(N_POP). 记住, make_kid 目前只是在计算图纸上的功能, 还没被运行, 之后调用的时候才被运行.\r\n\r\n接下来搭建一些计算图纸上其他的东西, tfkids_fit 是将要被传入到计算图纸中的 fitness 值. tfkids 是之前 make_kid 采样出来的宝宝 DNA 们. 神经网络中有一个东西叫做误差, 有时候叫做 loss 或者 cost, 通过误差反向传递, 我们就能更新前面的 Variable 变量了. 为了变成 tf 形式, 之前的算法中 (梯度fitness), 就相当于 `mvn.log_prob(tfkids)tfkids_fit`.\r\n\r\n```\r\ntfkids_fit = tf.placeholder(tf.float32, [N_POP, ])\r\ntfkids = tf.placeholder(tf.float32, [N_POP, DNA_SIZE])\r\nloss = -tf.reduce_mean(mvn.log_prob(tfkids)*tfkids_fit)         # log prob * fitness\r\ntrain_op = tf.train.GradientDescentOptimizer(LR).minimize(loss) # compute and apply gradients for mean and cov\r\n```\r\n\r\n在 Tensorflow 中, 初始化自变量还有一步(必须):\r\n\r\n```\r\nsess = tf.Session()\r\nsess.run(tf.global_variables_initializer())\r\n```\r\n\r\n最后我们就能调用主循环来提升参数准确性了.\r\n\r\n```\r\nfor g in range(N_GENERATION):\r\n    kids = sess.run(make_kid)\r\n    kids_fit = get_fitness(kids)\r\n    sess.run(train_op, {tfkids_fit: kids_fit, tfkids: kids})    # update distribution parameters\r\n```	0	f	f
380	学习资料	1	1	379	2021-07-07 01:12:25.083808	2021-07-07 01:12:25.083808	NEAT 论文 (Evolving Neural Networks through Augmenting Topologies)\r\nhttp://nn.cs.utexas.edu/downloads/papers/stanley.ec02.pdf\r\n\r\nOpenAI 的 Evolution Strategies as a Scalable Alternative to Reinforcement Learning\r\nhttps://blog.openai.com/evolution-strategies/	0	f	f
379	簡介	1	1	344	2021-07-07 01:11:54.621803	2021-07-07 01:12:27.424557		1	f	f
381	要点	2	1	379	2021-07-07 01:13:03.645971	2021-07-07 01:13:03.645971	\r\n神经网络在当今是一种迅速发展的机器学习方式, 使用反向传播的神经网络更是被推向了一轮又一轮的高峰, 可是我们的视野请不要被反向传播的神经网络变得狭隘. 因为使用神经网络的机器学习方法还有这么一种叫做: 神经进化 (NeuroEvolution). 这种神经网络个人认为是更接近于生物的神经网络系统, 因为他和生物神经网络一样, 并没有反向传播这一步. 主导它解决问题的方式就是 "进化", 而反向传播的神经网络解决问题的方式, 我们可以看作是 "优化".\r\n\r\n以下是我在 Youtube 中搜索看到大家都拿 Neuro Evolution 做的小实验. 看上去很高大上呀. 是不是又激情澎湃了.\r\n\r\n这些是上面实验的部分链接 ( 马里奥, 微生物进化)\r\nhttps://www.youtube.com/watch?v=qv6UVOQ0F44\r\nhttps://www.youtube.com/watch?v=2kupe2ZKK58\r\n\r\n具体来说, Neuro Evolution 其实可以在很多方面来处理问题. 比如用它来做监督学习 (不过在这点上一般没有反向传播的神经网络学得快, 我们在下节内容里会做一个简单的监督学习例子), 还有可以拿它来做强化学习 (这和传统的强化学习 Reinforcement Learning 是有的一拼的, 在之后内容中我们使用 gym 模块来实现 NeuroEvolution 的强化学习).	0	f	f
382	神经网络进化的方式	3	1	379	2021-07-07 01:13:13.561471	2021-07-07 01:13:13.561471	说到进化, 我们之前看到了在遗传算法 (Genetic Algorithm) 中, 种群 Population 是通过不同的 DNA 配对, DNA 变异来实现物种的多样性, 然后通过自然选择 (Natural Selection), 繁衍下一代来实现 "适者生存, 不适者淘汰" 这条定律. 在神经网络中我们如何使用这种规律呢.\r\n\r\n尝试1: 固定神经网络形态 (Topology), 改变参数 (weight)\r\n这种思路很简单, 我们有一个全连接神经网络, 像下图:\r\n\r\nimage\r\n\r\n通过不断尝试变异, 修改链接中间的 weight, 改变神经网络的预测结果, 保留预测结果更准确的, 淘汰不那么准确的. 在这方面, OpenAI 在2017年做出了一个有贡献的研究. 他们将进化策略 (Evolution Strategy) 衍生到神经网络, 然后不断进化神经网络中的参数. 他们的实验结果都能够媲美很多强化学习方法, 比如 [Q-learning],[Policy Gradient].\r\n\r\n尝试2: 修改参数 和 形态\r\n这种变化更多, 除了参数, 形态也是能够改变的. 我们待会要提到的 NEAT 算法就是这样一种. 因为能够变化形态, 所以在 NEAT 中, 并不存在神经层这种东西.\r\n\r\nimage\r\n\r\n对比这两种不同的方式, 我们可以想象肯定是越能变化的, 结果会越好啦. 因为它能够探索的形态结构越多, 找到好方法的机会就越大. 而且还有一个优点就是, NEAT 可以最小化结构. 换句话说如果你拿一个 50 层的神经网络训练, 但是要解决的问题很简单, 并不会用到那么复杂的神经网络, 越多的层结构也是一种浪费, 所以用 NEAT 来自己探索需要使用多少链接, 他就能忽略那些没用的链接, 所以神经网络也就比较小, 而且小的神经网络运行也快嘛.	0	f	f
383	NEAT算法	4	1	379	2021-07-07 01:13:37.389817	2021-07-07 01:13:37.389817	\r\nNEAT 是一种典型的[遗传算法], 的算法详细解说可以参考这篇原始的 paper (Evolving Neural Networks through Augmenting Topologies), 如果想偷懒, 这篇在 conference 上的浓缩版(Efficient evolution of neural network topologies)也是很好的阅读材料.\r\n\r\n简单来说, NEAT 有几个关键步骤,\r\n\r\n使用 创新号码 (Innovation ID) 对神经网络的 直接编码 (direct coding)\r\n根据 innovation ID 进行 交叉配对 (crossover)\r\n对 神经元 (node), 神经链接 (link) 进行 基因突变 (mutation)\r\n尽量保留 生物多样性 (Speciation) (有些不好的网络说不定突然变异成超厉害的)\r\n通过初始化只有 input 连着 output 的神经网络来尽量减小神经网络的大小 (从最小的神经网络结构开始发展)\r\n我们再来具体看看他是怎么 搭建/交叉/变异 神经网络的. 之后的用图都是上面提到的 paper 中的.\r\n\r\nimage\r\n\r\n上面的图你可以想象成就是我们如何通过 DNA (图中的 Genome) 来编译出神经网络的. Node genes 很简单就是神经网络每个节点的定义. 哪些是输入, 哪些输出, 哪些是隐藏节点. Connect. Genes 则是对于每一个节点与节点的链接是什么样的形式, 从输入节点 (In) 到输出节点 (Out), 这个链接的参数 (weight) 是多少. 输出节点的值就是 Out = In * weight. 然后这条链接是要被使用 (Enabled) 还是不被使用 (DISAB). 最后就是这条链接专属的 创新号 (Innov)\r\n\r\n通过上面的 Genome 我们就能搭建出那个神经网络了, 可以看出我们有一个 2-5 DISAB 的链接, 原因就是在2-5之间我们已经变异出了一个4节点. 所以2-5 是通过 4 相链接的, 这样我们就需要将原来的 2-5 链接 disable 掉.\r\n\r\nimage\r\n\r\n关于变异呢. 我们可以有 节点变异 和 链接变异, 就和上图一样, 这个简单, 大家都看得出来. 但是要提的一点是, 如果新加的节点像 6 那样, 是在原有链接上的突变节点, 那么原来的 3-5 链接就要被 disable 掉.\r\n\r\nimage\r\n\r\n再来就是 crossover 了, 两个神经网络 "交配" 啦. 这时你就发现原来 innovation number 在这里是这么重要. 两个父母通过 innovation number 对齐, 双方都有的 innovation, 我们就随机选一个, 如果双方有个方没有的 Innovation, 我们就直接全部遗传给后代.\r\n\r\n之所以图上还出现了 "disjoint" 和 "excess" 的基因, 是因为在后面如果要区分种群不同度, 来选择要保留的种群的时候, 我们需要通过这个来计算, 计算方式我就不细提了, 大家知道有这么一回事就行.\r\n\r\n好了, 通过上面的方式一步步进行, 好的神经网络被保留, 坏的杀掉. 我们的神经网络就能朝着正确的方形进化啦.	0	f	f
384	进化策略与神经网络	5	1	379	2021-07-07 01:13:46.36989	2021-07-07 01:14:01.55335	\r\n[Evolution Strategy]相比较于 [Genetic Algorithm] 更加注重 mutation 的过程. 而且其中高度使用到了正态分布 (Normal distribution).\r\n\r\n而 OpenAI 提出的能够替代强化学习的 ES 可以终结如下:\r\n\r\n- 固定神经网络结构;\r\n- 使用正态分布来扰动 (perturb) 神经网络链接参数;\r\n- 使用扰动的网络在环境中收集奖励;\r\n- 用奖励 (reward) 或者 效用 (utility) 来诱导参数更新幅度;\r\n\r\n下面的图是 OpenAI 用来诠释 ES 算法的精辟:\r\n\r\nimage\r\n\r\n如果机器学习就是为了找到图中最红的地方, 那么 ES 就是在自己周围随机繁殖后代, 然后有些后代会靠近红色的地方, 有些不会. 那么我们就修改 ES 神经网络的参数, 让它更加像那些好后代的参数. 使用这种方式来越来越靠近红色.\r\n\r\n接下来的内容我们就来用代码实现上述的两种途径.	0	f	f
386	学习资料	1	1	385	2021-07-07 01:14:35.562372	2021-07-07 01:14:35.562372	NEAT 论文 (Evolving Neural Networks through Augmenting Topologies)\r\nhttp://nn.cs.utexas.edu/downloads/papers/stanley.ec02.pdf\r\n\r\nNEAT Python 模块\r\nhttp://neat-python.readthedocs.io/en/latest/neat_overview.html	0	f	f
385	NEAT 监督学习	2	1	344	2021-07-07 01:14:16.342563	2021-07-07 01:14:38.580224		1	f	f
387	要点	2	1	385	2021-07-07 01:14:56.76526	2021-07-07 01:14:56.76526	我们这次就来实现 NEAT 的算法. 因为 NEAT 相比普通的反向传播神经网络更加复杂. 我也尝试着纯手工编写 NEAT 算法. 可是... 尝试了几天过后, 因为太麻烦了, 我就放弃了. 我先总结下自己淌过的水, 如果你有能力解决下面提到的几点, 恭喜你, 你真的特别厉害. 我想提一下,如果用 NEAT 或者遗传算法做监督学习, 这会比用梯度的神经网络慢, 所以如果你想做监督学习, 梯度神经网络是你的最爱. 不过这个教程只是为了学习如何使用 NEAT, 之后我们再那它来做强化学习. 在强化学习上, NEAT 还是有优势的.\r\n\r\n难点 (1) 有效的储存编码的神经网络 (我用 numpy 解决了); (2) 有效的解码并生成一个可以正向传播的神经网络 (由于没有层结构, 不能方便地使用矩阵 dot 点乘. 我查了很多方法, 但是觉得那些方法都有点复杂, 有的也没效率); (3) 可视化网络结构 (当然要可视化啦, 不可视化出来, 你怎么知道自己的神经网络长什么样, 不好 debug 了呀); (4) NEAT 的 Recurrent link/node 不是通常说的 RNN, 处理形式不同.\r\n\r\n如果不能, 其实也没关系, 有高手已经写好了 NEAT 的 Python 模块, 我们直接调用就行. 下图就是使用 NEAT 模块生成的一个神经网络, 看起来很优雅吧.\r\n\r\nimage	0	f	f
388	安装 neat##python	3	1	385	2021-07-07 01:15:16.984116	2021-07-07 01:15:16.984116	\r\n我们可以直接在 terminal 中输入:\r\n\r\n```\r\n# python2+ 版本\r\n$ pip install neat-python\r\n\r\n# python3+ 版本\r\n$ pip3 install neat-python\r\n```\r\n\r\n目前的 neat 版本是 0.92, 如果之后安装不成功, 或者有所变化, 请参考这个网页.\r\n\r\n好了, 这就安装好了主程序了, 接下来为了可视化的效果, 我们还要检查一下是否有安装 graphviz 模块. 如果在你电脑中没有这个模块, 如果是 MacOS, 请直接 同上面的步骤 使用 pip install 就好了. 如果是 Linux, 使用 sudo apt-get install graphviz 就好.\r\n\r\n不过我在实际运行中发现了这个报错 "RuntimeError: Make sure the Graphviz executables are on your system's path", 简单搜索了一下,\r\n\r\n我是 MacOS, python3.5, 所以我在 terminal 中执行了 $ brew install graphviz 然后再重新用 $ pip3 install graphviz 就好了.\r\n\r\n最后确认你的有安装 matplotlib 和 numpy 就好了.	0	f	f
389	例子	4	1	385	2021-07-07 01:16:38.428807	2021-07-07 01:16:38.428807	\r\n接着我们来说说 neat-python 网页上的一个使用例子, 用 neat 来进化出一个神经网络预测 XOR 判断. 什么是 XOR 呢, 简单来说就是 OR 判断的改版.\r\n\r\n- 输入 True, True, 输出 False\r\n- 输入 False, True, 输出 True\r\n- 输入 True, False, 输出 True\r\n- 输入 False, False 输出 False\r\n\r\n在例子当中, 我们用这样的形式来代替要学习的 input 和 output:\r\n\r\n```\r\nxor_inputs = [(0.0, 0.0), (0.0, 1.0), (1.0, 0.0), (1.0, 1.0)]\r\nxor_outputs = [   (0.0,),     (1.0,),     (1.0,),     (0.0,)]\r\n```\r\n\r\n那怎么样来评价每个个体的适应度 (fitness), 或者说他的预测得分高低呢. 我们就对每个个体评分. 如果4个 xor 判断都预测对了就得4分, 用平方差来计算越策错的. 下面的 function 中就是根据每个 genome (DNA), 生成一个神经网络, 用这个神经网络预测, 再对这个 genome 打分, 并写入成它的 fitness.\r\n\r\n```\r\ndef eval_genomes(genomes, config):\r\n    for genome_id, genome in genomes:   # for each individual\r\n        genome.fitness = 4.0        # 4 xor evaluations\r\n        net = neat.nn.FeedForwardNetwork.create(genome, config)\r\n        for xi, xo in zip(xor_inputs, xor_outputs):\r\n            output = net.activate(xi)\r\n            genome.fitness -= (output[0] - xo[0]) ** 2\r\n```\r\n\r\n每一个 neat 的程序里有需要有这样的评分标准. 接着我们创建一个 config 的文件, 用来给定所有运行参数. 这个 config 文件要分开存储, 而且文件里要有一下几个方面的参数预设. 对于每个方面的解释, 不太明白的话, 请参考这里\r\n\r\n```\r\n[NEAT]\r\n[DefaultGenome]\r\n[DefaultSpeciesSet]\r\n[DefaultStagnation]\r\n[DefaultReproduction]\r\n```\r\n\r\n现在我们就能使用这些预设的参数来生成一个 config 的值了 (上面的 eval_genomes 也用到了这个 config).\r\n\r\n```\r\nlocal_dir = os.path.dirname(__file__)\r\nconfig_file = os.path.join(local_dir, 'config-feedforward')     # 参数文件\r\nconfig = neat.Config(neat.DefaultGenome, neat.DefaultReproduction,\r\n                     neat.DefaultSpeciesSet, neat.DefaultStagnation,\r\n                     config_file)\r\n```\r\n\r\n有了这个 config, 我们就能拿它来生成我们整个 population, 使用这个初始的 p 来训练 300 次, 注意在 config-forward 中我们设置了一个参数 fitness_threshold = 3.9, 就是说, 只要有任何一个 fitness 达到了 3.9 (最大4), 我们就停止迭代更新 population. 所以有可能不到 300 次就学好了. 学好之后, 我们输出表现最好的 winner.\r\n\r\n```\r\np = neat.Population(config)\r\nwinner = p.run(eval_genomes, 300)   # 输入计算 fitness 的方式和 generation 的次数\r\n```\r\n\r\n最主要的过程就完啦, 简单吧.\r\n\r\n```\r\nprint('\\nOutput:')\r\nwinner_net = neat.nn.FeedForwardNetwork.create(winner, config)\r\nfor xi, xo in zip(xor_inputs, xor_outputs):\r\n    output = winner_net.activate(xi)\r\n    print("input {!r}, expected output {!r}, got {!r}".format(xi, xo, output))\r\n```\r\n\r\n我们通过这个来输出最后的 winner 神经网络预测结果, 不出意外, 你应该预测很准. 最后通过 visualize.py 文件的可视化功能, 我们就能生成几个图片, 使用浏览器打开 speciation.svg 看看不同种群的变化趋势, avg_fitness.svg 看看 fitness 的变化曲线, Digraph.gv.svg 看这个生成的神经网络长怎样.\r\n\r\nimage\r\n\r\nimage\r\n\r\nimage\r\n\r\n关于最下面的那个神经网络图, 需要说明一下, 如果是实线, 如 B->1, B->2, 说明这个链接是 Enabled 的. 如果是虚线(点线), 如 B->A XOR B 就说明这个链接是 Disabled 的. 红色的线代表 weight <= 0, 绿色的线代表 weight > 0. 线的宽度和 weight 的大小有关.	0	f	f
391	学习资料	1	1	390	2021-07-07 01:17:25.976099	2021-07-07 01:17:25.976099	NEAT 论文 (Evolving Neural Networks through Augmenting Topologies)\r\nhttp://nn.cs.utexas.edu/downloads/papers/stanley.ec02.pdf\r\n\r\nNEAT Python 模块\r\nhttp://neat-python.readthedocs.io/en/latest/neat_overview.html	0	f	f
392	要点	2	1	390	2021-07-07 01:17:34.530414	2021-07-07 01:17:34.530414	\r\n我们见到了使用 NEAT 来进化出一个类似于监督学习中的神经网络, 这次我们用 NEAT 来做强化学习 (Reinforcement Learning), 这个强化学习可是没有反向传播的神经网络哦, 有的只是一个不断进化 (还可能进化到主宰人类) 的神经网络!! (哈哈, 骗你的, 因为每次提到在电脑里进化, 联想到科幻片, 我就激动!)\r\n\r\n立杆子的机器人最后学习的效果提前看:\r\n\r\n这个机器人的神经网络长这样:\r\n\r\nimage	0	f	f
393	gym 模拟环境	3	1	390	2021-07-07 01:17:46.687312	2021-07-07 01:17:46.687312	\r\nOpenAI gym 应该算是当下最流行的 强化学习练手模块了吧. 它有超级多的虚拟环境可以让你 plugin 你的 python 脚本.\r\n\r\nimage\r\n\r\n安装 gym 的方式也很简单, 大家可以直接参考之前 强化学习 Reinforcement learning 教程, 简单的介绍了如何安装 Gym. 如果还是遇到了问题, 这里或许能够找到答案.	0	f	f
390	NEAT 强化学习	3	1	344	2021-07-07 01:16:53.916525	2021-07-07 01:17:49.545117		1	f	f
394	CartPole 进化吧	4	1	390	2021-07-07 01:18:44.469426	2021-07-07 01:18:44.469426	\r\n这次进化的框架系统大致是这样的:\r\n\r\n```\r\ndef eval_genomes(genomes, config):\r\n    # 这是我们为每一个 genome 计算 fitness 的功能, 在 NEAT 中必备.\r\n\r\ndef run():\r\n    # 这是我们生成 population, 不断适者生存的地方\r\n\r\ndef evaluation():\r\n    # 我们挑选出最好的个体进行可视化测试\r\n```\r\n\r\n在 neat 的 config 文件中, 我想提到的几个地方是:\r\n\r\n```\r\nfitness_criterion     = max     # 按照适应度最佳的模式选个体\r\n# 为了一直立杆子下去, 这一个封顶值设置成永远达不到,\r\n# 具体看我在 eval_genomes 中如何计算 fitness 的\r\nfitness_threshold     = 2.\r\n\r\nactivation_default      = relu      # 我挑选的 激活函数\r\n\r\n# network 输入输出个数\r\nnum_hidden              = 0\r\nnum_inputs              = 4\r\nnum_outputs             = 2\r\n```\r\n\r\n有了这个 config 文件里面的信息, 我们就能创建网络和评估网络了. 和上次一样, 下面的功能对每一个个体生成一个神经网络, 然后把这个网络放在立杆子游戏中玩, 一个 generation 中我们对每一个 genome 的 net 测试 GENERATION_EP 这么多回合, 然后最后挑选这么多回合中总 reward 最少的那个回合当成这个 net 的 fitness (你可以想象这是木桶效应, 整体的效应取决于最差的那个结果). 然后要注意的是, net.activate() output 的是动作的值. 然后我们挑选一个值最大的动作.\r\n\r\n```\r\ndef eval_genomes(genomes, config):\r\n    for genome_id, genome in genomes:\r\n        net = neat.nn.FeedForwardNetwork.create(genome, config)\r\n        ep_r = []\r\n        for ep in range(GENERATION_EP): # run many episodes for the genome in case it's lucky\r\n            accumulative_r = 0.         # stage longer to get a greater episode reward\r\n            observation = env.reset()\r\n            for t in range(EP_STEP):\r\n                action_values = net.activate(observation)\r\n                action = np.argmax(action_values)\r\n                observation_, reward, done, _ = env.step(action)\r\n                accumulative_r += reward\r\n                if done:\r\n                    break\r\n                observation = observation_\r\n            ep_r.append(accumulative_r)\r\n        genome.fitness = np.min(ep_r)/float(EP_STEP)    # depends on the minimum episode reward\r\n```\r\n\r\n不知道大家看到这里有没有想过, 如果我们能并行运算该多好. 所以, 我亲测失败. 原因是, gym + neat 的环境不方便运行 multiprocessing. 如果你想多线程的话, 可以考虑使用 threading, 不过不保证效率有提高.\r\n\r\n接下来我们就开始写 run 里面的内容了, 创建种群, 繁衍后代, 适者生存, 不适者淘汰.\r\n\r\n```\r\ndef run():\r\n    config = neat.Config(neat.DefaultGenome, neat.DefaultReproduction,\r\n                         neat.DefaultSpeciesSet, neat.DefaultStagnation, CONFIG)\r\n    pop = neat.Population(config)\r\n    pop.run(eval_genomes, 10)       # train 10 generations\r\n```\r\n\r\n最后我们挑选一下保存的 checkpoint 文件, 展示出最强神经网络的样子吧.\r\n\r\n```\r\ndef evaluation():\r\n    p = neat.Checkpointer.restore_checkpoint('neat-checkpoint-%i' % CHECKPOINT)\r\n    winner = p.run(eval_genomes, 1)     # find the winner in restored population\r\n    net = neat.nn.FeedForwardNetwork.create(winner, p.config)\r\n    while True:\r\n        s = env.reset()\r\n        while True:\r\n            env.render()\r\n            a = np.argmax(net.activate(s))\r\n            s, r, done, _ = env.step(a)\r\n            if done: break\r\n```\r\n\r\n这串代码的结果就是这节内容最上面的那个视频效果啦. winner 的神经网络进化成这样了. 不过你的生成的神经网络可能并不是长这样. 有时候还可能某个 input 都没有使用到. 就说明这个 input 的效用可能并不大.\r\n\r\nimage\r\n\r\n如果是实线, 如 B->1, B->2, 说明这个链接是 Enabled 的. 如果是虚线(点线), 如 B->A XOR B 就说明这个链接是 Disabled 的. 红色的线代表 weight <= 0, 绿色的线代表 weight > 0. 线的宽度和 weight 的大小有关.	0	f	f
395	Recurrent link 和 node	5	1	390	2021-07-07 01:19:31.044706	2021-07-07 01:19:31.044706	如果修改一下 config 文件里面的参数, 比如下面的 feed_forward = True 改成 False, 我们就允许网络能产生 recurrent 节点或者链接. 这样的设置能使网络产生记忆功能. 就像循环神经网络那样. 神经网络的形式结构就能更加多种多样. 不过这里的 recurrent 貌似是和我们一般见到的 Recurrent Neural Network 有所不同, 我们通常说的 RNN 是通过一个 hidden state 来传递记忆, 而 NEAT 中的 Recurrent 是通过一种 "延迟刷新的形式" (不知道这样说对不对, 我是细看了一遍 NEAT-python 的底层代码发现的), 每一个时间点每个节点只接收这一时刻传来的信息. 比如下面第一张图中, 现在所有节点都为0, 如果我先更新 node3, 由于接收到了 act2=0, node3 还是会为0. 但是如果是先更新 act2, 等 act2 有值了再更新 node3, 那 node3 这时刻也会有值. 如果这是一个 feedforward net, 更新 link/node 的顺序十分重要, 上述情况肯定会出问题的. 不过在这种版本中的 recurrent, 程序不知道顺序, 所以每次都 copy 一份所有 node 的值, 用上一步的 node 的值进行这一步的操作, 这样进行 recurrent 的操作.\r\n\r\n```\r\nfeed_forward            = False\r\n```\r\n\r\n将所有原来的 net = neat.nn.FeedForwardNetwork 改成 neat.nn.RecurrentNetwork, 就能按上面所说的方式进行 recurrent 操作了.\r\n\r\n```\r\n# net = neat.nn.FeedForwardNetwork.create(winner, p.config)\r\nnet = neat.nn.RecurrentNetwork.create(genome, config)\r\n```\r\n\r\n这样我们就能发现, 产生的网络还能是这样, 注意箭头的方向和位置.\r\n\r\nimage\r\n\r\nimage\r\n\r\n最后, 在这里提一下, 还有一些根据 NEAT 改良的算法. 比如\r\n\r\n- HyperNEAT (A Hypercube-Based Encoding for Evolving Large-Scale Neural Networks), 使用 NEAT 形式生成 CPPN 的网络, 用 CPPN 进行 indirect encoding 生成更大更复杂的神经网络, 但是后者的网络结构的 capacity 不能改变;\r\n- ES-HyperNEAT (An Enhanced Hypercube-Based Encoding for Evolving the Placement, Density and Connectivity of Neurons), 解决上面提到的网络结构 capacity 不可变问题.	0	f	f
397	学习资料	1	1	396	2021-07-07 01:24:23.810361	2021-07-07 01:24:23.810361	论文 Evolution Strategies as a Scalable Alternative to Reinforcement Learning\r\nhttps://arxiv.org/abs/1703.03864	0	f	f
396	Evolution Strategy 强化学习	4	1	344	2021-07-07 01:24:07.356437	2021-07-07 01:24:27.069566		1	f	f
398	要点	2	1	396	2021-07-07 01:24:41.274197	2021-07-07 01:24:41.274197	\r\n我们见到了使用 NEAT 来进化出一个会立杆子的机器人. 这次, 我们使用另一种进化算法 Evolution Strategy (后面都用简称 ES 代替) 来实现大规模强化学习. 如果你的计算机是多核的, 我们还能将模拟程序并行到你多个核上去. 如果我用一句话概括强化学习上的 ES : 在自己附近生宝宝, 让自己更像那些表现好的宝宝\r\n\r\n本节内容提前看:\r\n	0	f	f
399	算法介绍	3	1	396	2021-07-07 01:25:06.702364	2021-07-07 01:25:06.702364	\r\nimage\r\n\r\n简单来说, 这个算法就是在不断地试错, 然后每一次试错后, 让自己更靠近到那些返回更多奖励的尝试点. 如果大家对强化学习的 Policy Gradient 有了解的话, 我们就来在这里说说 Policy Gradient (PG) 和 Evolution Strategy (ES) 的不同之处.\r\n\r\nimage\r\n\r\nPG 和 ES 是一对双胞胎兄弟, 他们非常像, 不过他们最重要的一点差别就是. PG 需要进行误差反向传播, 而 ES 不用. 在行为的策略上, PG 是扰动 Action, 不同的 action 带来不同的 reward, 通过 reward 大小对应上 action 来计算 gradient, 再反向传递 gradient. 但是 ES 是扰动 神经网络中的 Parameters, 不同的 parameters 带来不同的 reward, 通过 reward 大小对应上 parameters 来按比例更新原始的 parameters. 上图就阐述了这样的思路.\r\n\r\nOpenAI 官网上对这种算法的最简单 Python 诠释:\r\n\r\n```\r\n# 最简单的诠释: 找到 solution 中的值\r\nimport numpy as np\r\nsolution = np.array([0.5, 0.1, -0.3])\r\ndef f(w): return -np.sum((w - solution)**2)\r\n\r\nnpop = 50      # 种群数\r\nsigma = 0.1    # 噪点标准差\r\nalpha = 0.001  # 学习率\r\nw = np.random.randn(3) # 对 solution 的初始猜测\r\nfor i in range(300):\r\n  N = np.random.randn(npop, 3)  # 产生噪点\r\n  R = np.zeros(npop)\r\n  for j in range(npop):\r\n    w_try = w + sigma*N[j]\r\n    R[j] = f(w_try)             # 得到环境奖励\r\n  A = (R - np.mean(R)) / np.std(R)  # 归一化奖励\r\n  w = w + alpha/(npop*sigma) * np.dot(N.T, A)   # 更新参数\r\n```	0	f	f
400	gym模拟环境	4	1	396	2021-07-07 01:25:16.008637	2021-07-07 01:25:16.008637	\r\nOpenAI gym 应该算是当下最流行的 强化学习练手模块了吧. 它有超级多的虚拟环境可以让你 plugin 你的 python 脚本.\r\n\r\nimage 安装 gym 的方式也很简单, 大家可以直接参考之前 强化学习 Reinforcement learning 教程, 简单的介绍了如何安装 Gym. 如果还是遇到了问题, 这里或许能够找到答案.	0	f	f
401	Python实践	5	1	396	2021-07-07 01:26:21.639171	2021-07-07 01:26:21.639171	\r\n这次进化的框架系统大致是这样的:\r\n\r\n```\r\ndef get_reward():\r\n    # 机器人在环境中玩, 我们会通过 CPU 并行计算这个功能\r\n\r\ndef build_net():\r\n    # 建网络\r\n\r\ndef train():\r\n    # 让儿孙们尽情在平行世界玩耍\r\n    rewards = [get_reward() for i in range(N_KID)]\r\n    # 再用 rewards 更新 net\r\n\r\nbuild_net()\r\nfor g in range(N_GENERATION):\r\n    train()\r\n```\r\n\r\n接下来我们将会往这个框架上加很多东西. 首先, 我们使用 numpy 来搭建神经网络. 其实我发现, 用 tensorflow 这种模块来建网络可能比较麻烦, 所以为了更直观, 我就用 numpy 好了.\r\n\r\n```\r\ndef build_net():\r\n    def linear(n_in, n_out):  # network linear layer\r\n        w = np.random.randn(n_in * n_out).astype(np.float32) * .1\r\n        b = np.random.randn(n_out).astype(np.float32) * .1\r\n        return (n_in, n_out), np.concatenate((w, b))\r\n    s0, p0 = linear(CONFIG['n_feature'], 30)\r\n    s1, p1 = linear(30, 20)\r\n    s2, p2 = linear(20, CONFIG['n_action'])\r\n    return [s0, s1, s2], np.concatenate((p0, p1, p2))\r\n```\r\n\r\n这里我们搭建了3层网络, 注意我并没有让 w 和 b 变成矩阵, 因为在 ES 中, 我觉得1维的参数比较好进行加噪点处理. 之后我们在并行的时候再将参数变成矩阵形式. 所以这个地方, 我也 return 了各层的 shape 为了之后变矩阵.\r\n\r\n我们将使用 multiprocessing 这个模块来实现 CPU 的并行. 并行的时候传给每个 CPU 的数据越少, 运行越快, 所以与其将像这样的 np.random.randn(noise.size) array 噪点数据传入其他 CPU, 还不如在其他 CPU 运算的时候再组装这些噪点就好. 因为我们只需要给 CPU 传入一个数 noise seed 来代替庞大的 array, 用 seed 来伪随机生成 array, 这样能加速你的运算. 在更新网络的时候再用同样的 seed 伪随机构造同样的 array 更新就行. 虽然创建了两遍 array, 但是这还是比将 noise array 传入其他 CPU 快.\r\n\r\n```\r\ndef train(net_shapes, net_params, pool):\r\n    # 生成噪点的 seed\r\n    noise_seed = np.random.randint(0, 2 ** 32 - 1, size=N_KID, dtype=np.uint32) # 限制 seed 的范围.\r\n\r\n    # 用多进程完成 get_reward 功能\r\n    jobs = [pool.apply_async(get_reward, (这里是get_reward需要的数据, 比如 seed))\r\n            for k_id in range(N_KID)]\r\n    rewards = np.array([j.get() for j in jobs])\r\n\r\n    cumulative_update = np.zeros_like(net_params)       # initialize updated values\r\n    for k_id in range(N_KID):\r\n        np.random.seed(noise_seed[k_id])                # reconstruct noise using seed\r\n        cumulative_update += rewards[k_id] * np.random.randn(net_params.size)\r\n\r\n    net_params = net_params + LR/(N_KID*SIGMA) * cumulative_update\r\n    return net_params\r\n```\r\n\r\n上面的这个 pool 是我们用了 multiprocessing.Pool 生成的多进程池. 拿到每个 kid 的 reward 后, 我们重新按照之前的 seed 组装 noise, 在进行 net_params 的更新.\r\n\r\n而是使用了 utility 这个东西. 简单来说, 就是将 reward 排序, reward 最大的那个, 对应上 utility 的第一个, 反之, reward 最小的对应上 utility 最后一位. 而我们的 utility 长这样:\r\n\r\nimage\r\n\r\nOpenAI 的 paper 当中提到这样会促进学习, 我想这样的效果应该和 normalize reward 的效果差不多. 我们就按 OpenAI 提到的方法来.\r\n\r\n接下来要开始定义在平行的 CPU 中怎么样玩啦 get_reward().\r\n\r\n```\r\ndef get_reward(shapes, params, env, ep_max_step, seed,):\r\n    np.random.seed(seed)    # 使用 seed 按规律伪随机生成噪点\r\n    params += SIGMA * np.random.randn(params.size)\r\n\r\n    # 将 params 变成矩阵形式\r\n    p = params_reshape(shapes, params)\r\n    # 开始用 gym 模拟\r\n    s = env.reset()\r\n    ep_r = 0.\r\n    for step in range(ep_max_step):\r\n        a = get_action(p, s)    # 神经网络选择行为\r\n        s, r, done, _ = env.step(a)\r\n        ep_r += r\r\n        if done: break\r\n    return ep_r     # 返回回合奖励\r\n```\r\n\r\n同样, 上面的 get_reward() 也是简单版本的, 用了论文中提到的 mirrored sampling 这种方法 (论文名: Mirrored Sampling and Sequential Selection for Evolution Strategies). 下面是这个论文中的图.\r\n\r\nimage\r\n\r\n简单说, 我们会生成很多噪点, 与其完全随机, 还不如生成一些镜像的噪点. 那这些镜像噪点中, 大多数情况都是其中一个比另一个好, 所以总会有比较好的那个一个噪点, 我们就利用镜像中比较好的噪点, 加大幅度更新.\r\n\r\n上面的就是 ES 的核心功能了, 你在这里挑选不同的模拟环境:\r\n\r\n```\r\nCONFIG = [\r\n    dict(game="CartPole-v0", ......),\r\n    dict(game="MountainCar-v0", ......),\r\n    dict(game="Pendulum-v0", ......)\r\n][2]        # 这里选择要运行的游戏\r\n```\r\n\r\n然后试试不同的参数:\r\n\r\n```\r\nN_KID = 10                  # half of the training population\r\nN_GENERATION = 5000         # training step\r\nLR = .05                    # learning rate\r\nSIGMA = .05                 # mutation strength or step size\r\n```\r\n\r\n你就能对 ES 有个大概的了解了. 注意, 每个游戏环境的运行时间长短, 取决于你的硬件, 比如你有2核, 像 MountainCar 可能运行5-10分钟吧. CartPole 是最简单一个环境了, 学会的时间最短. 我用 MacBook 两核, 跑了不到30秒就能立起杆子了. 最终的效果也就和你在教程最开头看到的一样.\r\n\r\n看好 OpenAI 的这种算法, 这套算法还比较原始和死板, 之后应该会有很多基于他的算法改进版. 我们拭目以待吧.	0	f	f
402	設計軟件的使用	2	1	338	2021-09-02 01:41:54.286437	2021-09-02 01:41:54.286437		0	f	f
404	Vanilla JavaScript	1	1	403	2021-09-02 01:42:50.067998	2021-09-02 01:43:48.12268		0	f	f
405	JavaScript Fundamentals	1	1	404	2021-09-02 01:44:00.425151	2021-09-02 01:44:00.425151		0	f	f
406	DOM Manipulation & Event Handler	2	1	404	2021-09-02 01:44:54.9563	2021-09-02 01:45:39.978979		0	f	f
407	Canvas & SVG	3	1	404	2021-09-02 01:45:04.178815	2021-09-02 01:46:07.634298		0	f	f
409	Hello World	1	1	408	2021-09-02 01:46:57.403521	2021-09-02 01:46:57.403521		0	f	f
410	Project Structure	2	1	408	2021-09-02 01:47:08.142973	2021-09-02 01:47:08.142973		0	f	f
411	Single File Component	3	1	408	2021-09-02 01:47:15.378349	2021-09-02 01:47:15.378349		0	f	f
408	Vue	2	1	403	2021-09-02 01:46:19.877673	2021-09-02 01:49:16.744898		1	f	f
416	Binding Styles	6	1	417	2021-09-02 01:48:11.447819	2021-09-02 02:01:04.390529		0	f	f
415	Binding Classes	5	1	417	2021-09-02 01:48:04.738165	2021-09-02 02:01:05.615172		0	f	f
418	Data & Methods	10	1	408	2021-09-02 01:55:09.115265	2021-09-02 01:58:00.279736		0	f	f
414	Binding Attributes	4	1	417	2021-09-02 01:47:43.063222	2021-09-02 02:01:06.981062		0	f	f
403	前端 App 開發	3	1	338	2021-09-02 01:42:00.557381	2021-09-02 01:58:54.976598		2	f	f
413	Binding HTML	3	1	417	2021-09-02 01:47:30.347934	2021-09-02 02:01:08.184863		0	f	f
412	Binding Text	2	1	417	2021-09-02 01:47:22.24597	2021-09-02 02:01:09.574709		0	f	f
421	Directive	1	1	420	2021-09-02 02:01:43.355587	2021-09-02 02:02:21.011276	Directives are special attributes with the `v-` prefix.	0	f	f
422	Arguments	2	1	420	2021-09-02 02:01:49.993504	2021-09-02 02:03:05.185816	Some directives can take an "argument", denoted by a colon after the directive name. \r\ne.g `v-bind:href`	0	f	f
419	Dynamic Arguments	7	1	420	2021-09-02 01:59:28.534094	2021-09-02 02:03:52.340124	`v-bind:[attributeName]`	0	f	f
420	Syntax	1	1	417	2021-09-02 02:01:00.687459	2021-09-02 02:03:57.346699		1	f	f
423	Modifiers	8	1	420	2021-09-02 02:04:32.157913	2021-09-02 02:04:32.157913	`v-on:click.prevent`	0	f	f
424	Shorthands	9	1	420	2021-09-02 02:05:21.878994	2021-09-02 02:06:15.825044	`v-bind:href` => `:href`\r\n`v-bind:[key]` => `:[key]`\r\n\r\n`v-on:click` => `@click`\r\n`v-on:[method]` => `@[method]`	0	f	f
417	Template Syntax	9	1	408	2021-09-02 01:48:16.686245	2021-09-02 02:06:26.606855		1	f	f
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: u3
--

COPY public.users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, confirmation_token, confirmed_at, confirmation_sent_at, unconfirmed_email, failed_attempts, unlock_token, locked_at, created_at, updated_at) FROM stdin;
1	mayapainter@gmail.com	$2a$12$a41QCGTLwlaXbYl445vdZeEjRQ9CSmATnj9YiV0FSLgz8x6NA9GY6	\N	\N	\N	12	2022-04-26 01:48:53.509943	2021-10-29 06:58:07.054435	202.175.108.98	202.175.108.98	8PVxdSB7TBZfrfKyHnbx	2021-06-16 04:57:32.17721	2021-06-16 04:56:35.532993	\N	0	\N	\N	2021-06-16 04:56:35.532702	2022-04-26 01:48:53.510585
\.


--
-- Name: action_text_rich_texts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: u3
--

SELECT pg_catalog.setval('public.action_text_rich_texts_id_seq', 1, false);


--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: u3
--

SELECT pg_catalog.setval('public.active_storage_attachments_id_seq', 1, false);


--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: u3
--

SELECT pg_catalog.setval('public.active_storage_blobs_id_seq', 1, false);


--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE SET; Schema: public; Owner: u3
--

SELECT pg_catalog.setval('public.active_storage_variant_records_id_seq', 1, false);


--
-- Name: topics_id_seq; Type: SEQUENCE SET; Schema: public; Owner: u3
--

SELECT pg_catalog.setval('public.topics_id_seq', 424, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: u3
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- Name: action_text_rich_texts action_text_rich_texts_pkey; Type: CONSTRAINT; Schema: public; Owner: u3
--

ALTER TABLE ONLY public.action_text_rich_texts
    ADD CONSTRAINT action_text_rich_texts_pkey PRIMARY KEY (id);


--
-- Name: active_storage_attachments active_storage_attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: u3
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT active_storage_attachments_pkey PRIMARY KEY (id);


--
-- Name: active_storage_blobs active_storage_blobs_pkey; Type: CONSTRAINT; Schema: public; Owner: u3
--

ALTER TABLE ONLY public.active_storage_blobs
    ADD CONSTRAINT active_storage_blobs_pkey PRIMARY KEY (id);


--
-- Name: active_storage_variant_records active_storage_variant_records_pkey; Type: CONSTRAINT; Schema: public; Owner: u3
--

ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT active_storage_variant_records_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: u3
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: u3
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: topics topics_pkey; Type: CONSTRAINT; Schema: public; Owner: u3
--

ALTER TABLE ONLY public.topics
    ADD CONSTRAINT topics_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: u3
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_action_text_rich_texts_uniqueness; Type: INDEX; Schema: public; Owner: u3
--

CREATE UNIQUE INDEX index_action_text_rich_texts_uniqueness ON public.action_text_rich_texts USING btree (record_type, record_id, name);


--
-- Name: index_active_storage_attachments_on_blob_id; Type: INDEX; Schema: public; Owner: u3
--

CREATE INDEX index_active_storage_attachments_on_blob_id ON public.active_storage_attachments USING btree (blob_id);


--
-- Name: index_active_storage_attachments_uniqueness; Type: INDEX; Schema: public; Owner: u3
--

CREATE UNIQUE INDEX index_active_storage_attachments_uniqueness ON public.active_storage_attachments USING btree (record_type, record_id, name, blob_id);


--
-- Name: index_active_storage_blobs_on_key; Type: INDEX; Schema: public; Owner: u3
--

CREATE UNIQUE INDEX index_active_storage_blobs_on_key ON public.active_storage_blobs USING btree (key);


--
-- Name: index_active_storage_variant_records_uniqueness; Type: INDEX; Schema: public; Owner: u3
--

CREATE UNIQUE INDEX index_active_storage_variant_records_uniqueness ON public.active_storage_variant_records USING btree (blob_id, variation_digest);


--
-- Name: index_topics_on_topic_id; Type: INDEX; Schema: public; Owner: u3
--

CREATE INDEX index_topics_on_topic_id ON public.topics USING btree (topic_id);


--
-- Name: index_topics_on_user_id; Type: INDEX; Schema: public; Owner: u3
--

CREATE INDEX index_topics_on_user_id ON public.topics USING btree (user_id);


--
-- Name: index_users_on_confirmation_token; Type: INDEX; Schema: public; Owner: u3
--

CREATE UNIQUE INDEX index_users_on_confirmation_token ON public.users USING btree (confirmation_token);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: u3
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: u3
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- Name: index_users_on_unlock_token; Type: INDEX; Schema: public; Owner: u3
--

CREATE UNIQUE INDEX index_users_on_unlock_token ON public.users USING btree (unlock_token);


--
-- Name: active_storage_variant_records fk_rails_993965df05; Type: FK CONSTRAINT; Schema: public; Owner: u3
--

ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT fk_rails_993965df05 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- Name: active_storage_attachments fk_rails_c3b3935057; Type: FK CONSTRAINT; Schema: public; Owner: u3
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT fk_rails_c3b3935057 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- PostgreSQL database dump complete
--

