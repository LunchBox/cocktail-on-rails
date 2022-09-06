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
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: u2
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO u2;

--
-- Name: comments; Type: TABLE; Schema: public; Owner: u2
--

CREATE TABLE public.comments (
    id bigint NOT NULL,
    commentable_type character varying,
    commentable_id bigint,
    content text,
    user_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.comments OWNER TO u2;

--
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: u2
--

CREATE SEQUENCE public.comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comments_id_seq OWNER TO u2;

--
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: u2
--

ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;


--
-- Name: items; Type: TABLE; Schema: public; Owner: u2
--

CREATE TABLE public.items (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    merge_to_id integer
);


ALTER TABLE public.items OWNER TO u2;

--
-- Name: items_id_seq; Type: SEQUENCE; Schema: public; Owner: u2
--

CREATE SEQUENCE public.items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.items_id_seq OWNER TO u2;

--
-- Name: items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: u2
--

ALTER SEQUENCE public.items_id_seq OWNED BY public.items.id;


--
-- Name: pages; Type: TABLE; Schema: public; Owner: u2
--

CREATE TABLE public.pages (
    id bigint NOT NULL,
    title character varying,
    content text,
    user_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.pages OWNER TO u2;

--
-- Name: pages_id_seq; Type: SEQUENCE; Schema: public; Owner: u2
--

CREATE SEQUENCE public.pages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pages_id_seq OWNER TO u2;

--
-- Name: pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: u2
--

ALTER SEQUENCE public.pages_id_seq OWNED BY public.pages.id;


--
-- Name: recipe_items; Type: TABLE; Schema: public; Owner: u2
--

CREATE TABLE public.recipe_items (
    id bigint NOT NULL,
    recipe_id bigint NOT NULL,
    item_id bigint NOT NULL,
    num double precision,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    unit character varying
);


ALTER TABLE public.recipe_items OWNER TO u2;

--
-- Name: recipe_items_id_seq; Type: SEQUENCE; Schema: public; Owner: u2
--

CREATE SEQUENCE public.recipe_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.recipe_items_id_seq OWNER TO u2;

--
-- Name: recipe_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: u2
--

ALTER SEQUENCE public.recipe_items_id_seq OWNED BY public.recipe_items.id;


--
-- Name: recipes; Type: TABLE; Schema: public; Owner: u2
--

CREATE TABLE public.recipes (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    user_id bigint NOT NULL,
    fork_from_id integer,
    method text
);


ALTER TABLE public.recipes OWNER TO u2;

--
-- Name: recipes_id_seq; Type: SEQUENCE; Schema: public; Owner: u2
--

CREATE SEQUENCE public.recipes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.recipes_id_seq OWNER TO u2;

--
-- Name: recipes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: u2
--

ALTER SEQUENCE public.recipes_id_seq OWNED BY public.recipes.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: u2
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO u2;

--
-- Name: taggings; Type: TABLE; Schema: public; Owner: u2
--

CREATE TABLE public.taggings (
    id integer NOT NULL,
    tag_id integer,
    taggable_type character varying,
    taggable_id integer,
    tagger_type character varying,
    tagger_id integer,
    context character varying(128),
    created_at timestamp without time zone
);


ALTER TABLE public.taggings OWNER TO u2;

--
-- Name: taggings_id_seq; Type: SEQUENCE; Schema: public; Owner: u2
--

CREATE SEQUENCE public.taggings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taggings_id_seq OWNER TO u2;

--
-- Name: taggings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: u2
--

ALTER SEQUENCE public.taggings_id_seq OWNED BY public.taggings.id;


--
-- Name: tags; Type: TABLE; Schema: public; Owner: u2
--

CREATE TABLE public.tags (
    id integer NOT NULL,
    name character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    taggings_count integer DEFAULT 0
);


ALTER TABLE public.tags OWNER TO u2;

--
-- Name: tags_id_seq; Type: SEQUENCE; Schema: public; Owner: u2
--

CREATE SEQUENCE public.tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tags_id_seq OWNER TO u2;

--
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: u2
--

ALTER SEQUENCE public.tags_id_seq OWNED BY public.tags.id;


--
-- Name: user_likes; Type: TABLE; Schema: public; Owner: u2
--

CREATE TABLE public.user_likes (
    id bigint NOT NULL,
    likeable_type character varying,
    likeable_id bigint,
    user_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.user_likes OWNER TO u2;

--
-- Name: user_likes_id_seq; Type: SEQUENCE; Schema: public; Owner: u2
--

CREATE SEQUENCE public.user_likes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_likes_id_seq OWNER TO u2;

--
-- Name: user_likes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: u2
--

ALTER SEQUENCE public.user_likes_id_seq OWNED BY public.user_likes.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: u2
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
    updated_at timestamp(6) without time zone NOT NULL,
    name character varying
);


ALTER TABLE public.users OWNER TO u2;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: u2
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO u2;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: u2
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: comments id; Type: DEFAULT; Schema: public; Owner: u2
--

ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);


--
-- Name: items id; Type: DEFAULT; Schema: public; Owner: u2
--

ALTER TABLE ONLY public.items ALTER COLUMN id SET DEFAULT nextval('public.items_id_seq'::regclass);


--
-- Name: pages id; Type: DEFAULT; Schema: public; Owner: u2
--

ALTER TABLE ONLY public.pages ALTER COLUMN id SET DEFAULT nextval('public.pages_id_seq'::regclass);


--
-- Name: recipe_items id; Type: DEFAULT; Schema: public; Owner: u2
--

ALTER TABLE ONLY public.recipe_items ALTER COLUMN id SET DEFAULT nextval('public.recipe_items_id_seq'::regclass);


--
-- Name: recipes id; Type: DEFAULT; Schema: public; Owner: u2
--

ALTER TABLE ONLY public.recipes ALTER COLUMN id SET DEFAULT nextval('public.recipes_id_seq'::regclass);


--
-- Name: taggings id; Type: DEFAULT; Schema: public; Owner: u2
--

ALTER TABLE ONLY public.taggings ALTER COLUMN id SET DEFAULT nextval('public.taggings_id_seq'::regclass);


--
-- Name: tags id; Type: DEFAULT; Schema: public; Owner: u2
--

ALTER TABLE ONLY public.tags ALTER COLUMN id SET DEFAULT nextval('public.tags_id_seq'::regclass);


--
-- Name: user_likes id; Type: DEFAULT; Schema: public; Owner: u2
--

ALTER TABLE ONLY public.user_likes ALTER COLUMN id SET DEFAULT nextval('public.user_likes_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: u2
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: u2
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	production	2021-06-02 03:04:37.676333	2021-06-02 03:04:37.676333
\.


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: u2
--

COPY public.comments (id, commentable_type, commentable_id, content, user_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: items; Type: TABLE DATA; Schema: public; Owner: u2
--

COPY public.items (id, name, created_at, updated_at, merge_to_id) FROM stdin;
\.


--
-- Data for Name: pages; Type: TABLE DATA; Schema: public; Owner: u2
--

COPY public.pages (id, title, content, user_id, created_at, updated_at) FROM stdin;
1	Negroni	The Negroni is a popular Italian cocktail, made of one part gin, one part vermouth rosso (red, semi-sweet), and one part Campari, garnished with orange peel. It is considered an apéritif.\r\n\r\nA traditionally made Negroni is stirred, not shaken, and built over ice in an old-fashioned or rocks glass and garnished with a slice of orange. Outside of Italy an orange peel is often used in place of an orange slice.	1	2021-06-15 00:48:11.707232	2021-06-15 00:48:11.707232
\.


--
-- Data for Name: recipe_items; Type: TABLE DATA; Schema: public; Owner: u2
--

COPY public.recipe_items (id, recipe_id, item_id, num, created_at, updated_at, unit) FROM stdin;
\.


--
-- Data for Name: recipes; Type: TABLE DATA; Schema: public; Owner: u2
--

COPY public.recipes (id, name, created_at, updated_at, user_id, fork_from_id, method) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: u2
--

COPY public.schema_migrations (version) FROM stdin;
20210531122040
20210531122637
20210531124424
20210601140018
20210601140150
20210603154012
20210605041425
20210605164150
20210606104208
20210606104209
20210606104210
20210606104211
20210606104212
20210606104213
20210606110841
20210606115932
20210606120921
20210606123557
20210606131418
\.


--
-- Data for Name: taggings; Type: TABLE DATA; Schema: public; Owner: u2
--

COPY public.taggings (id, tag_id, taggable_type, taggable_id, tagger_type, tagger_id, context, created_at) FROM stdin;
\.


--
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: u2
--

COPY public.tags (id, name, created_at, updated_at, taggings_count) FROM stdin;
\.


--
-- Data for Name: user_likes; Type: TABLE DATA; Schema: public; Owner: u2
--

COPY public.user_likes (id, likeable_type, likeable_id, user_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: u2
--

COPY public.users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, confirmation_token, confirmed_at, confirmation_sent_at, unconfirmed_email, failed_attempts, unlock_token, locked_at, created_at, updated_at, name) FROM stdin;
1	mayapainter@gmail.com	$2a$12$U5vGXHnAy.wQpr7uAup8NOteBOFWjyoT5kam0Glk69osWCNq4o2Vu	\N	\N	\N	3	2022-04-25 09:17:23.581769	2022-04-25 02:29:12.857167	202.175.108.98	202.175.108.98	\N	\N	\N	\N	0	\N	\N	2021-06-02 03:50:35.986349	2022-04-25 09:17:23.58211	\N
\.


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: u2
--

SELECT pg_catalog.setval('public.comments_id_seq', 1, false);


--
-- Name: items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: u2
--

SELECT pg_catalog.setval('public.items_id_seq', 1, false);


--
-- Name: pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: u2
--

SELECT pg_catalog.setval('public.pages_id_seq', 1, true);


--
-- Name: recipe_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: u2
--

SELECT pg_catalog.setval('public.recipe_items_id_seq', 1, false);


--
-- Name: recipes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: u2
--

SELECT pg_catalog.setval('public.recipes_id_seq', 1, false);


--
-- Name: taggings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: u2
--

SELECT pg_catalog.setval('public.taggings_id_seq', 1, false);


--
-- Name: tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: u2
--

SELECT pg_catalog.setval('public.tags_id_seq', 1, false);


--
-- Name: user_likes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: u2
--

SELECT pg_catalog.setval('public.user_likes_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: u2
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: u2
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: comments comments_pkey; Type: CONSTRAINT; Schema: public; Owner: u2
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: items items_pkey; Type: CONSTRAINT; Schema: public; Owner: u2
--

ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_pkey PRIMARY KEY (id);


--
-- Name: pages pages_pkey; Type: CONSTRAINT; Schema: public; Owner: u2
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_pkey PRIMARY KEY (id);


--
-- Name: recipe_items recipe_items_pkey; Type: CONSTRAINT; Schema: public; Owner: u2
--

ALTER TABLE ONLY public.recipe_items
    ADD CONSTRAINT recipe_items_pkey PRIMARY KEY (id);


--
-- Name: recipes recipes_pkey; Type: CONSTRAINT; Schema: public; Owner: u2
--

ALTER TABLE ONLY public.recipes
    ADD CONSTRAINT recipes_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: u2
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: taggings taggings_pkey; Type: CONSTRAINT; Schema: public; Owner: u2
--

ALTER TABLE ONLY public.taggings
    ADD CONSTRAINT taggings_pkey PRIMARY KEY (id);


--
-- Name: tags tags_pkey; Type: CONSTRAINT; Schema: public; Owner: u2
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- Name: user_likes user_likes_pkey; Type: CONSTRAINT; Schema: public; Owner: u2
--

ALTER TABLE ONLY public.user_likes
    ADD CONSTRAINT user_likes_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: u2
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_comments_on_commentable; Type: INDEX; Schema: public; Owner: u2
--

CREATE INDEX index_comments_on_commentable ON public.comments USING btree (commentable_type, commentable_id);


--
-- Name: index_comments_on_user_id; Type: INDEX; Schema: public; Owner: u2
--

CREATE INDEX index_comments_on_user_id ON public.comments USING btree (user_id);


--
-- Name: index_pages_on_user_id; Type: INDEX; Schema: public; Owner: u2
--

CREATE INDEX index_pages_on_user_id ON public.pages USING btree (user_id);


--
-- Name: index_recipe_items_on_item_id; Type: INDEX; Schema: public; Owner: u2
--

CREATE INDEX index_recipe_items_on_item_id ON public.recipe_items USING btree (item_id);


--
-- Name: index_recipe_items_on_recipe_id; Type: INDEX; Schema: public; Owner: u2
--

CREATE INDEX index_recipe_items_on_recipe_id ON public.recipe_items USING btree (recipe_id);


--
-- Name: index_recipes_on_user_id; Type: INDEX; Schema: public; Owner: u2
--

CREATE INDEX index_recipes_on_user_id ON public.recipes USING btree (user_id);


--
-- Name: index_taggings_on_context; Type: INDEX; Schema: public; Owner: u2
--

CREATE INDEX index_taggings_on_context ON public.taggings USING btree (context);


--
-- Name: index_taggings_on_tag_id; Type: INDEX; Schema: public; Owner: u2
--

CREATE INDEX index_taggings_on_tag_id ON public.taggings USING btree (tag_id);


--
-- Name: index_taggings_on_taggable_id; Type: INDEX; Schema: public; Owner: u2
--

CREATE INDEX index_taggings_on_taggable_id ON public.taggings USING btree (taggable_id);


--
-- Name: index_taggings_on_taggable_type; Type: INDEX; Schema: public; Owner: u2
--

CREATE INDEX index_taggings_on_taggable_type ON public.taggings USING btree (taggable_type);


--
-- Name: index_taggings_on_tagger_id; Type: INDEX; Schema: public; Owner: u2
--

CREATE INDEX index_taggings_on_tagger_id ON public.taggings USING btree (tagger_id);


--
-- Name: index_taggings_on_tagger_id_and_tagger_type; Type: INDEX; Schema: public; Owner: u2
--

CREATE INDEX index_taggings_on_tagger_id_and_tagger_type ON public.taggings USING btree (tagger_id, tagger_type);


--
-- Name: index_tags_on_name; Type: INDEX; Schema: public; Owner: u2
--

CREATE UNIQUE INDEX index_tags_on_name ON public.tags USING btree (name);


--
-- Name: index_user_likes_on_likeable; Type: INDEX; Schema: public; Owner: u2
--

CREATE INDEX index_user_likes_on_likeable ON public.user_likes USING btree (likeable_type, likeable_id);


--
-- Name: index_user_likes_on_user_id; Type: INDEX; Schema: public; Owner: u2
--

CREATE INDEX index_user_likes_on_user_id ON public.user_likes USING btree (user_id);


--
-- Name: index_users_on_confirmation_token; Type: INDEX; Schema: public; Owner: u2
--

CREATE UNIQUE INDEX index_users_on_confirmation_token ON public.users USING btree (confirmation_token);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: u2
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: u2
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- Name: index_users_on_unlock_token; Type: INDEX; Schema: public; Owner: u2
--

CREATE UNIQUE INDEX index_users_on_unlock_token ON public.users USING btree (unlock_token);


--
-- Name: taggings_idx; Type: INDEX; Schema: public; Owner: u2
--

CREATE UNIQUE INDEX taggings_idx ON public.taggings USING btree (tag_id, taggable_id, taggable_type, context, tagger_id, tagger_type);


--
-- Name: taggings_idy; Type: INDEX; Schema: public; Owner: u2
--

CREATE INDEX taggings_idy ON public.taggings USING btree (taggable_id, taggable_type, tagger_id, context);


--
-- Name: taggings_taggable_context_idx; Type: INDEX; Schema: public; Owner: u2
--

CREATE INDEX taggings_taggable_context_idx ON public.taggings USING btree (taggable_id, taggable_type, context);


--
-- Name: comments fk_rails_03de2dc08c; Type: FK CONSTRAINT; Schema: public; Owner: u2
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT fk_rails_03de2dc08c FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: recipe_items fk_rails_42c6cf9a77; Type: FK CONSTRAINT; Schema: public; Owner: u2
--

ALTER TABLE ONLY public.recipe_items
    ADD CONSTRAINT fk_rails_42c6cf9a77 FOREIGN KEY (recipe_id) REFERENCES public.recipes(id);


--
-- Name: user_likes fk_rails_611368df04; Type: FK CONSTRAINT; Schema: public; Owner: u2
--

ALTER TABLE ONLY public.user_likes
    ADD CONSTRAINT fk_rails_611368df04 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: pages fk_rails_84a58494eb; Type: FK CONSTRAINT; Schema: public; Owner: u2
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT fk_rails_84a58494eb FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: recipes fk_rails_9606fce865; Type: FK CONSTRAINT; Schema: public; Owner: u2
--

ALTER TABLE ONLY public.recipes
    ADD CONSTRAINT fk_rails_9606fce865 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: taggings fk_rails_9fcd2e236b; Type: FK CONSTRAINT; Schema: public; Owner: u2
--

ALTER TABLE ONLY public.taggings
    ADD CONSTRAINT fk_rails_9fcd2e236b FOREIGN KEY (tag_id) REFERENCES public.tags(id);


--
-- Name: recipe_items fk_rails_cab1744bad; Type: FK CONSTRAINT; Schema: public; Owner: u2
--

ALTER TABLE ONLY public.recipe_items
    ADD CONSTRAINT fk_rails_cab1744bad FOREIGN KEY (item_id) REFERENCES public.items(id);


--
-- PostgreSQL database dump complete
--

