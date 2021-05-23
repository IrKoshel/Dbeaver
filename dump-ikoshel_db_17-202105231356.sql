PGDMP     1    8                y            ikoshel_db_17 #   12.6 (Ubuntu 12.6-0ubuntu0.20.04.1)    12.2 0    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16622    ikoshel_db_17    DATABASE        CREATE DATABASE ikoshel_db_17 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE ikoshel_db_17;
                postgres    false            �           0    0    DATABASE ikoshel_db_17    ACL     3   GRANT ALL ON DATABASE ikoshel_db_17 TO ikoshel_17;
                   postgres    false    2990                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    3            �            1259    18950 	   countries    TABLE     r   CREATE TABLE public.countries (
    id character varying(20) NOT NULL,
    country_title character varying(20)
);
    DROP TABLE public.countries;
       public         heap 
   ikoshel_17    false    3            �            1259    19002    payment_systems    TABLE     w   CREATE TABLE public.payment_systems (
    id character varying(20) NOT NULL,
    system_title character varying(20)
);
 #   DROP TABLE public.payment_systems;
       public         heap 
   ikoshel_17    false    3            �            1259    18955 	   qa_groups    TABLE     p   CREATE TABLE public.qa_groups (
    id character varying(20) NOT NULL,
    group_title character varying(20)
);
    DROP TABLE public.qa_groups;
       public         heap 
   ikoshel_17    false    3            �            1259    19014    qa_padawans    TABLE     V  CREATE TABLE public.qa_padawans (
    id smallint NOT NULL,
    name character varying(20),
    age integer,
    future_salary integer,
    country character varying(20),
    city character varying(20),
    email character varying(20),
    phone character varying(20),
    qa_group character varying(20),
    user_id character varying(20)
);
    DROP TABLE public.qa_padawans;
       public         heap 
   ikoshel_17    false    3            �            1259    18980    qa_padawans_group    TABLE     �   CREATE TABLE public.qa_padawans_group (
    id character varying(20) NOT NULL,
    user_id character varying(20) NOT NULL,
    qa_group_id character varying(20)
);
 %   DROP TABLE public.qa_padawans_group;
       public         heap 
   ikoshel_17    false    3            �            1259    18978    qa_padawans_group_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.qa_padawans_group_user_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.qa_padawans_group_user_id_seq;
       public       
   ikoshel_17    false    3    205            �           0    0    qa_padawans_group_user_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.qa_padawans_group_user_id_seq OWNED BY public.qa_padawans_group.user_id;
          public       
   ikoshel_17    false    204            �            1259    19012    qa_padawans_id_seq    SEQUENCE     �   CREATE SEQUENCE public.qa_padawans_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.qa_padawans_id_seq;
       public       
   ikoshel_17    false    3    211            �           0    0    qa_padawans_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.qa_padawans_id_seq OWNED BY public.qa_padawans.id;
          public       
   ikoshel_17    false    210            �            1259    18994    transactions    TABLE     �   CREATE TABLE public.transactions (
    id smallint NOT NULL,
    user_id character varying(20),
    payment_system_id character varying(20),
    money integer,
    date character varying(20)
);
     DROP TABLE public.transactions;
       public         heap 
   ikoshel_17    false    3            �            1259    18990    transactions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.transactions_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.transactions_id_seq;
       public       
   ikoshel_17    false    3    208            �           0    0    transactions_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.transactions_id_seq OWNED BY public.transactions.id;
          public       
   ikoshel_17    false    206            �            1259    18992    transactions_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.transactions_user_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.transactions_user_id_seq;
       public       
   ikoshel_17    false    3    208            �           0    0    transactions_user_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.transactions_user_id_seq OWNED BY public.transactions.user_id;
          public       
   ikoshel_17    false    207                       2604    19017    qa_padawans id    DEFAULT     p   ALTER TABLE ONLY public.qa_padawans ALTER COLUMN id SET DEFAULT nextval('public.qa_padawans_id_seq'::regclass);
 =   ALTER TABLE public.qa_padawans ALTER COLUMN id DROP DEFAULT;
       public       
   ikoshel_17    false    211    210    211                       2604    18997    transactions id    DEFAULT     r   ALTER TABLE ONLY public.transactions ALTER COLUMN id SET DEFAULT nextval('public.transactions_id_seq'::regclass);
 >   ALTER TABLE public.transactions ALTER COLUMN id DROP DEFAULT;
       public       
   ikoshel_17    false    208    206    208            �          0    18950 	   countries 
   TABLE DATA           6   COPY public.countries (id, country_title) FROM stdin;
    public       
   ikoshel_17    false    202            �          0    19002    payment_systems 
   TABLE DATA           ;   COPY public.payment_systems (id, system_title) FROM stdin;
    public       
   ikoshel_17    false    209            �          0    18955 	   qa_groups 
   TABLE DATA           4   COPY public.qa_groups (id, group_title) FROM stdin;
    public       
   ikoshel_17    false    203            �          0    19014    qa_padawans 
   TABLE DATA           s   COPY public.qa_padawans (id, name, age, future_salary, country, city, email, phone, qa_group, user_id) FROM stdin;
    public       
   ikoshel_17    false    211            �          0    18980    qa_padawans_group 
   TABLE DATA           E   COPY public.qa_padawans_group (id, user_id, qa_group_id) FROM stdin;
    public       
   ikoshel_17    false    205            �          0    18994    transactions 
   TABLE DATA           S   COPY public.transactions (id, user_id, payment_system_id, money, date) FROM stdin;
    public       
   ikoshel_17    false    208            �           0    0    qa_padawans_group_user_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.qa_padawans_group_user_id_seq', 1, true);
          public       
   ikoshel_17    false    204            �           0    0    qa_padawans_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.qa_padawans_id_seq', 1, true);
          public       
   ikoshel_17    false    210            �           0    0    transactions_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.transactions_id_seq', 1, true);
          public       
   ikoshel_17    false    206            �           0    0    transactions_user_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.transactions_user_id_seq', 1, true);
          public       
   ikoshel_17    false    207            	           2606    18954    countries countries_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.countries DROP CONSTRAINT countries_pkey;
       public         
   ikoshel_17    false    202                       2606    19006 $   payment_systems payment_systems_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.payment_systems
    ADD CONSTRAINT payment_systems_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.payment_systems DROP CONSTRAINT payment_systems_pkey;
       public         
   ikoshel_17    false    209                       2606    18959    qa_groups qa_groups_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.qa_groups
    ADD CONSTRAINT qa_groups_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.qa_groups DROP CONSTRAINT qa_groups_pkey;
       public         
   ikoshel_17    false    203                       2606    19061    qa_groups qa_groups_un 
   CONSTRAINT     X   ALTER TABLE ONLY public.qa_groups
    ADD CONSTRAINT qa_groups_un UNIQUE (group_title);
 @   ALTER TABLE ONLY public.qa_groups DROP CONSTRAINT qa_groups_un;
       public         
   ikoshel_17    false    203                       2606    18985 (   qa_padawans_group qa_padawans_group_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.qa_padawans_group
    ADD CONSTRAINT qa_padawans_group_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.qa_padawans_group DROP CONSTRAINT qa_padawans_group_pkey;
       public         
   ikoshel_17    false    205                       2606    19052 &   qa_padawans_group qa_padawans_group_un 
   CONSTRAINT     d   ALTER TABLE ONLY public.qa_padawans_group
    ADD CONSTRAINT qa_padawans_group_un UNIQUE (user_id);
 P   ALTER TABLE ONLY public.qa_padawans_group DROP CONSTRAINT qa_padawans_group_un;
       public         
   ikoshel_17    false    205                       2606    19019    qa_padawans qa_padawans_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.qa_padawans
    ADD CONSTRAINT qa_padawans_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.qa_padawans DROP CONSTRAINT qa_padawans_pkey;
       public         
   ikoshel_17    false    211                       2606    19054    qa_padawans qa_padawans_un 
   CONSTRAINT     X   ALTER TABLE ONLY public.qa_padawans
    ADD CONSTRAINT qa_padawans_un UNIQUE (user_id);
 D   ALTER TABLE ONLY public.qa_padawans DROP CONSTRAINT qa_padawans_un;
       public         
   ikoshel_17    false    211                       2606    19000    transactions transactions_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.transactions DROP CONSTRAINT transactions_pkey;
       public         
   ikoshel_17    false    208                       2606    19073    transactions transactions_un 
   CONSTRAINT     Z   ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_un UNIQUE (user_id);
 F   ALTER TABLE ONLY public.transactions DROP CONSTRAINT transactions_un;
       public         
   ikoshel_17    false    208                       2606    19020    qa_padawans qa_padawans_fk    FK CONSTRAINT     }   ALTER TABLE ONLY public.qa_padawans
    ADD CONSTRAINT qa_padawans_fk FOREIGN KEY (country) REFERENCES public.countries(id);
 D   ALTER TABLE ONLY public.qa_padawans DROP CONSTRAINT qa_padawans_fk;
       public       
   ikoshel_17    false    211    202    2825                       2606    19062 4   qa_padawans_group qa_padawans_group_qa_group_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.qa_padawans_group
    ADD CONSTRAINT qa_padawans_group_qa_group_id_fkey FOREIGN KEY (qa_group_id) REFERENCES public.qa_groups(id);
 ^   ALTER TABLE ONLY public.qa_padawans_group DROP CONSTRAINT qa_padawans_group_qa_group_id_fkey;
       public       
   ikoshel_17    false    203    205    2827                       2606    19055 0   qa_padawans_group qa_padawans_group_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.qa_padawans_group
    ADD CONSTRAINT qa_padawans_group_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.qa_padawans(user_id);
 Z   ALTER TABLE ONLY public.qa_padawans_group DROP CONSTRAINT qa_padawans_group_user_id_fkey;
       public       
   ikoshel_17    false    211    2843    205                        2606    19084 $   qa_padawans qa_padawans_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.qa_padawans
    ADD CONSTRAINT qa_padawans_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.transactions(user_id);
 N   ALTER TABLE ONLY public.qa_padawans DROP CONSTRAINT qa_padawans_user_id_fkey;
       public       
   ikoshel_17    false    211    2837    208                       2606    19025    transactions transactions_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_fk FOREIGN KEY (payment_system_id) REFERENCES public.payment_systems(id);
 F   ALTER TABLE ONLY public.transactions DROP CONSTRAINT transactions_fk;
       public       
   ikoshel_17    false    2839    208    209            �      x�367�tJ�I,*-����� (�)      �   '   x��0�{/�0Ho�� &�/6q^�Jp��qqq #y      �      x�34�t�74����� T}      �   N   x�3��,��K�4��4200�467����+���,��/�H�q�M���+*���iYj��s�����s��qqq PF�      �      x�34��,��/�H͉74�44����� P��      �   @   x�3��,��/�H͉74�0�{/�0Ho�� &�/6qZ�r���r��qqq Y>      0    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16622    ikoshel_db_17    DATABASE        CREATE DATABASE ikoshel_db_17 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE ikoshel_db_17;
                postgres    false            �           0    0    DATABASE ikoshel_db_17    ACL     3   GRANT ALL ON DATABASE ikoshel_db_17 TO ikoshel_17;
                   postgres    false    2990                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    3            �            1259    18950 	   countries    TABLE     r   CREATE TABLE public.countries (
    id character varying(20) NOT NULL,
    country_title character varying(20)
);
    DROP TABLE public.countries;
       public         heap 
   ikoshel_17    false    3            �            1259    19002    payment_systems    TABLE     w   CREATE TABLE public.payment_systems (
    id character varying(20) NOT NULL,
    system_title character varying(20)
);
 #   DROP TABLE public.payment_systems;
       public         heap 
   ikoshel_17    false    3            �            1259    18955 	   qa_groups    TABLE     p   CREATE TABLE public.qa_groups (
    id character varying(20) NOT NULL,
    group_title character varying(20)
);
    DROP TABLE public.qa_groups;
       public         heap 
   ikoshel_17    false    3            �            1259    19014    qa_padawans    TABLE     V  CREATE TABLE public.qa_padawans (
    id smallint NOT NULL,
    name character varying(20),
    age integer,
    future_salary integer,
    country character varying(20),
    city character varying(20),
    email character varying(20),
    phone character varying(20),
    qa_group character varying(20),
    user_id character varying(20)
);
    DROP TABLE public.qa_padawans;
       public         heap 
   ikoshel_17    false    3            �            1259    18980    qa_padawans_group    TABLE     �   CREATE TABLE public.qa_padawans_group (
    id character varying(20) NOT NULL,
    user_id character varying(20) NOT NULL,
    qa_group_id character varying(20)
);
 %   DROP TABLE public.qa_padawans_group;
       public         heap 
   ikoshel_17    false    3            �            1259    18978    qa_padawans_group_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.qa_padawans_group_user_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.qa_padawans_group_user_id_seq;
       public       
   ikoshel_17    false    3    205            �           0    0    qa_padawans_group_user_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.qa_padawans_group_user_id_seq OWNED BY public.qa_padawans_group.user_id;
          public       
   ikoshel_17    false    204            �            1259    19012    qa_padawans_id_seq    SEQUENCE     �   CREATE SEQUENCE public.qa_padawans_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.qa_padawans_id_seq;
       public       
   ikoshel_17    false    3    211            �           0    0    qa_padawans_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.qa_padawans_id_seq OWNED BY public.qa_padawans.id;
          public       
   ikoshel_17    false    210            �            1259    18994    transactions    TABLE     �   CREATE TABLE public.transactions (
    id smallint NOT NULL,
    user_id character varying(20),
    payment_system_id character varying(20),
    money integer,
    date character varying(20)
);
     DROP TABLE public.transactions;
       public         heap 
   ikoshel_17    false    3            �            1259    18990    transactions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.transactions_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.transactions_id_seq;
       public       
   ikoshel_17    false    3    208            �           0    0    transactions_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.transactions_id_seq OWNED BY public.transactions.id;
          public       
   ikoshel_17    false    206            �            1259    18992    transactions_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.transactions_user_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.transactions_user_id_seq;
       public       
   ikoshel_17    false    3    208            �           0    0    transactions_user_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.transactions_user_id_seq OWNED BY public.transactions.user_id;
          public       
   ikoshel_17    false    207                       2604    19017    qa_padawans id    DEFAULT     p   ALTER TABLE ONLY public.qa_padawans ALTER COLUMN id SET DEFAULT nextval('public.qa_padawans_id_seq'::regclass);
 =   ALTER TABLE public.qa_padawans ALTER COLUMN id DROP DEFAULT;
       public       
   ikoshel_17    false    211    210    211                       2604    18997    transactions id    DEFAULT     r   ALTER TABLE ONLY public.transactions ALTER COLUMN id SET DEFAULT nextval('public.transactions_id_seq'::regclass);
 >   ALTER TABLE public.transactions ALTER COLUMN id DROP DEFAULT;
       public       
   ikoshel_17    false    208    206    208            �          0    18950 	   countries 
   TABLE DATA           6   COPY public.countries (id, country_title) FROM stdin;
    public       
   ikoshel_17    false    202            �          0    19002    payment_systems 
   TABLE DATA           ;   COPY public.payment_systems (id, system_title) FROM stdin;
    public       
   ikoshel_17    false    209   #        �          0    18955 	   qa_groups 
   TABLE DATA           4   COPY public.qa_groups (id, group_title) FROM stdin;
    public       
   ikoshel_17    false    203   1        �          0    19014    qa_padawans 
   TABLE DATA           s   COPY public.qa_padawans (id, name, age, future_salary, country, city, email, phone, qa_group, user_id) FROM stdin;
    public       
   ikoshel_17    false    211            �          0    18980    qa_padawans_group 
   TABLE DATA           E   COPY public.qa_padawans_group (id, user_id, qa_group_id) FROM stdin;
    public       
   ikoshel_17    false    205   X        �          0    18994    transactions 
   TABLE DATA           S   COPY public.transactions (id, user_id, payment_system_id, money, date) FROM stdin;
    public       
   ikoshel_17    false    208   )        �           0    0    qa_padawans_group_user_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.qa_padawans_group_user_id_seq', 1, true);
          public       
   ikoshel_17    false    204            �           0    0    qa_padawans_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.qa_padawans_id_seq', 1, true);
          public       
   ikoshel_17    false    210            �           0    0    transactions_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.transactions_id_seq', 1, true);
          public       
   ikoshel_17    false    206            �           0    0    transactions_user_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.transactions_user_id_seq', 1, true);
          public       
   ikoshel_17    false    207            	           2606    18954    countries countries_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.countries DROP CONSTRAINT countries_pkey;
       public         
   ikoshel_17    false    202                       2606    19006 $   payment_systems payment_systems_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.payment_systems
    ADD CONSTRAINT payment_systems_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.payment_systems DROP CONSTRAINT payment_systems_pkey;
       public         
   ikoshel_17    false    209                       2606    18959    qa_groups qa_groups_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.qa_groups
    ADD CONSTRAINT qa_groups_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.qa_groups DROP CONSTRAINT qa_groups_pkey;
       public         
   ikoshel_17    false    203                       2606    19061    qa_groups qa_groups_un 
   CONSTRAINT     X   ALTER TABLE ONLY public.qa_groups
    ADD CONSTRAINT qa_groups_un UNIQUE (group_title);
 @   ALTER TABLE ONLY public.qa_groups DROP CONSTRAINT qa_groups_un;
       public         
   ikoshel_17    false    203                       2606    18985 (   qa_padawans_group qa_padawans_group_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.qa_padawans_group
    ADD CONSTRAINT qa_padawans_group_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.qa_padawans_group DROP CONSTRAINT qa_padawans_group_pkey;
       public         
   ikoshel_17    false    205                       2606    19052 &   qa_padawans_group qa_padawans_group_un 
   CONSTRAINT     d   ALTER TABLE ONLY public.qa_padawans_group
    ADD CONSTRAINT qa_padawans_group_un UNIQUE (user_id);
 P   ALTER TABLE ONLY public.qa_padawans_group DROP CONSTRAINT qa_padawans_group_un;
       public         
   ikoshel_17    false    205                       2606    19019    qa_padawans qa_padawans_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.qa_padawans
    ADD CONSTRAINT qa_padawans_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.qa_padawans DROP CONSTRAINT qa_padawans_pkey;
       public         
   ikoshel_17    false    211                       2606    19054    qa_padawans qa_padawans_un 
   CONSTRAINT     X   ALTER TABLE ONLY public.qa_padawans
    ADD CONSTRAINT qa_padawans_un UNIQUE (user_id);
 D   ALTER TABLE ONLY public.qa_padawans DROP CONSTRAINT qa_padawans_un;
       public         
   ikoshel_17    false    211                       2606    19000    transactions transactions_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.transactions DROP CONSTRAINT transactions_pkey;
       public         
   ikoshel_17    false    208                       2606    19073    transactions transactions_un 
   CONSTRAINT     Z   ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_un UNIQUE (user_id);
 F   ALTER TABLE ONLY public.transactions DROP CONSTRAINT transactions_un;
       public         
   ikoshel_17    false    208                       2606    19020    qa_padawans qa_padawans_fk    FK CONSTRAINT     }   ALTER TABLE ONLY public.qa_padawans
    ADD CONSTRAINT qa_padawans_fk FOREIGN KEY (country) REFERENCES public.countries(id);
 D   ALTER TABLE ONLY public.qa_padawans DROP CONSTRAINT qa_padawans_fk;
       public       
   ikoshel_17    false    211    202    2825                       2606    19062 4   qa_padawans_group qa_padawans_group_qa_group_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.qa_padawans_group
    ADD CONSTRAINT qa_padawans_group_qa_group_id_fkey FOREIGN KEY (qa_group_id) REFERENCES public.qa_groups(id);
 ^   ALTER TABLE ONLY public.qa_padawans_group DROP CONSTRAINT qa_padawans_group_qa_group_id_fkey;
       public       
   ikoshel_17    false    203    205    2827                       2606    19055 0   qa_padawans_group qa_padawans_group_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.qa_padawans_group
    ADD CONSTRAINT qa_padawans_group_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.qa_padawans(user_id);
 Z   ALTER TABLE ONLY public.qa_padawans_group DROP CONSTRAINT qa_padawans_group_user_id_fkey;
       public       
   ikoshel_17    false    211    2843    205                        2606    19084 $   qa_padawans qa_padawans_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.qa_padawans
    ADD CONSTRAINT qa_padawans_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.transactions(user_id);
 N   ALTER TABLE ONLY public.qa_padawans DROP CONSTRAINT qa_padawans_user_id_fkey;
       public       
   ikoshel_17    false    211    2837    208                       2606    19025    transactions transactions_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_fk FOREIGN KEY (payment_system_id) REFERENCES public.payment_systems(id);
 F   ALTER TABLE ONLY public.transactions DROP CONSTRAINT transactions_fk;
       public       
   ikoshel_17    false    2839    208    209           