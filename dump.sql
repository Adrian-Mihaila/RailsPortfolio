--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4
-- Dumped by pg_dump version 14.4

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
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: ruga
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO ruga;

--
-- Name: blogs; Type: TABLE; Schema: public; Owner: ruga
--

CREATE TABLE public.blogs (
    id integer NOT NULL,
    title character varying,
    body text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    slug character varying,
    status integer DEFAULT 0,
    topic_id integer
);


ALTER TABLE public.blogs OWNER TO ruga;

--
-- Name: blogs_id_seq; Type: SEQUENCE; Schema: public; Owner: ruga
--

CREATE SEQUENCE public.blogs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blogs_id_seq OWNER TO ruga;

--
-- Name: blogs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ruga
--

ALTER SEQUENCE public.blogs_id_seq OWNED BY public.blogs.id;


--
-- Name: friendly_id_slugs; Type: TABLE; Schema: public; Owner: ruga
--

CREATE TABLE public.friendly_id_slugs (
    id bigint NOT NULL,
    slug character varying NOT NULL,
    sluggable_id integer NOT NULL,
    sluggable_type character varying(50),
    scope character varying,
    created_at timestamp without time zone
);


ALTER TABLE public.friendly_id_slugs OWNER TO ruga;

--
-- Name: friendly_id_slugs_id_seq; Type: SEQUENCE; Schema: public; Owner: ruga
--

CREATE SEQUENCE public.friendly_id_slugs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.friendly_id_slugs_id_seq OWNER TO ruga;

--
-- Name: friendly_id_slugs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ruga
--

ALTER SEQUENCE public.friendly_id_slugs_id_seq OWNED BY public.friendly_id_slugs.id;


--
-- Name: portfolios; Type: TABLE; Schema: public; Owner: ruga
--

CREATE TABLE public.portfolios (
    id integer NOT NULL,
    title character varying,
    subtitle character varying,
    body text,
    main_image text,
    thumb_image text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    "position" integer
);


ALTER TABLE public.portfolios OWNER TO ruga;

--
-- Name: portfolios_id_seq; Type: SEQUENCE; Schema: public; Owner: ruga
--

CREATE SEQUENCE public.portfolios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.portfolios_id_seq OWNER TO ruga;

--
-- Name: portfolios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ruga
--

ALTER SEQUENCE public.portfolios_id_seq OWNED BY public.portfolios.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: ruga
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO ruga;

--
-- Name: skills; Type: TABLE; Schema: public; Owner: ruga
--

CREATE TABLE public.skills (
    id integer NOT NULL,
    title character varying,
    percent_utilized integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    badge text
);


ALTER TABLE public.skills OWNER TO ruga;

--
-- Name: skills_id_seq; Type: SEQUENCE; Schema: public; Owner: ruga
--

CREATE SEQUENCE public.skills_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.skills_id_seq OWNER TO ruga;

--
-- Name: skills_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ruga
--

ALTER SEQUENCE public.skills_id_seq OWNED BY public.skills.id;


--
-- Name: technologies; Type: TABLE; Schema: public; Owner: ruga
--

CREATE TABLE public.technologies (
    id integer NOT NULL,
    name character varying,
    portfolio_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.technologies OWNER TO ruga;

--
-- Name: technologies_id_seq; Type: SEQUENCE; Schema: public; Owner: ruga
--

CREATE SEQUENCE public.technologies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.technologies_id_seq OWNER TO ruga;

--
-- Name: technologies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ruga
--

ALTER SEQUENCE public.technologies_id_seq OWNED BY public.technologies.id;


--
-- Name: topics; Type: TABLE; Schema: public; Owner: ruga
--

CREATE TABLE public.topics (
    id integer NOT NULL,
    title character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.topics OWNER TO ruga;

--
-- Name: topics_id_seq; Type: SEQUENCE; Schema: public; Owner: ruga
--

CREATE SEQUENCE public.topics_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.topics_id_seq OWNER TO ruga;

--
-- Name: topics_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ruga
--

ALTER SEQUENCE public.topics_id_seq OWNED BY public.topics.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: ruga
--

CREATE TABLE public.users (
    id integer NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    name character varying,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip inet,
    last_sign_in_ip inet,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    roles character varying
);


ALTER TABLE public.users OWNER TO ruga;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: ruga
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO ruga;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ruga
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: blogs id; Type: DEFAULT; Schema: public; Owner: ruga
--

ALTER TABLE ONLY public.blogs ALTER COLUMN id SET DEFAULT nextval('public.blogs_id_seq'::regclass);


--
-- Name: friendly_id_slugs id; Type: DEFAULT; Schema: public; Owner: ruga
--

ALTER TABLE ONLY public.friendly_id_slugs ALTER COLUMN id SET DEFAULT nextval('public.friendly_id_slugs_id_seq'::regclass);


--
-- Name: portfolios id; Type: DEFAULT; Schema: public; Owner: ruga
--

ALTER TABLE ONLY public.portfolios ALTER COLUMN id SET DEFAULT nextval('public.portfolios_id_seq'::regclass);


--
-- Name: skills id; Type: DEFAULT; Schema: public; Owner: ruga
--

ALTER TABLE ONLY public.skills ALTER COLUMN id SET DEFAULT nextval('public.skills_id_seq'::regclass);


--
-- Name: technologies id; Type: DEFAULT; Schema: public; Owner: ruga
--

ALTER TABLE ONLY public.technologies ALTER COLUMN id SET DEFAULT nextval('public.technologies_id_seq'::regclass);


--
-- Name: topics id; Type: DEFAULT; Schema: public; Owner: ruga
--

ALTER TABLE ONLY public.topics ALTER COLUMN id SET DEFAULT nextval('public.topics_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: ruga
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: ruga
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2023-11-20 18:08:25.065921	2023-11-20 18:08:25.065921
\.


--
-- Data for Name: blogs; Type: TABLE DATA; Schema: public; Owner: ruga
--

COPY public.blogs (id, title, body, created_at, updated_at, slug, status, topic_id) FROM stdin;
11	My Blog Post 0	Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?	2023-11-21 18:13:15.646104	2023-11-21 18:13:15.646104	my-blog-post-0	0	3
12	My Blog Post 1	Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?	2023-11-21 18:13:15.65161	2023-11-21 18:13:15.65161	my-blog-post-1	0	3
13	My Blog Post 2	Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?	2023-11-21 18:13:15.654883	2023-11-21 18:13:15.654883	my-blog-post-2	0	3
14	My Blog Post 3	Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?	2023-11-21 18:13:15.658045	2023-11-21 18:13:15.658045	my-blog-post-3	0	3
16	My Blog Post 5	Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?	2023-11-21 18:13:15.664518	2023-11-21 18:13:15.664518	my-blog-post-5	0	3
17	My Blog Post 6	Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?	2023-11-21 18:13:15.667279	2023-11-21 18:13:15.667279	my-blog-post-6	0	3
18	My Blog Post 7	Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?	2023-11-21 18:13:15.670324	2023-11-21 18:13:15.670324	my-blog-post-7	0	3
19	My Blog Post 8	Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?	2023-11-21 18:13:15.673313	2023-11-21 18:13:15.673313	my-blog-post-8	0	3
20	My Blog Post 9	Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?	2023-11-21 18:13:15.676123	2023-11-21 18:13:15.676123	my-blog-post-9-7843d767-5f4f-4a3e-9cf0-ff1ade82f490	0	3
\.


--
-- Data for Name: friendly_id_slugs; Type: TABLE DATA; Schema: public; Owner: ruga
--

COPY public.friendly_id_slugs (id, slug, sluggable_id, sluggable_type, scope, created_at) FROM stdin;
\.


--
-- Data for Name: portfolios; Type: TABLE DATA; Schema: public; Owner: ruga
--

COPY public.portfolios (id, title, subtitle, body, main_image, thumb_image, created_at, updated_at, "position") FROM stdin;
1	Portfolio title: 0	Ruby on Rails	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.	http://placehold.it/600x400	http://placehold.it/350x200	2023-11-20 18:12:19.634924	2023-11-20 18:12:19.634924	\N
2	Portfolio title: 1	Ruby on Rails	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.	http://placehold.it/600x400	http://placehold.it/350x200	2023-11-20 18:12:19.637535	2023-11-20 18:12:19.637535	\N
3	Portfolio title: 2	Ruby on Rails	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.	http://placehold.it/600x400	http://placehold.it/350x200	2023-11-20 18:12:19.63932	2023-11-20 18:12:19.63932	\N
4	Portfolio title: 3	Ruby on Rails	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.	http://placehold.it/600x400	http://placehold.it/350x200	2023-11-20 18:12:19.641089	2023-11-20 18:12:19.641089	\N
5	Portfolio title: 4	Ruby on Rails	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.	http://placehold.it/600x400	http://placehold.it/350x200	2023-11-20 18:12:19.643277	2023-11-20 18:12:19.643277	\N
6	Portfolio title: 5	Ruby on Rails	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.	http://placehold.it/600x400	http://placehold.it/350x200	2023-11-20 18:12:19.64504	2023-11-20 18:12:19.64504	\N
7	Portfolio title: 6	Ruby on Rails	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.	http://placehold.it/600x400	http://placehold.it/350x200	2023-11-20 18:12:19.646813	2023-11-20 18:12:19.646813	\N
8	Portfolio title: 7	Ruby on Rails	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.	http://placehold.it/600x400	http://placehold.it/350x200	2023-11-20 18:12:19.648507	2023-11-20 18:12:19.648507	\N
9	Portfolio title: 0	Angular	Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.	http://placehold.it/600x400	http://placehold.it/350x200	2023-11-20 18:12:19.650313	2023-11-20 18:12:19.650313	\N
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: ruga
--

COPY public.schema_migrations (version) FROM stdin;
20161227214955
20161228231616
20161228234626
20161230214459
20161230214959
20161230233412
20161230233943
20161230234042
20161230234724
20161231202117
20161231202742
20161231225323
20161231233844
20170107011741
20170117235533
20170121200049
\.


--
-- Data for Name: skills; Type: TABLE DATA; Schema: public; Owner: ruga
--

COPY public.skills (id, title, percent_utilized, created_at, updated_at, badge) FROM stdin;
1	Rails 0	15	2023-11-20 18:12:19.617268	2023-11-20 18:12:19.617268	http://placehold.it/250x250
2	Rails 1	15	2023-11-20 18:12:19.619993	2023-11-20 18:12:19.619993	http://placehold.it/250x250
3	Rails 2	15	2023-11-20 18:12:19.621584	2023-11-20 18:12:19.621584	http://placehold.it/250x250
4	Rails 3	15	2023-11-20 18:12:19.623294	2023-11-20 18:12:19.623294	http://placehold.it/250x250
5	Rails 4	15	2023-11-20 18:12:19.624813	2023-11-20 18:12:19.624813	http://placehold.it/250x250
\.


--
-- Data for Name: technologies; Type: TABLE DATA; Schema: public; Owner: ruga
--

COPY public.technologies (id, name, portfolio_id, created_at, updated_at) FROM stdin;
1	Technology 0	9	2023-11-20 18:12:19.69488	2023-11-20 18:12:19.69488
2	Technology 1	9	2023-11-20 18:12:19.699041	2023-11-20 18:12:19.699041
3	Technology 2	9	2023-11-20 18:12:19.701371	2023-11-20 18:12:19.701371
\.


--
-- Data for Name: topics; Type: TABLE DATA; Schema: public; Owner: ruga
--

COPY public.topics (id, title, created_at, updated_at) FROM stdin;
1	Topic 0	2023-11-20 18:12:19.501708	2023-11-20 18:12:19.501708
2	Topic 1	2023-11-20 18:12:19.505076	2023-11-20 18:12:19.505076
3	Topic 2	2023-11-20 18:12:19.506595	2023-11-20 18:12:19.506595
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: ruga
--

COPY public.users (id, email, encrypted_password, name, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, roles) FROM stdin;
1	admin@email.com	$2a$11$49YhhYntiDDC0bh1J3s7qen76y4VrcmszBZ6w6EZQCdym3AG84Pv6	admin	\N	\N	\N	6	2023-11-21 17:41:12.850464	2023-11-21 17:35:25.352032	127.0.0.1	127.0.0.1	2023-11-21 16:20:30.493481	2023-11-21 17:41:12.850666	site_admin
\.


--
-- Name: blogs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ruga
--

SELECT pg_catalog.setval('public.blogs_id_seq', 20, true);


--
-- Name: friendly_id_slugs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ruga
--

SELECT pg_catalog.setval('public.friendly_id_slugs_id_seq', 1, false);


--
-- Name: portfolios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ruga
--

SELECT pg_catalog.setval('public.portfolios_id_seq', 9, true);


--
-- Name: skills_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ruga
--

SELECT pg_catalog.setval('public.skills_id_seq', 5, true);


--
-- Name: technologies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ruga
--

SELECT pg_catalog.setval('public.technologies_id_seq', 3, true);


--
-- Name: topics_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ruga
--

SELECT pg_catalog.setval('public.topics_id_seq', 3, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ruga
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: ruga
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: blogs blogs_pkey; Type: CONSTRAINT; Schema: public; Owner: ruga
--

ALTER TABLE ONLY public.blogs
    ADD CONSTRAINT blogs_pkey PRIMARY KEY (id);


--
-- Name: friendly_id_slugs friendly_id_slugs_pkey; Type: CONSTRAINT; Schema: public; Owner: ruga
--

ALTER TABLE ONLY public.friendly_id_slugs
    ADD CONSTRAINT friendly_id_slugs_pkey PRIMARY KEY (id);


--
-- Name: portfolios portfolios_pkey; Type: CONSTRAINT; Schema: public; Owner: ruga
--

ALTER TABLE ONLY public.portfolios
    ADD CONSTRAINT portfolios_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: ruga
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: skills skills_pkey; Type: CONSTRAINT; Schema: public; Owner: ruga
--

ALTER TABLE ONLY public.skills
    ADD CONSTRAINT skills_pkey PRIMARY KEY (id);


--
-- Name: technologies technologies_pkey; Type: CONSTRAINT; Schema: public; Owner: ruga
--

ALTER TABLE ONLY public.technologies
    ADD CONSTRAINT technologies_pkey PRIMARY KEY (id);


--
-- Name: topics topics_pkey; Type: CONSTRAINT; Schema: public; Owner: ruga
--

ALTER TABLE ONLY public.topics
    ADD CONSTRAINT topics_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: ruga
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_blogs_on_slug; Type: INDEX; Schema: public; Owner: ruga
--

CREATE UNIQUE INDEX index_blogs_on_slug ON public.blogs USING btree (slug);


--
-- Name: index_blogs_on_topic_id; Type: INDEX; Schema: public; Owner: ruga
--

CREATE INDEX index_blogs_on_topic_id ON public.blogs USING btree (topic_id);


--
-- Name: index_friendly_id_slugs_on_slug_and_sluggable_type; Type: INDEX; Schema: public; Owner: ruga
--

CREATE INDEX index_friendly_id_slugs_on_slug_and_sluggable_type ON public.friendly_id_slugs USING btree (slug, sluggable_type);


--
-- Name: index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope; Type: INDEX; Schema: public; Owner: ruga
--

CREATE UNIQUE INDEX index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope ON public.friendly_id_slugs USING btree (slug, sluggable_type, scope);


--
-- Name: index_friendly_id_slugs_on_sluggable_id; Type: INDEX; Schema: public; Owner: ruga
--

CREATE INDEX index_friendly_id_slugs_on_sluggable_id ON public.friendly_id_slugs USING btree (sluggable_id);


--
-- Name: index_friendly_id_slugs_on_sluggable_type; Type: INDEX; Schema: public; Owner: ruga
--

CREATE INDEX index_friendly_id_slugs_on_sluggable_type ON public.friendly_id_slugs USING btree (sluggable_type);


--
-- Name: index_technologies_on_portfolio_id; Type: INDEX; Schema: public; Owner: ruga
--

CREATE INDEX index_technologies_on_portfolio_id ON public.technologies USING btree (portfolio_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: ruga
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: ruga
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- Name: blogs fk_rails_7f5637ea0d; Type: FK CONSTRAINT; Schema: public; Owner: ruga
--

ALTER TABLE ONLY public.blogs
    ADD CONSTRAINT fk_rails_7f5637ea0d FOREIGN KEY (topic_id) REFERENCES public.topics(id);


--
-- Name: technologies fk_rails_cc5ab4a1c3; Type: FK CONSTRAINT; Schema: public; Owner: ruga
--

ALTER TABLE ONLY public.technologies
    ADD CONSTRAINT fk_rails_cc5ab4a1c3 FOREIGN KEY (portfolio_id) REFERENCES public.portfolios(id);


--
-- PostgreSQL database dump complete
--

