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
-- Name: active_storage_attachments; Type: TABLE; Schema: public; Owner: cor_admin
--

CREATE TABLE public.active_storage_attachments (
    id bigint NOT NULL,
    name character varying NOT NULL,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    blob_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.active_storage_attachments OWNER TO cor_admin;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: cor_admin
--

CREATE SEQUENCE public.active_storage_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_attachments_id_seq OWNER TO cor_admin;

--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cor_admin
--

ALTER SEQUENCE public.active_storage_attachments_id_seq OWNED BY public.active_storage_attachments.id;


--
-- Name: active_storage_blobs; Type: TABLE; Schema: public; Owner: cor_admin
--

CREATE TABLE public.active_storage_blobs (
    id bigint NOT NULL,
    key character varying NOT NULL,
    filename character varying NOT NULL,
    content_type character varying,
    metadata text,
    service_name character varying NOT NULL,
    byte_size bigint NOT NULL,
    checksum character varying,
    created_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.active_storage_blobs OWNER TO cor_admin;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE; Schema: public; Owner: cor_admin
--

CREATE SEQUENCE public.active_storage_blobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_blobs_id_seq OWNER TO cor_admin;

--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cor_admin
--

ALTER SEQUENCE public.active_storage_blobs_id_seq OWNED BY public.active_storage_blobs.id;


--
-- Name: active_storage_variant_records; Type: TABLE; Schema: public; Owner: cor_admin
--

CREATE TABLE public.active_storage_variant_records (
    id bigint NOT NULL,
    blob_id bigint NOT NULL,
    variation_digest character varying NOT NULL
);


ALTER TABLE public.active_storage_variant_records OWNER TO cor_admin;

--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE; Schema: public; Owner: cor_admin
--

CREATE SEQUENCE public.active_storage_variant_records_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.active_storage_variant_records_id_seq OWNER TO cor_admin;

--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cor_admin
--

ALTER SEQUENCE public.active_storage_variant_records_id_seq OWNED BY public.active_storage_variant_records.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: cor_admin
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO cor_admin;

--
-- Name: comments; Type: TABLE; Schema: public; Owner: cor_admin
--

CREATE TABLE public.comments (
    id bigint NOT NULL,
    title character varying,
    comment text,
    commentable_type character varying,
    commentable_id bigint,
    user_id bigint,
    role character varying DEFAULT 'comments'::character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.comments OWNER TO cor_admin;

--
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: cor_admin
--

CREATE SEQUENCE public.comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comments_id_seq OWNER TO cor_admin;

--
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cor_admin
--

ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;


--
-- Name: ingredients; Type: TABLE; Schema: public; Owner: cor_admin
--

CREATE TABLE public.ingredients (
    id bigint NOT NULL,
    recipe_id bigint NOT NULL,
    name character varying,
    quantity double precision NOT NULL,
    unit character varying NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ingredients OWNER TO cor_admin;

--
-- Name: ingredients_id_seq; Type: SEQUENCE; Schema: public; Owner: cor_admin
--

CREATE SEQUENCE public.ingredients_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ingredients_id_seq OWNER TO cor_admin;

--
-- Name: ingredients_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cor_admin
--

ALTER SEQUENCE public.ingredients_id_seq OWNED BY public.ingredients.id;


--
-- Name: items; Type: TABLE; Schema: public; Owner: cor_admin
--

CREATE TABLE public.items (
    id bigint NOT NULL,
    name character varying,
    description text,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    user_id bigint
);


ALTER TABLE public.items OWNER TO cor_admin;

--
-- Name: items_id_seq; Type: SEQUENCE; Schema: public; Owner: cor_admin
--

CREATE SEQUENCE public.items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.items_id_seq OWNER TO cor_admin;

--
-- Name: items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cor_admin
--

ALTER SEQUENCE public.items_id_seq OWNED BY public.items.id;


--
-- Name: marks; Type: TABLE; Schema: public; Owner: cor_admin
--

CREATE TABLE public.marks (
    id bigint NOT NULL,
    context character varying,
    markable_type character varying,
    markable_id bigint,
    user_id bigint,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.marks OWNER TO cor_admin;

--
-- Name: marks_id_seq; Type: SEQUENCE; Schema: public; Owner: cor_admin
--

CREATE SEQUENCE public.marks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.marks_id_seq OWNER TO cor_admin;

--
-- Name: marks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cor_admin
--

ALTER SEQUENCE public.marks_id_seq OWNED BY public.marks.id;


--
-- Name: recipes; Type: TABLE; Schema: public; Owner: cor_admin
--

CREATE TABLE public.recipes (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    user_id integer,
    preparation text,
    timing character varying,
    container character varying
);


ALTER TABLE public.recipes OWNER TO cor_admin;

--
-- Name: recipes_id_seq; Type: SEQUENCE; Schema: public; Owner: cor_admin
--

CREATE SEQUENCE public.recipes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.recipes_id_seq OWNER TO cor_admin;

--
-- Name: recipes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cor_admin
--

ALTER SEQUENCE public.recipes_id_seq OWNED BY public.recipes.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: cor_admin
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO cor_admin;

--
-- Name: taggings; Type: TABLE; Schema: public; Owner: cor_admin
--

CREATE TABLE public.taggings (
    id bigint NOT NULL,
    tag_id bigint,
    taggable_type character varying,
    taggable_id bigint,
    tagger_type character varying,
    tagger_id bigint,
    context character varying(128),
    created_at timestamp without time zone,
    tenant character varying(128)
);


ALTER TABLE public.taggings OWNER TO cor_admin;

--
-- Name: taggings_id_seq; Type: SEQUENCE; Schema: public; Owner: cor_admin
--

CREATE SEQUENCE public.taggings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taggings_id_seq OWNER TO cor_admin;

--
-- Name: taggings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cor_admin
--

ALTER SEQUENCE public.taggings_id_seq OWNED BY public.taggings.id;


--
-- Name: tags; Type: TABLE; Schema: public; Owner: cor_admin
--

CREATE TABLE public.tags (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    taggings_count integer DEFAULT 0
);


ALTER TABLE public.tags OWNER TO cor_admin;

--
-- Name: tags_id_seq; Type: SEQUENCE; Schema: public; Owner: cor_admin
--

CREATE SEQUENCE public.tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tags_id_seq OWNER TO cor_admin;

--
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cor_admin
--

ALTER SEQUENCE public.tags_id_seq OWNED BY public.tags.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: cor_admin
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp(6) without time zone,
    remember_created_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    name character varying
);


ALTER TABLE public.users OWNER TO cor_admin;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: cor_admin
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO cor_admin;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cor_admin
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: active_storage_attachments id; Type: DEFAULT; Schema: public; Owner: cor_admin
--

ALTER TABLE ONLY public.active_storage_attachments ALTER COLUMN id SET DEFAULT nextval('public.active_storage_attachments_id_seq'::regclass);


--
-- Name: active_storage_blobs id; Type: DEFAULT; Schema: public; Owner: cor_admin
--

ALTER TABLE ONLY public.active_storage_blobs ALTER COLUMN id SET DEFAULT nextval('public.active_storage_blobs_id_seq'::regclass);


--
-- Name: active_storage_variant_records id; Type: DEFAULT; Schema: public; Owner: cor_admin
--

ALTER TABLE ONLY public.active_storage_variant_records ALTER COLUMN id SET DEFAULT nextval('public.active_storage_variant_records_id_seq'::regclass);


--
-- Name: comments id; Type: DEFAULT; Schema: public; Owner: cor_admin
--

ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);


--
-- Name: ingredients id; Type: DEFAULT; Schema: public; Owner: cor_admin
--

ALTER TABLE ONLY public.ingredients ALTER COLUMN id SET DEFAULT nextval('public.ingredients_id_seq'::regclass);


--
-- Name: items id; Type: DEFAULT; Schema: public; Owner: cor_admin
--

ALTER TABLE ONLY public.items ALTER COLUMN id SET DEFAULT nextval('public.items_id_seq'::regclass);


--
-- Name: marks id; Type: DEFAULT; Schema: public; Owner: cor_admin
--

ALTER TABLE ONLY public.marks ALTER COLUMN id SET DEFAULT nextval('public.marks_id_seq'::regclass);


--
-- Name: recipes id; Type: DEFAULT; Schema: public; Owner: cor_admin
--

ALTER TABLE ONLY public.recipes ALTER COLUMN id SET DEFAULT nextval('public.recipes_id_seq'::regclass);


--
-- Name: taggings id; Type: DEFAULT; Schema: public; Owner: cor_admin
--

ALTER TABLE ONLY public.taggings ALTER COLUMN id SET DEFAULT nextval('public.taggings_id_seq'::regclass);


--
-- Name: tags id; Type: DEFAULT; Schema: public; Owner: cor_admin
--

ALTER TABLE ONLY public.tags ALTER COLUMN id SET DEFAULT nextval('public.tags_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: cor_admin
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: active_storage_attachments; Type: TABLE DATA; Schema: public; Owner: cor_admin
--

COPY public.active_storage_attachments (id, name, record_type, record_id, blob_id, created_at) FROM stdin;
3	image	ActiveStorage::VariantRecord	1	3	2022-04-27 09:53:12.009646
12	cover_image	Item	58	12	2022-05-21 13:38:01.725193
13	image	ActiveStorage::VariantRecord	6	13	2022-05-21 13:38:03.137041
14	cover_image	Item	59	14	2022-05-21 13:39:40.579335
15	image	ActiveStorage::VariantRecord	7	15	2022-05-21 13:39:41.63915
16	cover_image	Item	60	16	2022-05-21 13:41:12.440103
17	image	ActiveStorage::VariantRecord	8	17	2022-05-21 13:41:13.274141
18	cover_image	Item	61	18	2022-05-21 16:34:36.222643
19	image	ActiveStorage::VariantRecord	9	19	2022-05-21 16:34:36.931269
\.


--
-- Data for Name: active_storage_blobs; Type: TABLE DATA; Schema: public; Owner: cor_admin
--

COPY public.active_storage_blobs (id, key, filename, content_type, metadata, service_name, byte_size, checksum, created_at) FROM stdin;
2	k1ruojlfh8avxfqm0lt7batsad19	old-fashioned-cocktail.webp	image/webp	{"identified":true,"width":1200,"height":879,"analyzed":true}	local	281490	tWLbsaPY9HPVlx+HAUZr1g==	2022-04-27 09:53:11.325095
3	f5ctmf1o2owk27d8sbfm3mqai09c	old-fashioned-cocktail.png	image/png	{"identified":true,"width":100,"height":74,"analyzed":true}	local	16087	VibtWQV7tYhH2D/1kucdgA==	2022-04-27 09:53:12.008078
12	rzp2sp66z5nn7l6zrj4aaehfh5ak	cointreu_960x-d34c9e0db930412f9aca28a77e13ce46.jpeg	image/jpeg	{"identified":true,"width":960,"height":1227,"analyzed":true}	local	74959	JqKVjI18VEXfkvScJrPZVw==	2022-05-21 13:38:01.719524
13	bk3k8fghq3thv7wsnbq18blsirso	cointreu_960x-d34c9e0db930412f9aca28a77e13ce46.jpeg	image/jpeg	{"identified":true,"width":78,"height":100,"analyzed":true}	local	2066	o8+Eb5N70pLvDJd3tqJ01A==	2022-05-21 13:38:03.133974
14	o1h864pc27vf8nfste8ioblqp4sa	london.webp	image/webp	{"identified":true,"width":627,"height":1152,"analyzed":true}	local	77228	g2wA3WwNB6+DUzrWA/S9Nw==	2022-05-21 13:39:40.577353
15	s676bftz9am4ef0ag5r7vh73aowm	london.png	image/png	{"identified":true,"width":54,"height":100,"analyzed":true}	local	12515	PNZyuRCtuTkTburyVuo0Uw==	2022-05-21 13:39:41.637384
16	6y2qh5zh8cqhn8z5yztqhtf3w12h	ten.webp	image/webp	{"identified":true,"width":627,"height":1298,"analyzed":true}	local	76086	z43E6dL4H9Ve006RggMUgg==	2022-05-21 13:41:12.438477
17	678vx9jk4dypkkfrzk2rvxq19oh1	ten.png	image/png	{"identified":true,"width":49,"height":100,"analyzed":true}	local	10345	3/AuRkGIdFQvCPlMordRiQ==	2022-05-21 13:41:13.272699
18	fudofykgfxrsamcczycxaciazcf2	jim-beam-white-label-whiskey.jpeg	image/jpeg	{"identified":true,"width":485,"height":1000,"analyzed":true}	local	22366	QM9qcQAq3W5K6Kx81Pf/UQ==	2022-05-21 16:34:36.220858
19	40fw2s7777091azjzqinyibqg1m5	jim-beam-white-label-whiskey.jpeg	image/jpeg	{"identified":true,"width":49,"height":100,"analyzed":true}	local	1791	Kf7J61ux/rLsIcY/esEmng==	2022-05-21 16:34:36.92931
\.


--
-- Data for Name: active_storage_variant_records; Type: TABLE DATA; Schema: public; Owner: cor_admin
--

COPY public.active_storage_variant_records (id, blob_id, variation_digest) FROM stdin;
1	2	uf2zYb+LNAv/2PaL94FBVqd1XIw=
6	12	6/MbmLdOctrj7ukuFyVm7nWShm4=
7	14	uf2zYb+LNAv/2PaL94FBVqd1XIw=
8	16	uf2zYb+LNAv/2PaL94FBVqd1XIw=
9	18	6/MbmLdOctrj7ukuFyVm7nWShm4=
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: cor_admin
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	production	2022-04-27 08:50:48.949573	2022-04-27 08:50:48.949573
\.


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: cor_admin
--

COPY public.comments (id, title, comment, commentable_type, commentable_id, user_id, role, created_at, updated_at) FROM stdin;
1	\N	Triple sec is an orange-flavoured liqueur that originated in France. It usually contains 20–40%[2] alcohol by volume.	Item	19	1	comments	2022-05-21 13:35:18.698722	2022-05-21 13:35:18.698722
2	\N	橙味利口酒，所以君度也可以	Item	19	1	comments	2022-05-21 13:35:58.556404	2022-05-21 13:35:58.556404
3	\N	傳說中的查特綠	Item	36	1	comments	2022-05-24 01:53:44.795172	2022-05-24 01:53:44.795172
4	\N	柑曼怡	Item	153	1	comments	2022-05-24 02:39:12.442546	2022-05-24 02:39:12.442546
5	\N	https://enjoyer.pixnet.net/blog/post/22328423\n這裡提到 GM 裡用到的白蘭地會和其他的基酒味道衝突	Item	153	1	comments	2022-05-24 03:16:06.394416	2022-05-24 03:16:06.394416
6	\N	在法國干邑地區生產\n原料葡萄90%必須為Ugni Blanc、Folle Blanche、Colombard、Montils或Sémillon。 (不過大部分都是100%Ugni Blanc)\n*Meslier St. François、Jurançon blanc亦可使用，但只能是在2005/9/18前所種植的，且2020年過後將被禁止使用。（感謝網友 尤愛月 補充。）\n必須用銅製蒸餾器雙重蒸餾\n必須在法國橡木桶內陳年至少兩年	Item	8	1	comments	2022-05-24 10:18:02.887309	2022-05-24 10:18:02.887309
7	\N	V.S. 或★★★ (英文：Very Special)：至少 2 年\nV.S.O.P. (英文：Very Superior Old Pale)：至少 4 年\nNapoléon：至少6年\nX.O.(英文：Extra Old)：至少 10 年\nX.X.O.(英文：Extra Extra Old)：至少14年	Item	154	1	comments	2022-05-24 10:19:12.902106	2022-05-24 10:19:12.902106
8	\N	紅石榴糖漿	Item	40	1	comments	2022-05-27 00:23:49.264406	2022-05-27 00:23:49.264406
9	\N	必得利紅石榴糖漿	Item	155	1	comments	2022-05-27 00:25:36.697464	2022-05-27 00:25:36.697464
10	\N	Squeeze oil from lemon peel onto the drink, or garnish with green olives if requested.	Recipe	14	1	comments	2022-05-30 00:50:58.207655	2022-05-30 00:50:58.207655
11	\N	The cocktail may be diluted up to taste by water, ice or fresh juices.	Recipe	26	1	comments	2022-06-06 00:24:52.871327	2022-06-06 00:24:52.871327
12	\N	It has been suggested that during the 1920s the Stinger ceased being an after-dinner cocktail, and instead should be consumed before dinner.[1] However, until recently the IBA listed the Stinger as an after-dinner cocktail.	Recipe	32	1	comments	2022-06-06 00:28:35.140592	2022-06-06 00:28:35.140592
13	\N	Traditionally a Bellini uses white peaches for the fruit.	Recipe	38	1	comments	2022-06-06 00:34:31.899661	2022-06-06 00:34:31.899661
14	\N	\tCaipiroska – instead of cachaça use vodka	Recipe	41	1	comments	2022-06-06 00:41:38.983171	2022-06-06 00:41:38.983171
15	\N	The drink should be a frothy bright pink color	Recipe	44	1	comments	2022-06-06 00:46:04.328937	2022-06-06 00:46:04.328937
16	\N	The Martinique molasses rum used by Trader Vic was not an Agricole rum but a type of “rummy” from molasses.	Recipe	55	1	comments	2022-06-06 01:00:11.316635	2022-06-06 01:00:11.316635
17	\N	白蔗糖	Item	166	1	comments	2022-06-06 01:10:36.608102	2022-06-06 01:10:36.608102
18	\N		Item	166	1	comments	2022-06-06 01:10:37.335029	2022-06-06 01:10:37.335029
19	\N	蔓越莓汁	Item	175	1	comments	2022-06-06 10:29:10.217266	2022-06-06 10:29:10.217266
20	\N	西柚汁	Item	181	1	comments	2022-06-06 10:29:35.360596	2022-06-06 10:29:35.360596
21	\N	Because of the high proof rum, this cocktail could be lit if desired.	Recipe	68	1	comments	2022-06-06 10:41:35.840583	2022-06-06 10:41:35.840583
22	\N	6 cl champagne brut or Prosecco	Recipe	81	1	comments	2022-06-06 10:59:15.552794	2022-06-06 10:59:15.552794
23	\N	6 cl Select/Aperol/Campari/Cynar	Recipe	88	1	comments	2022-06-06 11:10:00.402997	2022-06-06 11:10:00.402997
24	\N	4.5 cl 苦精？？？	Recipe	92	1	comments	2022-06-06 11:15:43.610603	2022-06-06 11:15:43.610603
25	\N	egg white optional	Recipe	93	1	comments	2022-06-06 11:18:18.918236	2022-06-06 11:18:18.918236
26	\N	If desired, the water used to make the honey mix can be replaced by chamomile infusion.	Recipe	93	1	comments	2022-06-06 11:18:26.213295	2022-06-06 11:18:26.213295
27	\N	黑加侖子酒	Item	185	1	comments	2022-06-06 11:27:39.589039	2022-06-06 11:27:39.589039
28	\N	黑醋栗果酒	Item	185	1	comments	2022-06-06 11:28:02.867191	2022-06-06 11:28:02.867191
29	\N	可用現磨巧克力代替可可粉	Recipe	132	1	comments	2022-06-17 17:29:09.813504	2022-06-17 17:29:09.813504
30	\N	可以把琴酒替換成各種香甜酒	Recipe	155	1	comments	2022-06-17 18:19:22.396564	2022-06-17 18:19:22.396564
31	\N	柑曼怡可以用君度代替	Recipe	162	1	comments	2022-06-17 18:36:55.508071	2022-06-17 18:36:55.508071
\.


--
-- Data for Name: ingredients; Type: TABLE DATA; Schema: public; Owner: cor_admin
--

COPY public.ingredients (id, recipe_id, name, quantity, unit, created_at, updated_at) FROM stdin;
4	4	Cognac	3	cl	2022-05-10 13:15:41.540145	2022-05-10 13:15:41.540145
6	4	Light Cream	3	cl	2022-05-10 13:16:13.270229	2022-05-10 13:16:13.270229
7	5	Campari	3	cl	2022-05-10 13:16:53.621773	2022-05-10 13:16:53.621773
8	5	Red Vermouth	3	cl	2022-05-10 13:17:03.620691	2022-05-10 13:17:03.620691
9	5	Soda Water	1	part	2022-05-10 13:17:32.094468	2022-05-10 13:17:32.094468
10	6	Gin	3	cl	2022-05-10 13:17:54.719921	2022-05-10 13:17:54.719921
11	6	Apricot Brandy	3	cl	2022-05-10 13:18:14.066613	2022-05-10 13:18:14.066613
12	6	Calvados	3	cl	2022-05-10 13:18:27.76846	2022-05-10 13:18:27.76846
13	7	Gin	45	ml	2022-05-10 13:18:51.183947	2022-05-10 13:18:51.183947
14	7	Lemon Juice	15	ml	2022-05-10 13:19:02.441328	2022-05-10 13:19:02.441328
15	7	Maraschino Liqueur	15	ml	2022-05-10 13:19:21.814733	2022-05-10 13:19:21.814733
16	7	Creme De Violette	1	part	2022-05-10 13:19:34.725387	2022-05-10 13:19:34.725387
17	8	White Rum	3	cl	2022-05-10 13:20:03.547312	2022-05-10 13:20:03.547312
18	8	Cognac	3	cl	2022-05-10 13:20:14.907736	2022-05-10 13:20:14.907736
19	8	Triple Sec	3	cl	2022-05-10 13:20:25.266826	2022-05-10 13:20:25.266826
20	8	Lemon Juice	2	cl	2022-05-10 13:20:34.367303	2022-05-10 13:20:34.367303
21	9	Bourbon	45	ml	2022-05-10 13:22:42.292848	2022-05-10 13:22:42.292848
22	9	Campari	30	ml	2022-05-10 13:22:57.795433	2022-05-10 13:22:57.795433
23	9	Sweet Vermouth	30	ml	2022-05-10 13:23:07.678928	2022-05-10 13:23:07.678928
25	10	Maraschino Luxardo	7.5	ml	2022-05-10 13:34:24.751417	2022-05-10 13:34:24.751417
24	10	Brandy	52.5	ml	2022-05-10 13:32:14.016867	2022-05-10 13:34:34.732625
30	11	Gin	4	cl	2022-05-10 13:36:06.401513	2022-05-10 13:36:06.401513
31	11	Maraschino	1	cl	2022-05-10 13:36:54.737451	2022-05-10 13:36:54.737451
32	11	Lemon Juice	1	cl	2022-05-10 13:37:06.45097	2022-05-10 13:37:06.45097
34	12	Gin	4.5	cl	2022-05-10 13:37:59.737614	2022-05-10 13:37:59.737614
35	12	Lemon Juice	1.5	cl	2022-05-10 13:38:10.687424	2022-05-10 13:38:10.687424
36	12	Raspberry Syrup	1.5	cl	2022-05-10 13:38:29.696255	2022-05-10 13:38:29.696255
37	12	Dry Vermouth	0.5	cl	2022-05-10 13:38:43.322401	2022-05-10 13:38:43.322401
38	12	Egg White	1	part	2022-05-10 13:38:57.18623	2022-05-10 13:38:57.18623
39	13	White Rum	6	cl	2022-05-10 13:39:26.494041	2022-05-10 13:39:26.494041
40	13	Lime Juice	2	cl	2022-05-10 13:39:41.789239	2022-05-10 13:39:41.789239
42	14	Gin	60	ml	2022-05-10 13:41:05.994292	2022-05-10 13:41:05.994292
43	14	Dry Vermouth	10	ml	2022-05-10 13:41:46.469157	2022-05-10 13:41:46.469157
1	3	Gin	4.5	cl	2022-05-10 13:07:10.173798	2022-05-10 13:42:11.042949
2	3	Lemon Juice	3	cl	2022-05-10 13:07:22.281923	2022-05-10 13:42:19.761544
44	3	Soda Water	1	part	2022-05-10 13:42:39.438165	2022-05-10 13:42:39.438165
45	16	Gin	45	ml	2022-05-10 13:43:17.136119	2022-05-10 13:43:17.136119
46	16	Sweet Vermouth	45	ml	2022-05-10 13:43:30.221091	2022-05-10 13:43:30.221091
48	17	Gin	4.5	cl	2022-05-10 13:44:17.875905	2022-05-10 13:44:17.875905
49	17	Lemon Juice	3	cl	2022-05-10 13:44:28.287485	2022-05-10 13:44:28.287485
51	17	Carbonated Water	6	cl	2022-05-10 13:44:54.793488	2022-05-10 13:44:54.793488
52	18	Gin	22.5	ml	2022-05-10 13:45:32.194143	2022-05-10 13:45:32.194143
53	18	Lime Juice	22.5	ml	2022-05-10 13:45:43.00456	2022-05-10 13:45:49.891981
54	18	Chartreuse	22.5	ml	2022-05-10 13:46:05.851916	2022-05-10 13:46:05.851916
55	18	Maraschino Liqueur	22.5	ml	2022-05-10 13:46:21.036487	2022-05-10 13:46:21.036487
56	19	Rye Whiskey	50	ml	2022-05-10 13:46:50.520968	2022-05-10 13:46:50.520968
57	19	Sweet Vermouth	20	ml	2022-05-10 13:47:23.713109	2022-05-10 13:47:23.713109
59	20	Gin	45	ml	2022-05-10 13:48:03.621649	2022-05-10 13:48:03.621649
60	20	Sweet Vermouth	45	ml	2022-05-10 13:48:12.967233	2022-05-10 13:48:12.967233
63	21	White Rum	4.5	cl	2022-05-10 13:48:56.369994	2022-05-10 13:48:56.369994
64	21	Pineapple Juice	4.5	cl	2022-05-10 13:49:12.746868	2022-05-10 13:49:12.746868
65	21	Grenadine	0.5	cl	2022-05-10 13:49:26.592496	2022-05-10 13:49:26.592496
66	21	Maraschino	0.75	cl	2022-05-10 13:49:47.981313	2022-05-10 13:49:47.981313
67	22	Gin	45	ml	2022-05-10 13:50:09.556396	2022-05-10 13:50:09.556396
68	22	Orange Juice	45	ml	2022-05-10 13:50:20.684925	2022-05-10 13:50:20.684925
71	23	Gin	3	cl	2022-05-10 13:50:59.289473	2022-05-10 13:50:59.289473
72	23	Sweet Vermouth	3	cl	2022-05-10 13:51:06.24313	2022-05-10 13:51:06.24313
73	23	Campari	3	cl	2022-05-10 13:51:12.553369	2022-05-10 13:51:12.553369
74	24	Bourbon	45	ml	2022-05-10 13:51:36.799568	2022-05-10 13:51:36.799568
78	25	Gin	3.5	cl	2022-05-10 13:52:43.91894	2022-05-10 13:52:43.91894
79	25	Apricot Brandy	2	cl	2022-05-10 13:52:54.243619	2022-05-10 13:52:54.243619
80	25	Orange Juice	1.5	cl	2022-05-10 13:53:02.247342	2022-05-10 13:53:02.247342
81	26	Jamaican Rum	4.5	cl	2022-05-10 13:53:30.226703	2022-05-10 13:53:30.226703
82	26	Lime Juice	1.5	cl	2022-05-10 13:53:38.575722	2022-05-10 13:53:38.575722
5	4	Brown Crème De Cacao	3	cl	2022-05-10 13:16:01.607682	2022-05-23 05:46:40.659767
33	11	Orange Bitters	2	dash	2022-05-10 13:37:28.803625	2022-05-30 00:48:40.802466
28	10	Simple Sugar Syrup	1	barspoon	2022-05-10 13:35:22.375506	2022-06-06 01:13:12.978049
50	17	Simple Sugar Syrup	1.5	cl	2022-05-10 13:44:42.272679	2022-06-06 01:41:56.662873
47	16	Fernet Branca	7.5	ml	2022-05-10 13:43:47.275846	2022-05-30 00:51:56.984505
58	19	Angostura Bitters	1	dash	2022-05-10 13:47:39.711172	2022-05-30 00:54:00.824803
61	20	Maraschino Liqueur	1	barspoon	2022-05-10 13:48:24.001209	2022-05-30 00:54:42.876994
62	20	Orange Bitters	2	dash	2022-05-10 13:48:30.242334	2022-05-30 00:54:42.878341
69	22	Absinthe	1	tablespoon	2022-05-10 13:50:33.659048	2022-05-30 00:56:02.647426
70	22	Grenadine	1	tablespoon	2022-05-10 13:50:43.0402	2022-05-30 00:56:02.648622
76	24	Angostura Bitters	3	dash	2022-05-10 13:52:13.987899	2022-05-30 00:57:41.582033
77	24	Plain Water	3	dash	2022-05-10 13:52:22.830301	2022-05-30 00:57:41.583787
3	3	Simple Sugar Syrup	1	cl	2022-05-10 13:07:30.164206	2022-06-06 01:11:59.181595
41	13	Superfine Sugar	2	barspoon	2022-05-10 13:40:12.725544	2022-06-06 01:41:26.573897
75	24	Sugar Cube	1	part	2022-05-10 13:51:45.602618	2022-06-06 01:42:55.283923
84	27	Brandy	1.5	cl	2022-05-10 13:54:15.687498	2022-05-10 13:54:15.687498
85	27	Port	4.5	cl	2022-05-10 13:54:25.278097	2022-05-10 13:54:25.278097
86	27	Egg Yolk	1	cl	2022-05-10 13:54:36.193059	2022-05-10 13:54:36.193059
87	28	Gin	4.5	cl	2022-05-10 13:55:08.720655	2022-05-10 13:55:08.720655
88	28	Lime Juice	1.5	cl	2022-05-10 13:55:19.868571	2022-05-10 13:55:19.868571
89	28	Lemon Juice	1.5	cl	2022-05-10 13:55:29.047225	2022-05-10 13:55:29.047225
91	28	Cream	6	cl	2022-05-10 13:55:50.168718	2022-05-10 13:55:50.168718
92	28	Egg White	1	part	2022-05-10 13:55:57.409429	2022-05-10 13:55:57.409429
93	28	Orange Flower Water	3	part	2022-05-10 13:56:17.742221	2022-05-10 13:56:17.742221
94	28	Vanilla Extract	2	part	2022-05-10 13:56:31.105254	2022-05-10 13:56:31.105254
95	28	Soda Water	1	part	2022-05-10 13:56:40.155413	2022-05-10 13:56:40.155413
96	29	Scotch Whiskey	45	ml	2022-05-10 13:57:06.753098	2022-05-10 13:57:06.753098
97	29	Drambuie	25	ml	2022-05-10 13:57:18.548728	2022-05-10 13:57:18.548728
98	30	Cognac	5	cl	2022-05-10 13:57:44.063739	2022-05-10 13:57:44.063739
99	30	Absinthe	1	cl	2022-05-10 13:57:51.802451	2022-05-10 13:57:51.802451
102	31	Cognac	5	cl	2022-05-10 13:58:38.997207	2022-05-10 13:58:38.997207
103	31	Triple Sec	2	cl	2022-05-10 13:58:45.903752	2022-05-10 13:58:45.903752
104	31	Lemon Juice	2	cl	2022-05-10 13:58:56.470262	2022-05-10 13:58:56.470262
105	32	Cognac	50	ml	2022-05-10 13:59:19.819507	2022-05-10 13:59:19.819507
106	32	White Creme De Menthe	20	ml	2022-05-10 13:59:32.322246	2022-05-10 13:59:32.322246
107	33	Gin	3	cl	2022-05-10 13:59:50.520342	2022-05-10 13:59:50.520342
108	33	Dry Vermouth	3	cl	2022-05-10 13:59:57.314635	2022-05-10 13:59:57.314635
109	33	Maraschino	0.5	part	2022-05-10 14:00:08.211986	2022-05-10 14:00:08.211986
110	33	Absinthe	0.25	part	2022-05-10 14:00:23.683959	2022-05-10 14:00:23.683959
112	34	Rye	30	ml	2022-05-10 14:00:55.155232	2022-05-10 14:00:55.155232
113	34	Cognac	30	ml	2022-05-10 14:01:04.678459	2022-05-10 14:01:04.678459
114	34	Sweet Vermouth	30	ml	2022-05-10 14:01:11.003148	2022-05-10 14:01:11.003148
115	34	Benedictine	1	part	2022-05-10 14:01:19.098556	2022-05-10 14:01:19.098556
117	35	Bourbon	4.5	cl	2022-05-10 14:01:56.147994	2022-05-10 14:01:56.147994
118	35	Lemon Juice	3	cl	2022-05-10 14:02:03.184006	2022-05-10 14:02:03.184006
120	36	Gin	4	cl	2022-05-10 14:02:32.160031	2022-05-10 14:02:32.160031
121	36	Triple Sec	3	cl	2022-05-10 14:02:39.962674	2022-05-10 14:02:39.962674
122	36	Lemon Juice	2	cl	2022-05-10 14:02:46.070137	2022-05-10 14:02:46.070137
27	10	Lemon Juice	15	ml	2022-05-10 13:35:07.430883	2022-05-22 10:56:00.856278
29	10	Aromatic Bitters	2	dash	2022-05-10 13:35:41.044182	2022-05-23 09:40:07.041208
151	45	Cola	120	ml	2022-06-06 00:47:00.327012	2022-06-06 00:47:00.327012
26	10	Curaçao	1	barspoon	2022-05-10 13:34:57.523498	2022-05-23 09:44:39.194063
101	30	Peychaud's Bitters	2	dash	2022-05-10 13:58:16.692352	2022-06-06 00:27:20.418876
111	33	Orange Bitters	3	dash	2022-05-10 14:00:33.251285	2022-06-06 00:29:08.459384
116	34	Peychaud's Bitters	2	dash	2022-05-10 14:01:25.797288	2022-06-06 00:29:42.626356
124	38	Prosecco	10	cl	2022-06-06 00:34:26.570137	2022-06-06 00:34:26.570137
125	38	peach puree	5	cl	2022-06-06 00:34:26.573442	2022-06-06 00:34:26.573442
126	39	Vodka	50	ml	2022-06-06 00:35:29.746353	2022-06-06 00:35:59.445884
127	39	Coffee Liqueur	20	ml	2022-06-06 00:35:29.74832	2022-06-06 00:35:59.447288
128	40	Vodka	4.5	cl	2022-06-06 00:40:06.879647	2022-06-06 00:40:06.879647
129	40	Tomato Juice	9	cl	2022-06-06 00:40:06.880976	2022-06-06 00:40:06.880976
130	40	Lemon Juice	1.5	cl	2022-06-06 00:40:06.882238	2022-06-06 00:40:06.882238
131	40	Worcestershire Sauce	3	dash	2022-06-06 00:40:06.883583	2022-06-06 00:40:06.883583
132	40	Tabasco	1	part	2022-06-06 00:40:06.884847	2022-06-06 00:40:06.884847
133	40	Celery Salt	1	part	2022-06-06 00:40:06.886197	2022-06-06 00:40:06.886197
134	40	Black Pepper	1	part	2022-06-06 00:40:06.887131	2022-06-06 00:40:06.887131
135	41	Cachaça	60	ml	2022-06-06 00:41:33.466801	2022-06-06 00:41:33.466801
136	41	Lime	1	part	2022-06-06 00:41:33.469047	2022-06-06 00:41:33.469047
137	41	White Cane Suger	4	part	2022-06-06 00:41:33.47155	2022-06-06 00:41:33.47155
138	42	Champagne	9	cl	2022-06-06 00:42:48.996544	2022-06-06 00:42:48.996544
139	42	Cognac	1	cl	2022-06-06 00:42:48.9979	2022-06-06 00:42:48.9979
140	42	Angostura Bitters	2	dash	2022-06-06 00:42:48.998783	2022-06-06 00:42:48.998783
141	42	Suger Cube	1	part	2022-06-06 00:42:48.999981	2022-06-06 00:42:48.999981
142	43	Gin	3	cl	2022-06-06 00:44:24.895125	2022-06-06 00:44:24.895125
143	43	Lemon Juice	3	cl	2022-06-06 00:44:24.89653	2022-06-06 00:44:24.89653
144	43	Cointreau	3	cl	2022-06-06 00:44:24.897969	2022-06-06 00:44:24.897969
145	43	Lillet Blanc	3	cl	2022-06-06 00:44:24.899244	2022-06-06 00:44:24.899244
146	43	Absinthe	1	dash	2022-06-06 00:44:24.900518	2022-06-06 00:44:24.900518
147	44	Vodka Citron	4	cl	2022-06-06 00:45:58.758071	2022-06-06 00:45:58.758071
148	44	Cointreau	1.5	cl	2022-06-06 00:45:58.759109	2022-06-06 00:45:58.759109
149	44	Lime Juice	1.5	cl	2022-06-06 00:45:58.760019	2022-06-06 00:45:58.760019
150	44	Cranberry Juice	3	cl	2022-06-06 00:45:58.760822	2022-06-06 00:45:58.760822
152	45	White Rum	50	ml	2022-06-06 00:47:00.328118	2022-06-06 00:47:00.328118
153	45	Lime Juice	10	ml	2022-06-06 00:47:00.329164	2022-06-06 00:47:00.329164
154	46	Gin	3	cl	2022-06-06 00:48:03.479275	2022-06-06 00:48:03.479275
155	46	Simple Syrup	2	dash	2022-06-06 00:48:03.480394	2022-06-06 00:48:03.480394
156	46	Lemon Juice	1.5	cl	2022-06-06 00:48:03.48143	2022-06-06 00:48:03.48143
157	46	Champagne	6	cl	2022-06-06 00:48:03.48244	2022-06-06 00:48:03.48244
158	47	Cognac	3.5	cl	2022-06-06 00:48:47.913565	2022-06-06 00:48:47.913565
159	47	Amaretto Liqueur	3.5	cl	2022-06-06 00:48:47.914929	2022-06-06 00:48:47.914929
160	48	Galliano	2	cl	2022-06-06 00:49:54.232497	2022-06-06 00:49:54.232497
161	48	Triple Sec	2	cl	2022-06-06 00:49:54.233961	2022-06-06 00:49:54.233961
162	48	Orange Juice	2	cl	2022-06-06 00:49:54.235152	2022-06-06 00:49:54.235152
163	48	Cream	1	cl	2022-06-06 00:49:54.236357	2022-06-06 00:49:54.236357
164	49	Crème de Menthe	3	cl	2022-06-06 00:50:57.967875	2022-06-06 00:50:57.967875
165	49	Crème de Cacao	3	cl	2022-06-06 00:50:57.969219	2022-06-06 00:50:57.969219
166	49	Cream	3	cl	2022-06-06 00:50:57.970525	2022-06-06 00:50:57.970525
90	28	Simple Sugar Syrup	3	cl	2022-05-10 13:55:41.901565	2022-06-06 01:44:17.272696
100	30	Sugar Cube	1	part	2022-05-10 13:57:58.286951	2022-06-06 01:44:54.645764
119	35	Simple Sugar Syrup	1.5	cl	2022-05-10 14:02:09.654305	2022-06-17 19:04:42.365278
167	50	Rum	6	cl	2022-06-06 00:52:05.975775	2022-06-06 00:52:05.975775
168	50	Grapefruit Juice	4	cl	2022-06-06 00:52:05.977436	2022-06-06 00:52:05.977436
169	50	Maraschino	1.5	cl	2022-06-06 00:52:05.978683	2022-06-06 00:52:05.978683
170	50	Lime Juice	1.5	cl	2022-06-06 00:52:05.979913	2022-06-06 00:52:05.979913
171	51	Brandy	4	cl	2022-06-06 00:53:55.347999	2022-06-06 00:53:55.347999
172	51	Ginger Ale	12	cl	2022-06-06 00:53:55.34999	2022-06-06 00:53:55.34999
173	51	Angostura Bitters	1	dash	2022-06-06 00:53:55.351831	2022-06-06 00:53:55.351831
174	52	Irish Whiskey	4	cl	2022-06-06 00:54:38.553115	2022-06-06 00:54:38.553115
176	52	Cream	3	cl	2022-06-06 00:55:19.528934	2022-06-06 00:55:19.528934
177	52	Brown Sugar	1	part	2022-06-06 00:55:19.530126	2022-06-06 00:55:19.530126
178	53	White Wine	9	cl	2022-06-06 00:56:42.196413	2022-06-06 00:56:42.196413
179	53	Crème de Cassis	1	cl	2022-06-06 00:56:42.197558	2022-06-06 00:56:42.197558
180	54	Tequila	15	ml	2022-06-06 00:58:26.313139	2022-06-06 00:58:26.313139
181	54	Vodka	15	ml	2022-06-06 00:58:26.315703	2022-06-06 00:58:26.315703
182	54	White Rum	15	ml	2022-06-06 00:58:26.318015	2022-06-06 00:58:26.318015
183	54	Cointreau	15	ml	2022-06-06 00:58:26.319989	2022-06-06 00:58:26.319989
184	54	Gin	15	ml	2022-06-06 00:58:26.322169	2022-06-06 00:58:26.322169
185	54	Lemon Juice	30	ml	2022-06-06 00:58:26.324434	2022-06-06 00:58:26.324434
186	54	Simple Syrup	20	ml	2022-06-06 00:58:26.326514	2022-06-06 00:58:26.326514
187	54	Cola	1	part	2022-06-06 00:58:26.328594	2022-06-06 00:58:26.328594
188	55	Amber Jamaican Rum	30	ml	2022-06-06 01:00:08.393504	2022-06-06 01:00:08.393504
189	55	Martinique Molasses Rum	30	ml	2022-06-06 01:00:08.394582	2022-06-06 01:00:08.394582
190	55	Orange Curaçao	15	ml	2022-06-06 01:00:08.395568	2022-06-06 01:00:08.395568
191	55	Orgeat Syrup	15	ml	2022-06-06 01:00:08.396466	2022-06-06 01:00:08.396466
192	55	Lime Juice	30	ml	2022-06-06 01:00:08.397336	2022-06-06 01:00:08.397336
193	55	Simple Syrup	7.5	ml	2022-06-06 01:00:08.398465	2022-06-06 01:00:08.398465
194	56	Tequila	50	ml	2022-06-06 01:02:43.846236	2022-06-06 01:02:43.846236
195	56	Triple Sec	20	ml	2022-06-06 01:02:43.847456	2022-06-06 01:02:43.847456
196	56	Lime Juice	15	ml	2022-06-06 01:02:43.848411	2022-06-06 01:02:43.848411
197	57	Champagne	7.5	cl	2022-06-06 01:05:13.962644	2022-06-06 01:05:13.962644
198	57	Orange Juice	7.5	cl	2022-06-06 01:05:13.964656	2022-06-06 01:05:13.964656
199	58	Bourbon	6	cl	2022-06-06 01:06:46.669797	2022-06-06 01:06:46.669797
200	58	Mint Leaves	4	part	2022-06-06 01:06:46.670886	2022-06-06 01:06:46.670886
201	58	Powdered Sugar	1	spoon	2022-06-06 01:06:46.671799	2022-06-06 01:06:46.671799
202	58	Plain Water	2	spoon	2022-06-06 01:06:46.672785	2022-06-06 01:06:46.672785
83	26	Sugar Cane Juice	3	cl	2022-05-10 13:53:51.570788	2022-06-06 01:43:26.051112
175	52	Espresso Coffee	8	cl	2022-06-06 00:54:38.554399	2022-06-06 01:46:36.780149
203	59	White Rum	45	ml	2022-06-06 04:20:23.757387	2022-06-06 04:20:23.757387
204	59	Lime Juice	20	ml	2022-06-06 04:20:23.758845	2022-06-06 04:20:23.758845
205	59	Mint Leaves	6	part	2022-06-06 04:20:23.759842	2022-06-06 04:20:23.759842
206	59	White Cane Sugar	2	spoon	2022-06-06 04:20:23.760731	2022-06-06 04:20:23.760731
207	59	Soda Water	1	part	2022-06-06 04:20:23.761557	2022-06-06 04:20:23.761557
208	60	Vodka	4.5	cl	2022-06-06 10:25:11.437536	2022-06-06 10:25:11.437536
209	60	Lime Juice	1	cl	2022-06-06 10:25:11.439756	2022-06-06 10:25:11.439756
210	60	Ginger Beer	12	cl	2022-06-06 10:25:11.441394	2022-06-06 10:25:11.441394
211	61	White Rum	5	part	2022-06-06 10:26:31.544169	2022-06-06 10:26:31.544169
212	61	Coconut Cream	3	part	2022-06-06 10:26:31.545151	2022-06-06 10:26:31.545151
213	61	Pineapple Juice	5	part	2022-06-06 10:26:31.546028	2022-06-06 10:26:31.546028
214	62	Pisco	60	ml	2022-06-06 10:27:49.554784	2022-06-06 10:27:49.554784
215	62	Lemon Juice	30	ml	2022-06-06 10:27:49.55663	2022-06-06 10:27:49.55663
216	62	Simple Syrup	20	ml	2022-06-06 10:27:49.558094	2022-06-06 10:27:49.558094
217	62	Egg White	1	part	2022-06-06 10:27:49.559431	2022-06-06 10:27:49.559431
218	62	Aromatic Bitters	3	dash	2022-06-06 10:27:49.561116	2022-06-06 10:27:49.561116
219	63	Vodka	4	cl	2022-06-06 10:28:46.836271	2022-06-06 10:28:46.836271
220	63	Cranberry Juice	12	cl	2022-06-06 10:28:46.837434	2022-06-06 10:28:46.837434
221	63	Grapefruit Juice	3	cl	2022-06-06 10:28:46.838392	2022-06-06 10:28:46.838392
222	64	Vodka	4	cl	2022-06-06 10:30:50.854574	2022-06-06 10:30:50.854574
223	64	Peach Schnapps	2	cl	2022-06-06 10:30:50.85611	2022-06-06 10:30:50.85611
224	64	Orange Juice	4	cl	2022-06-06 10:30:50.85747	2022-06-06 10:30:50.85747
225	64	Cranberry Juice	4	cl	2022-06-06 10:30:50.85874	2022-06-06 10:30:50.85874
226	65	Gin	3	cl	2022-06-06 10:33:11.571541	2022-06-06 10:33:11.571541
227	65	Cherry Liqueur	1.5	cl	2022-06-06 10:33:11.572618	2022-06-06 10:33:11.572618
228	65	Cointreau	0.75	cl	2022-06-06 10:33:11.573528	2022-06-06 10:33:11.573528
229	65	DOM Bénédictine	0.75	cl	2022-06-06 10:33:11.574366	2022-06-06 10:33:11.574366
230	65	Grenadine	1	cl	2022-06-06 10:33:11.575185	2022-06-06 10:33:11.575185
231	65	Pineapple Juice	12	cl	2022-06-06 10:33:11.575971	2022-06-06 10:33:11.575971
232	65	Lime Juice	1.5	cl	2022-06-06 10:33:11.576799	2022-06-06 10:33:11.576799
233	65	Angostura Bitters	1	dash	2022-06-06 10:33:11.577548	2022-06-06 10:33:11.577548
235	66	Orange Juice	9	cl	2022-06-06 10:35:34.673499	2022-06-06 10:35:34.673499
236	66	Grenadine Syrup	1.5	cl	2022-06-06 10:35:34.674444	2022-06-06 10:35:34.674444
237	67	Gin	45	ml	2022-06-06 10:38:42.965863	2022-06-06 10:38:42.965863
238	67	Vodka	15	ml	2022-06-06 10:38:42.96803	2022-06-06 10:38:42.96803
239	67	Lillet Blanc	7.5	ml	2022-06-06 10:38:42.971808	2022-06-06 10:38:42.971808
240	68	Jamaican Rum	45	ml	2022-06-06 10:41:28.917068	2022-06-06 10:41:28.917068
241	68	Puerto Rican Gold Rum	45	ml	2022-06-06 10:41:28.918252	2022-06-06 10:41:28.918252
242	68	Demerara Rum	30	ml	2022-06-06 10:41:28.919176	2022-06-06 10:41:28.919176
243	68	Lime Juice	20	ml	2022-06-06 10:41:28.92001	2022-06-06 10:41:28.92001
244	68	Falernum	15	ml	2022-06-06 10:41:28.920799	2022-06-06 10:41:28.920799
245	68	Yellow Grapefruit	2	part	2022-06-06 10:41:28.921642	2022-06-06 10:41:28.921642
246	68	Cinnamon Syrup	1	part	2022-06-06 10:41:28.922493	2022-06-06 10:41:28.922493
247	68	Grenadine Syrup	1	tablespoon	2022-06-06 10:41:28.923375	2022-06-06 10:41:28.923375
248	68	Angostura Bitters	1	dash	2022-06-06 10:41:28.924188	2022-06-06 10:41:28.924188
249	68	Pernod	6	dash	2022-06-06 10:41:28.925047	2022-06-06 10:41:28.925047
250	69	Gold Rum	4.5	cl	2022-06-06 10:43:01.632282	2022-06-06 10:43:01.632282
251	69	Galliano	1.5	cl	2022-06-06 10:43:01.633795	2022-06-06 10:43:01.633795
252	69	Pineapple Juice	6	cl	2022-06-06 10:43:01.635108	2022-06-06 10:43:01.635108
253	69	Lime Juice	1	dash	2022-06-06 10:43:01.636582	2022-06-06 10:43:01.636582
254	69	Prosecco	2	part	2022-06-06 10:43:01.6378	2022-06-06 10:43:01.6378
255	70	Gin	52.5	ml	2022-06-06 10:44:11.998741	2022-06-06 10:44:11.998741
256	70	Lemon Juice	22.5	ml	2022-06-06 10:44:12.000198	2022-06-06 10:44:12.000198
257	70	Orange Juice	22.5	ml	2022-06-06 10:44:12.001648	2022-06-06 10:44:12.001648
258	70	Honey Syrup	2	tablespoon	2022-06-06 10:44:12.002864	2022-06-06 10:44:12.002864
263	72	Rum	6	cl	2022-06-06 10:47:20.475721	2022-06-06 10:47:20.475721
264	72	Lime Juice	1.5	cl	2022-06-06 10:47:20.477636	2022-06-06 10:47:20.477636
265	72	Honey	1.5	cl	2022-06-06 10:47:20.479427	2022-06-06 10:47:20.479427
266	72	Plain Water	5	cl	2022-06-06 10:47:20.481254	2022-06-06 10:47:20.481254
267	73	Goslings Rum	60	ml	2022-06-06 10:48:11.717278	2022-06-06 10:48:11.717278
268	73	Ginger Beer	100	ml	2022-06-06 10:48:11.71883	2022-06-06 10:48:11.71883
269	74	Vodka	50	ml	2022-06-06 10:49:26.945972	2022-06-06 10:49:26.945972
270	74	Kahlua	30	ml	2022-06-06 10:49:26.947034	2022-06-06 10:49:26.947034
271	74	Simple Sugar Syrup	10	ml	2022-06-06 10:49:26.94791	2022-06-06 10:49:26.94791
272	74	Espresso Coffee	1	shot	2022-06-06 10:49:26.94885	2022-06-06 10:49:26.94885
259	71	Gin	50	ml	2022-06-06 10:46:15.134482	2022-06-06 10:46:15.134482
260	71	Lemon Juice	25	ml	2022-06-06 10:46:15.136087	2022-06-06 10:46:15.136087
261	71	Simple Sugar Syrup	12.5	ml	2022-06-06 10:46:15.137618	2022-06-06 10:46:15.137618
262	71	Crème de Mûre	15	ml	2022-06-06 10:46:15.138988	2022-06-06 10:46:15.138988
273	75	Fernet Branca	5	cl	2022-06-06 10:50:13.362862	2022-06-06 10:50:13.362862
274	75	Cola	1	part	2022-06-06 10:50:13.364536	2022-06-06 10:50:13.364536
275	76	Vodka	4.5	cl	2022-06-06 10:51:09.605089	2022-06-06 10:51:09.605089
276	76	Chambord Raspberry Liqueur	1.5	cl	2022-06-06 10:51:09.606093	2022-06-06 10:51:09.606093
277	76	Pineapple Juice	1.5	cl	2022-06-06 10:51:09.606902	2022-06-06 10:51:09.606902
278	77	Mezcal	3	cl	2022-06-06 10:52:59.689408	2022-06-06 10:52:59.689408
279	77	Jamaican Rum	1.5	cl	2022-06-06 10:52:59.690847	2022-06-06 10:52:59.690847
280	77	Falernum	1.5	cl	2022-06-06 10:52:59.692109	2022-06-06 10:52:59.692109
281	77	Maraschino Luxardo	1	barspoon	2022-06-06 10:52:59.693235	2022-06-06 10:52:59.693235
282	77	Lime Juice	2.25	cl	2022-06-06 10:52:59.694356	2022-06-06 10:52:59.694356
283	77	Simple Sugar Syrup	1.5	cl	2022-06-06 10:52:59.695496	2022-06-06 10:52:59.695496
284	77	Egg White	3	dash	2022-06-06 10:52:59.696644	2022-06-06 10:52:59.696644
285	78	Vodka Citron	30	ml	2022-06-06 10:54:12.376089	2022-06-06 10:54:12.376089
286	78	Triple Sec	20	ml	2022-06-06 10:54:12.377263	2022-06-06 10:54:12.377263
287	78	Lemon Juice	15	ml	2022-06-06 10:54:12.378229	2022-06-06 10:54:12.378229
288	79	Mezcal	2.25	cl	2022-06-06 10:55:14.346744	2022-06-06 10:55:14.346744
289	79	Yellow Chartreuse	2.25	cl	2022-06-06 10:55:14.347819	2022-06-06 10:55:14.347819
290	79	Aperol	2.25	cl	2022-06-06 10:55:14.348778	2022-06-06 10:55:14.348778
291	79	Lime Juice	2.25	cl	2022-06-06 10:55:14.349653	2022-06-06 10:55:14.349653
292	80	Whiskey	6	cl	2022-06-06 10:57:27.666484	2022-06-06 10:57:27.666484
293	80	Simple Syrup	2.25	cl	2022-06-06 10:57:27.667691	2022-06-06 10:57:27.667691
294	80	Lemon Juice	3	cl	2022-06-06 10:57:27.668827	2022-06-06 10:57:27.668827
295	80	Egg White	3	dash	2022-06-06 10:57:27.669763	2022-06-06 10:57:27.669763
296	80	Red Wine	1.5	cl	2022-06-06 10:57:27.670803	2022-06-06 10:57:27.670803
297	81	Aged Rum	4.5	cl	2022-06-06 10:59:10.728723	2022-06-06 10:59:10.728723
298	81	Lime Juice	2.25	cl	2022-06-06 10:59:10.730019	2022-06-06 10:59:10.730019
299	81	Simple Syrup	3	cl	2022-06-06 10:59:10.731127	2022-06-06 10:59:10.731127
300	81	Angostura Bitters	2	dash	2022-06-06 10:59:10.732311	2022-06-06 10:59:10.732311
301	81	Mint Leaves	8	part	2022-06-06 10:59:10.733628	2022-06-06 10:59:10.733628
302	81	Prosecco	6	cl	2022-06-06 10:59:10.734577	2022-06-06 10:59:10.734577
303	82	Agave Tequila	50	ml	2022-06-06 11:00:23.159081	2022-06-06 11:00:23.159081
304	82	Lime Juice	5	ml	2022-06-06 11:00:23.160926	2022-06-06 11:00:23.160926
305	82	Salt	1	part	2022-06-06 11:00:23.162446	2022-06-06 11:00:23.162446
306	82	Pink Grapefruit Soda	100	ml	2022-06-06 11:00:23.163707	2022-06-06 11:00:23.163707
307	83	Bourbon	3	cl	2022-06-06 11:01:20.683317	2022-06-06 11:01:20.683317
308	83	Amaro Nonino	3	cl	2022-06-06 11:01:20.684608	2022-06-06 11:01:20.684608
309	83	Aperol	3	cl	2022-06-06 11:01:20.685693	2022-06-06 11:01:20.685693
310	83	Lemon Juice	3	cl	2022-06-06 11:01:20.686598	2022-06-06 11:01:20.686598
311	84	Scotch Whiskey	6	cl	2022-06-06 11:03:17.162697	2022-06-06 11:03:17.162697
312	84	Lagavulin 16y Whiskey	0.75	cl	2022-06-06 11:03:17.163897	2022-06-06 11:03:17.163897
313	84	Lemon Juice	2.25	cl	2022-06-06 11:03:17.164912	2022-06-06 11:03:17.164912
314	84	Honey Syrup	2.25	cl	2022-06-06 11:03:17.165894	2022-06-06 11:03:17.165894
315	84	Ginger	3	part	2022-06-06 11:03:17.16681	2022-06-06 11:03:17.16681
316	85	Vodka	2.5	cl	2022-06-06 11:05:10.608388	2022-06-06 11:05:10.608388
317	85	Crème De Cassis	1.5	cl	2022-06-06 11:05:10.609549	2022-06-06 11:05:10.609549
318	85	Simple Sugar Syrup	1	cl	2022-06-06 11:05:10.610668	2022-06-06 11:05:10.610668
319	85	Lemon Juice	2.5	cl	2022-06-06 11:05:10.611592	2022-06-06 11:05:10.611592
321	86	Lemon Juice	30	ml	2022-06-06 11:06:54.85662	2022-06-06 11:06:54.85662
322	86	Simple Syrup	15	ml	2022-06-06 11:06:54.857599	2022-06-06 11:06:54.857599
323	86	Mint Leaves	6	part	2022-06-06 11:06:54.858456	2022-06-06 11:06:54.858456
324	86	Egg White	1	part	2022-06-06 11:06:54.85929	2022-06-06 11:06:54.85929
320	86	London Dry Gin	60	ml	2022-06-06 11:06:54.855556	2022-06-06 11:08:50.595875
325	88	Prosecco	9	cl	2022-06-06 11:09:56.356247	2022-06-06 11:09:56.356247
326	88	Campari	6	cl	2022-06-06 11:09:56.357299	2022-06-06 11:09:56.357299
327	88	Soda Water	1	part	2022-06-06 11:09:56.3584	2022-06-06 11:09:56.3584
328	89	Gin	30	ml	2022-06-06 11:11:11.676952	2022-06-06 11:11:11.676952
329	89	Brandy	30	ml	2022-06-06 11:11:11.679047	2022-06-06 11:11:11.679047
330	89	Lime Juice	15	ml	2022-06-06 11:11:11.680914	2022-06-06 11:11:11.680914
331	89	Angostura Bitters	2	dash	2022-06-06 11:11:11.682537	2022-06-06 11:11:11.682537
332	89	Ginger Beer	1	part	2022-06-06 11:11:11.684075	2022-06-06 11:11:11.684075
333	90	Irish Whiskey	5	cl	2022-06-06 11:12:36.714871	2022-06-06 11:12:36.714871
334	90	Sweet Vermouth	2.5	cl	2022-06-06 11:12:36.715975	2022-06-06 11:12:36.715975
335	90	Green Chartreuse	1.5	cl	2022-06-06 11:12:36.716939	2022-06-06 11:12:36.716939
336	90	Angostura Bitters	2	dash	2022-06-06 11:12:36.717797	2022-06-06 11:12:36.717797
337	91	Tequila	6	cl	2022-06-06 11:14:21.21596	2022-06-06 11:14:21.21596
338	91	Lime Juice	3	cl	2022-06-06 11:14:21.217065	2022-06-06 11:14:21.217065
339	91	Agave Syrup	1.5	cl	2022-06-06 11:14:21.217962	2022-06-06 11:14:21.217962
340	91	Plain Water	1.5	cl	2022-06-06 11:14:21.218907	2022-06-06 11:14:21.218907
341	92	Angostura Bitters	4.5	cl	2022-06-06 11:15:29.104404	2022-06-06 11:15:29.104404
342	92	Orgeat Syrup	3	cl	2022-06-06 11:15:29.105366	2022-06-06 11:15:29.105366
343	92	Lemon Juice	2.25	cl	2022-06-06 11:15:29.10624	2022-06-06 11:15:29.10624
344	92	Rye Whiskey	1.5	cl	2022-06-06 11:15:29.107163	2022-06-06 11:15:29.107163
345	93	White Smooth Grappa	4.5	cl	2022-06-06 11:18:09.996837	2022-06-06 11:18:09.996837
346	93	Lemon Juice	2.25	cl	2022-06-06 11:18:09.998082	2022-06-06 11:18:09.998082
347	93	Honey Mix	1.5	cl	2022-06-06 11:18:09.999044	2022-06-06 11:18:09.999044
348	93	Chamomile Cordial	1.5	cl	2022-06-06 11:18:09.999917	2022-06-06 11:18:09.999917
350	94	White Rum	3	cl	2022-06-06 11:19:24.546309	2022-06-06 11:19:24.546309
351	94	Galliano	1.5	cl	2022-06-06 11:19:24.54885	2022-06-06 11:19:24.54885
352	94	Triple Sec	1.5	cl	2022-06-06 11:19:24.551081	2022-06-06 11:19:24.551081
353	94	Lime Juice	1.5	cl	2022-06-06 11:19:24.55344	2022-06-06 11:19:24.55344
354	95	伏特加	45	ml	2022-06-17 15:06:18.486216	2022-06-17 15:06:18.486216
349	93	Egg White	1	cl	2022-06-06 11:18:10.00094	2022-06-07 00:34:52.028579
356	96	琴酒	45	ml	2022-06-17 15:10:39.67444	2022-06-17 15:10:39.67444
357	96	通寧水	1	適量	2022-06-17 15:10:39.676075	2022-06-17 15:10:39.676075
358	97	蘭姆酒	45	ml	2022-06-17 15:13:09.107352	2022-06-17 15:13:09.107352
359	97	可口可樂	1	適量	2022-06-17 15:13:09.108507	2022-06-17 15:13:09.108507
360	98	龍舌蘭	45	ml	2022-06-17 15:17:00.800018	2022-06-17 15:17:00.800018
361	98	紅石榴糖漿	15	ml	2022-06-17 15:17:00.801369	2022-06-17 15:17:00.801369
362	98	柳橙汁	1	適量	2022-06-17 15:17:00.802494	2022-06-17 15:17:00.802494
234	66	Tequila	4.5	cl	2022-06-06 10:35:34.672455	2022-06-17 15:17:56.517993
363	99	蘭姆酒	45	ml	2022-06-17 15:29:44.142982	2022-06-17 15:29:44.142982
364	99	檸檬汁	15	ml	2022-06-17 15:29:44.144275	2022-06-17 15:29:44.144275
365	99	糖漿	20	ml	2022-06-17 15:29:44.145282	2022-06-17 15:29:44.145282
366	100	琴酒	60	ml	2022-06-17 15:38:08.195599	2022-06-17 15:38:08.195599
367	100	君度橙酒	15	ml	2022-06-17 15:38:08.196913	2022-06-17 15:38:08.196913
368	100	檸檬汁	15	ml	2022-06-17 15:38:08.197942	2022-06-17 15:38:08.197942
369	100	糖漿	1	tsp	2022-06-17 15:38:08.198879	2022-06-17 15:38:08.198879
370	101	伏特加	45	ml	2022-06-17 15:41:16.915466	2022-06-17 15:41:16.915466
371	101	君度橙酒	15	ml	2022-06-17 15:41:16.916514	2022-06-17 15:41:16.916514
372	101	檸檬汁	15	ml	2022-06-17 15:41:16.917418	2022-06-17 15:41:16.917418
373	101	蔓越莓汁	25	ml	2022-06-17 15:41:16.918294	2022-06-17 15:41:16.918294
374	101	糖漿	10	ml	2022-06-17 15:41:16.919113	2022-06-17 15:41:16.919113
375	102	龍舌蘭	50	ml	2022-06-17 15:43:39.736127	2022-06-17 15:43:39.736127
376	102	君度橙酒	25	ml	2022-06-17 15:43:39.737492	2022-06-17 15:43:39.737492
377	102	檸檬汁	25	ml	2022-06-17 15:43:39.738513	2022-06-17 15:43:39.738513
378	102	糖漿	1	tsp	2022-06-17 15:43:39.739375	2022-06-17 15:43:39.739375
379	103	琴酒	60	ml	2022-06-17 15:45:17.251759	2022-06-17 15:45:17.251759
380	103	不甜香艾酒	20	ml	2022-06-17 15:45:17.253565	2022-06-17 15:45:17.253565
381	103	柑橘苦精	1	dash	2022-06-17 15:45:17.255092	2022-06-17 15:45:17.255092
382	104	波本威士忌	60	ml	2022-06-17 15:49:26.867452	2022-06-17 15:49:26.867452
383	104	甜香艾酒	20	ml	2022-06-17 15:49:26.869404	2022-06-17 15:49:26.869404
384	104	苦精	1	dash	2022-06-17 15:49:26.870779	2022-06-17 15:49:26.870779
385	105	龍舌蘭	60	ml	2022-06-17 15:55:11.647771	2022-06-17 15:55:11.647771
386	105	君度橙酒	30	ml	2022-06-17 15:55:11.649741	2022-06-17 15:55:11.649741
387	105	檸檬汁	45	ml	2022-06-17 15:55:11.651265	2022-06-17 15:55:11.651265
388	105	糖漿	25	ml	2022-06-17 15:55:11.652883	2022-06-17 15:55:11.652883
389	106	蘭姆酒	90	ml	2022-06-17 15:57:36.86984	2022-06-17 15:57:36.86984
390	106	瑪拉斯奇諾	15	ml	2022-06-17 15:57:36.870846	2022-06-17 15:57:36.870846
391	106	檸檬汁	30	ml	2022-06-17 15:57:36.87267	2022-06-17 15:57:36.87267
392	106	葡萄柚汁	45	ml	2022-06-17 15:57:36.873573	2022-06-17 15:57:36.873573
393	107	蘇格蘭威士忌	60	ml	2022-06-17 16:04:01.70717	2022-06-17 16:04:01.70717
394	107	迪莎蘿娜	20	ml	2022-06-17 16:04:01.709431	2022-06-17 16:04:01.709431
395	108	伏特加	60	ml	2022-06-17 16:04:49.659043	2022-06-17 16:04:49.659043
396	108	迪莎蘿娜	20	ml	2022-06-17 16:04:49.660301	2022-06-17 16:04:49.660301
397	109	干邑白蘭地	60	ml	2022-06-17 16:05:53.024661	2022-06-17 16:05:53.024661
398	109	迪莎蘿娜	20	ml	2022-06-17 16:05:53.026149	2022-06-17 16:05:53.026149
399	110	肯巴利	60	ml	2022-06-17 16:09:04.325915	2022-06-17 16:09:04.325915
400	110	葡萄柚汁	120	ml	2022-06-17 16:09:04.327108	2022-06-17 16:09:04.327108
401	110	通寧水	1	適量	2022-06-17 16:09:04.328463	2022-06-17 16:09:04.328463
402	111	琴酒	30	ml	2022-06-17 16:10:54.813816	2022-06-17 16:10:54.813816
403	111	甜香艾酒	30	ml	2022-06-17 16:10:54.815278	2022-06-17 16:10:54.815278
404	111	肯巴利	30	ml	2022-06-17 16:10:54.816562	2022-06-17 16:10:54.816562
405	112	波本威士忌	30	ml	2022-06-17 16:12:36.904208	2022-06-17 16:12:36.904208
406	112	肯巴利	30	ml	2022-06-17 16:12:36.90558	2022-06-17 16:12:36.90558
407	112	甜香艾酒	30	ml	2022-06-17 16:12:36.906675	2022-06-17 16:12:36.906675
408	113	波本威士忌	30	ml	2022-06-17 16:13:39.228152	2022-06-17 16:13:39.228152
409	113	肯巴利	30	ml	2022-06-17 16:13:39.229721	2022-06-17 16:13:39.229721
410	113	不甜香艾酒	30	ml	2022-06-17 16:13:39.231073	2022-06-17 16:13:39.231073
411	114	琴酒	30	ml	2022-06-17 16:15:39.319247	2022-06-17 16:15:39.319247
412	114	甜香艾酒	60	ml	2022-06-17 16:15:39.320418	2022-06-17 16:15:39.320418
413	114	柑橘苦精	1	dash	2022-06-17 16:15:39.321445	2022-06-17 16:15:39.321445
414	114	瑪拉斯奇諾	1	tsp	2022-06-17 16:15:39.322373	2022-06-17 16:15:39.322373
415	115	蘭姆酒	60	ml	2022-06-17 16:17:45.739899	2022-06-17 16:17:45.739899
416	115	鳳梨汁	45	ml	2022-06-17 16:17:45.741063	2022-06-17 16:17:45.741063
417	115	紅石榴糖漿	10	ml	2022-06-17 16:17:45.742177	2022-06-17 16:17:45.742177
418	115	瑪拉斯奇諾	1	tsp	2022-06-17 16:17:45.743293	2022-06-17 16:17:45.743293
419	116	琴酒	60	ml	2022-06-17 16:20:21.119393	2022-06-17 16:20:21.119393
420	116	檸檬汁	15	ml	2022-06-17 16:20:21.120654	2022-06-17 16:20:21.120654
421	116	瑪拉斯奇諾	1	tsp	2022-06-17 16:20:21.121665	2022-06-17 16:20:21.121665
422	116	紫羅蘭香甜酒	1	tsp	2022-06-17 16:20:21.122634	2022-06-17 16:20:21.122634
423	117	琴酒	75	ml	2022-06-17 16:22:01.100899	2022-06-17 16:22:01.100899
424	117	夏特勒茲（黃）	15	ml	2022-06-17 16:22:01.102127	2022-06-17 16:22:01.102127
425	117	柑橘苦精	1	dash	2022-06-17 16:22:01.103069	2022-06-17 16:22:01.103069
426	118	琴酒	75	ml	2022-06-17 16:23:26.509467	2022-06-17 16:23:26.509467
427	118	夏特勒茲	15	ml	2022-06-17 16:23:26.510539	2022-06-17 16:23:26.510539
428	118	柑橘苦精	1	dash	2022-06-17 16:23:26.511366	2022-06-17 16:23:26.511366
429	119	琴酒	30	ml	2022-06-17 16:26:36.967575	2022-06-17 16:26:36.967575
430	119	夏特勒茲	30	ml	2022-06-17 16:26:36.96991	2022-06-17 16:26:36.96991
431	119	甜香艾酒	30	ml	2022-06-17 16:26:36.971991	2022-06-17 16:26:36.971991
432	119	柑橘苦精	1	dash	2022-06-17 16:26:36.973052	2022-06-17 16:26:36.973052
433	120	琴酒	30	ml	2022-06-17 16:28:08.942004	2022-06-17 16:28:08.942004
434	120	夏特勒茲（黃）	30	ml	2022-06-17 16:28:08.943242	2022-06-17 16:28:08.943242
435	120	甜香艾酒	30	ml	2022-06-17 16:28:08.944283	2022-06-17 16:28:08.944283
436	120	柑橘苦精	1	dash	2022-06-17 16:28:08.945241	2022-06-17 16:28:08.945241
437	121	琴酒	25	ml	2022-06-17 16:29:25.56639	2022-06-17 16:29:25.56639
438	121	夏特勒茲	25	ml	2022-06-17 16:29:25.568684	2022-06-17 16:29:25.568684
439	121	瑪拉斯奇諾	25	ml	2022-06-17 16:29:25.570234	2022-06-17 16:29:25.570234
440	121	檸檬汁	25	ml	2022-06-17 16:29:25.571685	2022-06-17 16:29:25.571685
441	122	干邑白蘭地	30	ml	2022-06-17 16:32:26.098851	2022-06-17 16:32:26.098851
442	122	班尼迪克丁	30	ml	2022-06-17 16:32:26.101092	2022-06-17 16:32:26.101092
443	123	蘋果白蘭地	60	ml	2022-06-17 16:33:45.560087	2022-06-17 16:33:45.560087
444	123	班尼迪克丁	15	ml	2022-06-17 16:33:45.561107	2022-06-17 16:33:45.561107
451	125	琴酒	30	ml	2022-06-17 16:37:19.287419	2022-06-17 16:37:19.287419
445	123	君度橙酒	15	ml	2022-06-17 16:33:45.562813	2022-06-17 16:33:45.562813
446	123	檸檬汁	15	ml	2022-06-17 16:33:45.564085	2022-06-17 16:33:45.564085
447	124	蘋果白蘭地	60	ml	2022-06-17 16:35:12.96536	2022-06-17 16:35:12.96536
448	124	夏特勒茲（黃）	30	ml	2022-06-17 16:35:12.966381	2022-06-17 16:35:12.966381
449	124	班尼迪克丁	10	ml	2022-06-17 16:35:12.967206	2022-06-17 16:35:12.967206
450	124	苦精	2	dash	2022-06-17 16:35:12.968023	2022-06-17 16:35:12.968023
455	126	裸麥威士忌	45	ml	2022-06-17 16:39:42.862513	2022-06-17 16:39:42.862513
456	126	柑曼怡	20	ml	2022-06-17 16:39:42.863646	2022-06-17 16:39:42.863646
457	126	甜香艾酒	20	ml	2022-06-17 16:39:42.864632	2022-06-17 16:39:42.864632
458	126	檸檬汁	15	ml	2022-06-17 16:39:42.865556	2022-06-17 16:39:42.865556
452	125	柑曼怡	20	ml	2022-06-17 16:37:19.288977	2022-06-17 16:37:19.288977
453	125	柳橙汁	30	ml	2022-06-17 16:37:19.290689	2022-06-17 16:37:19.290689
454	125	檸檬汁	10	ml	2022-06-17 16:37:19.292236	2022-06-17 16:37:19.292236
459	127	蘭姆酒	60	ml	2022-06-17 17:19:08.755197	2022-06-17 17:19:08.755197
460	127	柑曼怡	20	ml	2022-06-17 17:19:08.756789	2022-06-17 17:19:08.756789
461	127	檸檬汁	20	ml	2022-06-17 17:19:08.757872	2022-06-17 17:19:08.757872
462	127	糖漿	10	ml	2022-06-17 17:19:08.758728	2022-06-17 17:19:08.758728
463	128	琴酒	45	ml	2022-06-17 17:20:35.780111	2022-06-17 17:20:35.780111
464	128	多寶力	45	ml	2022-06-17 17:20:35.781481	2022-06-17 17:20:35.781481
465	129	琴酒	20	ml	2022-06-17 17:22:05.207305	2022-06-17 17:22:05.207305
466	129	多寶力	20	ml	2022-06-17 17:22:05.209357	2022-06-17 17:22:05.209357
467	129	瑪拉斯奇諾	10	ml	2022-06-17 17:22:05.21094	2022-06-17 17:22:05.21094
468	129	苦精	1	dash	2022-06-17 17:22:05.212395	2022-06-17 17:22:05.212395
469	130	裸麥威士忌	30	ml	2022-06-17 17:23:45.641209	2022-06-17 17:23:45.641209
470	130	多寶力	45	ml	2022-06-17 17:23:45.64239	2022-06-17 17:23:45.64239
471	130	君度橙酒	1	tsp	2022-06-17 17:23:45.643461	2022-06-17 17:23:45.643461
472	130	裴喬氏苦精	2	dash	2022-06-17 17:23:45.644405	2022-06-17 17:23:45.644405
473	131	白莫札特	25	ml	2022-06-17 17:26:16.012437	2022-06-17 17:26:16.012437
474	131	綠薄荷香甜酒	25	ml	2022-06-17 17:26:16.013718	2022-06-17 17:26:16.013718
475	131	鮮奶	50	ml	2022-06-17 17:26:16.014819	2022-06-17 17:26:16.014819
476	132	伏特加	45	ml	2022-06-17 17:28:52.16079	2022-06-17 17:28:52.16079
477	132	金莫札特	60	ml	2022-06-17 17:28:52.162554	2022-06-17 17:28:52.162554
478	132	可可粉	1	適量	2022-06-17 17:28:52.164017	2022-06-17 17:28:52.164017
479	133	干邑白蘭地	45	ml	2022-06-17 17:30:07.507836	2022-06-17 17:30:07.507836
480	133	黑莫札特	30	ml	2022-06-17 17:30:07.508871	2022-06-17 17:30:07.508871
481	133	Half & Half	20	ml	2022-06-17 17:30:07.509828	2022-06-17 17:30:07.509828
482	134	伏特加	60	ml	2022-06-17 17:32:52.344869	2022-06-17 17:32:52.344869
483	134	卡魯哇	20	ml	2022-06-17 17:32:52.34658	2022-06-17 17:32:52.34658
484	135	卡魯哇	1	份	2022-06-17 17:35:06.160528	2022-06-17 17:35:06.160528
485	135	伏特加	1	份	2022-06-17 17:35:06.161776	2022-06-17 17:35:06.161776
486	135	蘇打水	1	份	2022-06-17 17:35:06.162913	2022-06-17 17:35:06.162913
487	136	干邑白蘭地	60	ml	2022-06-17 17:36:40.51145	2022-06-17 17:36:40.51145
488	136	卡魯哇	20	ml	2022-06-17 17:36:40.512595	2022-06-17 17:36:40.512595
489	137	龍舌蘭	60	ml	2022-06-17 17:37:07.95492	2022-06-17 17:37:07.95492
490	137	卡魯哇	20	ml	2022-06-17 17:37:07.956678	2022-06-17 17:37:07.956678
491	138	伏特加	60	ml	2022-06-17 17:38:22.970823	2022-06-17 17:38:22.970823
492	138	卡魯哇	20	ml	2022-06-17 17:38:22.972627	2022-06-17 17:38:22.972627
493	138	鮮奶油	15	ml	2022-06-17 17:38:22.973831	2022-06-17 17:38:22.973831
494	139	伏特加	60	ml	2022-06-17 17:39:11.69725	2022-06-17 17:39:11.69725
495	139	卡魯哇	20	ml	2022-06-17 17:39:11.698206	2022-06-17 17:39:11.698206
496	139	貝禮詩	15	ml	2022-06-17 17:39:11.699111	2022-06-17 17:39:11.699111
497	140	伏特加	60	ml	2022-06-17 17:40:04.912698	2022-06-17 17:40:04.912698
498	140	卡魯哇	20	ml	2022-06-17 17:40:04.914126	2022-06-17 17:40:04.914126
499	140	鮮奶油	15	ml	2022-06-17 17:40:04.915377	2022-06-17 17:40:04.915377
500	140	可口可樂	1	適量	2022-06-17 17:40:04.916622	2022-06-17 17:40:04.916622
501	141	卡魯哇	45	ml	2022-06-17 17:43:18.479601	2022-06-17 17:43:18.479601
502	141	伏特加	30	ml	2022-06-17 17:43:18.481221	2022-06-17 17:43:18.481221
503	141	濃縮咖啡	1	shot	2022-06-17 17:43:18.482316	2022-06-17 17:43:18.482316
504	142	貝禮詩	15	ml	2022-06-17 17:45:18.139619	2022-06-17 17:45:18.139619
505	142	愛爾蘭威士忌	15	ml	2022-06-17 17:45:18.140644	2022-06-17 17:45:18.140644
506	142	健力士黑啤酒	0.5	can	2022-06-17 17:45:18.14153	2022-06-17 17:45:18.14153
507	143	卡魯哇	20	ml	2022-06-17 17:46:41.980524	2022-06-17 17:46:41.980524
508	143	貝禮詩	20	ml	2022-06-17 17:46:41.981992	2022-06-17 17:46:41.981992
509	143	柑曼怡	20	ml	2022-06-17 17:46:41.983094	2022-06-17 17:46:41.983094
510	144	蘇格蘭威士忌	75	ml	2022-06-17 17:47:53.471974	2022-06-17 17:47:53.471974
511	144	吉寶	15	ml	2022-06-17 17:47:53.473005	2022-06-17 17:47:53.473005
512	145	蜜多麗	30	ml	2022-06-17 17:49:14.010685	2022-06-17 17:49:14.010685
513	145	君度橙酒	30	ml	2022-06-17 17:49:14.012048	2022-06-17 17:49:14.012048
514	145	檸檬汁	30	ml	2022-06-17 17:49:14.013332	2022-06-17 17:49:14.013332
515	146	蜜多麗	25	ml	2022-06-17 17:51:26.315925	2022-06-17 17:51:26.315925
516	146	蘭姆酒	30	ml	2022-06-17 17:51:26.316994	2022-06-17 17:51:26.316994
517	146	椰漿	15	ml	2022-06-17 17:51:26.317928	2022-06-17 17:51:26.317928
518	146	檸檬汁	15	ml	2022-06-17 17:51:26.318756	2022-06-17 17:51:26.318756
519	146	鳳梨汁	45	ml	2022-06-17 17:51:26.319586	2022-06-17 17:51:26.319586
520	147	蜜多麗	30	ml	2022-06-17 17:52:48.346924	2022-06-17 17:52:48.346924
521	147	伏特加	45	ml	2022-06-17 17:52:48.348223	2022-06-17 17:52:48.348223
522	147	葡萄柚汁	30	ml	2022-06-17 17:52:48.349329	2022-06-17 17:52:48.349329
523	148	伏特加	60	ml	2022-06-17 17:54:12.829095	2022-06-17 17:54:12.829095
524	148	蜜多麗	15	ml	2022-06-17 17:54:12.830527	2022-06-17 17:54:12.830527
525	148	華冠香甜酒	15	ml	2022-06-17 17:54:12.831915	2022-06-17 17:54:12.831915
526	148	鳳梨汁	45	ml	2022-06-17 17:54:12.833164	2022-06-17 17:54:12.833164
527	149	南方安逸	45	ml	2022-06-17 18:04:24.475793	2022-06-17 18:04:24.475793
528	149	蔓越莓汁	45	ml	2022-06-17 18:04:24.477614	2022-06-17 18:04:24.477614
529	149	檸檬汁	20	ml	2022-06-17 18:04:24.478952	2022-06-17 18:04:24.478952
530	150	南方安逸	20	ml	2022-06-17 18:06:18.69034	2022-06-17 18:06:18.69034
531	150	迪莎蘿娜	20	ml	2022-06-17 18:06:18.691459	2022-06-17 18:06:18.691459
532	150	野莓琴酒	20	ml	2022-06-17 18:06:18.692433	2022-06-17 18:06:18.692433
533	150	柳橙汁	60	ml	2022-06-17 18:06:18.69328	2022-06-17 18:06:18.69328
534	151	南方安逸	60	ml	2022-06-17 18:07:44.111028	2022-06-17 18:07:44.111028
535	151	鳳梨汁	90	ml	2022-06-17 18:07:44.112245	2022-06-17 18:07:44.112245
536	151	紅石榴糖漿	1	tsp	2022-06-17 18:07:44.113161	2022-06-17 18:07:44.113161
537	151	蘇打水	1	適量	2022-06-17 18:07:44.11394	2022-06-17 18:07:44.11394
538	152	琴酒	25	ml	2022-06-17 18:10:47.197157	2022-06-17 18:10:47.197157
539	152	檸檬汁	25	ml	2022-06-17 18:10:47.199196	2022-06-17 18:10:47.199196
540	152	君度橙酒	25	ml	2022-06-17 18:10:47.200806	2022-06-17 18:10:47.200806
541	152	白麗葉酒	25	ml	2022-06-17 18:10:47.202318	2022-06-17 18:10:47.202318
542	152	佩諾	1	dash	2022-06-17 18:10:47.2038	2022-06-17 18:10:47.2038
543	153	高登琴酒	90	ml	2022-06-17 18:13:42.642613	2022-06-17 18:13:42.642613
544	153	伏特加	30	ml	2022-06-17 18:13:42.643797	2022-06-17 18:13:42.643797
545	153	白麗葉酒	15	ml	2022-06-17 18:13:42.644859	2022-06-17 18:13:42.644859
554	156	老湯姆琴酒	45	ml	2022-06-17 18:20:56.797776	2022-06-17 18:20:56.797776
555	156	檸檬汁	15	ml	2022-06-17 18:20:56.798787	2022-06-17 18:20:56.798787
556	156	糖漿	15	ml	2022-06-17 18:20:56.799749	2022-06-17 18:20:56.799749
557	156	蘇打水	1	適量	2022-06-17 18:20:56.800616	2022-06-17 18:20:56.800616
546	154	蘭姆酒	60	ml	2022-06-17 18:15:21.791638	2022-06-17 18:15:21.791638
547	154	檸檬汁	25	ml	2022-06-17 18:15:21.793284	2022-06-17 18:15:21.793284
548	154	砂糖	1	適量	2022-06-17 18:15:21.794182	2022-06-17 18:15:21.794182
549	154	蘇打水	1	適量	2022-06-17 18:15:21.794945	2022-06-17 18:15:21.794945
550	154	薄荷葉	1	適量	2022-06-17 18:15:21.795801	2022-06-17 18:15:21.795801
551	155	琴酒	45	ml	2022-06-17 18:18:28.418939	2022-06-17 18:18:28.418939
552	155	檸檬汁	15	ml	2022-06-17 18:18:28.420617	2022-06-17 18:18:28.420617
553	155	蘇打水	1	適量	2022-06-17 18:18:28.421929	2022-06-17 18:18:28.421929
558	157	蘭姆酒	45	ml	2022-06-17 18:23:02.257952	2022-06-17 18:23:02.257952
559	157	鳳梨汁	60	ml	2022-06-17 18:23:53.091125	2022-06-17 18:23:53.091125
560	157	椰子糖漿	25	ml	2022-06-17 18:23:53.09232	2022-06-17 18:23:53.09232
561	157	檸檬汁	15	ml	2022-06-17 18:23:53.093413	2022-06-17 18:23:53.093413
562	157	糖漿	1	tsp	2022-06-17 18:23:53.094355	2022-06-17 18:23:53.094355
563	158	琴酒	45	ml	2022-06-17 18:26:07.281188	2022-06-17 18:26:07.281188
564	158	櫻桃香甜酒	20	ml	2022-06-17 18:26:07.28254	2022-06-17 18:26:07.28254
565	158	班尼迪克丁	10	ml	2022-06-17 18:26:07.283671	2022-06-17 18:26:07.283671
566	158	君度橙酒	10	ml	2022-06-17 18:26:07.284662	2022-06-17 18:26:07.284662
567	158	鳳梨汁	60	ml	2022-06-17 18:26:07.285595	2022-06-17 18:26:07.285595
568	158	檸檬汁	25	ml	2022-06-17 18:26:07.2866	2022-06-17 18:26:07.2866
569	158	糖漿	20	ml	2022-06-17 18:26:07.287506	2022-06-17 18:26:07.287506
570	158	紅石榴糖漿	1	tsp	2022-06-17 18:26:07.288623	2022-06-17 18:26:07.288623
571	158	蘇打水	1	適量	2022-06-17 18:26:07.289616	2022-06-17 18:26:07.289616
572	159	皮斯可	75	ml	2022-06-17 18:28:16.158118	2022-06-17 18:28:16.158118
573	159	檸檬汁	20	ml	2022-06-17 18:28:16.159132	2022-06-17 18:28:16.159132
574	159	糖漿	20	ml	2022-06-17 18:28:16.160182	2022-06-17 18:28:16.160182
575	159	蛋白	1	顆	2022-06-17 18:28:16.161183	2022-06-17 18:28:16.161183
576	159	苦精	1	dash	2022-06-17 18:28:16.162149	2022-06-17 18:28:16.162149
577	160	卡夏莎	60	ml	2022-06-17 18:29:49.650549	2022-06-17 18:29:49.650549
578	160	砂糖	2	tsp	2022-06-17 18:29:49.652399	2022-06-17 18:29:49.652399
579	160	檸檬	0.5	顆	2022-06-17 18:29:49.653825	2022-06-17 18:29:49.653825
580	161	白葡萄酒	1	適量	2022-06-17 18:30:52.014698	2022-06-17 18:30:52.014698
581	161	黑醋栗香甜酒	1	適量	2022-06-17 18:30:52.015661	2022-06-17 18:30:52.015661
582	162	紅葡萄酒	1	瓶	2022-06-17 18:36:32.069257	2022-06-17 18:36:32.069257
583	162	干邑白蘭地	180	ml	2022-06-17 18:36:32.070673	2022-06-17 18:36:32.070673
584	162	柑曼怡	90	ml	2022-06-17 18:36:32.072083	2022-06-17 18:36:32.072083
585	162	檸檬汁	60	ml	2022-06-17 18:36:32.073455	2022-06-17 18:36:32.073455
586	162	柳橙汁	180	ml	2022-06-17 18:36:32.074785	2022-06-17 18:36:32.074785
587	162	糖漿	120	ml	2022-06-17 18:36:32.075885	2022-06-17 18:36:32.075885
588	162	水果切片	1	適量	2022-06-17 18:36:32.077049	2022-06-17 18:36:32.077049
589	163	雪莉酒	60	ml	2022-06-17 18:38:39.591478	2022-06-17 18:38:39.591478
590	163	不甜香艾酒	20	ml	2022-06-17 18:38:39.593494	2022-06-17 18:38:39.593494
591	163	柑橘苦精	1	dash	2022-06-17 18:38:39.595558	2022-06-17 18:38:39.595558
592	164	干邑白蘭地	45	ml	2022-06-17 18:40:04.33552	2022-06-17 18:40:04.33552
593	164	波特酒	45	ml	2022-06-17 18:40:04.336689	2022-06-17 18:40:04.336689
594	164	糖漿	1	tsp	2022-06-17 18:40:04.337986	2022-06-17 18:40:04.337986
595	164	全蛋	1	顆	2022-06-17 18:40:04.339143	2022-06-17 18:40:04.339143
596	165	雪莉酒	60	ml	2022-06-17 18:42:00.232701	2022-06-17 18:42:00.232701
597	165	檸檬汁	15	ml	2022-06-17 18:42:00.234233	2022-06-17 18:42:00.234233
598	165	糖漿	15	ml	2022-06-17 18:42:00.235605	2022-06-17 18:42:00.235605
599	165	柳橙片	3	片	2022-06-17 18:42:00.237054	2022-06-17 18:42:00.237054
600	165	去皮鳳梨角	3	個	2022-06-17 18:42:00.238444	2022-06-17 18:42:00.238444
601	165	莓果	1	適量	2022-06-17 18:42:00.239859	2022-06-17 18:42:00.239859
602	166	波本威士忌	75	ml	2022-06-17 18:44:45.626044	2022-06-17 18:44:45.626044
603	166	糖漿	15	ml	2022-06-17 18:44:45.627337	2022-06-17 18:44:45.627337
604	166	薄荷葉	1	適量	2022-06-17 18:44:45.628299	2022-06-17 18:44:45.628299
605	167	伏特加	60	ml	2022-06-17 18:45:45.680236	2022-06-17 18:45:45.680236
606	167	檸檬汁	15	ml	2022-06-17 18:45:45.681375	2022-06-17 18:45:45.681375
607	167	薑汁汽水	1	適量	2022-06-17 18:45:45.682281	2022-06-17 18:45:45.682281
608	168	伏特加	45	ml	2022-06-17 18:48:25.947061	2022-06-17 18:48:25.947061
609	168	檸檬汁	15	ml	2022-06-17 18:48:25.949808	2022-06-17 18:48:25.949808
610	168	糖漿	25	ml	2022-06-17 18:48:25.951277	2022-06-17 18:48:25.951277
611	168	番茄汁	120	ml	2022-06-17 18:48:25.952965	2022-06-17 18:48:25.952965
612	168	梅林辣醬油	1	適量	2022-06-17 18:48:25.954433	2022-06-17 18:48:25.954433
613	168	塔巴斯科辣椒醬	1	適量	2022-06-17 18:48:25.95586	2022-06-17 18:48:25.95586
614	168	黑胡椒	1	適量	2022-06-17 18:48:25.957301	2022-06-17 18:48:25.957301
615	169	伏特加	15	ml	2022-06-17 18:50:24.014982	2022-06-17 18:50:24.014982
616	169	琴酒	15	ml	2022-06-17 18:50:24.016273	2022-06-17 18:50:24.016273
617	169	龍舌蘭	15	ml	2022-06-17 18:50:24.017498	2022-06-17 18:50:24.017498
618	169	蘭姆酒	15	ml	2022-06-17 18:50:24.01858	2022-06-17 18:50:24.01858
619	169	檸檬汁	20	ml	2022-06-17 18:50:24.019606	2022-06-17 18:50:24.019606
620	169	糖漿	15	ml	2022-06-17 18:50:24.020655	2022-06-17 18:50:24.020655
621	169	君度橙酒	1	tsp	2022-06-17 18:50:24.021647	2022-06-17 18:50:24.021647
622	169	可口可樂	1	適量	2022-06-17 18:50:24.022631	2022-06-17 18:50:24.022631
623	170	伏特加	15	ml	2022-06-17 18:53:22.795521	2022-06-17 18:53:22.795521
624	170	金色龍舌蘭	15	ml	2022-06-17 18:53:22.796772	2022-06-17 18:53:22.796772
625	170	蘇格蘭威士忌	15	ml	2022-06-17 18:53:22.79774	2022-06-17 18:53:22.79774
626	170	卡魯哇	20	ml	2022-06-17 18:53:22.79858	2022-06-17 18:53:22.79858
627	170	不甜香艾酒	15	ml	2022-06-17 18:53:22.799486	2022-06-17 18:53:22.799486
628	170	檸檬汁	15	ml	2022-06-17 18:53:22.800309	2022-06-17 18:53:22.800309
629	170	糖漿	15	ml	2022-06-17 18:53:22.801167	2022-06-17 18:53:22.801167
630	171	香檳	1	適量	2022-06-17 18:55:23.029193	2022-06-17 18:55:23.029193
631	171	苦精	1	dash	2022-06-17 18:55:23.031298	2022-06-17 18:55:23.031298
632	171	方糖	1	顆	2022-06-17 18:55:23.033203	2022-06-17 18:55:23.033203
633	171	檸檬皮卷	1	片	2022-06-17 18:55:23.035036	2022-06-17 18:55:23.035036
634	172	苦艾酒	60	ml	2022-06-17 18:57:30.082214	2022-06-17 18:57:30.082214
635	172	糖漿	1	tsp	2022-06-17 18:57:30.08403	2022-06-17 18:57:30.08403
636	172	裴喬氏苦精	2	dash	2022-06-17 18:57:30.085463	2022-06-17 18:57:30.085463
637	172	蘇打水	1	適量	2022-06-17 18:57:30.086826	2022-06-17 18:57:30.086826
638	173	裸麥威士忌	60	ml	2022-06-17 18:59:17.416719	2022-06-17 18:59:17.416719
639	173	裴喬氏苦精	2	dash	2022-06-17 18:59:17.419074	2022-06-17 18:59:17.419074
640	173	方糖	1	顆	2022-06-17 18:59:17.420943	2022-06-17 18:59:17.420943
641	173	苦艾酒	1	適量	2022-06-17 18:59:17.423061	2022-06-17 18:59:17.423061
642	173	水	1	適量	2022-06-17 18:59:17.424711	2022-06-17 18:59:17.424711
643	174	琴酒	60	ml	2022-06-17 19:02:44.495586	2022-06-17 19:02:44.495586
644	174	鮮奶油	30	ml	2022-06-17 19:02:44.497025	2022-06-17 19:02:44.497025
645	174	檸檬汁	15	ml	2022-06-17 19:02:44.498301	2022-06-17 19:02:44.498301
646	174	萊姆汁	15	ml	2022-06-17 19:02:44.499322	2022-06-17 19:02:44.499322
647	174	糖漿	30	ml	2022-06-17 19:02:44.500423	2022-06-17 19:02:44.500423
648	174	橙花水	4	drop	2022-06-17 19:02:44.501425	2022-06-17 19:02:44.501425
649	174	蛋白	1	顆	2022-06-17 19:02:44.502363	2022-06-17 19:02:44.502363
650	174	蘇打水	1	適量	2022-06-17 19:02:44.503275	2022-06-17 19:02:44.503275
651	175	伏特加	40	ml	2022-06-18 11:32:31.175102	2022-06-18 11:32:31.175102
652	175	白庫拉索酒	10	ml	2022-06-18 11:32:31.176556	2022-06-18 11:32:31.176556
653	175	萊姆汁	10	ml	2022-06-18 11:32:31.177431	2022-06-18 11:32:31.177431
654	175	綠色糖漬櫻桃	1	顆	2022-06-18 11:32:31.17829	2022-06-18 11:32:31.17829
655	175	砂糖	1	適量	2022-06-18 11:32:31.179141	2022-06-18 11:32:31.179141
355	95	蔓越莓汁	0	適量	2022-06-17 15:06:18.48777	2022-06-21 19:38:12.984276
656	176	澀味琴酒	60	ml	2022-06-22 22:47:18.801135	2022-06-22 22:47:18.801135
657	176	澀味苦艾酒	1	tsp	2022-06-22 22:47:18.802864	2022-06-22 22:47:18.802864
658	176	橄欖	1	顆	2022-06-22 22:47:18.803925	2022-06-22 22:47:18.803925
659	177	澀味琴酒	60	ml	2022-06-22 22:48:32.694682	2022-06-22 22:48:32.694682
660	177	澀味苦艾酒	1	tsp	2022-06-22 22:48:32.696296	2022-06-22 22:48:32.696296
661	177	橄欖	1	顆	2022-06-22 22:48:32.697538	2022-06-22 22:48:32.697538
662	177	檸檬皮	1	片	2022-06-22 22:48:32.698685	2022-06-22 22:48:32.698685
663	178	柑橘琴酒	50	ml	2022-06-22 22:49:45.749021	2022-06-22 22:49:45.749021
664	178	澀味苦艾酒	10	ml	2022-06-22 22:49:45.750213	2022-06-22 22:49:45.750213
665	178	柑橘苦精	1	dash	2022-06-22 22:49:45.751148	2022-06-22 22:49:45.751148
666	178	橄欖	1	顆	2022-06-22 22:49:45.751989	2022-06-22 22:49:45.751989
668	179	橄欖浸漬液	10	tsp	2022-06-22 22:51:11.4756	2022-06-22 22:51:11.4756
669	179	橄欖	1	顆	2022-06-22 22:51:11.476534	2022-06-22 22:51:11.476534
670	180	澀味琴酒	30	ml	2022-06-22 22:52:21.200842	2022-06-22 22:52:21.200842
671	180	甜味苦艾酒	30	ml	2022-06-22 22:52:21.20184	2022-06-22 22:52:21.20184
672	181	澀味琴酒	40	ml	2022-06-22 22:53:35.068433	2022-06-22 22:53:35.068433
673	181	澀味苦艾酒	15	ml	2022-06-22 22:53:35.069542	2022-06-22 22:53:35.069542
674	181	柑橘苦精	1	dash	2022-06-22 22:53:35.070428	2022-06-22 22:53:35.070428
676	182	澀味苦艾酒	1	dash	2022-06-22 22:55:37.137366	2022-06-22 22:55:37.137366
677	182	檸檬皮	1	片	2022-06-22 22:55:37.138974	2022-06-22 22:55:37.138974
678	182	腰果	1	個	2022-06-22 22:55:37.140127	2022-06-22 22:55:37.140127
679	182	橄欖	1	個	2022-06-22 22:55:37.141004	2022-06-22 22:55:37.141004
667	179	澀味琴酒	1	杯	2022-06-22 22:51:11.474604	2022-06-22 22:56:09.94357
675	182	Tanqueray 琴酒	1	杯	2022-06-22 22:55:37.136021	2022-06-22 22:56:23.330114
680	183	澀味琴酒	45	ml	2022-06-22 22:57:24.053238	2022-06-22 22:57:24.053238
681	183	愛爾蘭威士忌	15	ml	2022-06-22 22:57:24.054708	2022-06-22 22:57:24.054708
682	183	檸檬皮	1	片	2022-06-22 22:57:24.056068	2022-06-22 22:57:24.056068
683	184	澀味琴酒	45	ml	2022-06-22 23:00:47.406496	2022-06-22 23:00:47.406496
684	184	黑牌威士忌	15	ml	2022-06-22 23:00:47.407518	2022-06-22 23:00:47.407518
685	185	澀味琴酒	50	ml	2022-06-22 23:01:29.917363	2022-06-22 23:01:29.917363
686	185	澀味雪莉酒	10	ml	2022-06-22 23:01:29.918729	2022-06-22 23:01:29.918729
687	185	橄欖	1	顆	2022-06-22 23:01:29.91995	2022-06-22 23:01:29.91995
688	186	澀味琴酒	30	ml	2022-06-22 23:02:47.067158	2022-06-22 23:02:47.067158
689	186	DUBONNET 香甜酒	20	ml	2022-06-22 23:02:47.068576	2022-06-22 23:02:47.068576
690	186	櫻桃香甜酒	10	ml	2022-06-22 23:02:47.069969	2022-06-22 23:02:47.069969
691	186	檸檬皮	1	片	2022-06-22 23:02:47.071326	2022-06-22 23:02:47.071326
692	187	澀味琴酒	30	ml	2022-06-22 23:03:55.666653	2022-06-22 23:03:55.666653
693	187	澀味苦艾酒	20	ml	2022-06-22 23:03:55.667903	2022-06-22 23:03:55.667903
694	187	黑醋栗香甜酒	10	ml	2022-06-22 23:03:55.669141	2022-06-22 23:03:55.669141
695	188	琴酒	30	ml	2022-06-22 23:04:57.010392	2022-06-22 23:04:57.010392
696	188	甜味苦艾酒	20	ml	2022-06-22 23:04:57.011821	2022-06-22 23:04:57.011821
697	188	鳳梨汁	20	ml	2022-06-22 23:04:57.013095	2022-06-22 23:04:57.013095
\.


--
-- Data for Name: items; Type: TABLE DATA; Schema: public; Owner: cor_admin
--

COPY public.items (id, name, description, created_at, updated_at, user_id) FROM stdin;
58	Cointreau	\N	2022-05-21 13:37:24.3661	2022-05-21 13:38:01.732447	1
59	Tanqueray London Dry Gin	\N	2022-05-21 13:39:40.567939	2022-05-21 13:39:40.581192	1
60	Tanqueray Nº Ten Gin	\N	2022-05-21 13:41:12.432188	2022-05-21 13:41:12.441398	1
62	Dolin Dry Vermouth	\N	2022-05-21 17:25:53.177754	2022-05-21 17:25:53.177754	1
63	Dolin Red Vermouth	\N	2022-05-21 17:26:01.629369	2022-05-21 17:26:01.629369	1
64	Dolin White Vermouth	\N	2022-05-21 17:26:14.715479	2022-05-21 17:26:14.715479	1
110	Lime Peel	\N	2022-05-22 10:31:30.507067	2022-05-22 10:31:30.507067	1
111	Maraschino Cherry	\N	2022-05-22 10:31:51.818174	2022-05-22 10:31:51.818174	1
112	Milk	\N	2022-05-22 10:31:59.406241	2022-05-22 10:32:04.653852	1
113	Mint Sprigs	\N	2022-05-22 10:32:16.490451	2022-05-22 10:32:16.490451	1
114	Mint Leaves	\N	2022-05-22 10:32:25.822807	2022-05-22 10:32:25.822807	1
115	Olive Brine	\N	2022-05-22 10:32:36.157562	2022-05-22 10:32:36.157562	1
116	Orange	\N	2022-05-22 10:32:42.883014	2022-05-22 10:32:42.883014	1
117	Orange Peel	\N	2022-05-22 10:33:02.264743	2022-05-22 10:33:02.264743	1
118	Passion Fruit	\N	2022-05-22 10:33:12.300858	2022-05-22 10:33:12.300858	1
119	Passion Fruit Juice	\N	2022-05-22 10:33:29.691894	2022-05-22 10:33:29.691894	1
120	Pineapple	\N	2022-05-22 10:33:48.438667	2022-05-22 10:33:48.438667	1
121	Pink Grapefruit Juice	\N	2022-05-22 10:34:11.674004	2022-05-22 10:34:11.674004	1
122	Powdered Sugar	\N	2022-05-22 10:34:24.176889	2022-05-22 10:34:24.176889	1
123	Raspberries	\N	2022-05-22 10:34:37.959217	2022-05-22 10:34:37.959217	1
124	Roasted Coffee Beans	\N	2022-05-22 10:34:48.585583	2022-05-22 10:34:48.585583	1
125	Salt	\N	2022-05-22 10:34:59.607406	2022-05-22 10:34:59.607406	1
126	Strawberries	\N	2022-05-22 10:35:15.905576	2022-05-22 10:35:15.905576	1
127	Sugar Syrup 2:1	\N	2022-05-22 10:35:38.311975	2022-05-22 10:35:38.311975	1
128	Tonic Water	\N	2022-05-22 10:35:48.980505	2022-05-22 10:35:48.980505	1
129	Vanilla Ice Cream	\N	2022-05-22 10:36:03.793595	2022-05-22 10:36:03.793595	1
130	Watermelon	\N	2022-05-22 10:36:11.236332	2022-05-22 10:36:11.236332	1
131	Fever Tree Refreshingly Light Ginger Beer	\N	2022-05-22 10:38:02.417216	2022-05-22 10:38:02.417216	1
132	Fever Tree Handpicked Elderflower Tonic	\N	2022-05-22 10:38:36.092953	2022-05-22 10:38:36.092953	1
133	Fever Tree Mediterranean Tonic	\N	2022-05-22 10:38:55.035126	2022-05-22 10:38:55.035126	1
134	Fever Tree White Grape & Apricot Soda	\N	2022-05-22 10:39:15.726617	2022-05-22 10:39:15.726617	1
135	Fever Tree Light Tonic Water	\N	2022-05-22 10:39:45.623933	2022-05-22 10:39:45.623933	1
136	Fever Tree Premium Lemonade	\N	2022-05-22 10:40:03.139373	2022-05-22 10:40:03.139373	1
137	Fever Tree Aromatic Tonic Water	\N	2022-05-22 10:40:15.79547	2022-05-22 10:40:15.79547	1
138	Fever Tree Smoky Ginger Ale	\N	2022-05-22 10:40:27.49235	2022-05-22 10:40:27.49235	1
139	Fever Tree Spiced Orange Ginger Ale	\N	2022-05-22 10:40:39.815607	2022-05-22 10:40:39.815607	1
140	Fever Tree Cucumber Tonic Water	\N	2022-05-22 10:40:56.260543	2022-05-22 10:40:56.260543	1
141	Fever Tree Premium Soda Water	\N	2022-05-22 10:41:08.861776	2022-05-22 10:41:08.861776	1
142	Fever Tree Premium Indian Tonic Water	\N	2022-05-22 10:41:30.705614	2022-05-22 10:41:30.705614	1
143	Fever Tree Lemon Tonic	\N	2022-05-22 10:41:42.092574	2022-05-22 10:41:42.092574	1
144	Fever Tree Premium Ginger Beer	\N	2022-05-22 10:41:55.230117	2022-05-22 10:41:55.230117	1
145	Fever Tree Mexican Lime Soda	\N	2022-05-22 10:42:09.497666	2022-05-22 10:42:09.497666	1
146	Fever Tree Sicilian Lemonade	\N	2022-05-22 10:42:22.547799	2022-05-22 10:42:22.547799	1
149	Orange Liqueur	\N	2022-05-22 10:58:24.561384	2022-05-22 10:58:24.561384	1
9	Brown Crème De Cacao	\N	2022-05-10 13:16:01.605681	2022-05-23 05:46:19.097023	1
151	Curaçao	\N	2022-05-23 09:40:07.030812	2022-05-23 09:40:07.030812	1
153	Grand Marnier	\N	2022-05-24 02:38:26.706853	2022-05-24 02:38:26.706853	1
155	Bardinet Grenadine	\N	2022-05-27 00:25:02.288025	2022-05-27 00:25:02.288025	1
157	Prosecco	\N	2022-06-06 00:34:26.556041	2022-06-06 00:34:26.556041	1
158	Peach Puree	\N	2022-06-06 00:34:26.56363	2022-06-06 00:34:26.56363	1
165	Cachaça	\N	2022-06-06 00:41:33.449906	2022-06-06 00:41:33.449906	1
167	Champagne	\N	2022-06-06 00:42:48.988905	2022-06-06 00:42:48.988905	1
7	Simple Sugar Syrup	\N	2022-05-10 13:07:30.162092	2022-06-06 01:08:32.871563	1
33	Superfine Sugar	\N	2022-05-10 13:40:12.722893	2022-06-06 01:08:50.223	1
43	Sugar Cube	\N	2022-05-10 13:51:45.60124	2022-06-06 01:09:02.407069	1
46	Sugar Cane Juice	\N	2022-05-10 13:53:51.568902	2022-06-06 01:09:27.117835	1
5	Gin	\N	2022-05-10 13:07:10.171499	2022-05-10 13:07:10.171499	1
6	Lemon Juice	\N	2022-05-10 13:07:22.280246	2022-05-10 13:07:22.280246	1
8	Cognac	\N	2022-05-10 13:15:41.537707	2022-05-10 13:15:41.537707	1
10	Light Cream	\N	2022-05-10 13:16:13.268859	2022-05-10 13:16:13.268859	1
11	Campari	\N	2022-05-10 13:16:53.619541	2022-05-10 13:16:53.619541	1
12	Red Vermouth	\N	2022-05-10 13:17:03.618954	2022-05-10 13:17:03.618954	1
13	Soda Water	\N	2022-05-10 13:17:32.090816	2022-05-10 13:17:32.090816	1
14	Apricot Brandy	\N	2022-05-10 13:18:14.065113	2022-05-10 13:18:14.065113	1
15	Calvados	\N	2022-05-10 13:18:27.766954	2022-05-10 13:18:27.766954	1
16	Maraschino Liqueur	\N	2022-05-10 13:19:21.813173	2022-05-10 13:19:21.813173	1
17	Creme De Violette	\N	2022-05-10 13:19:34.723951	2022-05-10 13:19:34.723951	1
18	White Rum	\N	2022-05-10 13:20:03.545092	2022-05-10 13:20:03.545092	1
19	Triple Sec	\N	2022-05-10 13:20:25.265391	2022-05-10 13:20:25.265391	1
20	Bourbon	\N	2022-05-10 13:22:42.291452	2022-05-10 13:22:42.291452	1
21	Sweet Vermouth	\N	2022-05-10 13:23:07.677737	2022-05-10 13:23:07.677737	1
22	Brandy	\N	2022-05-10 13:32:14.014791	2022-05-10 13:32:14.014791	1
23	Maraschino Luxardo	\N	2022-05-10 13:34:24.74631	2022-05-10 13:34:24.74631	1
26	Aromatic Bitters	\N	2022-05-10 13:35:41.042805	2022-05-10 13:35:41.042805	1
27	Maraschino	\N	2022-05-10 13:36:54.735336	2022-05-10 13:36:54.735336	1
28	Orange Bitters	\N	2022-05-10 13:37:28.802199	2022-05-10 13:37:28.802199	1
29	Raspberry Syrup	\N	2022-05-10 13:38:29.694988	2022-05-10 13:38:29.694988	1
30	Dry Vermouth	\N	2022-05-10 13:38:43.321146	2022-05-10 13:38:43.321146	1
31	Egg White	\N	2022-05-10 13:38:57.184636	2022-05-10 13:38:57.184636	1
32	Lime Juice	\N	2022-05-10 13:39:41.78799	2022-05-10 13:39:41.78799	1
34	Femet Branca	\N	2022-05-10 13:43:47.273912	2022-05-10 13:43:47.273912	1
35	Carbonated Water	\N	2022-05-10 13:44:54.791519	2022-05-10 13:44:54.791519	1
36	Chartreuse	\N	2022-05-10 13:46:05.849957	2022-05-10 13:46:05.849957	1
37	Rye Whiskey	\N	2022-05-10 13:46:50.510964	2022-05-10 13:46:50.510964	1
38	Angostura Bitters	\N	2022-05-10 13:47:39.709581	2022-05-10 13:47:39.709581	1
39	Pineapple Juice	\N	2022-05-10 13:49:12.745306	2022-05-10 13:49:12.745306	1
40	Grenadine	\N	2022-05-10 13:49:26.590483	2022-05-10 13:49:26.590483	1
41	Orange Juice	\N	2022-05-10 13:50:20.68349	2022-05-10 13:50:20.68349	1
42	Absinthe	\N	2022-05-10 13:50:33.657237	2022-05-10 13:50:33.657237	1
44	Plain Water	\N	2022-05-10 13:52:22.826734	2022-05-10 13:52:22.826734	1
45	Jamaican Rum	\N	2022-05-10 13:53:30.223954	2022-05-10 13:53:30.223954	1
47	Port	\N	2022-05-10 13:54:25.276841	2022-05-10 13:54:25.276841	1
48	Egg Yolk	\N	2022-05-10 13:54:36.190983	2022-05-10 13:54:36.190983	1
49	Cream	\N	2022-05-10 13:55:50.16674	2022-05-10 13:55:50.16674	1
50	Orange Flower Water	\N	2022-05-10 13:56:17.740978	2022-05-10 13:56:17.740978	1
51	Vanilla Extract	\N	2022-05-10 13:56:31.103206	2022-05-10 13:56:31.103206	1
52	Scotch Whiskey	\N	2022-05-10 13:57:06.751059	2022-05-10 13:57:06.751059	1
53	Drambuie	\N	2022-05-10 13:57:18.54507	2022-05-10 13:57:18.54507	1
54	Peychaud's Bitters	\N	2022-05-10 13:58:16.690909	2022-05-10 13:58:16.690909	1
55	White Creme De Menthe	\N	2022-05-10 13:59:32.320815	2022-05-10 13:59:32.320815	1
56	Rye	\N	2022-05-10 14:00:55.153797	2022-05-10 14:00:55.153797	1
57	Benedictine	\N	2022-05-10 14:01:19.096527	2022-05-10 14:01:19.096527	1
61	Jim Beam Bourbon	\N	2022-05-21 16:33:11.90984	2022-05-21 16:34:36.224439	1
65	Angostura Orange Bitters	\N	2022-05-22 10:20:48.390367	2022-05-22 10:20:48.390367	1
66	Hendrick's Midsummer Solstice Gin	\N	2022-05-22 10:21:25.436102	2022-05-22 10:21:25.436102	1
67	Jack Daniel's Old No.7 Brand Tennessee Whiskey	\N	2022-05-22 10:21:36.445301	2022-05-22 10:21:36.445301	1
68	Monkey 47 Schwarzwald Dry Gin	\N	2022-05-22 10:21:46.521404	2022-05-22 10:21:46.521404	1
69	Havana Club (3 Years) Cuban Rum	\N	2022-05-22 10:21:58.817502	2022-05-22 10:21:58.817502	1
70	Bacardi Carta Blanca Superior White Rum	\N	2022-05-22 10:22:13.707161	2022-05-22 10:22:13.707161	1
71	Hendrick's Gin	\N	2022-05-22 10:22:23.174284	2022-05-22 10:22:23.174284	1
72	Campari Bitter Liqueur	\N	2022-05-22 10:22:45.300294	2022-05-22 10:22:45.300294	1
73	Martini Rosso Vermouth	\N	2022-05-22 10:23:11.117142	2022-05-22 10:23:11.117142	1
74	Martini Extra Dry Vermouth	\N	2022-05-22 10:23:18.3253	2022-05-22 10:23:18.3253	1
75	Apple	\N	2022-05-22 10:23:39.670783	2022-05-22 10:23:39.670783	1
76	Apple Juice	\N	2022-05-22 10:23:50.891342	2022-05-22 10:23:50.891342	1
77	Agave Syrup	\N	2022-05-22 10:23:58.145188	2022-05-22 10:23:58.145188	1
78	Banana	\N	2022-05-22 10:24:03.09456	2022-05-22 10:24:03.09456	1
79	Basil Leaves	\N	2022-05-22 10:24:11.139208	2022-05-22 10:24:11.139208	1
80	Black Pepper	\N	2022-05-22 10:24:24.698056	2022-05-22 10:24:24.698056	1
81	Blueberries	\N	2022-05-22 10:24:38.360645	2022-05-22 10:24:38.360645	1
82	Celery Salt	\N	2022-05-22 10:24:53.304101	2022-05-22 10:24:53.304101	1
83	Chilled Water	\N	2022-05-22 10:25:05.347796	2022-05-22 10:25:05.347796	1
84	Cinnamon Powder	\N	2022-05-22 10:25:15.786908	2022-05-22 10:25:15.786908	1
85	Cinnamon Stick	\N	2022-05-22 10:25:24.179411	2022-05-22 10:25:24.179411	1
86	Clove	\N	2022-05-22 10:25:31.171354	2022-05-22 10:25:31.171354	1
87	Coconut Water	\N	2022-05-22 10:25:43.093096	2022-05-22 10:25:43.093096	1
88	Coffee Ice Cream	\N	2022-05-22 10:25:55.308537	2022-05-22 10:25:55.308537	1
89	Cola	\N	2022-05-22 10:26:04.571753	2022-05-22 10:26:04.571753	1
90	Cucumber	\N	2022-05-22 10:26:12.457279	2022-05-22 10:26:12.457279	1
92	Brown Sugar Syrup 2:1	\N	2022-05-22 10:26:57.280253	2022-05-22 10:26:57.280253	1
91	Brown Sugar	\N	2022-05-22 10:26:34.541214	2022-05-22 10:27:11.696858	1
93	Egg	\N	2022-05-22 10:27:19.484925	2022-05-22 10:27:19.484925	1
94	Espresso Coffee	\N	2022-05-22 10:27:46.098849	2022-05-22 10:27:46.098849	1
95	Filter Coffee	\N	2022-05-22 10:27:53.464315	2022-05-22 10:27:53.464315	1
96	French Press Coffee	\N	2022-05-22 10:28:03.73533	2022-05-22 10:28:03.73533	1
97	Ginger Ale	\N	2022-05-22 10:28:12.803265	2022-05-22 10:28:12.803265	1
98	Ginger Beer	\N	2022-05-22 10:28:21.149032	2022-05-22 10:28:21.149032	1
100	Grapefruit Juice White/Yellow	\N	2022-05-22 10:28:56.823564	2022-05-22 10:28:56.823564	1
99	Grapefruit Juice Ruby Red	\N	2022-05-22 10:28:32.216131	2022-05-22 10:29:12.528784	1
101	Green Grapes	\N	2022-05-22 10:29:25.358684	2022-05-22 10:29:25.358684	1
102	Honey	\N	2022-05-22 10:29:43.618028	2022-05-22 10:29:43.618028	1
103	Honey Syrup 3:1	\N	2022-05-22 10:29:52.82814	2022-05-22 10:29:52.82814	1
104	Tabasco	\N	2022-05-22 10:30:04.478502	2022-05-22 10:30:04.478502	1
105	Lemon	\N	2022-05-22 10:30:17.306788	2022-05-22 10:30:17.306788	1
106	Lemon Peel	\N	2022-05-22 10:30:31.167933	2022-05-22 10:30:31.167933	1
107	Lemonade	\N	2022-05-22 10:30:45.445658	2022-05-22 10:30:45.445658	1
108	Lime	\N	2022-05-22 10:30:53.609206	2022-05-22 10:30:53.609206	1
109	Lime Shell	\N	2022-05-22 10:31:21.281318	2022-05-22 10:31:21.281318	1
147	Curaçao Liqueur	\N	2022-05-22 10:57:31.504274	2022-05-22 10:57:31.504274	1
148	Orange Curaçao	\N	2022-05-22 10:58:04.750223	2022-05-22 10:58:04.750223	1
150	Sparkling Water	\N	2022-05-23 03:10:04.54983	2022-05-23 03:10:04.54983	1
152	Simple Syrup	\N	2022-05-23 09:47:51.168636	2022-05-23 09:47:51.168636	1
154	Hennessy V.S.O.P	\N	2022-05-24 10:18:42.65725	2022-05-24 10:18:51.798505	1
156	Fernet Branca	\N	2022-05-30 00:51:56.973201	2022-05-30 00:51:56.973201	1
159	Vodka	\N	2022-06-06 00:35:29.731469	2022-06-06 00:35:29.731469	1
160	Coffee Liqueur	\N	2022-06-06 00:35:29.738685	2022-06-06 00:35:29.738685	1
161	Gray Goose Vodka	\N	2022-06-06 00:36:31.271928	2022-06-06 00:36:31.271928	1
162	Kahlua	\N	2022-06-06 00:38:08.954323	2022-06-06 00:38:08.954323	1
163	Tomato Juice	\N	2022-06-06 00:40:06.865783	2022-06-06 00:40:06.865783	1
164	Worcestershire Sauce	\N	2022-06-06 00:40:06.871463	2022-06-06 00:40:06.871463	1
169	Lillet Blanc	\N	2022-06-06 00:44:24.887252	2022-06-06 00:44:24.887252	1
174	Vodka Citron	\N	2022-06-06 00:45:58.747339	2022-06-06 00:45:58.747339	1
175	Cranberry Juice	\N	2022-06-06 00:45:58.753759	2022-06-06 00:45:58.753759	1
176	Amaretto Liqueur	\N	2022-06-06 00:48:47.908576	2022-06-06 00:48:47.908576	1
177	Galliano	\N	2022-06-06 00:49:54.223257	2022-06-06 00:49:54.223257	1
178	Crème De Menthe	\N	2022-06-06 00:50:57.955592	2022-06-06 00:50:57.955592	1
179	Crème De Cacao	\N	2022-06-06 00:50:57.960342	2022-06-06 00:50:57.960342	1
180	Rum	\N	2022-06-06 00:52:05.960252	2022-06-06 00:52:05.960252	1
181	Grapefruit Juice	\N	2022-06-06 00:52:05.966985	2022-06-06 00:52:05.966985	1
182	Irish Whiskey	\N	2022-06-06 00:54:38.542539	2022-06-06 00:54:38.542539	1
183	Coffee	\N	2022-06-06 00:54:38.547192	2022-06-06 00:54:38.547192	1
184	White Wine	\N	2022-06-06 00:56:42.187195	2022-06-06 00:56:42.187195	1
185	Crème De Cassis	\N	2022-06-06 00:56:42.191674	2022-06-06 00:56:42.191674	1
186	Tequila	\N	2022-06-06 00:58:26.2934	2022-06-06 00:58:26.2934	1
187	Amber Jamaican Rum	\N	2022-06-06 01:00:08.377121	2022-06-06 01:00:08.377121	1
188	Martinique Molasses Rum	\N	2022-06-06 01:00:08.381758	2022-06-06 01:00:08.381758	1
189	Orgeat Syrup	\N	2022-06-06 01:00:08.386342	2022-06-06 01:00:08.386342	1
190	Olmeca Tequila	\N	2022-06-06 01:03:16.69747	2022-06-06 01:03:16.69747	1
166	White Cane Sugar	\N	2022-06-06 00:41:33.459314	2022-06-06 01:08:19.682459	1
191	Simple Sugr Syrup	\N	2022-06-06 01:13:01.610897	2022-06-06 01:13:01.610897	1
192	Coconut Cream	\N	2022-06-06 10:26:31.538731	2022-06-06 10:26:31.538731	1
193	Pisco	\N	2022-06-06 10:27:49.541444	2022-06-06 10:27:49.541444	1
194	Peach Schnapps	\N	2022-06-06 10:30:50.844199	2022-06-06 10:30:50.844199	1
195	Cherry Liqueur	\N	2022-06-06 10:33:11.558095	2022-06-06 10:33:11.558095	1
196	Dom Bénédictine	\N	2022-06-06 10:33:11.563743	2022-06-06 10:33:11.563743	1
198	Tequlia	\N	2022-06-06 10:35:34.663491	2022-06-06 10:35:34.663491	1
199	Grenadine Syrup	\N	2022-06-06 10:35:34.668083	2022-06-06 10:35:34.668083	1
201	Puerto Rican Gold Rum	\N	2022-06-06 10:41:28.885415	2022-06-06 10:41:28.885415	1
202	Demerara Rum	\N	2022-06-06 10:41:28.889958	2022-06-06 10:41:28.889958	1
203	Falernum	\N	2022-06-06 10:41:28.895141	2022-06-06 10:41:28.895141	1
204	Yellow Grapefruit	\N	2022-06-06 10:41:28.899275	2022-06-06 10:41:28.899275	1
205	Cinnamon Syrup	\N	2022-06-06 10:41:28.904655	2022-06-06 10:41:28.904655	1
206	Pernod	\N	2022-06-06 10:41:28.912046	2022-06-06 10:41:28.912046	1
207	Gold Rum	\N	2022-06-06 10:43:01.621203	2022-06-06 10:43:01.621203	1
208	Honey Syrup	\N	2022-06-06 10:44:11.993608	2022-06-06 10:44:11.993608	1
209	Crème De Mûre	\N	2022-06-06 10:46:15.127707	2022-06-06 10:46:15.127707	1
210	Goslings Rum	\N	2022-06-06 10:48:11.70909	2022-06-06 10:48:11.70909	1
211	Chambord Raspberry Liqueur	\N	2022-06-06 10:51:09.599225	2022-06-06 10:51:09.599225	1
212	Mezcal	\N	2022-06-06 10:52:59.676457	2022-06-06 10:52:59.676457	1
213	Yellow Chartreuse	\N	2022-06-06 10:55:14.336325	2022-06-06 10:55:14.336325	1
214	Aperol	\N	2022-06-06 10:55:14.340545	2022-06-06 10:55:14.340545	1
218	Whiskey	\N	2022-06-06 10:57:27.652087	2022-06-06 10:57:27.652087	1
219	Red Wine	\N	2022-06-06 10:57:27.661165	2022-06-06 10:57:27.661165	1
220	Aged Rum	\N	2022-06-06 10:59:10.719691	2022-06-06 10:59:10.719691	1
221	Agave Tequila	\N	2022-06-06 11:00:23.138115	2022-06-06 11:00:23.138115	1
222	Pink Grapefruit Soda	\N	2022-06-06 11:00:23.148215	2022-06-06 11:00:23.148215	1
225	Lagavulin 16y Whiskey	\N	2022-06-06 11:03:17.15141	2022-06-06 11:03:17.15141	1
226	Ginger	\N	2022-06-06 11:03:17.157337	2022-06-06 11:03:17.157337	1
227	Lodon Dry Gin	\N	2022-06-06 11:06:54.846743	2022-06-06 11:06:54.846743	1
230	Green Chartreuse	\N	2022-06-06 11:12:36.709354	2022-06-06 11:12:36.709354	1
223	Amaro Nonino	\N	2022-06-06 11:01:20.675077	2022-06-06 11:01:20.675077	1
228	London Dry Gin	\N	2022-06-06 11:08:04.967596	2022-06-06 11:08:04.967596	1
231	White Smooth Grappa	\N	2022-06-06 11:18:09.982778	2022-06-06 11:18:09.982778	1
232	Honey Mix	\N	2022-06-06 11:18:09.987898	2022-06-06 11:18:09.987898	1
233	Chamomile Cordial	\N	2022-06-06 11:18:09.991949	2022-06-06 11:18:09.991949	1
234	Get 27 Mint Liqueur	\N	2022-06-06 11:24:47.716338	2022-06-06 11:24:47.716338	1
235	Midori Melon Liqueur	\N	2022-06-06 11:25:34.593477	2022-06-06 11:25:34.593477	1
236	Lejay Lagoute Crème De Cassis	\N	2022-06-06 11:26:46.259204	2022-06-06 11:26:46.259204	1
237	伏特加	\N	2022-06-17 15:06:18.474054	2022-06-17 15:06:18.474054	1
238	蔓越莓汁	\N	2022-06-17 15:06:18.480316	2022-06-17 15:06:18.480316	1
239	蔓越莓	\N	2022-06-17 15:06:49.476997	2022-06-17 15:06:49.476997	1
240	琴酒	\N	2022-06-17 15:10:39.663295	2022-06-17 15:10:39.663295	1
241	通寧水	\N	2022-06-17 15:10:39.669028	2022-06-17 15:10:39.669028	1
242	Tonic	\N	2022-06-17 15:11:36.022658	2022-06-17 15:11:36.022658	1
245	蘭姆酒	\N	2022-06-17 15:13:09.099186	2022-06-17 15:13:09.099186	1
246	可口可樂	\N	2022-06-17 15:13:09.103253	2022-06-17 15:13:09.103253	1
247	Coca Cola	\N	2022-06-17 15:15:30.317955	2022-06-17 15:15:30.317955	1
248	龍舌蘭	\N	2022-06-17 15:17:00.785684	2022-06-17 15:17:00.785684	1
249	紅石榴糖漿	\N	2022-06-17 15:17:00.790518	2022-06-17 15:17:00.790518	1
250	柳橙汁	\N	2022-06-17 15:17:00.795136	2022-06-17 15:17:00.795136	1
251	橙子	\N	2022-06-17 15:25:52.562694	2022-06-17 15:25:52.562694	1
252	檸檬汁	\N	2022-06-17 15:29:44.134652	2022-06-17 15:29:44.134652	1
253	糖漿	\N	2022-06-17 15:29:44.13865	2022-06-17 15:29:44.13865	1
254	檸檬	\N	2022-06-17 15:30:18.833912	2022-06-17 15:30:18.833912	1
255	Sugar	\N	2022-06-17 15:32:55.815958	2022-06-17 15:32:55.815958	1
256	Simple Syrup 1:1	\N	2022-06-17 15:34:18.091024	2022-06-17 15:34:18.091024	1
257	Sugar Syrup 1:1	\N	2022-06-17 15:35:10.962561	2022-06-17 15:35:10.962561	1
258	君度橙酒	\N	2022-06-17 15:38:08.18935	2022-06-17 15:38:08.18935	1
259	不甜香艾酒	\N	2022-06-17 15:45:17.237868	2022-06-17 15:45:17.237868	1
260	柑橘苦精	\N	2022-06-17 15:45:17.244856	2022-06-17 15:45:17.244856	1
264	波本威士忌	\N	2022-06-17 15:49:26.843267	2022-06-17 15:49:26.843267	1
265	甜香艾酒	\N	2022-06-17 15:49:26.85059	2022-06-17 15:49:26.85059	1
266	苦精	\N	2022-06-17 15:49:26.857842	2022-06-17 15:49:26.857842	1
267	Bitters	\N	2022-06-17 15:51:51.318874	2022-06-17 15:51:51.318874	1
268	瑪拉斯奇諾	\N	2022-06-17 15:57:36.861299	2022-06-17 15:57:36.861299	1
269	葡萄柚汁	\N	2022-06-17 15:57:36.865782	2022-06-17 15:57:36.865782	1
270	葡萄柚	\N	2022-06-17 15:59:38.571717	2022-06-17 15:59:38.571717	1
271	西柚	\N	2022-06-17 16:00:00.591187	2022-06-17 16:00:00.591187	1
272	Grapefruit	\N	2022-06-17 16:00:44.922141	2022-06-17 16:00:44.922141	1
273	Disaronno	\N	2022-06-17 16:02:20.469232	2022-06-17 16:02:20.469232	1
274	迪莎蘿娜	\N	2022-06-17 16:02:58.990812	2022-06-17 16:02:58.990812	1
275	蘇格蘭威士忌	\N	2022-06-17 16:04:01.698586	2022-06-17 16:04:01.698586	1
276	干邑白蘭地	\N	2022-06-17 16:05:53.016831	2022-06-17 16:05:53.016831	1
277	肯巴利	\N	2022-06-17 16:09:04.318084	2022-06-17 16:09:04.318084	1
278	鳳梨汁	\N	2022-06-17 16:17:45.733288	2022-06-17 16:17:45.733288	1
279	紫羅蘭香甜酒	\N	2022-06-17 16:20:21.113938	2022-06-17 16:20:21.113938	1
280	夏特勒茲（黃）	\N	2022-06-17 16:22:01.094617	2022-06-17 16:22:01.094617	1
281	夏特勒茲	\N	2022-06-17 16:23:26.50333	2022-06-17 16:23:26.50333	1
282	班尼迪克丁	\N	2022-06-17 16:30:10.053814	2022-06-17 16:30:10.053814	1
283	蘋果白蘭地	\N	2022-06-17 16:33:45.550334	2022-06-17 16:33:45.550334	1
284	柑曼怡	\N	2022-06-17 16:37:19.279135	2022-06-17 16:37:19.279135	1
285	裸麥威士忌	\N	2022-06-17 16:39:42.854823	2022-06-17 16:39:42.854823	1
286	多寶力	\N	2022-06-17 17:20:35.774668	2022-06-17 17:20:35.774668	1
287	裴喬氏苦精	\N	2022-06-17 17:23:45.636157	2022-06-17 17:23:45.636157	1
288	白莫札特	\N	2022-06-17 17:26:15.995509	2022-06-17 17:26:15.995509	1
289	綠薄荷香甜酒	\N	2022-06-17 17:26:16.000954	2022-06-17 17:26:16.000954	1
290	鮮奶	\N	2022-06-17 17:26:16.007009	2022-06-17 17:26:16.007009	1
291	金莫札特	\N	2022-06-17 17:28:52.147357	2022-06-17 17:28:52.147357	1
292	可可粉	\N	2022-06-17 17:28:52.154214	2022-06-17 17:28:52.154214	1
293	黑莫札特	\N	2022-06-17 17:30:07.500051	2022-06-17 17:30:07.500051	1
294	Half & Half	\N	2022-06-17 17:30:07.50376	2022-06-17 17:30:07.50376	1
295	卡魯哇	\N	2022-06-17 17:32:52.337631	2022-06-17 17:32:52.337631	1
296	蘇打水	\N	2022-06-17 17:35:06.154657	2022-06-17 17:35:06.154657	1
297	鮮奶油	\N	2022-06-17 17:38:22.963527	2022-06-17 17:38:22.963527	1
298	貝禮詩	\N	2022-06-17 17:39:11.692902	2022-06-17 17:39:11.692902	1
299	濃縮咖啡	\N	2022-06-17 17:43:18.474616	2022-06-17 17:43:18.474616	1
300	愛爾蘭威士忌	\N	2022-06-17 17:45:18.131306	2022-06-17 17:45:18.131306	1
301	健力士黑啤酒	\N	2022-06-17 17:45:18.135486	2022-06-17 17:45:18.135486	1
302	吉寶	\N	2022-06-17 17:47:53.46737	2022-06-17 17:47:53.46737	1
303	蜜多麗	\N	2022-06-17 17:49:14.002006	2022-06-17 17:49:14.002006	1
304	椰漿	\N	2022-06-17 17:51:26.310008	2022-06-17 17:51:26.310008	1
305	華冠香甜酒	\N	2022-06-17 17:54:12.821952	2022-06-17 17:54:12.821952	1
306	南方安逸	\N	2022-06-17 18:04:24.466145	2022-06-17 18:04:24.466145	1
307	野莓琴酒	\N	2022-06-17 18:06:18.684459	2022-06-17 18:06:18.684459	1
308	白麗葉酒	\N	2022-06-17 18:10:47.182537	2022-06-17 18:10:47.182537	1
309	佩諾	\N	2022-06-17 18:10:47.18944	2022-06-17 18:10:47.18944	1
310	高登琴酒	\N	2022-06-17 18:13:42.636042	2022-06-17 18:13:42.636042	1
311	砂糖	\N	2022-06-17 18:15:21.782281	2022-06-17 18:15:21.782281	1
312	薄荷葉	\N	2022-06-17 18:15:21.787057	2022-06-17 18:15:21.787057	1
313	老湯姆琴酒	\N	2022-06-17 18:20:56.791236	2022-06-17 18:20:56.791236	1
314	Old Tom Gin	\N	2022-06-17 18:21:42.984335	2022-06-17 18:21:42.984335	1
315	椰子糖漿	\N	2022-06-17 18:23:53.083934	2022-06-17 18:23:53.083934	1
316	櫻桃香甜酒	\N	2022-06-17 18:26:07.267766	2022-06-17 18:26:07.267766	1
317	皮斯可	\N	2022-06-17 18:28:16.147377	2022-06-17 18:28:16.147377	1
318	蛋白	\N	2022-06-17 18:28:16.152962	2022-06-17 18:28:16.152962	1
319	卡夏莎	\N	2022-06-17 18:29:49.641113	2022-06-17 18:29:49.641113	1
320	白葡萄酒	\N	2022-06-17 18:30:52.007	2022-06-17 18:30:52.007	1
321	黑醋栗香甜酒	\N	2022-06-17 18:30:52.010884	2022-06-17 18:30:52.010884	1
322	紅葡萄酒	\N	2022-06-17 18:36:32.054445	2022-06-17 18:36:32.054445	1
323	水果切片	\N	2022-06-17 18:36:32.063677	2022-06-17 18:36:32.063677	1
324	雪莉酒	\N	2022-06-17 18:38:39.580399	2022-06-17 18:38:39.580399	1
325	波特酒	\N	2022-06-17 18:40:04.324678	2022-06-17 18:40:04.324678	1
326	全蛋	\N	2022-06-17 18:40:04.330942	2022-06-17 18:40:04.330942	1
327	柳橙片	\N	2022-06-17 18:42:00.214032	2022-06-17 18:42:00.214032	1
328	去皮鳳梨角	\N	2022-06-17 18:42:00.220687	2022-06-17 18:42:00.220687	1
329	莓果	\N	2022-06-17 18:42:00.226244	2022-06-17 18:42:00.226244	1
330	Orange Slice	\N	2022-06-17 18:43:18.006866	2022-06-17 18:43:18.006866	1
331	薑汁汽水	\N	2022-06-17 18:45:45.675803	2022-06-17 18:45:45.675803	1
332	番茄汁	\N	2022-06-17 18:48:25.921617	2022-06-17 18:48:25.921617	1
333	梅林辣醬油	\N	2022-06-17 18:48:25.928126	2022-06-17 18:48:25.928126	1
334	塔巴斯科辣椒醬	\N	2022-06-17 18:48:25.934702	2022-06-17 18:48:25.934702	1
335	黑胡椒	\N	2022-06-17 18:48:25.940289	2022-06-17 18:48:25.940289	1
336	金色龍舌蘭	\N	2022-06-17 18:53:22.786095	2022-06-17 18:53:22.786095	1
337	香檳	\N	2022-06-17 18:55:23.003039	2022-06-17 18:55:23.003039	1
338	方糖	\N	2022-06-17 18:55:23.012948	2022-06-17 18:55:23.012948	1
339	檸檬皮卷	\N	2022-06-17 18:55:23.020917	2022-06-17 18:55:23.020917	1
340	苦艾酒	\N	2022-06-17 18:57:30.069391	2022-06-17 18:57:30.069391	1
341	水	\N	2022-06-17 18:59:17.408472	2022-06-17 18:59:17.408472	1
342	萊姆汁	\N	2022-06-17 19:02:44.483559	2022-06-17 19:02:44.483559	1
343	橙花水	\N	2022-06-17 19:02:44.489029	2022-06-17 19:02:44.489029	1
344	杏桃白蘭地	\N	2022-06-17 19:06:14.694879	2022-06-17 19:06:14.694879	1
345	白庫拉索酒	\N	2022-06-18 11:32:31.164801	2022-06-18 11:32:31.164801	1
346	綠色糖漬櫻桃	\N	2022-06-18 11:32:31.169871	2022-06-18 11:32:31.169871	1
347	澀味琴酒	\N	2022-06-22 22:47:18.786761	2022-06-22 22:47:18.786761	1
348	澀味苦艾酒	\N	2022-06-22 22:47:18.792018	2022-06-22 22:47:18.792018	1
349	橄欖	\N	2022-06-22 22:47:18.796091	2022-06-22 22:47:18.796091	1
350	檸檬皮	\N	2022-06-22 22:48:32.689819	2022-06-22 22:48:32.689819	1
351	柑橘琴酒	\N	2022-06-22 22:49:45.742054	2022-06-22 22:49:45.742054	1
352	橄欖浸漬液	\N	2022-06-22 22:51:11.469798	2022-06-22 22:51:11.469798	1
353	甜味苦艾酒	\N	2022-06-22 22:52:21.196568	2022-06-22 22:52:21.196568	1
354	Tanqueray 琴酒	\N	2022-06-22 22:55:37.118097	2022-06-22 22:55:37.118097	1
355	腰果	\N	2022-06-22 22:55:37.12381	2022-06-22 22:55:37.12381	1
356	黑牌威士忌	\N	2022-06-22 23:00:47.402416	2022-06-22 23:00:47.402416	1
357	澀味雪莉酒	\N	2022-06-22 23:01:29.910414	2022-06-22 23:01:29.910414	1
358	Dubonnet 香甜酒	\N	2022-06-22 23:02:47.060713	2022-06-22 23:02:47.060713	1
359	Dry Gin	\N	2022-06-22 23:13:40.27648	2022-06-22 23:13:40.27648	1
\.


--
-- Data for Name: marks; Type: TABLE DATA; Schema: public; Owner: cor_admin
--

COPY public.marks (id, context, markable_type, markable_id, user_id, created_at, updated_at) FROM stdin;
1	bar_item	Item	58	1	2022-05-21 13:38:32.417447	2022-05-21 13:38:32.417447
2	wish_item	Item	60	1	2022-05-21 13:41:17.124444	2022-05-21 13:41:17.124444
3	bar_item	Item	59	1	2022-05-21 13:41:36.199709	2022-05-21 13:41:36.199709
4	bar_item	Item	13	1	2022-05-21 16:31:46.900971	2022-05-21 16:31:46.900971
5	bar_item	Item	6	1	2022-05-21 16:32:29.524525	2022-05-21 16:32:29.524525
6	bar_item	Item	61	1	2022-05-21 16:33:14.778775	2022-05-21 16:33:14.778775
7	bar_item	Item	7	1	2022-05-21 16:48:49.023167	2022-05-21 16:48:49.023167
8	bar_item	Item	21	1	2022-05-21 16:49:11.509078	2022-05-21 16:49:11.509078
9	bar_item	Item	30	1	2022-05-21 16:49:24.91544	2022-05-21 16:49:24.91544
11	bar_item	Item	12	1	2022-05-21 17:22:13.000838	2022-05-21 17:22:13.000838
13	bar_item	Item	22	1	2022-05-21 17:22:28.376526	2022-05-21 17:22:28.376526
14	bar_item	Item	23	1	2022-05-21 17:22:33.050433	2022-05-21 17:22:33.050433
15	bar_item	Item	27	1	2022-05-21 17:23:18.62398	2022-05-21 17:23:18.62398
16	bar_item	Item	32	1	2022-05-21 17:23:24.776032	2022-05-21 17:23:24.776032
17	bar_item	Item	38	1	2022-05-21 17:23:34.513966	2022-05-21 17:23:34.513966
18	bar_item	Item	41	1	2022-05-21 17:23:38.27058	2022-05-21 17:23:38.27058
19	bar_item	Item	43	1	2022-05-21 17:23:41.484097	2022-05-21 17:23:41.484097
20	bar_item	Item	44	1	2022-05-21 17:23:45.157247	2022-05-21 17:23:45.157247
21	bar_item	Item	63	1	2022-05-21 17:26:27.853233	2022-05-21 17:26:27.853233
22	wish_item	Item	37	1	2022-05-21 17:27:19.323401	2022-05-21 17:27:19.323401
24	wish_item	Item	28	1	2022-05-21 17:28:58.807402	2022-05-21 17:28:58.807402
25	bar_item	Item	135	1	2022-05-22 10:39:49.242374	2022-05-22 10:39:49.242374
26	bar_item	Item	72	1	2022-05-22 10:50:31.628481	2022-05-22 10:50:31.628481
27	bar_item	Item	130	1	2022-05-22 10:53:14.96223	2022-05-22 10:53:14.96223
28	bar_item	Item	18	1	2022-05-22 11:00:58.987405	2022-05-22 11:00:58.987405
29	bar_item	Item	69	1	2022-05-22 11:01:07.71184	2022-05-22 11:01:07.71184
30	bar_item	Item	108	1	2022-05-22 11:01:56.132083	2022-05-22 11:01:56.132083
31	bar_item	Item	112	1	2022-05-22 11:02:11.061165	2022-05-22 11:02:11.061165
32	bar_item	Item	114	1	2022-05-22 11:02:16.981649	2022-05-22 11:02:16.981649
33	bar_item	Item	116	1	2022-05-22 11:02:20.802932	2022-05-22 11:02:20.802932
34	bar_item	Item	125	1	2022-05-22 11:02:28.582458	2022-05-22 11:02:28.582458
35	bar_item	Item	89	1	2022-05-22 11:02:37.045078	2022-05-22 11:02:37.045078
36	bar_item	Item	91	1	2022-05-22 11:02:41.401369	2022-05-22 11:02:41.401369
37	bar_item	Item	93	1	2022-05-22 11:02:47.623865	2022-05-22 11:02:47.623865
38	bar_item	Item	94	1	2022-05-22 11:02:54.657865	2022-05-22 11:02:54.657865
39	bar_item	Item	95	1	2022-05-22 11:02:57.636304	2022-05-22 11:02:57.636304
40	bar_item	Item	96	1	2022-05-22 11:03:01.600667	2022-05-22 11:03:01.600667
41	bar_item	Item	97	1	2022-05-22 11:03:05.793793	2022-05-22 11:03:05.793793
42	bar_item	Item	98	1	2022-05-22 11:03:08.428869	2022-05-22 11:03:08.428869
43	bar_item	Item	102	1	2022-05-22 11:03:14.274698	2022-05-22 11:03:14.274698
44	bar_item	Item	103	1	2022-05-22 11:03:17.4194	2022-05-22 11:03:17.4194
45	bar_item	Item	104	1	2022-05-22 11:03:19.991926	2022-05-22 11:03:19.991926
46	bar_item	Item	105	1	2022-05-22 11:03:22.671993	2022-05-22 11:03:22.671993
48	wish_item	Item	68	1	2022-05-22 11:03:52.596001	2022-05-22 11:03:52.596001
50	wish_item	Item	71	1	2022-05-22 11:04:05.04272	2022-05-22 11:04:05.04272
51	wish_item	Item	70	1	2022-05-22 11:04:08.936192	2022-05-22 11:04:08.936192
52	bar_item	Item	74	1	2022-05-22 11:04:20.295193	2022-05-22 11:04:20.295193
55	bar_item	Item	154	1	2022-05-24 10:19:45.863348	2022-05-24 10:19:45.863348
56	bar_item	Item	33	1	2022-05-24 10:22:16.266714	2022-05-24 10:22:16.266714
57	bar_item	Item	35	1	2022-05-24 10:22:23.013851	2022-05-24 10:22:23.013851
58	bar_item	Item	155	1	2022-05-27 00:25:17.261745	2022-05-27 00:25:17.261745
59	bar_item	Item	161	1	2022-06-06 00:37:32.879883	2022-06-06 00:37:32.879883
60	bar_item	Item	162	1	2022-06-06 00:38:19.724022	2022-06-06 00:38:19.724022
61	bar_item	Item	169	1	2022-06-06 00:44:37.660503	2022-06-06 00:44:37.660503
62	bar_item	Item	190	1	2022-06-06 01:03:32.150469	2022-06-06 01:03:32.150469
63	bar_item	Item	166	1	2022-06-06 01:10:26.172244	2022-06-06 01:10:26.172244
65	bar_item	Item	62	1	2022-06-06 04:13:29.939324	2022-06-06 04:13:29.939324
66	bar_item	Item	90	1	2022-06-06 04:15:38.068784	2022-06-06 04:15:38.068784
67	bar_item	Item	175	1	2022-06-06 10:29:12.377217	2022-06-06 10:29:12.377217
69	bar_item	Item	214	1	2022-06-06 10:55:21.174026	2022-06-06 10:55:21.174026
70	bar_item	Item	230	1	2022-06-06 11:12:43.00062	2022-06-06 11:12:43.00062
71	bar_item	Item	235	1	2022-06-06 11:25:38.716787	2022-06-06 11:25:38.716787
72	bar_item	Item	234	1	2022-06-06 11:25:44.932659	2022-06-06 11:25:44.932659
73	bar_item	Item	236	1	2022-06-06 11:28:22.899462	2022-06-06 11:28:22.899462
75	bar_item	Item	246	1	2022-06-17 15:14:40.734178	2022-06-17 15:14:40.734178
76	bar_item	Item	249	1	2022-06-17 15:25:29.826801	2022-06-17 15:25:29.826801
77	bar_item	Item	255	1	2022-06-17 15:32:59.64765	2022-06-17 15:32:59.64765
78	bar_item	Item	65	1	2022-06-17 15:47:29.577909	2022-06-17 15:47:29.577909
79	bar_item	Item	272	1	2022-06-17 16:01:19.988961	2022-06-17 16:01:19.988961
80	bar_item	Item	39	1	2022-06-17 16:18:40.876303	2022-06-17 16:18:40.876303
81	bar_item	Item	346	1	2022-06-18 11:35:38.210633	2022-06-18 11:35:38.210633
\.


--
-- Data for Name: recipes; Type: TABLE DATA; Schema: public; Owner: cor_admin
--

COPY public.recipes (id, name, created_at, updated_at, user_id, preparation, timing, container) FROM stdin;
11	Casino	2022-05-10 13:09:31.440784	2022-05-30 00:48:40.79882	1	Pour all ingredients into shaker with ice cubes. Shake well. Strain into chilled cocktail glass. Garnish with a lemon twist and a maraschino cherry. Serve without a straw.	all day	Cocktail Glass
5	Americano	2022-05-10 13:08:38.64113	2022-05-23 06:22:37.574502	1	Pour the Campari and vermouth over ice into an old fashioned glass, add a splash of soda water and garnish with half orange slice and a lemon twist.	before dinner	Old Fashioned Glass
2	Gin Fizz	2022-04-27 10:53:57.891371	2022-04-27 10:53:57.891371	2	\N	\N	\N
8	Between the Sheets	2022-05-10 13:09:04.264559	2022-05-23 06:27:43.627643	1	Pour all ingredients into shaker with ice cubes, shake, strain into chilled cocktail glass.	all day	Cocktail Glass
14	Dry Martini	2022-05-10 13:10:04.815476	2022-05-30 00:50:52.923369	1	Pour all ingredients into mixing glass with ice cubes. Stir well. Strain into chilled martini cocktail glass.	before dinner	Cocktail Glass
87	Spicy Fifty	2022-05-23 01:16:45.972834	2022-05-23 01:16:45.972834	1		\N	\N
7	Aviation	2022-05-10 13:08:55.259309	2022-05-23 06:28:38.999073	1	Add all ingredients into cocktail shaker filled with ice. Shake well and strain into cocktail glass. Garnish with a cherry.	all day	Cocktail Glass
6	Angel Face	2022-05-10 13:08:46.041205	2022-05-23 06:28:26.471946	1	\tPour all ingredients into cocktail shaker filled with ice cubes. Shake and strain into a chilled cocktail glass.	all day	Cocktail Glass
9	Boulevardier	2022-05-10 13:09:13.998543	2022-05-23 09:29:46.943975	1	Pour all ingredients into mixing glass with ice cubes. Stir well. Strain into a chilled cocktail glass.	all day	Cocktail Glass
4	Alexander	2022-05-10 13:08:29.135881	2022-05-23 06:28:11.018097	1	Shake all ingredients with ice and strain contents into a cocktail glass. Sprinkle nutmeg on top and serve.	after dinner	Cocktail Glass
10	Brandy Crusta	2022-05-10 13:09:23.916232	2022-05-23 09:40:07.037579	1	Mix all ingredients with ice cubes in a mixing glass. Strain into slim cocktail glass rimmed with sugar.	all day	Cocktail Glass
18	Last Word	2022-05-10 13:11:05.224272	2022-05-30 00:53:13.927666	1	Shake with ice and strain into a cocktail glass.	all day	Cocktail Glass
19	Manhattan	2022-05-10 13:11:14.781263	2022-05-30 00:54:00.823413	1	Pour all ingredients into mixing glass with ice cubes. Stir well. Strain into a chilled cocktail glass.	before dinner	Cocktail Glass
21	Mary Pickford	2022-05-10 13:11:34.565894	2022-05-30 00:55:27.474354	1	Shake and strain into a chilled large cocktail glass	all day	Cocktail Glass
23	Negroni	2022-05-10 13:11:57.431924	2022-05-30 00:56:45.605436	1	Stir into glass over ice, garnish and serve.	before dinner	Old Fashioned Glass
26	Planter's Punch	2022-05-10 13:12:28.383053	2022-06-06 00:24:45.257091	1	Pour all ingredients into a tumbler glass.	all day	Highball Glass
29	Rusty Nail	2022-05-10 13:12:57.389517	2022-06-06 00:26:42.188573	1	Pour all ingredients directly into an old fashioned glass filled with ice. Stir gently.	after dinner	Old Fashioned Glass
31	Sidecar	2022-05-10 13:13:13.305358	2022-06-06 00:27:49.772138	1	Pour all ingredients into cocktail shaker filled with ice. Shake well and strain into cocktail glass.	all day	Cocktail Glass
34	Vieux Carre	2022-05-10 13:13:41.676018	2022-06-06 00:29:42.624634	1	Pour all ingredients into mixing glass with ice cubes. Stir well. Strain into a chilled cocktail glass.	all day	Cocktail Glass
38	Bellini	2022-05-23 01:07:33.362968	2022-06-06 00:34:26.568408	1	Pour peach purée into chilled glass, add sparkling wine. Stir gently.	all day	Champagne Flute
40	Bloody Mary	2022-05-23 01:11:14.738395	2022-06-06 00:40:06.878142	1	Stirring gently, pour all ingredients into highball glass. Garnish.	all day	Highball Glass
43	Corpse Reviver #2	2022-05-23 01:12:11.006184	2022-06-06 00:44:24.893387	1	Shake ingredients together in a mixer with ice. Strain into chilled glass. Garnish with orange zest.	all day	Cocktail Glass
149	Scarlett O'Hara 郝思嘉	2022-06-17 18:04:24.47419	2022-06-17 18:04:24.47419	1			淺碟香檳杯
48	Golden dream	2022-05-23 01:12:43.152132	2022-06-06 00:49:54.230829	1	Shake with cracked ice. Strain into glass and serve.	after dinner	Cocktail Glass
50	Hemingway Special	2022-05-23 01:12:52.188852	2022-06-06 00:52:05.974113	1	Pour all ingredients into a shaker with ice. Shake.	all day	Cocktail Glass
55	Mai Tai	2022-05-23 01:13:23.656271	2022-06-06 01:00:08.391957	1	Add all ingredients into a shaker with ice. Shake and pour into a double rocks glass or a highball glass.	all day	Old Fashioned Glass
52	Irish coffee	2022-05-23 01:13:06.274781	2022-06-06 00:55:19.52761	1	Heat the coffee, whiskey and sugar; do not boil. Pour into glass and top with cream; serve hot.	all day	Irish Coffee Mug
57	Mimosa	2022-05-23 01:13:32.547988	2022-06-06 01:05:13.960081	1	Ensure both ingredients are well chilled, then mix into the glass. Serve cold.	all day	Champagne Flute
61	Piña Colada	2022-05-23 01:13:51.72681	2022-06-06 10:26:31.543013	1	Blend all the ingredients with ice in an electric blender, pour into a large goblet or Hurricane glass and serve.	all day	Poco Grande Glass
63	Sea Breeze	2022-05-23 01:14:00.795853	2022-06-06 10:28:46.834824	1	Build all ingredients in a highball glass filled with ice. Garnish with lime wedge.	all day	Highball Glass
66	Tequila Sunrise	2022-05-23 01:14:14.478517	2022-06-06 10:35:34.671175	1	Pour the tequila and orange juice into glass over ice. Add the grenadine, which will sink to the bottom. Stir gently to create the sunrise effect. Garnish and serve.	all day	Collins Glass
69	Barracuda	2022-05-23 01:14:43.131606	2022-06-06 10:43:01.630257	1	Shake pour ingredients with ice. Strain into glass, top with sparkling wine.	all day	Margarita Glass
73	Dark 'n' Stormy	2022-05-23 01:15:32.4372	2022-06-06 10:48:11.715271	1	In a highball glass filled with ice pour the ginger beer and top floating with the Rum.	all day	Highball Glass
75	Fernandito	2022-05-23 01:15:42.618499	2022-06-06 10:50:13.360825	1	Fill a double old-fashioned glass with ice. Pour in the Fernet-Branca, fill the glass with cola. Stir gently.	all day	Highball Glass
78	Lemon drop martini	2022-05-23 01:16:01.412956	2022-06-06 10:54:12.374734	1	Pour all ingredients into cocktail shaker, shake well with ice, strain into chilled cocktail glass. Garnish with sugar rim around the glass.	all day	Cocktail Glass
82	Paloma	2022-05-23 01:16:20.288152	2022-06-06 11:00:23.154325	1	Pour the tequila into a highball glass, squeeze the lime juice. Add ice and salt, fill up pink grapefruit soda. Stir gently.	all day	Highball Glass
85	Russian Spring Punch	2022-05-23 01:16:34.211771	2022-06-06 11:05:10.606884	1	Pour all ingredients into cocktail shaker except the sparkling wine, shake well with ice, strain into chilled tall tumbler glass filled with ice and top up with sparkling wine.	all day	Highball Glass
88	Spritz	2022-05-23 01:16:50.48254	2022-06-06 11:09:56.354881	1	Build all ingredients into a wine glass filled with ice. Stir gently.	all day	Wine Glass
91	Tommy's margarita	2022-05-23 01:17:07.241577	2022-06-06 11:14:21.214712	1	Shake and strain into a chilled cocktail glass.	all day	Cocktail Glass
93	Ve.n.to	2022-05-23 01:17:16.124631	2022-06-06 11:18:09.995674	1	Pour all ingredients into the shaker. Shake vigorously with ice. Strain into a chilled small tumbler glass filled with ice.	all day	Tumbler
150	Alabama Slammer 阿拉巴馬監獄	2022-06-17 18:06:18.689026	2022-06-17 18:06:18.689026	1			厚底長飲杯
151	Woodland Punch 林地潘趣	2022-06-17 18:07:44.109421	2022-06-17 18:07:44.109421	1			科林杯
3	Gin Fizz	2022-05-10 13:07:00.207791	2022-05-23 09:46:50.871649	1	Shake all ingredients with ice cubes, except soda water. Pour into glass. Top with soda water.	all day	Old Fashioned Glass
12	Clover Club	2022-05-10 13:09:48.345373	2022-05-30 00:49:08.636447	1	Dry shake ingredients to emulsify, add ice, shake and served straight up.	all day	Cocktail Glass
13	Daiquiri	2022-05-10 13:09:57.03341	2022-05-30 00:50:18.577713	1	In a cocktail shaker add all ingredients. Stir well to dissolve the sugar. Add ice and shake. Strain into chilled cocktail glass.	all day	Cocktail Glass
16	Hanky Panky	2022-05-10 13:10:44.068307	2022-05-30 00:51:56.981741	1	Stirred over ice, strained into a chilled glass, garnished, and served up.	all day	Cocktail Glass
17	John Collins	2022-05-10 13:10:57.532858	2022-05-30 00:52:40.585331	1	Pour all ingredients directly into highball glass filled with ice. Stir gently. Garnish. Add a dash of Angostura bitters.	all day	Collins Glass
20	Martinez	2022-05-10 13:11:26.008237	2022-05-30 00:54:42.875228	1	Stirred over ice, strained into a chilled glass, garnished, and served up.	all day	Cocktail Glass
22	Monkey Gland	2022-05-10 13:11:47.210725	2022-05-30 00:56:02.645425	1	Shake well over ice cubes in a shaker, strain into a chilled cocktail glass.	all day	Cocktail Glass
24	Old Fashioned	2022-05-10 13:12:07.645383	2022-05-30 00:57:41.579193	1	Place sugar cube in old fashioned glass and saturate with bitter, add few dashes of plain water. Muddle until dissolved. Fill the glass with ice cubes and add whiskey. Stir gently. Garnish with orange slice or zest, and a cocktail cherry.	before dinner	Old Fashioned Glass
25	Paradise	2022-05-10 13:12:13.819127	2022-06-06 00:24:06.682426	1	Shake together over ice. Strain into cocktail glass and serve chilled.	all day	Cocktail Glass
27	Proto Flip	2022-05-10 13:12:38.069226	2022-06-06 00:25:23.417388	1	Shake ingredients together in a mixer with ice. Strain into glass, garnish and serve	after dinner	Cocktail Glass
28	Ramos Fizz	2022-05-10 13:12:49.594504	2022-06-06 00:26:08.516778	1	All ingredients except the soda are poured in a mixing glass, dry shaken (no ice) for two minutes, then ice is added and shaken hard for another minute. Strain into a highball glass without ice and topped with soda.	all day	Highball Glass
30	Sazerac	2022-05-10 13:13:06.734149	2022-06-06 00:27:20.416104	1	Rinse a chilled old-fashioned glass with the absinthe, add crushed ice, and set it aside. Stir the remaining ingredients over ice and set it aside. Discard the ice and any excess absinthe from the prepared glass, and strain the drink into the glass. Add the lemon peel for garnish.	after dinner	Old Fashioned Glass
32	Stinger	2022-05-10 13:13:24.361123	2022-06-06 00:28:23.792102	1	Pour all ingredients into mixing glass with ice cubes. Stir well. Strain into chilled martini cocktail glass.	after dinner	Cocktail Glass
33	Tuxedo	2022-05-10 13:13:31.534296	2022-06-06 00:29:08.457774	1	Stir all ingredients with ice and strain into a cocktail glass. Garnish with a cherry and a twist of lemon zest.	all day	Cocktail Glass
35	Whiskey Sour	2022-05-10 13:13:56.452779	2022-06-06 00:31:39.677284	1	Shake with ice. Strain into chilled glass, garnish and serve.	before dinner	Old Fashioned Glass
36	White Lady	2022-05-10 13:14:06.923332	2022-06-06 00:33:24.376165	1	Add all ingredients into cocktail shaker filled with ice. Shake well and strain into large cocktail glass.	all day	Cocktail Glass
39	Black Russian	2022-05-23 01:10:45.420495	2022-06-06 00:35:29.744346	1	Pour the ingredients into the old fashioned glass filled with ice cubes. Stir gently.	after dinner	Old Fashioned Glass
41	Caipirinha	2022-05-23 01:11:54.168811	2022-06-06 00:41:33.464484	1	Place lime and sugar into a double old fashioned glass and muddle gently. Fill the glass with cracked ice and add Cachaça. Stir gently to involve ingredients.	all day	Old Fashioned Glass
42	Champagne cocktail	2022-05-23 01:12:04.071998	2022-06-06 00:42:48.995119	1	Add dash of Angostura bitter onto sugar cube and drop it into champagne flute. Add cognac followed by gently pouring chilled champagne. Garnish with orange slice and maraschino cherry.	all day	Champagne Flute
44	Cosmopolitan	2022-05-23 01:12:16.04476	2022-06-06 00:45:58.756848	1	Shake all ingredients in cocktail shaker filled with ice. Strain into a large cocktail glass. Garnish with lime slice.	all day	Cocktail Glass
46	French 75	2022-05-23 01:12:28.408605	2022-06-06 00:48:03.477884	1	Combine gin, syrup, and lemon juice in a cocktail shaker filled with ice. Shake vigorously and strain into a chilled champagne glass. Top up with champagne. Stir gently.	all day	Champagne Flute
47	French Connection	2022-05-23 01:12:32.93027	2022-06-06 00:48:47.911887	1	Pour all ingredients directly into old fashioned glass filled with ice cubes. Stir gently.	after dinner	Old Fashioned Glass
49	Grasshopper	2022-05-23 01:12:47.337441	2022-06-06 00:50:57.966218	1	Pour ingredients into a cocktail shaker with ice. Shake briskly and then strain into a chilled cocktail glass.	after dinner	Cocktail Glass
51	Horse's Neck	2022-05-23 01:12:57.592821	2022-06-06 00:53:55.34525	1	Pour brandy and ginger ale directly into highball glass with ice cubes. Stir gently. Garnish with lemon zest. If desired, add dashes of Angostura Bitter.	all day	Highball Glass
53	Kir	2022-05-23 01:13:11.304049	2022-06-06 00:56:42.195023	1	Add the crème de cassis to the bottom of the glass, then top up with wine.	before dinner	Wine Glass
54	Long Island iced tea	2022-05-23 01:13:16.269463	2022-06-06 00:58:26.310668	1	Add all ingredients into highball glass filled with ice. Stir gently. Optionally garnish with lemon slice.	all day	Highball Glass
56	Margarita	2022-05-23 01:13:27.806497	2022-06-06 01:02:43.844642	1	Add all ingredients into a shaker with ice. Shake and strain into a chilled cocktail glass.	all day	Margarita Glass
58	Mint julep	2022-05-23 01:13:38.874874	2022-06-06 01:06:46.668401	1	In a highball glass gently muddle the mint, sugar and water. Fill the glass with cracked ice, add Bourbon and stir well until the glass is well frosted. Garnish with a mint sprig.	all day	Highball Glass
59	Mojito	2022-05-23 01:13:43.002111	2022-06-06 04:20:23.755796	1	Muddle mint leaves with sugar and lime juice. Add a splash of soda water and fill the glass with cracked ice. Pour the rum and top with soda water. Light stir to involve all ingredients. Garnish with sprig of mint leaves and lime slice.	all day	Highball Glass
60	Moscow mule	2022-05-23 01:13:47.224985	2022-06-06 10:25:24.007235	1	Combine vodka and ginger beer in a highball glass filled with ice. Add lime juice. Stir gently. Garnish.	all day	Copper Mug
62	Pisco Sour	2022-05-23 01:13:55.582044	2022-06-06 10:27:49.552907	1	Vigorously shake contents in a cocktail shaker with ice cubes, then strain into a glass and garnish with bitters.[1]	all day	Old Fashioned Glass
64	Sex on the Beach	2022-05-23 01:14:05.036898	2022-06-06 10:30:50.85263	1	Build all ingredients in a highball glass filled with ice. Garnish with orange slice.	all day	Highball Glass
65	Singapore Sling	2022-05-23 01:14:09.286061	2022-06-06 10:33:11.570258	1	Pour all ingredients into cocktail shaker filled with ice cubes. Shake well. Strain into highball glass. Garnish with pineapple and cocktail cherry.	all day	Hurricane Glass
67	Vesper	2022-05-23 01:14:19.068564	2022-06-06 10:38:42.962213	1	Pour all ingredients into a cocktail shaker filled with ice cubes. Shake and strain into a chilled cocktail glass.	before dinner	Cocktail Glass
68	Zombie	2022-05-23 01:14:24.38129	2022-06-06 10:41:28.915665	1	Mix ingredients in a shaker with crushed ice. Pour into a tall tumbler glass.	all day	Zombie Glass
70	Bee's Knees	2022-05-23 01:14:57.025933	2022-06-06 10:44:11.997336	1	Stir honey syrup with lemon and orange juices until it dissolves, add gin and shake with ice. Strain into chilled cocktail glass	all day	Cocktail Glass
71	Bramble	2022-05-23 01:15:22.983581	2022-06-06 10:46:15.132303	1	Pour all ingredients into a cocktail shaker except the Crème de Mûre, shake well with ice, strain into chilled old fashioned glass filled with crushed ice, then pour the blackberry liqueur (Crème de Mûre) over the top of the drink, in a circular motion.	all day	Old Fashioned Glass
76	French martini	2022-05-23 01:15:46.579066	2022-06-06 10:51:09.603828	1	Pour all ingredients into shaker with ice cubes. Shake well and strain into a chilled cocktail glass. Squeeze oil from lemon peel onto the drink.	before dinner	Cocktail Glass
77	Illegal	2022-05-23 01:15:50.871975	2022-06-06 10:52:59.687677	1	Pour all ingredients into shaker with ice cubes. Shake vigorously. Strain into chilled cocktail glass, or "on the rocks" into a traditional clay or terracotta mug.	all day	Cocktail Glass
79	Naked and Famous	2022-05-23 01:16:06.114518	2022-06-06 10:55:14.345447	1	Pour all ingredients into shaker with ice cubes. Shake well. Strain into chilled cocktail glass.	all day	Cocktail Glass
83	Paper Plane	2022-05-23 01:16:24.694567	2022-06-06 11:01:20.682068	1	Pour all ingredients into cocktail shaker, shake well with ice, strain into chilled cocktail glass.	all day	Cocktail Glass
89	Suffering Bastard	2022-05-23 01:16:55.710523	2022-06-06 11:11:11.674518	1	Shake everything but ginger beer with ice, pour unstrained into glass, top with ginger beer.	all day	Collins Glass
92	Trinidad Sour	2022-05-23 01:17:11.913902	2022-06-06 11:15:29.103182	1	Pour all ingredients into a cocktail shaker, shake well with ice, strain into chilled cocktail glass.	all day	Cocktail Glass
72	Canchanchara	2022-05-23 01:15:27.728266	2022-06-06 10:47:20.473288	1	Mix honey with water and lime juice and spread the mixture on the bottom and sides of the glass. Add cracked ice, and then the rum. End by energetically stirring from bottom to top.	all day	Old Fashioned Glass
74	Espresso martini	2022-05-23 01:15:37.150026	2022-06-06 10:49:26.944707	1	Pour all ingredients into cocktail shaker, shake well with ice, strain into chilled cocktail glass.	all day	Cocktail Glass
80	New York Sour	2022-05-23 01:16:11.820221	2022-06-06 10:57:27.66493	1	Pour the whiskey, syrup, lemon juice, and egg white into shaker with ice cubes. Shake vigorously. Strain into chilled rocks glass filled with ice. Float the wine on top. Garnish with lemon or orange zest and cherry.	all day	Rocks Glass
81	Old Cuban	2022-05-23 01:16:16.005756	2022-06-06 10:59:10.727038	1	Pour all ingredients except the wine into cocktail shaker, shake well with ice, strain into chilled elegant cocktail glass. Top up with the sparkling wine and garnish with mint sprigs	all day	Cocktail Glass
84	Penicillin	2022-05-23 01:16:29.663629	2022-06-06 11:03:17.161062	1	Muddle fresh ginger in a shaker and add the remaining ingredients, except for the Lagavulin whisky. Fill the shaker with ice and shake. Double-strain into a chilled old fashioned glass with ice. Float the Lagavulin whisky on top.	all day	Old Fashioned Glass
86	Southside	2022-05-23 01:16:40.393129	2022-06-06 11:06:54.854281	1	Shake well with ice and double-strain into a chilled cocktail glass	all day	Cocktail Glass
90	Tipperary	2022-05-23 01:17:02.857611	2022-06-06 11:12:36.713503	1	Pour all ingredients into mixing glass with ice cubes. Stir well. Strain into chilled cocktail glass. Garnish with a slice of orange.	all day	Cocktail Glass
94	Yellow Bird	2022-05-23 01:17:20.357988	2022-06-06 11:19:24.543111	1	Pour all ingredients into a cocktail shaker, shake well with ice, strain into chilled cocktail glass	all day	Cocktail Glass
45	Cuba Libre	2022-05-23 01:12:21.502166	2022-06-17 15:09:35.978228	1	Build all ingredients in a highball glass filled with ice. Garnish with lime wedge.	all day	Highball Glass
96	Gin Tonic 琴通寧	2022-06-17 15:10:39.672922	2022-06-17 15:10:39.672922	1		all day	Highball Glass
97	Cuba Libre 自由古巴	2022-06-17 15:13:09.106075	2022-06-17 15:13:09.106075	1		all day	Highball Glass
98	Tequila Sunrise 龍舌蘭日出	2022-06-17 15:17:00.798623	2022-06-17 15:17:00.798623	1		all day	Highball Glass
99	Daiquiri 黛綺莉	2022-06-17 15:29:44.141659	2022-06-17 15:30:03.240099	1	Shake	all day	Cocktail Glass
100	White Lady 白色佳人	2022-06-17 15:38:08.19413	2022-06-17 15:38:08.19413	1		all day	Cocktail Glass
101	Cosmopolitan 柯夢波丹	2022-06-17 15:41:16.914126	2022-06-17 15:41:16.914126	1		all day	Cocktail Glass
102	Margarita 瑪格麗特	2022-06-17 15:43:39.734624	2022-06-17 15:43:39.734624	1		all day	Margarita Glass
103	Martini 馬丁尼	2022-06-17 15:45:17.249778	2022-06-17 15:45:17.249778	1		all day	Cocktail Glass
104	Manhattan 曼哈頓	2022-06-17 15:49:26.86231	2022-06-17 15:49:26.86231	1		all day	Cocktail Glass
105	Frozen Margarita 霜凍瑪格麗特	2022-06-17 15:55:11.645675	2022-06-17 15:55:11.645675	1	所有材料倒入果汁機，加入冰塊打勻	all day	Margarita Glass
106	PaPa Doble 雙倍老爸	2022-06-17 15:57:36.868637	2022-06-17 15:57:36.868637	1	所有材料倒入果汁機，加入冰塊打勻	all day	Old Fashioned Glass
107	Godfather 教父	2022-06-17 16:04:01.705131	2022-06-17 16:04:01.705131	1		all day	Old Fashioned Glass
108	Godmother	2022-06-17 16:04:49.657542	2022-06-17 16:04:49.657542	1		all day	Old Fashioned Glass
109	French Connection 法蘭西集團	2022-06-17 16:05:53.022816	2022-06-17 16:05:53.022816	1		all day	Old Fashioned Glass
110	Spumoni 泡泡雞尾酒	2022-06-17 16:09:04.324228	2022-06-17 16:09:04.324228	1			颶風杯
111	Negroni 內格羅尼	2022-06-17 16:10:54.812031	2022-06-17 16:10:54.812031	1			古典杯
112	Boulevardier 花花公子	2022-06-17 16:12:36.90256	2022-06-17 16:12:36.90256	1			馬丁尼杯
113	Old Pal 老朋友	2022-06-17 16:13:39.226457	2022-06-17 16:13:39.226457	1			馬丁尼杯
114	Martinez 馬丁尼茲	2022-06-17 16:15:39.318003	2022-06-17 16:15:39.318003	1			馬丁尼杯
115	Mary Pickford 瑪麗 畢克馥	2022-06-17 16:17:45.73856	2022-06-17 16:17:45.73856	1			馬丁尼杯
116	Aviation 飛行	2022-06-17 16:20:21.118059	2022-06-17 16:20:21.118059	1			馬丁尼杯
117	Alaska 阿拉斯加	2022-06-17 16:22:01.099456	2022-06-17 16:22:01.099456	1			馬丁尼杯
118	Green Alaska 綠色阿拉斯加	2022-06-17 16:23:26.508169	2022-06-17 16:23:26.508169	1			馬丁尼杯
119	Bijou 寶石	2022-06-17 16:26:36.965912	2022-06-17 16:26:36.965912	1			馬丁尼杯
120	Amber Dream 琥珀之夢	2022-06-17 16:28:08.94075	2022-06-17 16:28:08.94075	1			馬丁尼杯
121	Last Word 臨別一語	2022-06-17 16:29:25.564163	2022-06-17 16:29:25.564163	1			馬丁尼杯
122	B & B	2022-06-17 16:32:26.096578	2022-06-17 16:32:26.096578	1			白蘭地杯
123	Honeymoon 蜜月	2022-06-17 16:33:45.558386	2022-06-17 16:33:45.558386	1			淺碟香檳杯
124	Widow's Kiss 寡婦之吻	2022-06-17 16:35:12.964044	2022-06-17 16:35:48.849748	1			馬丁尼杯
125	Red Lion 紅獅	2022-06-17 16:37:19.28568	2022-06-17 16:37:19.28568	1			馬丁尼杯
126	Oriental 東方	2022-06-17 16:39:42.861011	2022-06-17 16:39:42.861011	1			馬丁尼杯
127	Larchmont 拉奇蒙特	2022-06-17 17:19:08.753334	2022-06-17 17:19:08.753334	1			馬丁尼杯
128	Dubonnet Cocktail 多寶力雞尾酒	2022-06-17 17:20:35.778622	2022-06-17 17:20:35.778622	1			淺碟香檳杯
129	Opera 歌劇	2022-06-17 17:22:05.205182	2022-06-17 17:22:05.205182	1			淺碟香檳杯
130	Deshler 德許勒	2022-06-17 17:23:45.639871	2022-06-17 17:23:45.639871	1			馬丁尼杯
131	Grasshopper 綠色蚱蜢	2022-06-17 17:26:16.010712	2022-06-17 17:26:23.604724	1			馬丁尼杯
132	Choco-Martini 巧克力馬丁尼	2022-06-17 17:28:52.159017	2022-06-17 17:28:52.159017	1			馬丁尼杯
133	Brandy Alexander 白蘭地亞歷山大	2022-06-17 17:30:07.506635	2022-06-17 17:30:28.630554	1			淺碟香檳杯
134	Black Russian 黑色俄羅斯	2022-06-17 17:32:52.342704	2022-06-17 17:32:52.342704	1			古典杯
135	Mind Eraser 腦海中的橡皮擦	2022-06-17 17:35:06.159083	2022-06-17 17:35:26.734471	1	按順序加，不攪拌，用吸管從底部開始喝		古典杯
136	Dirty Mother 黯淡之母	2022-06-17 17:36:40.510075	2022-06-17 17:36:40.510075	1			古典杯
137	Brave Bull 猛牛	2022-06-17 17:37:07.952957	2022-06-17 17:37:07.952957	1			古典杯
138	White Russian 白色俄羅斯	2022-06-17 17:38:22.968727	2022-06-17 17:38:22.968727	1			古典杯
139	Blind Russian 瞎瞎俄羅斯	2022-06-17 17:39:11.696102	2022-06-17 17:39:11.696102	1			古典杯
140	Colorado Bulldog 科羅拉多鬥牛犬	2022-06-17 17:40:04.911193	2022-06-17 17:40:04.911193	1			古典杯
141	Expresso Martini 咖啡馬丁尼	2022-06-17 17:43:18.478217	2022-06-17 17:43:18.478217	1			淺碟香檳杯
142	Irish Car Bomb 愛爾蘭汽車炸彈	2022-06-17 17:45:18.138434	2022-06-17 17:45:18.138434	1			科林杯
143	B52	2022-06-17 17:46:41.978957	2022-06-17 17:46:41.978957	1	分層		烈酒杯
144	Rusty Nail 鏽釘	2022-06-17 17:47:53.470667	2022-06-17 17:48:05.609121	1			古典杯
145	Japanese Slipper 日本拖鞋	2022-06-17 17:49:14.009074	2022-06-17 17:49:14.009074	1			馬丁尼杯
146	Green Eyes 綠眼	2022-06-17 17:50:24.236521	2022-06-17 17:51:26.314586	1			颶風杯
147	Suntory Cocktail 三得利雞尾酒	2022-06-17 17:52:48.345464	2022-06-17 17:52:48.345464	1			馬丁尼杯
148	Sex on the Beach 性感海灘	2022-06-17 17:54:12.827552	2022-06-17 17:54:12.827552	1			颶風杯
152	Corpse Reviver #2 亡者復甦 2 號	2022-06-17 18:10:47.194538	2022-06-17 18:10:47.194538	1			馬丁尼杯
154	Mojito 莫希托	2022-06-17 18:15:21.790427	2022-06-17 18:15:21.790427	1			厚底長飲杯
155	Gin Rickey 琴瑞奇	2022-06-17 18:18:28.41707	2022-06-17 18:18:28.41707	1			古典杯
158	Singapore Sling 新加坡司令	2022-06-17 18:26:07.279495	2022-06-17 18:26:07.279495	1			颶風杯
159	Pissco Sour 皮斯可酸味酒	2022-06-17 18:28:16.156814	2022-06-17 18:28:16.156814	1			淺碟香檳杯
164	Coffee Cocktail 咖啡雞尾酒	2022-06-17 18:40:04.334227	2022-06-17 18:40:04.334227	1			淺碟香檳杯
165	Sherry Cobbler 雪梨酷伯樂	2022-06-17 18:42:00.230987	2022-06-17 18:42:00.230987	1			可林杯
166	Mint Julep 薄荷茱莉普	2022-06-17 18:44:45.624449	2022-06-17 18:44:45.624449	1			茱莉普杯
169	Long Island Iced Tea 長島冰茶	2022-06-17 18:50:24.013559	2022-06-17 18:50:24.013559	1			颶風杯
172	Absinthe Frappe 苦艾酒芙萊蓓	2022-06-17 18:57:30.080036	2022-06-17 18:57:37.259943	1			長飲杯
153	Vesper 薇絲朋	2022-06-17 18:13:42.640995	2022-06-17 18:13:42.640995	1	三份高登琴酒、一份伏特加、半份麗葉酒，搖到夠冰，加入一大片檸檬皮		馬丁尼杯
156	Tom Collins 湯姆可林斯	2022-06-17 18:20:56.796544	2022-06-17 18:20:56.796544	1			可林杯
157	Pina Colada 鳳梨可樂達	2022-06-17 18:23:02.256438	2022-06-17 18:23:53.089704	1			颶風杯
160	Capipirinha 卡琵莉亞	2022-06-17 18:29:49.648412	2022-06-17 18:29:49.648412	1			古典杯
161	Kir 基爾	2022-06-17 18:30:52.013575	2022-06-17 18:30:52.013575	1			笛型香檳杯
162	Sangria 桑格莉亞	2022-06-17 18:36:32.067419	2022-06-17 18:36:32.067419	1			大型冷水壺
163	BamBoo 竹子	2022-06-17 18:38:39.589306	2022-06-17 18:38:39.589306	1			馬丁尼杯
167	Moscow Mule 莫斯科騾子	2022-06-17 18:45:45.678999	2022-06-17 18:45:45.678999	1			銅馬克杯
168	Bloody Mary 血腥瑪麗	2022-06-17 18:48:25.944827	2022-06-17 18:48:25.944827	1	無鹽無糖100%濃縮還原的番茄汁，如果甜的就不用另外加糖漿		可林杯
170	Long Island Iced Tea II 長島冰茶二代	2022-06-17 18:53:22.794154	2022-06-17 18:53:39.478719	1			古典杯
171	Champagne Cocktail 香檳雞尾酒	2022-06-17 18:55:23.026725	2022-06-17 18:55:23.026725	1			笛型香檳杯
173	Sazerac 賽澤瑞克	2022-06-17 18:59:17.414516	2022-06-17 18:59:17.414516	1			古典杯
174	Ramos Gin Fizz 拉莫斯琴費士	2022-06-17 19:02:44.494085	2022-06-17 19:02:44.494085	1			可林杯
175	Yukiguni 雪國	2022-06-18 11:32:31.173771	2022-06-18 11:32:31.173771	1	砂糖少許製成糖口杯，搖杯加入材料搖勻，過濾倒入杯中後用一顆綠色糖漬櫻桃裝飾		馬丁尼杯
95	Cape Codder 鱈魚角	2022-06-17 15:06:18.483576	2022-06-21 19:37:30.452675	1	高球杯裝滿冰塊，先倒入伏特加，再補滿蔓越莓汁		Highball Glass
176	Martini ~ standard 馬丁尼（標準口味）	2022-06-22 22:47:18.799473	2022-06-22 22:47:40.906469	1			
177	Martini ~ Dry 澀味馬丁尼	2022-06-22 22:48:32.693294	2022-06-22 22:48:32.693294	1			
178	Martini ~ Mild 淡味馬丁尼	2022-06-22 22:49:45.747604	2022-06-22 22:49:45.747604	1			
179	Dirty Martini 混濁馬丁尼	2022-06-22 22:51:11.473407	2022-06-22 22:51:11.473407	1			
180	Martini & It 琴義馬丁尼	2022-06-22 22:52:21.199706	2022-06-22 22:52:21.199706	1			
181	Classic Dry Martini 古典澀味馬丁尼	2022-06-22 22:53:35.067026	2022-06-22 22:53:35.067026	1			
182	Dukes Martini 杜克馬丁尼	2022-06-22 22:55:37.13458	2022-06-22 22:55:37.13458	1	腰果和橄欖為一旁的擺設		
183	Irish Martini 愛爾蘭馬丁尼	2022-06-22 22:57:24.051451	2022-06-22 22:57:24.051451	1			
184	Smoky Martini 煙霧馬丁尼	2022-06-22 23:00:47.405324	2022-06-22 23:00:47.405324	1			
185	Fino Martini 不甜馬丁尼	2022-06-22 23:01:29.915772	2022-06-22 23:01:29.915772	1			
186	Opera Martini 歌劇馬丁尼	2022-06-22 23:02:47.06575	2022-06-22 23:02:47.06575	1			
187	Parisian Martini 巴黎馬丁尼	2022-06-22 23:03:55.665004	2022-06-22 23:03:55.665004	1			
188	Park Avenue Martini 公園大道馬丁尼	2022-06-22 23:04:57.008839	2022-06-22 23:04:57.008839	1			
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: cor_admin
--

COPY public.schema_migrations (version) FROM stdin;
20220425032515
20220425073333
20220427010006
20220427023040
20220427024410
20220427070402
20220510122727
20220517001141
20220519114952
20220519121616
20220519121617
20220519121618
20220519121619
20220519121620
20220519121621
20220519121622
20220520183708
20220521065232
20220521070432
20220521093400
20220521111731
20220521124330
20220523054832
20220523055557
20220523055910
20220527002823
\.


--
-- Data for Name: taggings; Type: TABLE DATA; Schema: public; Owner: cor_admin
--

COPY public.taggings (id, tag_id, taggable_type, taggable_id, tagger_type, tagger_id, context, created_at, tenant) FROM stdin;
1	1	Item	21	\N	\N	labels	2022-05-21 09:57:32.521869	\N
2	1	Item	12	\N	\N	labels	2022-05-21 09:58:00.058295	\N
3	2	Item	58	\N	\N	labels	2022-05-21 13:38:14.909303	\N
4	3	Item	59	\N	\N	labels	2022-05-21 13:39:56.444673	\N
5	4	Item	59	\N	\N	labels	2022-05-21 13:40:08.109614	\N
6	3	Item	60	\N	\N	labels	2022-05-21 13:41:12.447951	\N
7	5	Item	61	\N	\N	labels	2022-05-21 16:33:26.981919	\N
8	6	Item	61	\N	\N	labels	2022-05-21 16:33:54.740435	\N
9	7	Item	12	\N	\N	labels	2022-05-21 17:24:57.065511	\N
10	8	Item	21	\N	\N	labels	2022-05-21 17:25:13.143256	\N
11	9	Item	23	\N	\N	labels	2022-05-21 17:28:03.120605	\N
12	10	Item	72	\N	\N	labels	2022-05-22 10:49:40.118734	\N
14	12	Item	135	\N	\N	labels	2022-05-22 10:51:16.403004	\N
15	11	Item	128	\N	\N	labels	2022-05-22 10:51:40.84389	\N
17	14	Item	130	\N	\N	labels	2022-05-22 10:54:06.443252	\N
18	1	Item	74	\N	\N	labels	2022-05-22 11:04:36.235797	\N
19	15	Item	74	\N	\N	labels	2022-05-22 11:04:41.378816	\N
20	1	Item	73	\N	\N	labels	2022-05-22 11:04:56.914193	\N
21	8	Item	73	\N	\N	labels	2022-05-22 11:05:02.547666	\N
22	7	Item	73	\N	\N	labels	2022-05-22 11:05:08.062056	\N
23	16	Recipe	3	\N	\N	labels	2022-05-23 01:06:04.716077	\N
24	17	Recipe	3	\N	\N	labels	2022-05-23 01:06:07.282346	\N
25	16	Recipe	4	\N	\N	labels	2022-05-23 01:06:54.007731	\N
26	17	Recipe	4	\N	\N	labels	2022-05-23 01:06:59.048286	\N
27	18	Recipe	39	\N	\N	labels	2022-05-23 01:10:59.06896	\N
28	18	Recipe	38	\N	\N	labels	2022-05-23 01:11:06.456795	\N
29	18	Recipe	40	\N	\N	labels	2022-05-23 01:11:35.900991	\N
30	19	Recipe	69	\N	\N	labels	2022-05-23 01:14:48.75652	\N
32	21	Item	35	\N	\N	labels	2022-05-23 03:10:19.240225	\N
33	16	Recipe	5	\N	\N	labels	2022-05-23 06:23:53.858595	\N
34	17	Recipe	5	\N	\N	labels	2022-05-23 06:23:58.070086	\N
35	16	Recipe	6	\N	\N	labels	2022-05-23 06:24:14.943458	\N
36	17	Recipe	6	\N	\N	labels	2022-05-23 06:24:18.913504	\N
37	16	Recipe	7	\N	\N	labels	2022-05-23 06:24:28.990648	\N
38	17	Recipe	7	\N	\N	labels	2022-05-23 06:24:32.809702	\N
39	16	Recipe	8	\N	\N	labels	2022-05-23 06:27:52.312997	\N
40	17	Recipe	8	\N	\N	labels	2022-05-23 06:27:56.407475	\N
41	16	Recipe	9	\N	\N	labels	2022-05-23 09:30:58.085766	\N
42	17	Recipe	9	\N	\N	labels	2022-05-23 09:31:04.079038	\N
43	16	Recipe	10	\N	\N	labels	2022-05-23 09:40:18.024649	\N
44	17	Recipe	10	\N	\N	labels	2022-05-23 09:40:19.229544	\N
45	22	Item	7	\N	\N	labels	2022-05-23 09:47:31.023547	\N
46	23	Item	19	\N	\N	labels	2022-05-24 02:10:12.957434	\N
47	24	Item	8	\N	\N	labels	2022-05-24 10:17:34.807093	\N
48	25	Item	154	\N	\N	labels	2022-05-24 10:19:19.739881	\N
49	26	Item	155	\N	\N	labels	2022-05-27 00:25:10.974404	\N
50	16	Recipe	12	\N	\N	labels	2022-05-30 00:49:30.60907	\N
51	17	Recipe	12	\N	\N	labels	2022-05-30 00:49:32.226675	\N
52	16	Recipe	11	\N	\N	labels	2022-05-30 00:49:41.078849	\N
53	17	Recipe	11	\N	\N	labels	2022-05-30 00:49:42.50018	\N
54	16	Recipe	13	\N	\N	labels	2022-05-30 00:50:29.062457	\N
55	17	Recipe	13	\N	\N	labels	2022-05-30 00:50:30.353341	\N
56	16	Recipe	14	\N	\N	labels	2022-05-30 00:51:12.33597	\N
57	17	Recipe	14	\N	\N	labels	2022-05-30 00:51:13.464691	\N
58	17	Recipe	16	\N	\N	labels	2022-05-30 00:52:00.203464	\N
59	16	Recipe	16	\N	\N	labels	2022-05-30 00:52:01.890949	\N
60	17	Recipe	17	\N	\N	labels	2022-05-30 00:52:47.416905	\N
61	16	Recipe	17	\N	\N	labels	2022-05-30 00:52:48.61061	\N
62	16	Recipe	18	\N	\N	labels	2022-05-30 00:53:25.343729	\N
63	17	Recipe	18	\N	\N	labels	2022-05-30 00:53:26.621215	\N
64	16	Recipe	19	\N	\N	labels	2022-05-30 00:54:06.068186	\N
65	17	Recipe	19	\N	\N	labels	2022-05-30 00:54:07.206796	\N
66	16	Recipe	20	\N	\N	labels	2022-05-30 00:54:55.351495	\N
67	17	Recipe	20	\N	\N	labels	2022-05-30 00:54:56.564619	\N
68	16	Recipe	21	\N	\N	labels	2022-05-30 00:55:35.528026	\N
69	17	Recipe	21	\N	\N	labels	2022-05-30 00:55:36.651736	\N
70	16	Recipe	22	\N	\N	labels	2022-05-30 00:56:07.021808	\N
71	17	Recipe	22	\N	\N	labels	2022-05-30 00:56:08.645633	\N
72	16	Recipe	23	\N	\N	labels	2022-05-30 00:56:58.721786	\N
73	17	Recipe	23	\N	\N	labels	2022-05-30 00:57:00.041131	\N
74	16	Recipe	24	\N	\N	labels	2022-05-30 00:57:46.13006	\N
75	17	Recipe	24	\N	\N	labels	2022-05-30 00:57:47.38201	\N
76	16	Recipe	25	\N	\N	labels	2022-06-06 00:24:10.251058	\N
77	17	Recipe	25	\N	\N	labels	2022-06-06 00:24:11.528798	\N
78	16	Recipe	26	\N	\N	labels	2022-06-06 00:24:55.027422	\N
79	17	Recipe	26	\N	\N	labels	2022-06-06 00:24:56.372596	\N
80	16	Recipe	27	\N	\N	labels	2022-06-06 00:25:33.440523	\N
81	17	Recipe	27	\N	\N	labels	2022-06-06 00:25:34.715724	\N
82	17	Recipe	28	\N	\N	labels	2022-06-06 00:26:11.607121	\N
83	16	Recipe	28	\N	\N	labels	2022-06-06 00:26:13.532281	\N
84	17	Recipe	29	\N	\N	labels	2022-06-06 00:26:45.563049	\N
85	16	Recipe	29	\N	\N	labels	2022-06-06 00:26:47.004702	\N
86	17	Recipe	30	\N	\N	labels	2022-06-06 00:27:26.894294	\N
87	16	Recipe	30	\N	\N	labels	2022-06-06 00:27:28.25485	\N
88	16	Recipe	31	\N	\N	labels	2022-06-06 00:27:53.638905	\N
89	17	Recipe	31	\N	\N	labels	2022-06-06 00:27:54.898093	\N
90	16	Recipe	32	\N	\N	labels	2022-06-06 00:28:39.716445	\N
91	17	Recipe	32	\N	\N	labels	2022-06-06 00:28:40.773491	\N
92	16	Recipe	33	\N	\N	labels	2022-06-06 00:29:12.058043	\N
93	17	Recipe	33	\N	\N	labels	2022-06-06 00:29:13.210172	\N
94	16	Recipe	34	\N	\N	labels	2022-06-06 00:29:45.343457	\N
95	17	Recipe	34	\N	\N	labels	2022-06-06 00:29:46.422633	\N
96	16	Recipe	35	\N	\N	labels	2022-06-06 00:31:48.506277	\N
97	17	Recipe	35	\N	\N	labels	2022-06-06 00:31:53.260551	\N
98	16	Recipe	36	\N	\N	labels	2022-06-06 00:33:26.890016	\N
99	17	Recipe	36	\N	\N	labels	2022-06-06 00:33:28.181935	\N
100	27	Item	161	\N	\N	labels	2022-06-06 00:37:28.445257	\N
101	28	Item	162	\N	\N	labels	2022-06-06 00:38:15.870325	\N
102	18	Recipe	41	\N	\N	labels	2022-06-06 00:41:44.851959	\N
103	18	Recipe	42	\N	\N	labels	2022-06-06 00:42:54.042685	\N
104	18	Recipe	43	\N	\N	labels	2022-06-06 00:44:28.584484	\N
105	18	Recipe	44	\N	\N	labels	2022-06-06 00:46:07.553433	\N
106	18	Recipe	45	\N	\N	labels	2022-06-06 00:47:04.272105	\N
107	18	Recipe	46	\N	\N	labels	2022-06-06 00:48:07.441809	\N
108	18	Recipe	47	\N	\N	labels	2022-06-06 00:48:52.034104	\N
109	18	Recipe	48	\N	\N	labels	2022-06-06 00:49:57.517296	\N
110	18	Recipe	49	\N	\N	labels	2022-06-06 00:51:01.076671	\N
111	18	Recipe	50	\N	\N	labels	2022-06-06 00:52:11.085489	\N
112	29	Item	18	\N	\N	labels	2022-06-06 00:52:25.408943	\N
113	18	Recipe	51	\N	\N	labels	2022-06-06 00:53:58.581232	\N
114	18	Recipe	52	\N	\N	labels	2022-06-06 00:55:22.898399	\N
115	18	Recipe	53	\N	\N	labels	2022-06-06 00:56:53.875707	\N
116	18	Recipe	54	\N	\N	labels	2022-06-06 00:58:34.49285	\N
117	30	Item	58	\N	\N	labels	2022-06-06 01:01:04.900188	\N
118	23	Item	58	\N	\N	labels	2022-06-06 01:01:11.80741	\N
119	31	Item	58	\N	\N	labels	2022-06-06 01:01:17.200308	\N
120	18	Recipe	55	\N	\N	labels	2022-06-06 01:01:48.680811	\N
121	18	Recipe	56	\N	\N	labels	2022-06-06 01:02:48.682788	\N
122	32	Item	190	\N	\N	labels	2022-06-06 01:03:28.898378	\N
123	18	Recipe	57	\N	\N	labels	2022-06-06 01:05:17.67422	\N
124	18	Recipe	58	\N	\N	labels	2022-06-06 01:06:49.549516	\N
125	33	Item	166	\N	\N	labels	2022-06-06 01:08:13.303685	\N
126	34	Item	166	\N	\N	labels	2022-06-06 01:10:48.883843	\N
127	35	Item	166	\N	\N	labels	2022-06-06 01:10:54.857042	\N
128	36	Item	166	\N	\N	labels	2022-06-06 01:11:00.934491	\N
129	37	Item	75	\N	\N	labels	2022-06-06 04:14:07.757855	\N
130	38	Item	44	\N	\N	labels	2022-06-06 04:15:15.723486	\N
131	39	Item	102	\N	\N	labels	2022-06-06 04:16:08.564733	\N
132	18	Recipe	59	\N	\N	labels	2022-06-06 04:20:27.530212	\N
133	18	Recipe	60	\N	\N	labels	2022-06-06 10:25:36.373694	\N
134	18	Recipe	61	\N	\N	labels	2022-06-06 10:26:39.301738	\N
135	18	Recipe	62	\N	\N	labels	2022-06-06 10:27:53.682331	\N
136	18	Recipe	64	\N	\N	labels	2022-06-06 10:30:55.33875	\N
137	18	Recipe	63	\N	\N	labels	2022-06-06 10:31:11.625924	\N
138	18	Recipe	65	\N	\N	labels	2022-06-06 10:33:22.774355	\N
139	18	Recipe	66	\N	\N	labels	2022-06-06 10:36:20.134644	\N
140	18	Recipe	67	\N	\N	labels	2022-06-06 10:38:47.35352	\N
141	18	Recipe	68	\N	\N	labels	2022-06-06 10:41:49.753864	\N
143	41	Item	102	\N	\N	labels	2022-06-06 10:44:36.339354	\N
144	19	Recipe	70	\N	\N	labels	2022-06-06 10:44:48.465843	\N
145	19	Recipe	71	\N	\N	labels	2022-06-06 10:46:19.867909	\N
146	19	Recipe	72	\N	\N	labels	2022-06-06 10:47:27.471953	\N
147	19	Recipe	73	\N	\N	labels	2022-06-06 10:48:17.091226	\N
148	19	Recipe	74	\N	\N	labels	2022-06-06 10:49:34.458616	\N
149	19	Recipe	75	\N	\N	labels	2022-06-06 10:50:17.114406	\N
150	19	Recipe	76	\N	\N	labels	2022-06-06 10:51:13.485877	\N
151	19	Recipe	77	\N	\N	labels	2022-06-06 10:53:24.355357	\N
152	19	Recipe	78	\N	\N	labels	2022-06-06 10:54:16.379276	\N
153	19	Recipe	79	\N	\N	labels	2022-06-06 10:55:29.608514	\N
154	19	Recipe	80	\N	\N	labels	2022-06-06 10:57:37.596735	\N
155	19	Recipe	81	\N	\N	labels	2022-06-06 10:59:20.753539	\N
156	19	Recipe	82	\N	\N	labels	2022-06-06 11:00:26.693092	\N
157	19	Recipe	83	\N	\N	labels	2022-06-06 11:01:30.945718	\N
158	19	Recipe	84	\N	\N	labels	2022-06-06 11:03:33.171462	\N
159	19	Recipe	85	\N	\N	labels	2022-06-06 11:05:14.540624	\N
160	19	Recipe	86	\N	\N	labels	2022-06-06 11:06:58.415683	\N
161	19	Recipe	88	\N	\N	labels	2022-06-06 11:10:10.23961	\N
162	19	Recipe	89	\N	\N	labels	2022-06-06 11:11:17.75172	\N
163	42	Item	230	\N	\N	labels	2022-06-06 11:12:51.036259	\N
164	19	Recipe	90	\N	\N	labels	2022-06-06 11:13:13.431527	\N
165	19	Recipe	91	\N	\N	labels	2022-06-06 11:14:27.930624	\N
166	19	Recipe	92	\N	\N	labels	2022-06-06 11:15:46.982458	\N
167	19	Recipe	93	\N	\N	labels	2022-06-06 11:18:32.19727	\N
168	19	Recipe	94	\N	\N	labels	2022-06-06 11:19:29.475368	\N
169	43	Item	236	\N	\N	labels	2022-06-06 11:27:10.05896	\N
170	44	Item	120	\N	\N	labels	2022-06-17 15:02:16.942497	\N
171	45	Item	23	\N	\N	labels	2022-06-17 15:03:31.49515	\N
173	47	Item	238	\N	\N	labels	2022-06-17 15:07:24.822908	\N
174	48	Item	175	\N	\N	labels	2022-06-17 15:07:43.387616	\N
175	27	Item	237	\N	\N	labels	2022-06-17 15:08:04.472284	\N
176	49	Item	159	\N	\N	labels	2022-06-17 15:08:30.385568	\N
177	50	Recipe	95	\N	\N	labels	2022-06-17 15:08:52.14814	\N
179	12	Item	241	\N	\N	labels	2022-06-17 15:11:06.261464	\N
180	51	Item	128	\N	\N	labels	2022-06-17 15:11:26.296886	\N
181	52	Item	5	\N	\N	labels	2022-06-17 15:11:57.155034	\N
182	50	Recipe	96	\N	\N	labels	2022-06-17 15:12:09.269463	\N
183	29	Item	245	\N	\N	labels	2022-06-17 15:13:24.084537	\N
184	53	Item	180	\N	\N	labels	2022-06-17 15:13:43.135948	\N
185	54	Item	89	\N	\N	labels	2022-06-17 15:14:02.509461	\N
186	54	Item	246	\N	\N	labels	2022-06-17 15:14:20.109689	\N
187	55	Item	246	\N	\N	labels	2022-06-17 15:14:23.783877	\N
188	56	Item	246	\N	\N	labels	2022-06-17 15:15:16.892622	\N
189	55	Item	247	\N	\N	labels	2022-06-17 15:15:36.644275	\N
190	57	Item	247	\N	\N	labels	2022-06-17 15:15:45.804431	\N
191	50	Recipe	97	\N	\N	labels	2022-06-17 15:15:55.761408	\N
192	50	Recipe	98	\N	\N	labels	2022-06-17 15:17:07.542691	\N
193	32	Item	248	\N	\N	labels	2022-06-17 15:17:29.836048	\N
194	58	Item	186	\N	\N	labels	2022-06-17 15:18:27.190485	\N
195	59	Item	199	\N	\N	labels	2022-06-17 15:24:47.21281	\N
196	60	Item	249	\N	\N	labels	2022-06-17 15:25:11.854524	\N
197	61	Item	251	\N	\N	labels	2022-06-17 15:26:05.389156	\N
198	62	Item	116	\N	\N	labels	2022-06-17 15:26:28.054741	\N
199	63	Item	116	\N	\N	labels	2022-06-17 15:26:39.751062	\N
200	64	Item	116	\N	\N	labels	2022-06-17 15:26:47.652533	\N
201	65	Item	251	\N	\N	labels	2022-06-17 15:27:23.677644	\N
202	66	Item	254	\N	\N	labels	2022-06-17 15:30:38.056807	\N
203	67	Item	254	\N	\N	labels	2022-06-17 15:30:50.120041	\N
204	68	Item	105	\N	\N	labels	2022-06-17 15:31:19.815154	\N
205	69	Item	105	\N	\N	labels	2022-06-17 15:31:27.506307	\N
206	70	Item	105	\N	\N	labels	2022-06-17 15:31:33.476503	\N
213	72	Item	255	\N	\N	labels	2022-06-17 15:34:49.257626	\N
214	73	Item	255	\N	\N	labels	2022-06-17 15:35:30.815218	\N
215	74	Item	166	\N	\N	labels	2022-06-17 15:35:56.488578	\N
207	50	Recipe	99	\N	\N	labels	2022-06-17 15:31:56.621479	\N
208	22	Item	253	\N	\N	labels	2022-06-17 15:32:16.037706	\N
209	71	Item	255	\N	\N	labels	2022-06-17 15:33:15.09809	\N
210	33	Item	255	\N	\N	labels	2022-06-17 15:33:24.045713	\N
211	34	Item	255	\N	\N	labels	2022-06-17 15:33:30.150076	\N
212	35	Item	255	\N	\N	labels	2022-06-17 15:33:40.475485	\N
216	75	Item	152	\N	\N	labels	2022-06-17 15:36:35.275427	\N
217	50	Recipe	100	\N	\N	labels	2022-06-17 15:38:14.498287	\N
218	76	Item	258	\N	\N	labels	2022-06-17 15:38:39.286825	\N
219	77	Item	58	\N	\N	labels	2022-06-17 15:39:01.602236	\N
220	50	Recipe	101	\N	\N	labels	2022-06-17 15:41:24.527749	\N
221	50	Recipe	102	\N	\N	labels	2022-06-17 15:43:45.853214	\N
222	15	Item	259	\N	\N	labels	2022-06-17 15:45:33.059972	\N
223	78	Item	30	\N	\N	labels	2022-06-17 15:45:55.040549	\N
224	50	Recipe	103	\N	\N	labels	2022-06-17 15:46:08.235596	\N
225	79	Item	28	\N	\N	labels	2022-06-17 15:46:58.70433	\N
226	80	Item	260	\N	\N	labels	2022-06-17 15:47:15.92097	\N
227	80	Item	65	\N	\N	labels	2022-06-17 15:47:49.316794	\N
228	50	Recipe	104	\N	\N	labels	2022-06-17 15:49:32.945386	\N
229	6	Item	264	\N	\N	labels	2022-06-17 15:49:55.285394	\N
230	81	Item	20	\N	\N	labels	2022-06-17 15:50:33.53967	\N
231	7	Item	265	\N	\N	labels	2022-06-17 15:50:55.178169	\N
232	82	Item	21	\N	\N	labels	2022-06-17 15:51:12.545611	\N
233	83	Item	266	\N	\N	labels	2022-06-17 15:51:39.245177	\N
234	83	Item	38	\N	\N	labels	2022-06-17 15:52:08.938168	\N
235	84	Item	267	\N	\N	labels	2022-06-17 15:52:30.969755	\N
236	50	Recipe	105	\N	\N	labels	2022-06-17 15:55:23.084704	\N
237	50	Recipe	106	\N	\N	labels	2022-06-17 15:57:42.660392	\N
238	9	Item	268	\N	\N	labels	2022-06-17 15:58:27.512713	\N
239	85	Item	16	\N	\N	labels	2022-06-17 15:59:11.995238	\N
240	86	Item	270	\N	\N	labels	2022-06-17 15:59:49.327173	\N
241	87	Item	271	\N	\N	labels	2022-06-17 16:00:06.706607	\N
242	88	Item	271	\N	\N	labels	2022-06-17 16:00:34.723945	\N
243	89	Item	272	\N	\N	labels	2022-06-17 16:00:52.714863	\N
244	90	Item	272	\N	\N	labels	2022-06-17 16:01:02.344564	\N
245	91	Item	273	\N	\N	labels	2022-06-17 16:02:47.651752	\N
246	92	Item	274	\N	\N	labels	2022-06-17 16:03:08.723964	\N
247	50	Recipe	107	\N	\N	labels	2022-06-17 16:04:08.854347	\N
248	50	Recipe	108	\N	\N	labels	2022-06-17 16:04:54.972195	\N
249	25	Item	276	\N	\N	labels	2022-06-17 16:06:26.092998	\N
250	93	Item	8	\N	\N	labels	2022-06-17 16:07:07.412624	\N
251	50	Recipe	109	\N	\N	labels	2022-06-17 16:07:20.274482	\N
252	10	Item	277	\N	\N	labels	2022-06-17 16:09:17.685684	\N
253	94	Item	11	\N	\N	labels	2022-06-17 16:09:34.298484	\N
254	50	Recipe	110	\N	\N	labels	2022-06-17 16:09:46.120336	\N
255	50	Recipe	111	\N	\N	labels	2022-06-17 16:11:01.768743	\N
256	50	Recipe	112	\N	\N	labels	2022-06-17 16:12:42.086946	\N
257	50	Recipe	113	\N	\N	labels	2022-06-17 16:13:47.388685	\N
258	50	Recipe	114	\N	\N	labels	2022-06-17 16:15:44.924333	\N
259	44	Item	278	\N	\N	labels	2022-06-17 16:17:58.017603	\N
260	95	Item	39	\N	\N	labels	2022-06-17 16:18:20.787246	\N
261	96	Item	39	\N	\N	labels	2022-06-17 16:18:27.359784	\N
262	50	Recipe	115	\N	\N	labels	2022-06-17 16:19:01.834884	\N
263	50	Recipe	116	\N	\N	labels	2022-06-17 16:20:25.611082	\N
264	50	Recipe	117	\N	\N	labels	2022-06-17 16:22:18.982347	\N
266	42	Item	281	\N	\N	labels	2022-06-17 16:23:53.312232	\N
267	98	Item	36	\N	\N	labels	2022-06-17 16:24:11.462117	\N
268	99	Item	213	\N	\N	labels	2022-06-17 16:24:41.079707	\N
269	50	Recipe	118	\N	\N	labels	2022-06-17 16:24:56.812133	\N
270	50	Recipe	119	\N	\N	labels	2022-06-17 16:26:42.740152	\N
271	50	Recipe	120	\N	\N	labels	2022-06-17 16:28:13.854177	\N
272	50	Recipe	121	\N	\N	labels	2022-06-17 16:29:30.952964	\N
273	100	Item	282	\N	\N	labels	2022-06-17 16:30:10.065411	\N
274	101	Item	57	\N	\N	labels	2022-06-17 16:30:50.974205	\N
275	102	Item	57	\N	\N	labels	2022-06-17 16:31:33.070995	\N
276	50	Recipe	122	\N	\N	labels	2022-06-17 16:32:33.081755	\N
277	50	Recipe	123	\N	\N	labels	2022-06-17 16:33:50.898163	\N
278	50	Recipe	124	\N	\N	labels	2022-06-17 16:35:18.871494	\N
279	103	Item	284	\N	\N	labels	2022-06-17 16:37:36.708771	\N
280	104	Item	153	\N	\N	labels	2022-06-17 16:37:55.338609	\N
281	50	Recipe	125	\N	\N	labels	2022-06-17 16:38:26.867788	\N
282	105	Item	285	\N	\N	labels	2022-06-17 16:40:01.293978	\N
283	106	Item	37	\N	\N	labels	2022-06-17 16:40:19.253178	\N
284	50	Recipe	126	\N	\N	labels	2022-06-17 16:40:36.200752	\N
285	50	Recipe	127	\N	\N	labels	2022-06-17 17:19:14.108195	\N
286	50	Recipe	128	\N	\N	labels	2022-06-17 17:20:40.805881	\N
287	50	Recipe	129	\N	\N	labels	2022-06-17 17:22:11.634809	\N
288	50	Recipe	130	\N	\N	labels	2022-06-17 17:23:54.237274	\N
289	107	Item	54	\N	\N	labels	2022-06-17 17:24:27.346435	\N
290	108	Item	287	\N	\N	labels	2022-06-17 17:24:40.58573	\N
291	50	Recipe	131	\N	\N	labels	2022-06-17 17:26:28.905186	\N
292	109	Item	290	\N	\N	labels	2022-06-17 17:26:49.196633	\N
293	110	Item	112	\N	\N	labels	2022-06-17 17:27:02.944969	\N
294	50	Recipe	132	\N	\N	labels	2022-06-17 17:29:15.096944	\N
295	50	Recipe	133	\N	\N	labels	2022-06-17 17:30:16.128888	\N
296	50	Recipe	134	\N	\N	labels	2022-06-17 17:32:58.304962	\N
297	111	Item	295	\N	\N	labels	2022-06-17 17:33:24.76199	\N
298	112	Item	162	\N	\N	labels	2022-06-17 17:33:38.57736	\N
299	21	Item	296	\N	\N	labels	2022-06-17 17:35:41.216858	\N
300	113	Item	13	\N	\N	labels	2022-06-17 17:35:55.137678	\N
301	50	Recipe	140	\N	\N	labels	2022-06-17 17:40:12.231808	\N
302	50	Recipe	138	\N	\N	labels	2022-06-17 17:42:00.738453	\N
303	50	Recipe	139	\N	\N	labels	2022-06-17 17:42:15.347002	\N
304	50	Recipe	141	\N	\N	labels	2022-06-17 17:43:25.270019	\N
305	50	Recipe	142	\N	\N	labels	2022-06-17 17:45:57.942901	\N
306	50	Recipe	143	\N	\N	labels	2022-06-17 17:46:47.40369	\N
307	50	Recipe	144	\N	\N	labels	2022-06-17 17:48:10.87947	\N
308	50	Recipe	145	\N	\N	labels	2022-06-17 17:49:19.961167	\N
309	114	Item	303	\N	\N	labels	2022-06-17 17:49:38.939402	\N
310	115	Item	235	\N	\N	labels	2022-06-17 17:49:54.029447	\N
314	50	Recipe	148	\N	\N	labels	2022-06-17 17:54:18.243897	\N
311	116	Item	235	\N	\N	labels	2022-06-17 17:50:04.492679	\N
312	50	Recipe	146	\N	\N	labels	2022-06-17 17:51:32.177899	\N
313	50	Recipe	147	\N	\N	labels	2022-06-17 17:52:53.669337	\N
315	50	Recipe	149	\N	\N	labels	2022-06-17 18:04:32.071881	\N
316	50	Recipe	150	\N	\N	labels	2022-06-17 18:06:30.473105	\N
317	50	Recipe	151	\N	\N	labels	2022-06-17 18:07:50.698104	\N
318	117	Item	308	\N	\N	labels	2022-06-17 18:11:07.966781	\N
319	118	Item	169	\N	\N	labels	2022-06-17 18:11:20.234096	\N
320	50	Recipe	153	\N	\N	labels	2022-06-17 18:13:49.269355	\N
321	50	Recipe	154	\N	\N	labels	2022-06-17 18:15:27.727617	\N
322	74	Item	311	\N	\N	labels	2022-06-17 18:16:31.922916	\N
323	119	Item	255	\N	\N	labels	2022-06-17 18:17:04.776333	\N
324	50	Recipe	155	\N	\N	labels	2022-06-17 18:18:34.296587	\N
325	50	Recipe	156	\N	\N	labels	2022-06-17 18:21:03.525764	\N
326	120	Item	313	\N	\N	labels	2022-06-17 18:21:24.766677	\N
327	3	Item	314	\N	\N	labels	2022-06-17 18:21:53.825181	\N
328	121	Item	314	\N	\N	labels	2022-06-17 18:22:02.20899	\N
329	50	Recipe	157	\N	\N	labels	2022-06-17 18:23:59.144715	\N
330	50	Recipe	158	\N	\N	labels	2022-06-17 18:26:14.088474	\N
331	122	Item	268	\N	\N	labels	2022-06-17 18:26:39.695421	\N
332	50	Recipe	159	\N	\N	labels	2022-06-17 18:28:23.948793	\N
333	50	Recipe	160	\N	\N	labels	2022-06-17 18:29:58.365377	\N
334	50	Recipe	161	\N	\N	labels	2022-06-17 18:30:59.976279	\N
335	123	Item	320	\N	\N	labels	2022-06-17 18:32:07.269042	\N
336	124	Item	184	\N	\N	labels	2022-06-17 18:32:24.774184	\N
337	125	Item	185	\N	\N	labels	2022-06-17 18:33:21.646404	\N
338	126	Item	185	\N	\N	labels	2022-06-17 18:33:32.380544	\N
339	127	Item	185	\N	\N	labels	2022-06-17 18:33:42.999119	\N
340	43	Item	321	\N	\N	labels	2022-06-17 18:34:04.206693	\N
341	128	Item	322	\N	\N	labels	2022-06-17 18:37:12.381854	\N
342	129	Item	219	\N	\N	labels	2022-06-17 18:37:26.489285	\N
343	50	Recipe	162	\N	\N	labels	2022-06-17 18:37:44.942264	\N
344	50	Recipe	163	\N	\N	labels	2022-06-17 18:38:45.213533	\N
345	50	Recipe	164	\N	\N	labels	2022-06-17 18:40:15.06391	\N
346	50	Recipe	165	\N	\N	labels	2022-06-17 18:42:05.926889	\N
347	130	Item	251	\N	\N	labels	2022-06-17 18:42:44.648593	\N
348	131	Item	116	\N	\N	labels	2022-06-17 18:43:00.23704	\N
349	50	Recipe	166	\N	\N	labels	2022-06-17 18:44:51.88695	\N
350	50	Recipe	167	\N	\N	labels	2022-06-17 18:45:52.425732	\N
351	50	Recipe	169	\N	\N	labels	2022-06-17 18:50:31.143464	\N
352	132	Item	331	\N	\N	labels	2022-06-17 18:51:17.466183	\N
353	133	Item	97	\N	\N	labels	2022-06-17 18:51:28.834314	\N
354	50	Recipe	168	\N	\N	labels	2022-06-17 18:54:03.45689	\N
355	50	Recipe	170	\N	\N	labels	2022-06-17 18:54:19.03096	\N
356	50	Recipe	171	\N	\N	labels	2022-06-17 18:55:29.020527	\N
357	50	Recipe	172	\N	\N	labels	2022-06-17 18:57:59.838309	\N
358	134	Item	341	\N	\N	labels	2022-06-17 18:59:36.610985	\N
359	135	Item	44	\N	\N	labels	2022-06-17 18:59:48.832426	\N
360	50	Recipe	173	\N	\N	labels	2022-06-17 18:59:59.830657	\N
361	136	Item	340	\N	\N	labels	2022-06-17 19:00:21.732228	\N
362	137	Item	42	\N	\N	labels	2022-06-17 19:00:35.96865	\N
363	138	Item	342	\N	\N	labels	2022-06-17 19:03:10.35246	\N
364	139	Item	32	\N	\N	labels	2022-06-17 19:03:23.033744	\N
365	50	Recipe	174	\N	\N	labels	2022-06-17 19:03:42.319578	\N
366	140	Item	344	\N	\N	labels	2022-06-17 19:06:23.080269	\N
367	141	Item	14	\N	\N	labels	2022-06-17 19:06:33.695325	\N
368	31	Item	345	\N	\N	labels	2022-06-18 11:33:37.30933	\N
369	142	Item	147	\N	\N	labels	2022-06-18 11:35:16.581893	\N
370	50	Recipe	175	\N	\N	labels	2022-06-18 11:35:28.854444	\N
371	143	Recipe	176	\N	\N	labels	2022-06-22 23:09:10.025229	\N
372	143	Recipe	177	\N	\N	labels	2022-06-22 23:09:21.703933	\N
373	143	Recipe	178	\N	\N	labels	2022-06-22 23:09:31.969045	\N
374	143	Recipe	179	\N	\N	labels	2022-06-22 23:09:42.710452	\N
375	143	Recipe	180	\N	\N	labels	2022-06-22 23:09:52.237013	\N
376	143	Recipe	181	\N	\N	labels	2022-06-22 23:10:01.828766	\N
377	143	Recipe	182	\N	\N	labels	2022-06-22 23:10:11.931191	\N
378	143	Recipe	183	\N	\N	labels	2022-06-22 23:10:21.835491	\N
379	143	Recipe	184	\N	\N	labels	2022-06-22 23:10:31.973286	\N
380	143	Recipe	185	\N	\N	labels	2022-06-22 23:10:41.767134	\N
381	143	Recipe	186	\N	\N	labels	2022-06-22 23:10:50.299013	\N
382	143	Recipe	187	\N	\N	labels	2022-06-22 23:11:00.062287	\N
383	143	Recipe	188	\N	\N	labels	2022-06-22 23:11:09.90463	\N
384	144	Item	30	\N	\N	labels	2022-06-22 23:12:14.243652	\N
385	15	Item	348	\N	\N	labels	2022-06-22 23:12:38.89408	\N
386	145	Item	228	\N	\N	labels	2022-06-22 23:13:26.29843	\N
387	3	Item	359	\N	\N	labels	2022-06-22 23:13:47.426994	\N
388	146	Item	359	\N	\N	labels	2022-06-22 23:13:59.801021	\N
\.


--
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: cor_admin
--

COPY public.tags (id, name, created_at, updated_at, taggings_count) FROM stdin;
2	Triple Sec	2022-05-21 13:38:14.900623	2022-05-21 13:38:14.900623	1
4	London Dry Gin	2022-05-21 13:40:08.103537	2022-05-21 13:40:08.103537	1
31	Curaçao Liqueur	2022-06-06 01:01:17.195175	2022-06-06 01:01:17.195175	2
5	Whiskey	2022-05-21 16:33:26.973799	2022-05-21 16:33:26.973799	1
61	Orange	2022-06-17 15:26:05.378392	2022-06-17 15:26:05.378392	1
62	橙子	2022-06-17 15:26:28.049424	2022-06-17 15:26:28.049424	1
63	Orange Peel	2022-06-17 15:26:39.742533	2022-06-17 15:26:39.742533	1
64	Orange Juice	2022-06-17 15:26:47.647151	2022-06-17 15:26:47.647151	1
13	Fruit	2022-05-22 10:53:58.205821	2022-05-22 10:53:58.205821	0
14	Fruits	2022-05-22 10:54:06.430035	2022-05-22 10:54:06.430035	1
82	甜香艾酒	2022-06-17 15:51:12.539047	2022-06-17 15:51:12.539047	1
1	Vermouth	2022-05-21 09:57:32.506129	2022-05-21 09:57:32.506129	4
8	Red Vermouth	2022-05-21 17:25:13.131987	2022-05-21 17:25:13.131987	2
30	Orange Curaçao	2022-06-06 01:01:04.888812	2022-06-06 01:01:04.888812	1
23	Curaçao	2022-05-24 02:10:12.949422	2022-05-24 02:10:12.949422	2
50	癮型人	2022-06-17 15:08:52.142403	2022-06-17 15:08:52.142403	77
19	New Era Drinks	2022-05-23 01:14:48.749152	2022-05-23 01:14:48.749152	25
15	Dry Vermouth	2022-05-22 11:04:41.370614	2022-05-22 11:04:41.370614	3
20	Bramble	2022-05-23 01:15:01.334187	2022-05-23 01:15:01.334187	0
74	Sugar	2022-06-17 15:35:56.483104	2022-06-17 15:35:56.483104	2
76	Cointreau	2022-06-17 15:38:39.280257	2022-06-17 15:38:39.280257	1
36	Sugar Cube	2022-06-06 01:11:00.928252	2022-06-06 01:11:00.928252	1
37	Apple Juice	2022-06-06 04:14:07.750608	2022-06-06 04:14:07.750608	1
77	君度橙酒	2022-06-17 15:39:01.591122	2022-06-17 15:39:01.591122	1
24	干邑	2022-05-24 10:17:34.796552	2022-05-24 10:17:34.796552	1
93	干邑白蘭地	2022-06-17 16:07:07.406836	2022-06-17 16:07:07.406836	1
26	Grenadine	2022-05-27 00:25:10.966628	2022-05-27 00:25:10.966628	1
38	Chilled Water	2022-06-06 04:15:15.717793	2022-06-06 04:15:15.717793	1
39	Honey Syrup 3:1	2022-06-06 04:16:08.555269	2022-06-06 04:16:08.555269	1
45	Cherry Liqueur	2022-06-17 15:03:31.489735	2022-06-17 15:03:31.489735	1
65	柳橙汁	2022-06-17 15:27:23.667585	2022-06-17 15:27:23.667585	1
46	Cranberr	2022-06-17 15:07:11.990823	2022-06-17 15:07:11.990823	0
47	Cranberry Juice	2022-06-17 15:07:24.817362	2022-06-17 15:07:24.817362	1
48	蔓越莓汁	2022-06-17 15:07:43.382546	2022-06-17 15:07:43.382546	1
27	Vodka	2022-06-06 00:37:28.438224	2022-06-06 00:37:28.438224	2
18	Contemporary Classics	2022-05-23 01:10:59.053113	2022-05-23 01:10:59.053113	31
40	Honey	2022-06-06 10:44:27.785921	2022-06-06 10:44:27.785921	0
16	Iba	2022-05-23 01:06:04.709166	2022-05-23 01:06:04.709166	33
17	The Unforgettables	2022-05-23 01:06:07.274522	2022-05-23 01:06:07.274522	33
28	Coffee Liqueur	2022-06-06 00:38:15.865109	2022-06-06 00:38:15.865109	1
41	Honey Syrup	2022-06-06 10:44:36.333404	2022-06-06 10:44:36.333404	1
49	伏特加	2022-06-17 15:08:30.373817	2022-06-17 15:08:30.373817	1
66	Lemon	2022-06-17 15:30:38.048176	2022-06-17 15:30:38.048176	1
11	Tonic	2022-05-22 10:51:10.632546	2022-05-22 10:51:10.632546	1
12	Tonic Water	2022-05-22 10:51:16.397766	2022-05-22 10:51:16.397766	2
51	通寧水	2022-06-17 15:11:26.288979	2022-06-17 15:11:26.288979	1
52	琴酒	2022-06-17 15:11:57.148645	2022-06-17 15:11:57.148645	1
67	檸檬汁	2022-06-17 15:30:50.114227	2022-06-17 15:30:50.114227	1
29	Rum	2022-06-06 00:52:25.399186	2022-06-06 00:52:25.399186	2
53	蘭姆酒	2022-06-17 15:13:43.130742	2022-06-17 15:13:43.130742	1
54	可樂	2022-06-17 15:14:02.498998	2022-06-17 15:14:02.498998	2
68	Lemon Juice	2022-06-17 15:31:19.809964	2022-06-17 15:31:19.809964	1
56	Coca Cola	2022-06-17 15:15:16.885663	2022-06-17 15:15:16.885663	1
55	Cola	2022-06-17 15:14:23.772467	2022-06-17 15:14:23.772467	2
57	可口可樂	2022-06-17 15:15:45.790596	2022-06-17 15:15:45.790596	1
69	Lemon Peel	2022-06-17 15:31:27.49656	2022-06-17 15:31:27.49656	1
87	葡萄柚	2022-06-17 16:00:06.697758	2022-06-17 16:00:06.697758	1
32	Tequila	2022-06-06 01:03:28.892071	2022-06-06 01:03:28.892071	2
58	龍舌蘭	2022-06-17 15:18:27.179363	2022-06-17 15:18:27.179363	1
59	紅石榴糖漿	2022-06-17 15:24:47.188163	2022-06-17 15:24:47.188163	1
60	Grenadine Syrup	2022-06-17 15:25:11.838606	2022-06-17 15:25:11.838606	1
70	檸檬	2022-06-17 15:31:33.465401	2022-06-17 15:31:33.465401	1
83	Bitters	2022-06-17 15:51:39.240633	2022-06-17 15:51:39.240633	2
22	Simple Syrup	2022-05-23 09:47:31.011343	2022-05-23 09:47:31.011343	2
71	Superfine Sugar	2022-06-17 15:33:15.091819	2022-06-17 15:33:15.091819	1
33	Powdered Sugar	2022-06-06 01:08:13.293886	2022-06-06 01:08:13.293886	2
34	Sugar Syrup 2:1	2022-06-06 01:10:48.870929	2022-06-06 01:10:48.870929	2
35	Simple Sugar Syrup	2022-06-06 01:10:54.851789	2022-06-06 01:10:54.851789	2
72	Simple Syrup 1:1	2022-06-17 15:34:49.250261	2022-06-17 15:34:49.250261	1
73	Sugar Syrup 1:1	2022-06-17 15:35:30.809348	2022-06-17 15:35:30.809348	1
75	糖漿	2022-06-17 15:36:35.262545	2022-06-17 15:36:35.262545	1
3	Gin	2022-05-21 13:39:56.435819	2022-05-21 13:39:56.435819	4
78	不甜香艾酒	2022-06-17 15:45:55.034722	2022-06-17 15:45:55.034722	1
84	苦精	2022-06-17 15:52:30.941019	2022-06-17 15:52:30.941019	1
79	柑橘苦精	2022-06-17 15:46:58.698732	2022-06-17 15:46:58.698732	1
80	Orange Bitters	2022-06-17 15:47:15.915351	2022-06-17 15:47:15.915351	2
88	Grapefruit	2022-06-17 16:00:34.716826	2022-06-17 16:00:34.716826	1
6	Bourbon	2022-05-21 16:33:54.735021	2022-05-21 16:33:54.735021	2
81	波本威士忌	2022-06-17 15:50:33.534182	2022-06-17 15:50:33.534182	1
7	Sweet Vermouth	2022-05-21 17:24:57.058054	2022-05-21 17:24:57.058054	3
25	Cognac	2022-05-24 10:19:19.733194	2022-05-24 10:19:19.733194	2
9	Maraschino Liqueur	2022-05-21 17:28:03.112573	2022-05-21 17:28:03.112573	2
85	瑪拉斯奇諾	2022-06-17 15:59:11.989946	2022-06-17 15:59:11.989946	1
86	葡萄柚汁	2022-06-17 15:59:49.319691	2022-06-17 15:59:49.319691	1
89	西柚	2022-06-17 16:00:52.698316	2022-06-17 16:00:52.698316	1
90	Grapefruit Juice	2022-06-17 16:01:02.335174	2022-06-17 16:01:02.335174	1
91	迪莎蘿娜	2022-06-17 16:02:47.645429	2022-06-17 16:02:47.645429	1
92	Disaronno	2022-06-17 16:03:08.714231	2022-06-17 16:03:08.714231	1
10	Campari	2022-05-22 10:49:40.110015	2022-05-22 10:49:40.110015	2
44	Pineapple Juice	2022-06-17 15:02:16.928886	2022-06-17 15:02:16.928886	2
94	肯巴利	2022-06-17 16:09:34.292912	2022-06-17 16:09:34.292912	1
95	鳳梨汁	2022-06-17 16:18:20.77071	2022-06-17 16:18:20.77071	1
96	波蘿汁	2022-06-17 16:18:27.351461	2022-06-17 16:18:27.351461	1
42	Chartreuse	2022-06-06 11:12:51.028249	2022-06-06 11:12:51.028249	2
97	Char	2022-06-17 16:23:42.967343	2022-06-17 16:23:42.967343	0
98	夏特勒茲	2022-06-17 16:24:11.45457	2022-06-17 16:24:11.45457	1
99	夏特勒茲（黃）	2022-06-17 16:24:41.07455	2022-06-17 16:24:41.07455	1
100	Benedictine	2022-06-17 16:30:10.058235	2022-06-17 16:30:10.058235	1
101	班尼迪克丁	2022-06-17 16:30:50.964772	2022-06-17 16:30:50.964772	1
102	廊酒	2022-06-17 16:31:33.059955	2022-06-17 16:31:33.059955	1
103	Grand Marnier	2022-06-17 16:37:36.703832	2022-06-17 16:37:36.703832	1
21	Soda Water	2022-05-23 03:10:19.233303	2022-05-23 03:10:19.233303	2
104	柑曼怡	2022-06-17 16:37:55.332885	2022-06-17 16:37:55.332885	1
105	Rye Whiskey	2022-06-17 16:40:01.282402	2022-06-17 16:40:01.282402	1
106	裸麥威士忌	2022-06-17 16:40:19.248342	2022-06-17 16:40:19.248342	1
107	裴喬氏苦精	2022-06-17 17:24:27.341121	2022-06-17 17:24:27.341121	1
108	Peychaud's Bitters	2022-06-17 17:24:40.571347	2022-06-17 17:24:40.571347	1
109	Milk	2022-06-17 17:26:49.190814	2022-06-17 17:26:49.190814	1
110	鮮奶	2022-06-17 17:27:02.938466	2022-06-17 17:27:02.938466	1
111	Kahlua	2022-06-17 17:33:24.754976	2022-06-17 17:33:24.754976	1
112	卡魯哇	2022-06-17 17:33:38.571941	2022-06-17 17:33:38.571941	1
113	蘇打水	2022-06-17 17:35:55.13217	2022-06-17 17:35:55.13217	1
114	Midori Melon Liqueur	2022-06-17 17:49:38.930132	2022-06-17 17:49:38.930132	1
115	Midori	2022-06-17 17:49:54.023732	2022-06-17 17:49:54.023732	1
116	蜜多麗	2022-06-17 17:50:04.484829	2022-06-17 17:50:04.484829	1
117	Lillet Blanc	2022-06-17 18:11:07.960133	2022-06-17 18:11:07.960133	1
118	白麗葉酒	2022-06-17 18:11:20.224029	2022-06-17 18:11:20.224029	1
119	砂糖	2022-06-17 18:17:04.767638	2022-06-17 18:17:04.767638	1
120	Old Tom Gin	2022-06-17 18:21:24.755832	2022-06-17 18:21:24.755832	1
121	老湯姆琴酒	2022-06-17 18:22:02.200409	2022-06-17 18:22:02.200409	1
122	櫻桃香甜酒	2022-06-17 18:26:39.688687	2022-06-17 18:26:39.688687	1
123	White Wine	2022-06-17 18:32:07.264026	2022-06-17 18:32:07.264026	1
124	白葡萄酒	2022-06-17 18:32:24.769678	2022-06-17 18:32:24.769678	1
125	黑醋栗香甜酒	2022-06-17 18:33:21.625701	2022-06-17 18:33:21.625701	1
126	黑醋栗果酒	2022-06-17 18:33:32.375187	2022-06-17 18:33:32.375187	1
127	黑加侖子酒	2022-06-17 18:33:42.991147	2022-06-17 18:33:42.991147	1
43	Crème De Cassis	2022-06-06 11:27:10.052197	2022-06-06 11:27:10.052197	2
128	Red Wine	2022-06-17 18:37:12.375017	2022-06-17 18:37:12.375017	1
129	紅葡萄酒	2022-06-17 18:37:26.480812	2022-06-17 18:37:26.480812	1
130	柳橙片	2022-06-17 18:42:44.642862	2022-06-17 18:42:44.642862	1
131	Orange Slice	2022-06-17 18:43:00.225485	2022-06-17 18:43:00.225485	1
132	Ginger Ale	2022-06-17 18:51:17.45314	2022-06-17 18:51:17.45314	1
133	薑汁汽水	2022-06-17 18:51:28.827805	2022-06-17 18:51:28.827805	1
134	Plain Water	2022-06-17 18:59:36.60535	2022-06-17 18:59:36.60535	1
135	水	2022-06-17 18:59:48.820952	2022-06-17 18:59:48.820952	1
136	Absinthe	2022-06-17 19:00:21.724305	2022-06-17 19:00:21.724305	1
137	苦艾酒	2022-06-17 19:00:35.963113	2022-06-17 19:00:35.963113	1
138	Lime Juice	2022-06-17 19:03:10.345627	2022-06-17 19:03:10.345627	1
139	萊姆汁	2022-06-17 19:03:23.021957	2022-06-17 19:03:23.021957	1
140	Apricot Brandy	2022-06-17 19:06:23.073945	2022-06-17 19:06:23.073945	1
141	杏桃白蘭地	2022-06-17 19:06:33.684553	2022-06-17 19:06:33.684553	1
142	白庫拉索酒	2022-06-18 11:35:16.575559	2022-06-18 11:35:16.575559	1
143	渡邊一也	2022-06-22 23:09:10.017307	2022-06-22 23:09:10.017307	13
144	澀味苦艾酒	2022-06-22 23:12:14.238049	2022-06-22 23:12:14.238049	1
145	Dry Gin	2022-06-22 23:13:26.287518	2022-06-22 23:13:26.287518	1
146	澀味琴酒	2022-06-22 23:13:59.794361	2022-06-22 23:13:59.794361	1
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: cor_admin
--

COPY public.users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at, name) FROM stdin;
1	mayapainter@gmail.com	$2a$12$Mo3Lkit6WPENCr5pR98lmOHOaG4rAw0d/DC1hNm3f3n5qc61YiBkG	\N	\N	\N	2022-04-27 09:49:43.86543	2022-05-27 01:19:57.063013	Daniel Cheang
2	04snails_normal@icloud.com	$2a$12$hUTYQkM9EJRzkT0DUQehZubHI8rwMSlxbDh9iL.KV.jcF0BWhBFNa	\N	\N	\N	2022-04-27 10:53:33.657939	2022-06-06 16:13:41.373047	daniel
\.


--
-- Name: active_storage_attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cor_admin
--

SELECT pg_catalog.setval('public.active_storage_attachments_id_seq', 19, true);


--
-- Name: active_storage_blobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cor_admin
--

SELECT pg_catalog.setval('public.active_storage_blobs_id_seq', 19, true);


--
-- Name: active_storage_variant_records_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cor_admin
--

SELECT pg_catalog.setval('public.active_storage_variant_records_id_seq', 9, true);


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cor_admin
--

SELECT pg_catalog.setval('public.comments_id_seq', 31, true);


--
-- Name: ingredients_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cor_admin
--

SELECT pg_catalog.setval('public.ingredients_id_seq', 697, true);


--
-- Name: items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cor_admin
--

SELECT pg_catalog.setval('public.items_id_seq', 359, true);


--
-- Name: marks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cor_admin
--

SELECT pg_catalog.setval('public.marks_id_seq', 81, true);


--
-- Name: recipes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cor_admin
--

SELECT pg_catalog.setval('public.recipes_id_seq', 188, true);


--
-- Name: taggings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cor_admin
--

SELECT pg_catalog.setval('public.taggings_id_seq', 388, true);


--
-- Name: tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cor_admin
--

SELECT pg_catalog.setval('public.tags_id_seq', 146, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cor_admin
--

SELECT pg_catalog.setval('public.users_id_seq', 2, true);


--
-- Name: active_storage_attachments active_storage_attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: cor_admin
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT active_storage_attachments_pkey PRIMARY KEY (id);


--
-- Name: active_storage_blobs active_storage_blobs_pkey; Type: CONSTRAINT; Schema: public; Owner: cor_admin
--

ALTER TABLE ONLY public.active_storage_blobs
    ADD CONSTRAINT active_storage_blobs_pkey PRIMARY KEY (id);


--
-- Name: active_storage_variant_records active_storage_variant_records_pkey; Type: CONSTRAINT; Schema: public; Owner: cor_admin
--

ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT active_storage_variant_records_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: cor_admin
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: comments comments_pkey; Type: CONSTRAINT; Schema: public; Owner: cor_admin
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: ingredients ingredients_pkey; Type: CONSTRAINT; Schema: public; Owner: cor_admin
--

ALTER TABLE ONLY public.ingredients
    ADD CONSTRAINT ingredients_pkey PRIMARY KEY (id);


--
-- Name: items items_pkey; Type: CONSTRAINT; Schema: public; Owner: cor_admin
--

ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_pkey PRIMARY KEY (id);


--
-- Name: marks marks_pkey; Type: CONSTRAINT; Schema: public; Owner: cor_admin
--

ALTER TABLE ONLY public.marks
    ADD CONSTRAINT marks_pkey PRIMARY KEY (id);


--
-- Name: recipes recipes_pkey; Type: CONSTRAINT; Schema: public; Owner: cor_admin
--

ALTER TABLE ONLY public.recipes
    ADD CONSTRAINT recipes_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: cor_admin
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: taggings taggings_pkey; Type: CONSTRAINT; Schema: public; Owner: cor_admin
--

ALTER TABLE ONLY public.taggings
    ADD CONSTRAINT taggings_pkey PRIMARY KEY (id);


--
-- Name: tags tags_pkey; Type: CONSTRAINT; Schema: public; Owner: cor_admin
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: cor_admin
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_active_storage_attachments_on_blob_id; Type: INDEX; Schema: public; Owner: cor_admin
--

CREATE INDEX index_active_storage_attachments_on_blob_id ON public.active_storage_attachments USING btree (blob_id);


--
-- Name: index_active_storage_attachments_uniqueness; Type: INDEX; Schema: public; Owner: cor_admin
--

CREATE UNIQUE INDEX index_active_storage_attachments_uniqueness ON public.active_storage_attachments USING btree (record_type, record_id, name, blob_id);


--
-- Name: index_active_storage_blobs_on_key; Type: INDEX; Schema: public; Owner: cor_admin
--

CREATE UNIQUE INDEX index_active_storage_blobs_on_key ON public.active_storage_blobs USING btree (key);


--
-- Name: index_active_storage_variant_records_uniqueness; Type: INDEX; Schema: public; Owner: cor_admin
--

CREATE UNIQUE INDEX index_active_storage_variant_records_uniqueness ON public.active_storage_variant_records USING btree (blob_id, variation_digest);


--
-- Name: index_comments_on_commentable; Type: INDEX; Schema: public; Owner: cor_admin
--

CREATE INDEX index_comments_on_commentable ON public.comments USING btree (commentable_type, commentable_id);


--
-- Name: index_comments_on_commentable_type_and_commentable_id; Type: INDEX; Schema: public; Owner: cor_admin
--

CREATE INDEX index_comments_on_commentable_type_and_commentable_id ON public.comments USING btree (commentable_type, commentable_id);


--
-- Name: index_comments_on_user_id; Type: INDEX; Schema: public; Owner: cor_admin
--

CREATE INDEX index_comments_on_user_id ON public.comments USING btree (user_id);


--
-- Name: index_ingredients_on_name; Type: INDEX; Schema: public; Owner: cor_admin
--

CREATE INDEX index_ingredients_on_name ON public.ingredients USING btree (name);


--
-- Name: index_ingredients_on_recipe_id; Type: INDEX; Schema: public; Owner: cor_admin
--

CREATE INDEX index_ingredients_on_recipe_id ON public.ingredients USING btree (recipe_id);


--
-- Name: index_items_on_name; Type: INDEX; Schema: public; Owner: cor_admin
--

CREATE INDEX index_items_on_name ON public.items USING btree (name);


--
-- Name: index_items_on_user_id; Type: INDEX; Schema: public; Owner: cor_admin
--

CREATE INDEX index_items_on_user_id ON public.items USING btree (user_id);


--
-- Name: index_marks_on_markable; Type: INDEX; Schema: public; Owner: cor_admin
--

CREATE INDEX index_marks_on_markable ON public.marks USING btree (markable_type, markable_id);


--
-- Name: index_marks_on_user_id; Type: INDEX; Schema: public; Owner: cor_admin
--

CREATE INDEX index_marks_on_user_id ON public.marks USING btree (user_id);


--
-- Name: index_taggings_on_context; Type: INDEX; Schema: public; Owner: cor_admin
--

CREATE INDEX index_taggings_on_context ON public.taggings USING btree (context);


--
-- Name: index_taggings_on_tag_id; Type: INDEX; Schema: public; Owner: cor_admin
--

CREATE INDEX index_taggings_on_tag_id ON public.taggings USING btree (tag_id);


--
-- Name: index_taggings_on_taggable_id; Type: INDEX; Schema: public; Owner: cor_admin
--

CREATE INDEX index_taggings_on_taggable_id ON public.taggings USING btree (taggable_id);


--
-- Name: index_taggings_on_taggable_type; Type: INDEX; Schema: public; Owner: cor_admin
--

CREATE INDEX index_taggings_on_taggable_type ON public.taggings USING btree (taggable_type);


--
-- Name: index_taggings_on_taggable_type_and_taggable_id; Type: INDEX; Schema: public; Owner: cor_admin
--

CREATE INDEX index_taggings_on_taggable_type_and_taggable_id ON public.taggings USING btree (taggable_type, taggable_id);


--
-- Name: index_taggings_on_tagger_id; Type: INDEX; Schema: public; Owner: cor_admin
--

CREATE INDEX index_taggings_on_tagger_id ON public.taggings USING btree (tagger_id);


--
-- Name: index_taggings_on_tagger_id_and_tagger_type; Type: INDEX; Schema: public; Owner: cor_admin
--

CREATE INDEX index_taggings_on_tagger_id_and_tagger_type ON public.taggings USING btree (tagger_id, tagger_type);


--
-- Name: index_taggings_on_tagger_type_and_tagger_id; Type: INDEX; Schema: public; Owner: cor_admin
--

CREATE INDEX index_taggings_on_tagger_type_and_tagger_id ON public.taggings USING btree (tagger_type, tagger_id);


--
-- Name: index_taggings_on_tenant; Type: INDEX; Schema: public; Owner: cor_admin
--

CREATE INDEX index_taggings_on_tenant ON public.taggings USING btree (tenant);


--
-- Name: index_tags_on_name; Type: INDEX; Schema: public; Owner: cor_admin
--

CREATE UNIQUE INDEX index_tags_on_name ON public.tags USING btree (name);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: cor_admin
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: cor_admin
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- Name: taggings_idx; Type: INDEX; Schema: public; Owner: cor_admin
--

CREATE UNIQUE INDEX taggings_idx ON public.taggings USING btree (tag_id, taggable_id, taggable_type, context, tagger_id, tagger_type);


--
-- Name: taggings_idy; Type: INDEX; Schema: public; Owner: cor_admin
--

CREATE INDEX taggings_idy ON public.taggings USING btree (taggable_id, taggable_type, tagger_id, context);


--
-- Name: taggings_taggable_context_idx; Type: INDEX; Schema: public; Owner: cor_admin
--

CREATE INDEX taggings_taggable_context_idx ON public.taggings USING btree (taggable_id, taggable_type, context);


--
-- Name: ingredients fk_rails_3ee351e1cd; Type: FK CONSTRAINT; Schema: public; Owner: cor_admin
--

ALTER TABLE ONLY public.ingredients
    ADD CONSTRAINT fk_rails_3ee351e1cd FOREIGN KEY (recipe_id) REFERENCES public.recipes(id);


--
-- Name: active_storage_variant_records fk_rails_993965df05; Type: FK CONSTRAINT; Schema: public; Owner: cor_admin
--

ALTER TABLE ONLY public.active_storage_variant_records
    ADD CONSTRAINT fk_rails_993965df05 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- Name: taggings fk_rails_9fcd2e236b; Type: FK CONSTRAINT; Schema: public; Owner: cor_admin
--

ALTER TABLE ONLY public.taggings
    ADD CONSTRAINT fk_rails_9fcd2e236b FOREIGN KEY (tag_id) REFERENCES public.tags(id);


--
-- Name: active_storage_attachments fk_rails_c3b3935057; Type: FK CONSTRAINT; Schema: public; Owner: cor_admin
--

ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT fk_rails_c3b3935057 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);


--
-- Name: items fk_rails_d4b6334db2; Type: FK CONSTRAINT; Schema: public; Owner: cor_admin
--

ALTER TABLE ONLY public.items
    ADD CONSTRAINT fk_rails_d4b6334db2 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

