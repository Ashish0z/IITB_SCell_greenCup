PGDMP     !                	    y            iitb     13.1 (Ubuntu 13.1-1.pgdg20.04+1)     13.1 (Ubuntu 13.1-1.pgdg20.04+1) �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    237351    iitb    DATABASE     S   CREATE DATABASE iitb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_IN';
    DROP DATABASE iitb;
                postgres    false                        3079    242100    postgis 	   EXTENSION     ;   CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;
    DROP EXTENSION postgis;
                   false            �           0    0    EXTENSION postgis    COMMENT     ^   COMMENT ON EXTENSION postgis IS 'PostGIS geometry and geography spatial types and functions';
                        false    2            �            1259    237405 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    237403    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    210            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    209            �            1259    237415    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    237413    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    212            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    211            �            1259    237397    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    237395    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    208            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    207            �            1259    237423 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    237433    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    237431    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    216            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    215            �            1259    237421    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    214            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    213            �            1259    237441    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    237439 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    218            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    217            �            1259    237501    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    237499    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    220            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    219            �            1259    237387    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    237385    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    206            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    205            �            1259    237376    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    237374    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    204            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    203            �            1259    237532    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    242055    feedback_seq    SEQUENCE     u   CREATE SEQUENCE public.feedback_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.feedback_seq;
       public          postgres    false            �            1259    242057 	   grievance    TABLE     �  CREATE TABLE public.grievance (
    name character varying(50),
    email character varying(100),
    mobile bigint,
    grievance character varying(1000),
    id integer DEFAULT nextval('public.feedback_seq'::regclass) NOT NULL,
    selectzones character varying(100),
    selectlanes character varying(100),
    audio_src character varying(50),
    uploaded_at character varying(50),
    img_src character varying(50),
    grievance_no character varying(50)
);
    DROP TABLE public.grievance;
       public         heap    postgres    false    223            �            1259    242066    iit_tracksheet    TABLE     7  CREATE TABLE public.iit_tracksheet (
    id integer NOT NULL,
    hostel_name character varying(30),
    hostel_id integer,
    floor integer,
    flat_no integer,
    wing character varying(10),
    zone_id integer,
    zone_name character varying,
    waste_type character varying(50),
    categories character varying(50),
    waste_type_id character varying,
    category_id character varying,
    paper_cardboard_wt integer,
    pressurised_cans_wt integer,
    plastic_wt integer,
    metals_wt integer,
    wood_wt integer,
    vege_fruits_wt integer,
    cooked_tea_wt integer,
    bones_leftovers integer,
    egg_shells_wt integer,
    flowers_leaves_wt integer,
    sanitarywaste_wt integer,
    compostible_bioplastic_wt integer,
    dust_hair_lint integer,
    ceramics integer,
    used_battery_wt integer,
    gadgets_wires_toys_wt integer,
    appliances_laptop_mobile_wt integer,
    total_kitchen_wt integer,
    total_burnable_wt integer,
    total_landfill_wt integer,
    total_recyclable_wt integer,
    total_ewaste_wt integer,
    collection_date date
);
 "   DROP TABLE public.iit_tracksheet;
       public         heap    postgres    false            �            1259    243127    iitb_buildings    TABLE     �   CREATE TABLE public.iitb_buildings (
    id integer NOT NULL,
    geom public.geometry(PointZ,4326),
    name character varying(254),
    descriptio character varying(254)
);
 "   DROP TABLE public.iitb_buildings;
       public         heap    postgres    false    2    2    2    2    2    2    2    2            �            1259    242049    iitb_grievance    TABLE     (   CREATE TABLE public.iitb_grievance (
);
 "   DROP TABLE public.iitb_grievance;
       public         heap    postgres    false            �            1259    243137    iitb_hostel_details    TABLE     Z  CREATE TABLE public.iitb_hostel_details (
    id integer NOT NULL,
    hostel_id integer,
    hostel_name character varying(30),
    hostel_population character varying(30),
    wing character varying(10),
    description character varying(50),
    zone_id integer,
    zone_name character varying(20),
    geom public.geometry(Geometry,4326)
);
 '   DROP TABLE public.iitb_hostel_details;
       public         heap    postgres    false    2    2    2    2    2    2    2    2            �            1259    243125    iitb_hostel_details_id_seq    SEQUENCE     �   CREATE SEQUENCE public.iitb_hostel_details_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.iitb_hostel_details_id_seq;
       public          postgres    false    232            �           0    0    iitb_hostel_details_id_seq    SEQUENCE OWNED BY     T   ALTER SEQUENCE public.iitb_hostel_details_id_seq OWNED BY public.iitb_buildings.id;
          public          postgres    false    231            �            1259    237354    report    TABLE     A  CREATE TABLE public.report (
    id integer NOT NULL,
    coll_date date,
    "kitchen waste in kg" numeric,
    "burnable waste in kg" character varying,
    "landfill inside house" numeric,
    "landfill surrounding" numeric,
    "recyclable waste" numeric,
    zone_id integer,
    zone_name character varying(100)
);
    DROP TABLE public.report;
       public         heap    postgres    false            �            1259    237352    report_id_seq    SEQUENCE     �   CREATE SEQUENCE public.report_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.report_id_seq;
       public          postgres    false    202            �           0    0    report_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.report_id_seq OWNED BY public.report.id;
          public          postgres    false    201            �           2604    237408    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210            �           2604    237418    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212            �           2604    237400    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    207    208            �           2604    237426    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    214    214            �           2604    237436    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            �           2604    237444    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            �           2604    237504    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220            �           2604    237390    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    205    206            �           2604    237379    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    204    204            �           2604    243130    iitb_buildings id    DEFAULT     {   ALTER TABLE ONLY public.iitb_buildings ALTER COLUMN id SET DEFAULT nextval('public.iitb_hostel_details_id_seq'::regclass);
 @   ALTER TABLE public.iitb_buildings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    232    232            �           2604    237357 	   report id    DEFAULT     f   ALTER TABLE ONLY public.report ALTER COLUMN id SET DEFAULT nextval('public.report_id_seq'::regclass);
 8   ALTER TABLE public.report ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    202    202            �          0    237405 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    210   "�       �          0    237415    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    212   ?�       �          0    237397    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    208   \�       �          0    237423 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    214   ?�       �          0    237433    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    216   �       �          0    237441    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    218   �       �          0    237501    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    220   �       �          0    237387    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    206   ;�       �          0    237376    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    204   ��       �          0    237532    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    221   ڳ       �          0    242057 	   grievance 
   TABLE DATA           �   COPY public.grievance (name, email, mobile, grievance, id, selectzones, selectlanes, audio_src, uploaded_at, img_src, grievance_no) FROM stdin;
    public          postgres    false    224   ��       �          0    242066    iit_tracksheet 
   TABLE DATA           8  COPY public.iit_tracksheet (id, hostel_name, hostel_id, floor, flat_no, wing, zone_id, zone_name, waste_type, categories, waste_type_id, category_id, paper_cardboard_wt, pressurised_cans_wt, plastic_wt, metals_wt, wood_wt, vege_fruits_wt, cooked_tea_wt, bones_leftovers, egg_shells_wt, flowers_leaves_wt, sanitarywaste_wt, compostible_bioplastic_wt, dust_hair_lint, ceramics, used_battery_wt, gadgets_wires_toys_wt, appliances_laptop_mobile_wt, total_kitchen_wt, total_burnable_wt, total_landfill_wt, total_recyclable_wt, total_ewaste_wt, collection_date) FROM stdin;
    public          postgres    false    225   �       �          0    243127    iitb_buildings 
   TABLE DATA           D   COPY public.iitb_buildings (id, geom, name, descriptio) FROM stdin;
    public          postgres    false    232   6�       �          0    242049    iitb_grievance 
   TABLE DATA           (   COPY public.iitb_grievance  FROM stdin;
    public          postgres    false    222   h�       �          0    243137    iitb_hostel_details 
   TABLE DATA           �   COPY public.iitb_hostel_details (id, hostel_id, hostel_name, hostel_population, wing, description, zone_id, zone_name, geom) FROM stdin;
    public          postgres    false    233   ��       �          0    237354    report 
   TABLE DATA           �   COPY public.report (id, coll_date, "kitchen waste in kg", "burnable waste in kg", "landfill inside house", "landfill surrounding", "recyclable waste", zone_id, zone_name) FROM stdin;
    public          postgres    false    202   ��       �          0    242407    spatial_ref_sys 
   TABLE DATA           X   COPY public.spatial_ref_sys (srid, auth_name, auth_srid, srtext, proj4text) FROM stdin;
    public          postgres    false    227   ��       �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    209            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    211            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 72, true);
          public          postgres    false    207            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    215            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public          postgres    false    213            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    217            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          postgres    false    219            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 18, true);
          public          postgres    false    205            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 19, true);
          public          postgres    false    203            �           0    0    feedback_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.feedback_seq', 1, false);
          public          postgres    false    223            �           0    0    iitb_hostel_details_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.iitb_hostel_details_id_seq', 271, true);
          public          postgres    false    231            �           0    0    report_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.report_id_seq', 93, true);
          public          postgres    false    201                        2606    237530    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    210                       2606    237457 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    212    212                       2606    237420 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    212                       2606    237410    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    210            �           2606    237448 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    208    208            �           2606    237402 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    208                       2606    237438 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    216                       2606    237472 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    216    216            
           2606    237428    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    214                       2606    237446 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    218                       2606    237486 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    218    218                       2606    237524     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    214                       2606    237510 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    220            �           2606    237394 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    206    206            �           2606    237392 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    206            �           2606    237384 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    204                        2606    237539 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    221            %           2606    242073 "   iit_tracksheet iit_tracksheet_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.iit_tracksheet
    ADD CONSTRAINT iit_tracksheet_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.iit_tracksheet DROP CONSTRAINT iit_tracksheet_pkey;
       public            postgres    false    225            #           2606    242065    grievance iitb_feedback_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.grievance
    ADD CONSTRAINT iitb_feedback_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.grievance DROP CONSTRAINT iitb_feedback_pkey;
       public            postgres    false    224            )           2606    243132 '   iitb_buildings iitb_hostel_details_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.iitb_buildings
    ADD CONSTRAINT iitb_hostel_details_pkey PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public.iitb_buildings DROP CONSTRAINT iitb_hostel_details_pkey;
       public            postgres    false    232            +           2606    243141 $   iitb_hostel_details iitb_hostel_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.iitb_hostel_details
    ADD CONSTRAINT iitb_hostel_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.iitb_hostel_details DROP CONSTRAINT iitb_hostel_pkey;
       public            postgres    false    233            �           2606    237359    report report_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.report
    ADD CONSTRAINT report_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.report DROP CONSTRAINT report_pkey;
       public            postgres    false    202            �           1259    237531    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    210                       1259    237468 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    212                       1259    237469 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    212            �           1259    237454 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    208                       1259    237484 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    216                       1259    237483 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    216                       1259    237498 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    218                       1259    237497 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    218                       1259    237525     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    214                       1259    237521 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    220                       1259    237522 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    220                       1259    237541 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    221            !           1259    237540 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    221            .           2606    237463 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    212    3837    208            -           2606    237458 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    210    3842    212            ,           2606    237449 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    206    3832    208            0           2606    237478 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    216    3842    210            /           2606    237473 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    216    3850    214            2           2606    237492 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    208    3837    218            1           2606    237487 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    214    3850    218            3           2606    237511 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    206    220    3832            4           2606    237516 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    214    3850    220            �      x������ � �      �      x������ � �      �   �  x�u�]��0���)r�U�o��i��a5!�Y���m���<�(�����4���~:�����q;�:��خ�l�tiJB.��t�J��_�*AW�`M��8��^�P�=��>.������łiќ ���,�-
�<w.o���,*2H��=�9?ξ���#l��2Z� ���*8x-�\�d`�il���(/�Wg�w@��aZ�va��cZ��vX�Cѐ.�cOhD�lH�g��x��|y�6Mvk��epO�%�|eJ��#�>&v{��^�`�G�\$����~�C���^pϹ;]��X�������.H��9�ލ�8I�0d�c޼�� b
�Ϥ����e.��@��J���ZCU'��Ң�Ir
DU��	MȄ�N���{�X>���)��9p��s�ۣ`�����z0�t�M�G��
��j�2kDʵ�UY�S������5M&��}hK�o�íX����<*r2U�+�N��B2�n%o'7&�&v�����c�y���PX�}uu*oUӈ���M�:�Sr:N�u�Hr*��5�N%�T��`��j�L6-��$�jR��$��BT��t��x���m��ƺiN��R'�����)�"%H�cR
!"ʬN�?ﶅx�#ߖ�l����ʤ��Du�$&bG���c^��ʴ��D�-{J��H�GOA�������ở.�F;��SGk ��:��l8hV�����>~c�<�V      �   �   x�eʽ�0@�}
6��lI��?!���T	�Q�ח��﬇w�7-��Fc{L�̫���+*[�^q5:ͺȊr�
�l7�O7*�^�a�N�m�o���GX $<L�0�+�P,!J8���f�G2���~&�8���PJ���*�      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x�mP��0|^?�X��e�f�ȶ�C�_/n!.�C������J��u����TJ���`E�wpʈa?�s1
14��.�cq
$e�JӲ$pVb��)id���_.p]5��qť�w�$+����r#�������ɣ�"�zÕoc��kX�,�n��,�a
�#`�aK/�:�� ����3      �   �  x���ݎ� F�����*���c�TB(�Y$۸�N7}���T�6{Å�;3�����|�T ?��ۮ" <�>���ZԵ� @}�28Pe���E��f��b�=�~x��h����t�*�7]�Τ*����.�N�����&E�=�>�Gg/���)���iRf��d����Yw�`{�K�4mwl�N2��]4�������az�a:7\ҩ]�L1�T��L[������%Hk�)�t�gк܋
㼯J2.6S�"�)����!|����7�l���>�$�럋�E����o�� 2���G�6�������!N��p1�hz7M��fh8
!6"+D�+�t�9n�����']_�i�4>Ml4�L�İ�_#I���d!�Y�d˙1���S��|�z�jr���� �Ĺ(3����b��<��E�B��(J��IJ����G��Y�X�F)���ׇ��g�j�      �     x�=�Mo�0 ����My[�0�aqH �]$��f>�(�j�S�_���O�>t��i7�ڜ��pg����_��\p!)w�ᮞxy�����	E:H��p�N2ާ�C�K�fu��vM���;U�m)�]'S�ﺀ���]�hjj)pT"���U|�*���o�)�K�|�"'�6�w�`�����p5�=��6m��.�k������ߓ�;~�[0�����^Y%"�!�L�>rh� (����D^@�_�dI�!�6,XB���J����y?;tg�      �      x������ � �      �      x������ � �      �      x��}�r���o�)�WGw��)|��V�m�}-��ؠ%Z�4EzI���̳̓�AU��܀8��ؾ�"��3@�ɓ�D�������rxӻ^�5�YAyO��AK�=�������.��y��۫���_��hE�2Q�^KkG�V�X����*������z_^�����=�/73V��'�=uфQ~TJ+���{����*�.��#�+뽰jǹv�G�\C����j����4�G�!��Ҽ�_ƴlH������dm�2����H]�\h+Ej���r�н{��������j�*
��T)n�$f���jҸ۷�/����������r�]^����e7���r�[mn��P�F�z'{o}?�H2\
�%kM���[nn�T��!{�Y�ѥi��"$�[#Y�����*K$}E�%I3�و�� +�=s}C���~�Y���z��bFHE>g:͂�O$#zg�J��,�q�ow��2/�z��ݜ�H�!���;SlR�p��//������j�����r{�Z��R?�QRsR�s��d~�,�0Z�J��"���n�i�_�t��s����iFj~k�%^�Q)��Q����.w�lB�û��E�dI͵uT�h�Ӑ��<��k������/�0���C�nY�pFj��A2��dQ2�h�����)%v�;��j���=-ݰ�GÞ�0�^)g�L���DLCwV7����g��Ǌj@��$�''P�k �qo��={���;{����]w���;��g}Xm73R��(!�Z�K\�Ip��pU�!�P2���Ō��"h{�OhM���cC���j��Q3�B�H1��Ib��n	��q��X@���a����,7yQf�
�MF�/! ��&�VD}�s�۳7��j׽Y�������&��H��ϖ��4������%fh��Ik�!�✻ȝ���� P�hMO!9��6���h�/�њ�+����	�Q���h����gK���qw���ʞ� 58
�&�J	83���i�zbi
��]^�?�^Z�����$�&e?bt$���oޟ���~ �^���1�o7���Sp��pA�HLsS(�NQn�p-��j�����1F���v�z��]-�e��f�a��W!�Ii<�����[��ÈZ@�!d��GҘZV�Dr��2��.����������y�?�����ӌրΜxF21�@�K��-\��-��Ň��͌�p#��".F�)�j����`y��:��SxO����6c5� {@t����'2d����7�_w���6c��./��L��r�����z��7p��񷏢��XW��)���<r�Z�kH/�v���m��d��[��7_�EӃ���4G�M!��Iɍ�[�����k���p6��<���x���p!)��u�p�$)�U+�Bv����H�e��!W?��������PK�����ϯ6C��\�_�I-o���,���i���������b���z�e���DCc��
�!=��	�@�_����������j�k�"�Gzf&beB�FY����6��^]��]l�W���ݫA�[b�k#��zc�;MK�z�2�jѕ��nR�ٷ�xfR�l�#�t�ho��.�<��a��Vdxiu�yĴBAk���[alW˼�³fQ��{=�ZE̚xڛ�ԭqI��&;�ۏ����nq���[��z����e�����>�ӌW��"�XfB{G���"]�zqvy}�ݮ��G �fq�B�a�u`�%x:IT�V�̼x���Z��@����L��k����g��$���L��] )U�[?�-�O�%���1�:����O%��L�����i�D�A�`�+�¤a29�Z�~*��e��մ��W�HԜ:�>Xꄝ
tN��\���뛡�5��7K^��.����+�#�ɖ5�|Gͥ�/5�U4$iM(a���@ڜmM��~?���w�Uk���몢����IC
G��F�hE���~��>����^�d���:E]�<i����*�_^�W�\������ߗ���ֻ��=@IW98ʚ*���6�`�,1y�[\������~�<�4�k�l���f���Ξ��{������Kd$��+��~�^o�W���},�Y��@�8=�#���ź��q��B��eN�F�~V?�5��t��)��&Z4�-v2ľBAVo��*�*`���S(|����9��B }���lH��ijF��������f&��TA��Y����Yd��o�R5�����j��}��j���#��9�_�hUs.}ʛR�*�ᰣV������󻳉��~��>L��x�ڭ�����O3U�\�κ�+�P,%��4K ��; ����̻��-6t�e� �3U-��ا~`o�p�*b����mX/�ϫ?0��Lռ�Q�	���l/r=%<�������%9��?��T�Xob��>%^�*n(�4BnM0!�'�'��T�6�h ̰ɸ��
FR��yY枃���驮��w�*AL�����! B���\d�l[n��|�ax��T�󂃷3/�dDBg��Vk�u�DM_`��v���t�a}0<�H��bR9I]��SY?~8z;�5��Q#�&��h�U�Xڬ���������f�h<�5gR�%&��g� T53iBnL:����������R0.����܇;�M$�s��~?N��������k�B���S�rޒ�v�/�������!�����bL���Y�K�b��,u;���k�5h�e� �	�b��,�,�w <��՜80�iIMԓ����V$�Zn6�~�}�=t?"������Ԝ��L�)����B9�Z��(������,�|�-43�*�������O�������a�o�?r�����T=##r�,�䩅ٗ��q��o����TK� i/3�XN�Z;P�f�|��/Ɵc���[��@�nr�sU��~�9������|?�DI
TN�n(L�V�<�������2���'����]$[�q�y�������E�<C��Qܦi���5����7s ���4��p��v@��t�/a�z��bKem���b�Z��jX���a��y�����W[LUCl�� �H��^��/ �Xf;{�d�b������Ν�7�۫ξ���������I��
�´@��h��W6����7�U�LZ��K�^�	!n	�z|z=�\=,֐Z�|� '��J��먣u��5?�����(ȭ&����&����j������;>%�S�ɯ��
�����{��6�d��۲��D���֖9��
G�ϑ���,��S�D��`�}�����f����������K(��i	;1r��ĝ^����w�茀vv�e�wo��ɏ��H_�kda��Y��+���	��?�_�7������TT�d�+!; ��hd���{,�������T�(OTn�C���_y�>M���I�B3���I�A������#0��F���e�6��O��H\YI�)�#�w+���>O�����c7GȤ�!Ǆd�@մ��D�+%L��M�7�}g�V�sG@v��:j������3C�N������O�9}-9�{�Q�{�����W]����r�����ݻ���Uw�x�ax]�!���w��OI���f�g����7L�U{h�����0��p	1�!���j����an�]Z/��v���%�� A�"�d�.��ds����Au1Go!��w���FFO��1�H.o�B���v��̒�ˡs%�Xo�@O�+����lm
����؆K��8WO��q*��ؕ�4W�"k����	���3�c�AP��c�a��ۅ#��p��M'e#�� �id�L�q�[n6��n�C��ִ�T3���[B�A(�Ъ��[�.9;1�<�����P�j7[B!�O��2�bP&�CB)�Vݐb�����i$梵V�\���}k� Hi/��a�@v�� �>��k{�g\mL{�)�qB���fF��,OI��D����l�3d�y���#�0�j�Y@v�T��wJѶ��Xn�5w�   )(�*Hڧބ�i��9l�����f&��TⰏ��S�0���Z �~X-�qd��nS�>Ц��4n�%͛f���˝��s�[��\�N��7峀LGB`-��r�H� ��v���:�,�}��萔6�Ry,���W���4xSw�^�}K��r�i���'s�k���d2Sad��L|�����y��IK�v\�VY�hV�0<��	}H�a?�:��d]�g���`Z��F��F��E�V[��r� �a�RDP��\��"uD���ڲ��7^jF'_fܹmັJ�7����躰��ꮖ�M��)TVSb��
���*��m�!/�H�-�A�y� t�>̨	�b�lcF�<���s}���ը��6��[�(52BR�h+���m���16�<���C����(uV[&CN�5`t��jc�x���DY>h�.�����g�͟+}u�
�f��U���!�RP9��`�!��O�E/�7�1�����#����� S=s���p���'� ��`�+��bHNM*äv�Y��+Lj�?�2�*�m�>q��)��e�R�f���r��'�&��܉�[�xP:�lI�=�j�BV��v��2jN
%�(��@��Y���hHL*1 ܃GB��,�H�g�0'�͊������x��/�?�>���LQ,�	PP� %�ĝ�ԝ��CFP�6:j+/u:�<�A�M�GO����U�+��Q	1Mc 猂�(Z�'�Z���&R��Y��Lٓ����D������M����\��޻^'K�-D�7��rfsbdRN\�hs�
oD.]���4���V����Em�)��Sme���$������󦅜���Ps	�v���T�Tv^�IHIr鯡L�P��<��zO���Ѕ)�5�w���TTggyѪp���I���h���툲Bj����>�Kq��[���
]�X*xp���&˄���P�u(\ߎ�'�n����,������(e 8F�2�C�P/���U��;�Ӣ���s�[FvP*_���pTop�<��&L1���&� ����q��o�zO�m �w��[�x��_
���5ܷ�gU�WRO*P������_����R�[��`;վ9����L�!�H�,s��E	-�4�sB�zծ:�\���+26�L��%���sg6奈&㞺�V������-_Cq6���6�)�1������w����+p��e�@߫#��<�����(�M_��!��N�1O��L��(r��5���6]m�J*�-2��`=ѩf}�?I�/�����%bqϥ#�I�o=/�V������b��"�����n�[��v�|z	�����j�^p�ع�=H��).Z㒕�"
���Ζ'��gg*�挩?K�����L/\,�3d@����;�"�Z��!g[��B��泎�U�ڼ�,?����}V[�@ӑ�#��km@�}�>�������(;�-'��
�P[��ӶG��C�nwv�)�[=W���{�Z߮v���R�� ��j�X:S��� �RA��\h���~���49laT��&:C�=�1T�dKU{�88W�wV3E:�� ���^��*L�y6���G�����	%@,nˈ�Usj�.�8xpy0��"����(��ØxC�����P��	쬹��Ks��T��t/�O&���s=�ĵ���']��r�W�v�e�ץ���U�4k��'/�B!|ն�o����֚�x[�Ĺ�~X��E�+��|�XG����LT����@ǥE�7%/�[�C����	}A�X����!���V��EA��I��w�_h� ��Q��YP�	)�䛇��49�n�l�1����2�He���*`h�P��tS���<��e�|�d
��֔xӞ{!�2�S��=ɧ�)�?���6������f.��V��@�u�+��SPƵm#Z����;Zo�X��z9�`hd<�&��`��ih�ov ����I���ji�s�Φ��uUZ�	tLb:�����68�:u〜MM��p��o-��0@e����h�$D�B�Tl��G������x��V���X��?�E ؐ�o>�Ǿ��m��ۿ�Rk./M�i[΋E����-���@$���jS �g<�e�{��1�7{�}a%U�������i!�y��T+X:��h��~ ��l�ᤝ���4;�F���aD�NA�$M������\�6�o)b��$�5w�yn�4�������='}��;f2�Վ�$��:;E_��.,�ٳ&^X�O`�j� ��b]g����q��ugڊ��3�}�u�=�����^��)P�m(�����n�z�3xx��/?,n�֝�:K<&�cM��=�W���2i7l¬XHw-�y����	"�����)���g�J��P\�*G\ �`�cS��c秗�6���j�L(�#L� c��inz��j?4VN +��I��:�Uj���-���@�e�jG�w	�T�Ó��>��T*��=v���ҫ������])u�)�<������������7F�8K�*��%2J#c�hа>az����@Ҝ.ʓec�C$[�iivz����Q6"X�r��'z|HO�`+y>3��dz�%�5�B�{�'V��A�[nANlA����J���D�� x����H5����6��Y�lh5�G2%��O,5(&���eh��v ��)h�3Qs$�y���7��������IİjǢvL�)����KK�o�Ҡ��}'<����NT��`����S�zD͡�j@��aQ�07yno0�1�:�p�B^�N�^� ��y!�[�Ar�^i(�΄�7!㠘����5�&��� I�Ώ�#��+��[1��t��^?Zm��2М8�CsN$�I��$���:h��)L�������#�K���q�h2��j��- PR#χ~b[��)�!��Ւ���ה��������M����j[%9�ݗ���dT~FE�P=�ZB��V+M^�(K�f$&ErWM{FO� � �j_%�*2���Pj���&-3�'�:cVW�Ø���_�"H*)�L�^��sp���"Xc��r�I�@�r�Ŋ\�U�-�<Lr�?��8�ƌP�I�R�Ƌƺ����3�ܡ�0I���~��p���3��^�S�<uB�j�$ѽ�k��S��Hj
����YX~|���r/�r����d����]lV�1>V�V{&=1}���4����-�G`��-��׳(����k`E)m�8����������n�� ����q��|3���H��I�(�& �D1�~[mn�.z�����R�k ��{\(�-k>�DL�Z�g-5 Xe'0�$�Zw3k8�� �z�·H˶��6����ry��ħ���3�!d�WFf��K�����z�B�0�Bl��q.���;M�4���2�Q�+�[}b���^�V��s!,-���
��CMR�嘍��R�<�%�O{�ޘ�*	�|�M�R��g�G'���U�i|J9��O��jhh�lK�\Ěj�!1B	Or��D3���cY����¨�����L�]3J�hR���\3���_�!�m�������P)[�f��)�PRmTZ� �+\���d��͎�Bx��?%B䦗B:)	�C���;�.OF��ُ̫W�4�>6�����I+5��r���?�ԋ:'|Q"�i�i���ad�Yk,��=(����p�(�?)��g=�ݩy��YՆ�dUH)��
H�!�0�Ώm.M^�J�P<���>A���]*k:<����㺷�/�=�W�|5�ն@��F��KG�
��Øl��O� sD$h�� ��5EZ����-���*��__�f��{�
~      �      x������ � �      �      x������ � �      �   :  x�u�=��7�k�)r�D}��Ҥu�"�����K�d��e����H�?rĕTK��2?e&���_?S+��i$I�����_������|TjW�����z6
��R=�����Ԟ�r=ۮ������?I*�-�@'���$�0�R޵�ڊ;�;�P7�iu\�Pc�ҎRIn�\B���F%��A-T+2����nB�ZҮAW�C�3h�M��V6��=^Lp� nm"5ʉO�K$��X�<!��"ZmBˢh�3z�/�Uٴ�Qk$E���e��BK=r�C�1����y[(;�I��p"E���8$�P=�#bŶ0J̳V�ʲ��k�z��F�F��.��)=V�aq���[��u%�!�eg.�XITˍRc(�'*��$��z$�Q�yI�8�nm��IQ;AN����6����L�,�P����B��<�G�ٜ���a#K�ٔ|��k�-^L�(քjK]" JX*��_��<�5%U�l��\�`�Hh$Y/O �U���ͬ,� &<kY��pk�Ft�֩���hSX���U�G����a'<x+b^ٞ�S^�I�<�i�3c$$X��u6�+�|'C�����i�4� �az�5������D6B�Q��ݟ7l��e6u�` �7��l�l�1Fr(n����^��99����n��-��3�<�bO��s&QZ)Ee0N��@�p�ݙT���F��ڧy�x�C�Ơ���g�����C����v������
���ALz�a�w�Az�Ļ�$LLp�Iz�:�ÛYn��M�v#�)���j��ҹlz�1��e��:L�C#N=��U�d�=���£���k��_>Oh�Ylg�	{�I�44ޕ��ݵy-����.�2�E*g����𷮥�S�.%�:ݠV���]HJ��=�i\n$���5����.B23�U��*�ȨY��V��D�4B�I�}�x��;����Mj���B������-v�L(��v�r ��-��(������;;�5Z�ܣtP��Y��kJ��c��oSZ/�?�����}�{���lb�t{�b �����'��!&�c���#������ޯ$&��hw�g��k����]�n      �      x������ � �     