PGDMP     %    (                y            ikoshel_db_17 #   12.6 (Ubuntu 12.6-0ubuntu0.20.04.1)    12.2 8    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16622    ikoshel_db_17    DATABASE        CREATE DATABASE ikoshel_db_17 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE ikoshel_db_17;
                postgres    false            �           0    0    DATABASE ikoshel_db_17    ACL     3   GRANT ALL ON DATABASE ikoshel_db_17 TO ikoshel_17;
                   postgres    false    2994                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    3            �            1259    18287 	   countries    TABLE     e   CREATE TABLE public.countries (
    id smallint NOT NULL,
    country_title character varying(20)
);
    DROP TABLE public.countries;
       public         heap 
   ikoshel_17    false    3            �            1259    18285    countries_id_seq    SEQUENCE     �   CREATE SEQUENCE public.countries_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.countries_id_seq;
       public       
   ikoshel_17    false    203    3            �           0    0    countries_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.countries_id_seq OWNED BY public.countries.id;
          public       
   ikoshel_17    false    202            �            1259    18379    payment_systems    TABLE     j   CREATE TABLE public.payment_systems (
    id smallint NOT NULL,
    system_title character varying(20)
);
 #   DROP TABLE public.payment_systems;
       public         heap 
   ikoshel_17    false    3            �            1259    18377    payment_systems_id_seq    SEQUENCE     �   CREATE SEQUENCE public.payment_systems_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.payment_systems_id_seq;
       public       
   ikoshel_17    false    213    3            �           0    0    payment_systems_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.payment_systems_id_seq OWNED BY public.payment_systems.id;
          public       
   ikoshel_17    false    212            �            1259    18297 	   qa_groups    TABLE     c   CREATE TABLE public.qa_groups (
    id smallint NOT NULL,
    group_title character varying(20)
);
    DROP TABLE public.qa_groups;
       public         heap 
   ikoshel_17    false    3            �            1259    18343    qa_groups_group    TABLE     �   CREATE TABLE public.qa_groups_group (
    id smallint NOT NULL,
    user_id character varying(20),
    qa_group_id character varying(20)
);
 #   DROP TABLE public.qa_groups_group;
       public         heap 
   ikoshel_17    false    3            �            1259    18341    qa_groups_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.qa_groups_group_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.qa_groups_group_id_seq;
       public       
   ikoshel_17    false    209    3            �           0    0    qa_groups_group_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.qa_groups_group_id_seq OWNED BY public.qa_groups_group.id;
          public       
   ikoshel_17    false    208            �            1259    18295    qa_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.qa_groups_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.qa_groups_id_seq;
       public       
   ikoshel_17    false    3    205            �           0    0    qa_groups_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.qa_groups_id_seq OWNED BY public.qa_groups.id;
          public       
   ikoshel_17    false    204            �            1259    18335    qa_padawans    TABLE     3  CREATE TABLE public.qa_padawans (
    id smallint NOT NULL,
    name character varying(20),
    age integer,
    future_salary integer,
    country character varying(20),
    city character varying(20),
    email character varying(20),
    phone character varying(20),
    qa_group character varying(20)
);
    DROP TABLE public.qa_padawans;
       public         heap 
   ikoshel_17    false    3            �            1259    18333    qa_padawans_id_seq    SEQUENCE     �   CREATE SEQUENCE public.qa_padawans_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.qa_padawans_id_seq;
       public       
   ikoshel_17    false    3    207            �           0    0    qa_padawans_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.qa_padawans_id_seq OWNED BY public.qa_padawans.id;
          public       
   ikoshel_17    false    206            �            1259    18371    transactions    TABLE     �   CREATE TABLE public.transactions (
    id smallint NOT NULL,
    user_id character varying(20),
    payment_system_id character varying(20),
    money integer,
    date character varying(20)
);
     DROP TABLE public.transactions;
       public         heap 
   ikoshel_17    false    3            �            1259    18369    transactions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.transactions_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.transactions_id_seq;
       public       
   ikoshel_17    false    211    3            �           0    0    transactions_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.transactions_id_seq OWNED BY public.transactions.id;
          public       
   ikoshel_17    false    210            
           2604    18290    countries id    DEFAULT     l   ALTER TABLE ONLY public.countries ALTER COLUMN id SET DEFAULT nextval('public.countries_id_seq'::regclass);
 ;   ALTER TABLE public.countries ALTER COLUMN id DROP DEFAULT;
       public       
   ikoshel_17    false    202    203    203                       2604    18382    payment_systems id    DEFAULT     x   ALTER TABLE ONLY public.payment_systems ALTER COLUMN id SET DEFAULT nextval('public.payment_systems_id_seq'::regclass);
 A   ALTER TABLE public.payment_systems ALTER COLUMN id DROP DEFAULT;
       public       
   ikoshel_17    false    212    213    213                       2604    18300    qa_groups id    DEFAULT     l   ALTER TABLE ONLY public.qa_groups ALTER COLUMN id SET DEFAULT nextval('public.qa_groups_id_seq'::regclass);
 ;   ALTER TABLE public.qa_groups ALTER COLUMN id DROP DEFAULT;
       public       
   ikoshel_17    false    205    204    205                       2604    18346    qa_groups_group id    DEFAULT     x   ALTER TABLE ONLY public.qa_groups_group ALTER COLUMN id SET DEFAULT nextval('public.qa_groups_group_id_seq'::regclass);
 A   ALTER TABLE public.qa_groups_group ALTER COLUMN id DROP DEFAULT;
       public       
   ikoshel_17    false    209    208    209                       2604    18338    qa_padawans id    DEFAULT     p   ALTER TABLE ONLY public.qa_padawans ALTER COLUMN id SET DEFAULT nextval('public.qa_padawans_id_seq'::regclass);
 =   ALTER TABLE public.qa_padawans ALTER COLUMN id DROP DEFAULT;
       public       
   ikoshel_17    false    207    206    207                       2604    18374    transactions id    DEFAULT     r   ALTER TABLE ONLY public.transactions ALTER COLUMN id SET DEFAULT nextval('public.transactions_id_seq'::regclass);
 >   ALTER TABLE public.transactions ALTER COLUMN id DROP DEFAULT;
       public       
   ikoshel_17    false    211    210    211            �          0    18287 	   countries 
   TABLE DATA           6   COPY public.countries (id, country_title) FROM stdin;
    public       
   ikoshel_17    false    203            �          0    18379    payment_systems 
   TABLE DATA           ;   COPY public.payment_systems (id, system_title) FROM stdin;
    public       
   ikoshel_17    false    213            �          0    18297 	   qa_groups 
   TABLE DATA           4   COPY public.qa_groups (id, group_title) FROM stdin;
    public       
   ikoshel_17    false    205            �          0    18343    qa_groups_group 
   TABLE DATA           C   COPY public.qa_groups_group (id, user_id, qa_group_id) FROM stdin;
    public       
   ikoshel_17    false    209            �          0    18335    qa_padawans 
   TABLE DATA           j   COPY public.qa_padawans (id, name, age, future_salary, country, city, email, phone, qa_group) FROM stdin;
    public       
   ikoshel_17    false    207            �          0    18371    transactions 
   TABLE DATA           S   COPY public.transactions (id, user_id, payment_system_id, money, date) FROM stdin;
    public       
   ikoshel_17    false    211            �           0    0    countries_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.countries_id_seq', 1, true);
          public       
   ikoshel_17    false    202            �           0    0    payment_systems_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.payment_systems_id_seq', 1, true);
          public       
   ikoshel_17    false    212            �           0    0    qa_groups_group_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.qa_groups_group_id_seq', 1, true);
          public       
   ikoshel_17    false    208            �           0    0    qa_groups_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.qa_groups_id_seq', 1, true);
          public       
   ikoshel_17    false    204            �           0    0    qa_padawans_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.qa_padawans_id_seq', 1, true);
          public       
   ikoshel_17    false    206            �           0    0    transactions_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.transactions_id_seq', 1, true);
          public       
   ikoshel_17    false    210                       2606    18292    countries countries_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.countries DROP CONSTRAINT countries_pkey;
       public         
   ikoshel_17    false    203                       2606    18384 $   payment_systems payment_systems_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.payment_systems
    ADD CONSTRAINT payment_systems_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.payment_systems DROP CONSTRAINT payment_systems_pkey;
       public         
   ikoshel_17    false    213                       2606    18348 $   qa_groups_group qa_groups_group_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.qa_groups_group
    ADD CONSTRAINT qa_groups_group_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.qa_groups_group DROP CONSTRAINT qa_groups_group_pkey;
       public         
   ikoshel_17    false    209                       2606    18302    qa_groups qa_groups_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.qa_groups
    ADD CONSTRAINT qa_groups_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.qa_groups DROP CONSTRAINT qa_groups_pkey;
       public         
   ikoshel_17    false    205                       2606    18340    qa_padawans qa_padawans_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.qa_padawans
    ADD CONSTRAINT qa_padawans_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.qa_padawans DROP CONSTRAINT qa_padawans_pkey;
       public         
   ikoshel_17    false    207                       2606    18376    transactions transactions_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.transactions DROP CONSTRAINT transactions_pkey;
       public         
   ikoshel_17    false    211                       2606    18364    countries countries_fk    FK CONSTRAINT     v   ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_fk FOREIGN KEY (id) REFERENCES public.qa_padawans(id);
 @   ALTER TABLE ONLY public.countries DROP CONSTRAINT countries_fk;
       public       
   ikoshel_17    false    207    203    2837                       2606    18359    qa_groups qa_groups_fk    FK CONSTRAINT     z   ALTER TABLE ONLY public.qa_groups
    ADD CONSTRAINT qa_groups_fk FOREIGN KEY (id) REFERENCES public.qa_groups_group(id);
 @   ALTER TABLE ONLY public.qa_groups DROP CONSTRAINT qa_groups_fk;
       public       
   ikoshel_17    false    209    205    2839                        2606    18354 "   qa_groups_group qa_groups_group_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.qa_groups_group
    ADD CONSTRAINT qa_groups_group_fk FOREIGN KEY (id) REFERENCES public.qa_groups(id);
 L   ALTER TABLE ONLY public.qa_groups_group DROP CONSTRAINT qa_groups_group_fk;
       public       
   ikoshel_17    false    2835    209    205                       2606    18395    qa_padawans qa_padawans    FK CONSTRAINT     x   ALTER TABLE ONLY public.qa_padawans
    ADD CONSTRAINT qa_padawans FOREIGN KEY (id) REFERENCES public.transactions(id);
 A   ALTER TABLE ONLY public.qa_padawans DROP CONSTRAINT qa_padawans;
       public       
   ikoshel_17    false    2841    207    211                       2606    18349    qa_padawans qa_padawans_fk    FK CONSTRAINT     ~   ALTER TABLE ONLY public.qa_padawans
    ADD CONSTRAINT qa_padawans_fk FOREIGN KEY (id) REFERENCES public.qa_groups_group(id);
 D   ALTER TABLE ONLY public.qa_padawans DROP CONSTRAINT qa_padawans_fk;
       public       
   ikoshel_17    false    207    209    2839            "           2606    18390    transactions transactions    FK CONSTRAINT     y   ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions FOREIGN KEY (id) REFERENCES public.qa_padawans(id);
 C   ALTER TABLE ONLY public.transactions DROP CONSTRAINT transactions;
       public       
   ikoshel_17    false    211    2837    207            !           2606    18385    transactions transactions_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_fk FOREIGN KEY (id) REFERENCES public.payment_systems(id);
 F   ALTER TABLE ONLY public.transactions DROP CONSTRAINT transactions_fk;
       public       
   ikoshel_17    false    213    2843    211            �      x�3�tJ�I,*-����� !��      �      x�3�0�{/������ E�      �      x�3�t�74����� WF      �      x�3����/�H͉74�t�\1z\\\ X      �   Q   x�3��,��K�4��4200�tJ�I,*-����+���,��/�H�q�M���+*��667�0��4*677�t�74����� �      �   ?   x�3����/�H͉74�0�{/�0Ho�� &�/6qZ�r���r��qqq ?��      8    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16622    ikoshel_db_17    DATABASE        CREATE DATABASE ikoshel_db_17 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE ikoshel_db_17;
                postgres    false            �           0    0    DATABASE ikoshel_db_17    ACL     3   GRANT ALL ON DATABASE ikoshel_db_17 TO ikoshel_17;
                   postgres    false    2994                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    3            �            1259    18287 	   countries    TABLE     e   CREATE TABLE public.countries (
    id smallint NOT NULL,
    country_title character varying(20)
);
    DROP TABLE public.countries;
       public         heap 
   ikoshel_17    false    3            �            1259    18285    countries_id_seq    SEQUENCE     �   CREATE SEQUENCE public.countries_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.countries_id_seq;
       public       
   ikoshel_17    false    203    3            �           0    0    countries_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.countries_id_seq OWNED BY public.countries.id;
          public       
   ikoshel_17    false    202            �            1259    18379    payment_systems    TABLE     j   CREATE TABLE public.payment_systems (
    id smallint NOT NULL,
    system_title character varying(20)
);
 #   DROP TABLE public.payment_systems;
       public         heap 
   ikoshel_17    false    3            �            1259    18377    payment_systems_id_seq    SEQUENCE     �   CREATE SEQUENCE public.payment_systems_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.payment_systems_id_seq;
       public       
   ikoshel_17    false    213    3            �           0    0    payment_systems_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.payment_systems_id_seq OWNED BY public.payment_systems.id;
          public       
   ikoshel_17    false    212            �            1259    18297 	   qa_groups    TABLE     c   CREATE TABLE public.qa_groups (
    id smallint NOT NULL,
    group_title character varying(20)
);
    DROP TABLE public.qa_groups;
       public         heap 
   ikoshel_17    false    3            �            1259    18343    qa_groups_group    TABLE     �   CREATE TABLE public.qa_groups_group (
    id smallint NOT NULL,
    user_id character varying(20),
    qa_group_id character varying(20)
);
 #   DROP TABLE public.qa_groups_group;
       public         heap 
   ikoshel_17    false    3            �            1259    18341    qa_groups_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.qa_groups_group_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.qa_groups_group_id_seq;
       public       
   ikoshel_17    false    209    3            �           0    0    qa_groups_group_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.qa_groups_group_id_seq OWNED BY public.qa_groups_group.id;
          public       
   ikoshel_17    false    208            �            1259    18295    qa_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.qa_groups_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.qa_groups_id_seq;
       public       
   ikoshel_17    false    3    205            �           0    0    qa_groups_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.qa_groups_id_seq OWNED BY public.qa_groups.id;
          public       
   ikoshel_17    false    204            �            1259    18335    qa_padawans    TABLE     3  CREATE TABLE public.qa_padawans (
    id smallint NOT NULL,
    name character varying(20),
    age integer,
    future_salary integer,
    country character varying(20),
    city character varying(20),
    email character varying(20),
    phone character varying(20),
    qa_group character varying(20)
);
    DROP TABLE public.qa_padawans;
       public         heap 
   ikoshel_17    false    3            �            1259    18333    qa_padawans_id_seq    SEQUENCE     �   CREATE SEQUENCE public.qa_padawans_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.qa_padawans_id_seq;
       public       
   ikoshel_17    false    3    207            �           0    0    qa_padawans_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.qa_padawans_id_seq OWNED BY public.qa_padawans.id;
          public       
   ikoshel_17    false    206            �            1259    18371    transactions    TABLE     �   CREATE TABLE public.transactions (
    id smallint NOT NULL,
    user_id character varying(20),
    payment_system_id character varying(20),
    money integer,
    date character varying(20)
);
     DROP TABLE public.transactions;
       public         heap 
   ikoshel_17    false    3            �            1259    18369    transactions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.transactions_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.transactions_id_seq;
       public       
   ikoshel_17    false    211    3            �           0    0    transactions_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.transactions_id_seq OWNED BY public.transactions.id;
          public       
   ikoshel_17    false    210            
           2604    18290    countries id    DEFAULT     l   ALTER TABLE ONLY public.countries ALTER COLUMN id SET DEFAULT nextval('public.countries_id_seq'::regclass);
 ;   ALTER TABLE public.countries ALTER COLUMN id DROP DEFAULT;
       public       
   ikoshel_17    false    202    203    203                       2604    18382    payment_systems id    DEFAULT     x   ALTER TABLE ONLY public.payment_systems ALTER COLUMN id SET DEFAULT nextval('public.payment_systems_id_seq'::regclass);
 A   ALTER TABLE public.payment_systems ALTER COLUMN id DROP DEFAULT;
       public       
   ikoshel_17    false    212    213    213                       2604    18300    qa_groups id    DEFAULT     l   ALTER TABLE ONLY public.qa_groups ALTER COLUMN id SET DEFAULT nextval('public.qa_groups_id_seq'::regclass);
 ;   ALTER TABLE public.qa_groups ALTER COLUMN id DROP DEFAULT;
       public       
   ikoshel_17    false    205    204    205                       2604    18346    qa_groups_group id    DEFAULT     x   ALTER TABLE ONLY public.qa_groups_group ALTER COLUMN id SET DEFAULT nextval('public.qa_groups_group_id_seq'::regclass);
 A   ALTER TABLE public.qa_groups_group ALTER COLUMN id DROP DEFAULT;
       public       
   ikoshel_17    false    209    208    209                       2604    18338    qa_padawans id    DEFAULT     p   ALTER TABLE ONLY public.qa_padawans ALTER COLUMN id SET DEFAULT nextval('public.qa_padawans_id_seq'::regclass);
 =   ALTER TABLE public.qa_padawans ALTER COLUMN id DROP DEFAULT;
       public       
   ikoshel_17    false    207    206    207                       2604    18374    transactions id    DEFAULT     r   ALTER TABLE ONLY public.transactions ALTER COLUMN id SET DEFAULT nextval('public.transactions_id_seq'::regclass);
 >   ALTER TABLE public.transactions ALTER COLUMN id DROP DEFAULT;
       public       
   ikoshel_17    false    211    210    211            �          0    18287 	   countries 
   TABLE DATA           6   COPY public.countries (id, country_title) FROM stdin;
    public       
   ikoshel_17    false    203            �          0    18379    payment_systems 
   TABLE DATA           ;   COPY public.payment_systems (id, system_title) FROM stdin;
    public       
   ikoshel_17    false    213   !        �          0    18297 	   qa_groups 
   TABLE DATA           4   COPY public.qa_groups (id, group_title) FROM stdin;
    public       
   ikoshel_17    false    205   #        �          0    18343    qa_groups_group 
   TABLE DATA           C   COPY public.qa_groups_group (id, user_id, qa_group_id) FROM stdin;
    public       
   ikoshel_17    false    209           �          0    18335    qa_padawans 
   TABLE DATA           j   COPY public.qa_padawans (id, name, age, future_salary, country, city, email, phone, qa_group) FROM stdin;
    public       
   ikoshel_17    false    207   (        �          0    18371    transactions 
   TABLE DATA           S   COPY public.transactions (id, user_id, payment_system_id, money, date) FROM stdin;
    public       
   ikoshel_17    false    211   [        �           0    0    countries_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.countries_id_seq', 1, true);
          public       
   ikoshel_17    false    202            �           0    0    payment_systems_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.payment_systems_id_seq', 1, true);
          public       
   ikoshel_17    false    212            �           0    0    qa_groups_group_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.qa_groups_group_id_seq', 1, true);
          public       
   ikoshel_17    false    208            �           0    0    qa_groups_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.qa_groups_id_seq', 1, true);
          public       
   ikoshel_17    false    204            �           0    0    qa_padawans_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.qa_padawans_id_seq', 1, true);
          public       
   ikoshel_17    false    206            �           0    0    transactions_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.transactions_id_seq', 1, true);
          public       
   ikoshel_17    false    210                       2606    18292    countries countries_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.countries DROP CONSTRAINT countries_pkey;
       public         
   ikoshel_17    false    203                       2606    18384 $   payment_systems payment_systems_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.payment_systems
    ADD CONSTRAINT payment_systems_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.payment_systems DROP CONSTRAINT payment_systems_pkey;
       public         
   ikoshel_17    false    213                       2606    18348 $   qa_groups_group qa_groups_group_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.qa_groups_group
    ADD CONSTRAINT qa_groups_group_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.qa_groups_group DROP CONSTRAINT qa_groups_group_pkey;
       public         
   ikoshel_17    false    209                       2606    18302    qa_groups qa_groups_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.qa_groups
    ADD CONSTRAINT qa_groups_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.qa_groups DROP CONSTRAINT qa_groups_pkey;
       public         
   ikoshel_17    false    205                       2606    18340    qa_padawans qa_padawans_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.qa_padawans
    ADD CONSTRAINT qa_padawans_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.qa_padawans DROP CONSTRAINT qa_padawans_pkey;
       public         
   ikoshel_17    false    207                       2606    18376    transactions transactions_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.transactions DROP CONSTRAINT transactions_pkey;
       public         
   ikoshel_17    false    211                       2606    18364    countries countries_fk    FK CONSTRAINT     v   ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_fk FOREIGN KEY (id) REFERENCES public.qa_padawans(id);
 @   ALTER TABLE ONLY public.countries DROP CONSTRAINT countries_fk;
       public       
   ikoshel_17    false    207    203    2837                       2606    18359    qa_groups qa_groups_fk    FK CONSTRAINT     z   ALTER TABLE ONLY public.qa_groups
    ADD CONSTRAINT qa_groups_fk FOREIGN KEY (id) REFERENCES public.qa_groups_group(id);
 @   ALTER TABLE ONLY public.qa_groups DROP CONSTRAINT qa_groups_fk;
       public       
   ikoshel_17    false    209    205    2839                        2606    18354 "   qa_groups_group qa_groups_group_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.qa_groups_group
    ADD CONSTRAINT qa_groups_group_fk FOREIGN KEY (id) REFERENCES public.qa_groups(id);
 L   ALTER TABLE ONLY public.qa_groups_group DROP CONSTRAINT qa_groups_group_fk;
       public       
   ikoshel_17    false    2835    209    205                       2606    18395    qa_padawans qa_padawans    FK CONSTRAINT     x   ALTER TABLE ONLY public.qa_padawans
    ADD CONSTRAINT qa_padawans FOREIGN KEY (id) REFERENCES public.transactions(id);
 A   ALTER TABLE ONLY public.qa_padawans DROP CONSTRAINT qa_padawans;
       public       
   ikoshel_17    false    2841    207    211                       2606    18349    qa_padawans qa_padawans_fk    FK CONSTRAINT     ~   ALTER TABLE ONLY public.qa_padawans
    ADD CONSTRAINT qa_padawans_fk FOREIGN KEY (id) REFERENCES public.qa_groups_group(id);
 D   ALTER TABLE ONLY public.qa_padawans DROP CONSTRAINT qa_padawans_fk;
       public       
   ikoshel_17    false    207    209    2839            "           2606    18390    transactions transactions    FK CONSTRAINT     y   ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions FOREIGN KEY (id) REFERENCES public.qa_padawans(id);
 C   ALTER TABLE ONLY public.transactions DROP CONSTRAINT transactions;
       public       
   ikoshel_17    false    211    2837    207            !           2606    18385    transactions transactions_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_fk FOREIGN KEY (id) REFERENCES public.payment_systems(id);
 F   ALTER TABLE ONLY public.transactions DROP CONSTRAINT transactions_fk;
       public       
   ikoshel_17    false    213    2843    211           