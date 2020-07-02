PGDMP         7                x            covid19    12.2    12.2 L    m           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            n           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            o           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            p           1262    57857    covid19    DATABASE     �   CREATE DATABASE covid19 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
    DROP DATABASE covid19;
                postgres    false            �            1259    57944    covid_master_location_block    TABLE     �  CREATE TABLE public.covid_master_location_block (
    block_id_pk bigint NOT NULL,
    block_name character varying(30) NOT NULL,
    muni_flag numeric(1,0) NOT NULL,
    lg_code bigint NOT NULL,
    sub_div_id_fk bigint NOT NULL,
    location_id_fk bigint NOT NULL,
    CONSTRAINT covid_master_location_block_muni_flag_check CHECK (((muni_flag >= (0)::numeric) AND (muni_flag <= (1)::numeric)))
);
 /   DROP TABLE public.covid_master_location_block;
       public         heap    postgres    false            �            1259    57942 +   covid_master_location_block_block_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.covid_master_location_block_block_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.covid_master_location_block_block_id_pk_seq;
       public          postgres    false    216            q           0    0 +   covid_master_location_block_block_id_pk_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.covid_master_location_block_block_id_pk_seq OWNED BY public.covid_master_location_block.block_id_pk;
          public          postgres    false    215            �            1259    57891    covid_master_location_code    TABLE     �   CREATE TABLE public.covid_master_location_code (
    location_code bigint NOT NULL,
    location_area character varying(70) NOT NULL,
    location_id_pk bigint NOT NULL
);
 .   DROP TABLE public.covid_master_location_code;
       public         heap    postgres    false            �            1259    57908    covid_master_location_district    TABLE     �   CREATE TABLE public.covid_master_location_district (
    dist_id_pk bigint NOT NULL,
    dist_name character varying(50) NOT NULL,
    state_id_fk bigint NOT NULL,
    lg_code bigint NOT NULL,
    location_id_fk bigint NOT NULL
);
 2   DROP TABLE public.covid_master_location_district;
       public         heap    postgres    false            �            1259    57906 -   covid_master_location_district_dist_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.covid_master_location_district_dist_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public.covid_master_location_district_dist_id_pk_seq;
       public          postgres    false    212            r           0    0 -   covid_master_location_district_dist_id_pk_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public.covid_master_location_district_dist_id_pk_seq OWNED BY public.covid_master_location_district.dist_id_pk;
          public          postgres    false    211            �            1259    57982    covid_master_location_gp    TABLE     d  CREATE TABLE public.covid_master_location_gp (
    gp_id_pk bigint NOT NULL,
    gp_name character varying(70) NOT NULL,
    ward_flag numeric(1,0) NOT NULL,
    block_id_fk bigint NOT NULL,
    location_id_fk bigint NOT NULL,
    CONSTRAINT covid_master_location_gp_ward_flag_check CHECK (((ward_flag >= (0)::numeric) AND (ward_flag <= (1)::numeric)))
);
 ,   DROP TABLE public.covid_master_location_gp;
       public         heap    postgres    false            �            1259    57980 %   covid_master_location_gp_gp_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.covid_master_location_gp_gp_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.covid_master_location_gp_gp_id_pk_seq;
       public          postgres    false    218            s           0    0 %   covid_master_location_gp_gp_id_pk_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.covid_master_location_gp_gp_id_pk_seq OWNED BY public.covid_master_location_gp.gp_id_pk;
          public          postgres    false    217            �            1259    57900    covid_master_location_state    TABLE     �   CREATE TABLE public.covid_master_location_state (
    state_id_pk bigint NOT NULL,
    state_name character varying(70) NOT NULL
);
 /   DROP TABLE public.covid_master_location_state;
       public         heap    postgres    false            �            1259    57898 +   covid_master_location_state_state_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.covid_master_location_state_state_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.covid_master_location_state_state_id_pk_seq;
       public          postgres    false    210            t           0    0 +   covid_master_location_state_state_id_pk_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.covid_master_location_state_state_id_pk_seq OWNED BY public.covid_master_location_state.state_id_pk;
          public          postgres    false    209            �            1259    57921    covid_master_location_subdiv    TABLE     �   CREATE TABLE public.covid_master_location_subdiv (
    sub_div_id_pk bigint NOT NULL,
    sub_div_name character varying(20) NOT NULL,
    lg_code bigint NOT NULL,
    dist_id_fk bigint NOT NULL,
    location_id_fk bigint NOT NULL
);
 0   DROP TABLE public.covid_master_location_subdiv;
       public         heap    postgres    false            �            1259    57919 .   covid_master_location_subdiv_sub_div_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.covid_master_location_subdiv_sub_div_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public.covid_master_location_subdiv_sub_div_id_pk_seq;
       public          postgres    false    214            u           0    0 .   covid_master_location_subdiv_sub_div_id_pk_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.covid_master_location_subdiv_sub_div_id_pk_seq OWNED BY public.covid_master_location_subdiv.sub_div_id_pk;
          public          postgres    false    213            �            1259    57858    covid_semitrans_login    TABLE     �   CREATE TABLE public.covid_semitrans_login (
    login_id_pk bigint NOT NULL,
    username character varying(50) NOT NULL,
    password text NOT NULL,
    active_status numeric(1,0) NOT NULL
);
 )   DROP TABLE public.covid_semitrans_login;
       public         heap    postgres    false            �            1259    57864 %   covid_semitrans_login_login_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.covid_semitrans_login_login_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.covid_semitrans_login_login_id_pk_seq;
       public          postgres    false    202            v           0    0 %   covid_semitrans_login_login_id_pk_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.covid_semitrans_login_login_id_pk_seq OWNED BY public.covid_semitrans_login.login_id_pk;
          public          postgres    false    203            �            1259    57875    covid_trans_hosp_bed_manag    TABLE     -  CREATE TABLE public.covid_trans_hosp_bed_manag (
    hospital_bed_management_id_pk bigint NOT NULL,
    no_of_bed_in_critical_unit bigint NOT NULL,
    no_of_bed_in_isolation_ward bigint NOT NULL,
    no_of_people_in_institutional_quant_facility bigint NOT NULL,
    hospitak_id_fk bigint NOT NULL
);
 .   DROP TABLE public.covid_trans_hosp_bed_manag;
       public         heap    postgres    false            �            1259    57878 ?   covid_trans_hospital_bed_mana_hospital_bed_management_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.covid_trans_hospital_bed_mana_hospital_bed_management_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 V   DROP SEQUENCE public.covid_trans_hospital_bed_mana_hospital_bed_management_id_pk_seq;
       public          postgres    false    204            w           0    0 ?   covid_trans_hospital_bed_mana_hospital_bed_management_id_pk_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.covid_trans_hospital_bed_mana_hospital_bed_management_id_pk_seq OWNED BY public.covid_trans_hosp_bed_manag.hospital_bed_management_id_pk;
          public          postgres    false    205            �            1259    57883    covid_trans_stock_in_hand    TABLE     �  CREATE TABLE public.covid_trans_stock_in_hand (
    stock_in_hand_id_pk bigint NOT NULL,
    no_of_pee bigint NOT NULL,
    no_of_n95_mask bigint NOT NULL,
    no_of_gloves bigint NOT NULL,
    no_of_hand_sanitizer_100ml bigint NOT NULL,
    no_of_hand_sanitizer_500ml bigint NOT NULL,
    no_of_hand_sanitizer_1000ml bigint NOT NULL,
    no_of_hypochlorite_solution bigint NOT NULL,
    no_of_bleeching_powder_25kg bigint NOT NULL,
    center_id_fk bigint NOT NULL
);
 -   DROP TABLE public.covid_trans_stock_in_hand;
       public         heap    postgres    false            �            1259    57886 1   covid_trans_stock_in_hand_stock_in_hand_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.covid_trans_stock_in_hand_stock_in_hand_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 H   DROP SEQUENCE public.covid_trans_stock_in_hand_stock_in_hand_id_pk_seq;
       public          postgres    false    206            x           0    0 1   covid_trans_stock_in_hand_stock_in_hand_id_pk_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.covid_trans_stock_in_hand_stock_in_hand_id_pk_seq OWNED BY public.covid_trans_stock_in_hand.stock_in_hand_id_pk;
          public          postgres    false    207            �
           2604    57947 '   covid_master_location_block block_id_pk    DEFAULT     �   ALTER TABLE ONLY public.covid_master_location_block ALTER COLUMN block_id_pk SET DEFAULT nextval('public.covid_master_location_block_block_id_pk_seq'::regclass);
 V   ALTER TABLE public.covid_master_location_block ALTER COLUMN block_id_pk DROP DEFAULT;
       public          postgres    false    215    216    216            �
           2604    57911 )   covid_master_location_district dist_id_pk    DEFAULT     �   ALTER TABLE ONLY public.covid_master_location_district ALTER COLUMN dist_id_pk SET DEFAULT nextval('public.covid_master_location_district_dist_id_pk_seq'::regclass);
 X   ALTER TABLE public.covid_master_location_district ALTER COLUMN dist_id_pk DROP DEFAULT;
       public          postgres    false    211    212    212            �
           2604    57985 !   covid_master_location_gp gp_id_pk    DEFAULT     �   ALTER TABLE ONLY public.covid_master_location_gp ALTER COLUMN gp_id_pk SET DEFAULT nextval('public.covid_master_location_gp_gp_id_pk_seq'::regclass);
 P   ALTER TABLE public.covid_master_location_gp ALTER COLUMN gp_id_pk DROP DEFAULT;
       public          postgres    false    218    217    218            �
           2604    57903 '   covid_master_location_state state_id_pk    DEFAULT     �   ALTER TABLE ONLY public.covid_master_location_state ALTER COLUMN state_id_pk SET DEFAULT nextval('public.covid_master_location_state_state_id_pk_seq'::regclass);
 V   ALTER TABLE public.covid_master_location_state ALTER COLUMN state_id_pk DROP DEFAULT;
       public          postgres    false    209    210    210            �
           2604    57924 *   covid_master_location_subdiv sub_div_id_pk    DEFAULT     �   ALTER TABLE ONLY public.covid_master_location_subdiv ALTER COLUMN sub_div_id_pk SET DEFAULT nextval('public.covid_master_location_subdiv_sub_div_id_pk_seq'::regclass);
 Y   ALTER TABLE public.covid_master_location_subdiv ALTER COLUMN sub_div_id_pk DROP DEFAULT;
       public          postgres    false    213    214    214            �
           2604    57866 !   covid_semitrans_login login_id_pk    DEFAULT     �   ALTER TABLE ONLY public.covid_semitrans_login ALTER COLUMN login_id_pk SET DEFAULT nextval('public.covid_semitrans_login_login_id_pk_seq'::regclass);
 P   ALTER TABLE public.covid_semitrans_login ALTER COLUMN login_id_pk DROP DEFAULT;
       public          postgres    false    203    202            �
           2604    57880 8   covid_trans_hosp_bed_manag hospital_bed_management_id_pk    DEFAULT     �   ALTER TABLE ONLY public.covid_trans_hosp_bed_manag ALTER COLUMN hospital_bed_management_id_pk SET DEFAULT nextval('public.covid_trans_hospital_bed_mana_hospital_bed_management_id_pk_seq'::regclass);
 g   ALTER TABLE public.covid_trans_hosp_bed_manag ALTER COLUMN hospital_bed_management_id_pk DROP DEFAULT;
       public          postgres    false    205    204            �
           2604    57888 -   covid_trans_stock_in_hand stock_in_hand_id_pk    DEFAULT     �   ALTER TABLE ONLY public.covid_trans_stock_in_hand ALTER COLUMN stock_in_hand_id_pk SET DEFAULT nextval('public.covid_trans_stock_in_hand_stock_in_hand_id_pk_seq'::regclass);
 \   ALTER TABLE public.covid_trans_stock_in_hand ALTER COLUMN stock_in_hand_id_pk DROP DEFAULT;
       public          postgres    false    207    206            h          0    57944    covid_master_location_block 
   TABLE DATA           �   COPY public.covid_master_location_block (block_id_pk, block_name, muni_flag, lg_code, sub_div_id_fk, location_id_fk) FROM stdin;
    public          postgres    false    216   �s       `          0    57891    covid_master_location_code 
   TABLE DATA           b   COPY public.covid_master_location_code (location_code, location_area, location_id_pk) FROM stdin;
    public          postgres    false    208   �t       d          0    57908    covid_master_location_district 
   TABLE DATA           u   COPY public.covid_master_location_district (dist_id_pk, dist_name, state_id_fk, lg_code, location_id_fk) FROM stdin;
    public          postgres    false    212   K       j          0    57982    covid_master_location_gp 
   TABLE DATA           m   COPY public.covid_master_location_gp (gp_id_pk, gp_name, ward_flag, block_id_fk, location_id_fk) FROM stdin;
    public          postgres    false    218   ��       b          0    57900    covid_master_location_state 
   TABLE DATA           N   COPY public.covid_master_location_state (state_id_pk, state_name) FROM stdin;
    public          postgres    false    210   ��       f          0    57921    covid_master_location_subdiv 
   TABLE DATA           x   COPY public.covid_master_location_subdiv (sub_div_id_pk, sub_div_name, lg_code, dist_id_fk, location_id_fk) FROM stdin;
    public          postgres    false    214   �       Z          0    57858    covid_semitrans_login 
   TABLE DATA           _   COPY public.covid_semitrans_login (login_id_pk, username, password, active_status) FROM stdin;
    public          postgres    false    202   -�       \          0    57875    covid_trans_hosp_bed_manag 
   TABLE DATA           �   COPY public.covid_trans_hosp_bed_manag (hospital_bed_management_id_pk, no_of_bed_in_critical_unit, no_of_bed_in_isolation_ward, no_of_people_in_institutional_quant_facility, hospitak_id_fk) FROM stdin;
    public          postgres    false    204   ��       ^          0    57883    covid_trans_stock_in_hand 
   TABLE DATA             COPY public.covid_trans_stock_in_hand (stock_in_hand_id_pk, no_of_pee, no_of_n95_mask, no_of_gloves, no_of_hand_sanitizer_100ml, no_of_hand_sanitizer_500ml, no_of_hand_sanitizer_1000ml, no_of_hypochlorite_solution, no_of_bleeching_powder_25kg, center_id_fk) FROM stdin;
    public          postgres    false    206   ��       y           0    0 +   covid_master_location_block_block_id_pk_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.covid_master_location_block_block_id_pk_seq', 1, false);
          public          postgres    false    215            z           0    0 -   covid_master_location_district_dist_id_pk_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('public.covid_master_location_district_dist_id_pk_seq', 1, false);
          public          postgres    false    211            {           0    0 %   covid_master_location_gp_gp_id_pk_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.covid_master_location_gp_gp_id_pk_seq', 1, false);
          public          postgres    false    217            |           0    0 +   covid_master_location_state_state_id_pk_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.covid_master_location_state_state_id_pk_seq', 1, false);
          public          postgres    false    209            }           0    0 .   covid_master_location_subdiv_sub_div_id_pk_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public.covid_master_location_subdiv_sub_div_id_pk_seq', 1, false);
          public          postgres    false    213            ~           0    0 %   covid_semitrans_login_login_id_pk_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.covid_semitrans_login_login_id_pk_seq', 1, false);
          public          postgres    false    203                       0    0 ?   covid_trans_hospital_bed_mana_hospital_bed_management_id_pk_seq    SEQUENCE SET     n   SELECT pg_catalog.setval('public.covid_trans_hospital_bed_mana_hospital_bed_management_id_pk_seq', 1, false);
          public          postgres    false    205            �           0    0 1   covid_trans_stock_in_hand_stock_in_hand_id_pk_seq    SEQUENCE SET     `   SELECT pg_catalog.setval('public.covid_trans_stock_in_hand_stock_in_hand_id_pk_seq', 1, false);
          public          postgres    false    207            �
           2606    57951 C   covid_master_location_block covid_master_location_block_lg_code_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.covid_master_location_block
    ADD CONSTRAINT covid_master_location_block_lg_code_key UNIQUE (lg_code);
 m   ALTER TABLE ONLY public.covid_master_location_block DROP CONSTRAINT covid_master_location_block_lg_code_key;
       public            postgres    false    216            �
           2606    57949 <   covid_master_location_block covid_master_location_block_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.covid_master_location_block
    ADD CONSTRAINT covid_master_location_block_pkey PRIMARY KEY (block_id_pk);
 f   ALTER TABLE ONLY public.covid_master_location_block DROP CONSTRAINT covid_master_location_block_pkey;
       public            postgres    false    216            �
           2606    57897 G   covid_master_location_code covid_master_location_code_location_code_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.covid_master_location_code
    ADD CONSTRAINT covid_master_location_code_location_code_key UNIQUE (location_code);
 q   ALTER TABLE ONLY public.covid_master_location_code DROP CONSTRAINT covid_master_location_code_location_code_key;
       public            postgres    false    208            �
           2606    57895 :   covid_master_location_code covid_master_location_code_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.covid_master_location_code
    ADD CONSTRAINT covid_master_location_code_pkey PRIMARY KEY (location_id_pk);
 d   ALTER TABLE ONLY public.covid_master_location_code DROP CONSTRAINT covid_master_location_code_pkey;
       public            postgres    false    208            �
           2606    57979 I   covid_master_location_district covid_master_location_district_lg_code_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.covid_master_location_district
    ADD CONSTRAINT covid_master_location_district_lg_code_key UNIQUE (lg_code);
 s   ALTER TABLE ONLY public.covid_master_location_district DROP CONSTRAINT covid_master_location_district_lg_code_key;
       public            postgres    false    212            �
           2606    57913 B   covid_master_location_district covid_master_location_district_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.covid_master_location_district
    ADD CONSTRAINT covid_master_location_district_pkey PRIMARY KEY (dist_id_pk);
 l   ALTER TABLE ONLY public.covid_master_location_district DROP CONSTRAINT covid_master_location_district_pkey;
       public            postgres    false    212            �
           2606    57987 6   covid_master_location_gp covid_master_location_gp_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.covid_master_location_gp
    ADD CONSTRAINT covid_master_location_gp_pkey PRIMARY KEY (gp_id_pk);
 `   ALTER TABLE ONLY public.covid_master_location_gp DROP CONSTRAINT covid_master_location_gp_pkey;
       public            postgres    false    218            �
           2606    57905 <   covid_master_location_state covid_master_location_state_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.covid_master_location_state
    ADD CONSTRAINT covid_master_location_state_pkey PRIMARY KEY (state_id_pk);
 f   ALTER TABLE ONLY public.covid_master_location_state DROP CONSTRAINT covid_master_location_state_pkey;
       public            postgres    false    210            �
           2606    57967 E   covid_master_location_subdiv covid_master_location_subdiv_lg_code_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.covid_master_location_subdiv
    ADD CONSTRAINT covid_master_location_subdiv_lg_code_key UNIQUE (lg_code);
 o   ALTER TABLE ONLY public.covid_master_location_subdiv DROP CONSTRAINT covid_master_location_subdiv_lg_code_key;
       public            postgres    false    214            �
           2606    57926 >   covid_master_location_subdiv covid_master_location_subdiv_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.covid_master_location_subdiv
    ADD CONSTRAINT covid_master_location_subdiv_pkey PRIMARY KEY (sub_div_id_pk);
 h   ALTER TABLE ONLY public.covid_master_location_subdiv DROP CONSTRAINT covid_master_location_subdiv_pkey;
       public            postgres    false    214            �
           2606    57868 0   covid_semitrans_login covid_semitrans_login_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.covid_semitrans_login
    ADD CONSTRAINT covid_semitrans_login_pkey PRIMARY KEY (login_id_pk);
 Z   ALTER TABLE ONLY public.covid_semitrans_login DROP CONSTRAINT covid_semitrans_login_pkey;
       public            postgres    false    202            �
           2606    58001 8   covid_semitrans_login covid_semitrans_login_username_key 
   CONSTRAINT     w   ALTER TABLE ONLY public.covid_semitrans_login
    ADD CONSTRAINT covid_semitrans_login_username_key UNIQUE (username);
 b   ALTER TABLE ONLY public.covid_semitrans_login DROP CONSTRAINT covid_semitrans_login_username_key;
       public            postgres    false    202            �
           2606    57882 C   covid_trans_hosp_bed_manag covid_trans_hospital_bed_management_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.covid_trans_hosp_bed_manag
    ADD CONSTRAINT covid_trans_hospital_bed_management_pkey PRIMARY KEY (hospital_bed_management_id_pk);
 m   ALTER TABLE ONLY public.covid_trans_hosp_bed_manag DROP CONSTRAINT covid_trans_hospital_bed_management_pkey;
       public            postgres    false    204            �
           2606    57890 8   covid_trans_stock_in_hand covid_trans_stock_in_hand_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.covid_trans_stock_in_hand
    ADD CONSTRAINT covid_trans_stock_in_hand_pkey PRIMARY KEY (stock_in_hand_id_pk);
 b   ALTER TABLE ONLY public.covid_trans_stock_in_hand DROP CONSTRAINT covid_trans_stock_in_hand_pkey;
       public            postgres    false    206            �
           2606    57957 K   covid_master_location_block covid_master_location_block_location_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.covid_master_location_block
    ADD CONSTRAINT covid_master_location_block_location_id_fk_fkey FOREIGN KEY (location_id_fk) REFERENCES public.covid_master_location_code(location_id_pk) ON UPDATE CASCADE;
 u   ALTER TABLE ONLY public.covid_master_location_block DROP CONSTRAINT covid_master_location_block_location_id_fk_fkey;
       public          postgres    false    216    2755    208            �
           2606    57952 J   covid_master_location_block covid_master_location_block_sub_div_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.covid_master_location_block
    ADD CONSTRAINT covid_master_location_block_sub_div_id_fk_fkey FOREIGN KEY (sub_div_id_fk) REFERENCES public.covid_master_location_subdiv(sub_div_id_pk) ON UPDATE CASCADE;
 t   ALTER TABLE ONLY public.covid_master_location_block DROP CONSTRAINT covid_master_location_block_sub_div_id_fk_fkey;
       public          postgres    false    2765    214    216            �
           2606    57937 Q   covid_master_location_district covid_master_location_district_location_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.covid_master_location_district
    ADD CONSTRAINT covid_master_location_district_location_id_fk_fkey FOREIGN KEY (location_id_fk) REFERENCES public.covid_master_location_code(location_id_pk) ON UPDATE CASCADE NOT VALID;
 {   ALTER TABLE ONLY public.covid_master_location_district DROP CONSTRAINT covid_master_location_district_location_id_fk_fkey;
       public          postgres    false    208    212    2755            �
           2606    57914 N   covid_master_location_district covid_master_location_district_state_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.covid_master_location_district
    ADD CONSTRAINT covid_master_location_district_state_id_fk_fkey FOREIGN KEY (state_id_fk) REFERENCES public.covid_master_location_state(state_id_pk) ON UPDATE CASCADE NOT VALID;
 x   ALTER TABLE ONLY public.covid_master_location_district DROP CONSTRAINT covid_master_location_district_state_id_fk_fkey;
       public          postgres    false    210    212    2757            �
           2606    57988 B   covid_master_location_gp covid_master_location_gp_block_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.covid_master_location_gp
    ADD CONSTRAINT covid_master_location_gp_block_id_fk_fkey FOREIGN KEY (block_id_fk) REFERENCES public.covid_master_location_block(block_id_pk) ON UPDATE CASCADE;
 l   ALTER TABLE ONLY public.covid_master_location_gp DROP CONSTRAINT covid_master_location_gp_block_id_fk_fkey;
       public          postgres    false    216    2769    218            �
           2606    57993 E   covid_master_location_gp covid_master_location_gp_location_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.covid_master_location_gp
    ADD CONSTRAINT covid_master_location_gp_location_id_fk_fkey FOREIGN KEY (location_id_fk) REFERENCES public.covid_master_location_code(location_id_pk) ON UPDATE CASCADE;
 o   ALTER TABLE ONLY public.covid_master_location_gp DROP CONSTRAINT covid_master_location_gp_location_id_fk_fkey;
       public          postgres    false    208    218    2755            �
           2606    57927 I   covid_master_location_subdiv covid_master_location_subdiv_dist_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.covid_master_location_subdiv
    ADD CONSTRAINT covid_master_location_subdiv_dist_id_fk_fkey FOREIGN KEY (dist_id_fk) REFERENCES public.covid_master_location_district(dist_id_pk) ON UPDATE CASCADE;
 s   ALTER TABLE ONLY public.covid_master_location_subdiv DROP CONSTRAINT covid_master_location_subdiv_dist_id_fk_fkey;
       public          postgres    false    214    212    2761            �
           2606    57932 M   covid_master_location_subdiv covid_master_location_subdiv_location_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.covid_master_location_subdiv
    ADD CONSTRAINT covid_master_location_subdiv_location_id_fk_fkey FOREIGN KEY (location_id_fk) REFERENCES public.covid_master_location_code(location_id_pk);
 w   ALTER TABLE ONLY public.covid_master_location_subdiv DROP CONSTRAINT covid_master_location_subdiv_location_id_fk_fkey;
       public          postgres    false    208    2755    214            h   �   x�M�In�0E��)r��</i���ʒ��)���(55]�x��>���ܢ-� 5IZT�$���L�6p����	f=�0����AwZt>"&Vv�=���&ٍ؃�߁�e=�Y�F�����@��GT'T;�τ<�I+_��|��)p�'�频8�;�q��BN�i�}�r���\"o�����1�����g0��Vz�`oSTZ��7::����2��ߺ�n��g-"�����U�      `   J
  x�mYێ۸|f��?0�y���#��X�]����w�jRR1����*If��"��U7��c�����Zbge�_Fm�v��}T6�W��q�솨܎�2>����U����fv��[����]TՎ{%�*d����N�}X��6���;��i~Os\�iTMF�t��7?z��;j
��a��k������@v�<F��(��'��`uj#���p�Í���=�9~�Q��9Q���L�_��n%�Ȳ{}^�Ĺ�he�$	��&aIXe	G�)cIx^G"��x�J�@�&Q+S�hH4ʜS}�L�S�e�ZY残�[&���[f���[����[毋�[
�[*�[J�	[j`
[j`
;j`��7�QSh��QSh��QSh��QSh��QSh��QSh��QSh��Q[h��Q[h��S[h��S[.�<5���=5���=5���=5���=5���=5���=5p��=5p��5p��5p��5pe'p*PWh�8PWh�8PWh�8PWh�8PWh�8P_h�8P_h����� qE|���B�5�e;����� qE|���B�5���+j
W�  ��A(4@\S�Ph����� qMB���rO���^&[��c��	C#�HXXM����W͕D T�IT$*�5�Z5�DC�Q�;��_�[U��u��Vs�E�&���7�^�#n��.�G�T! b�5R����H" �{#UȀ>�L!bX9R��Q1��20���)�@���b �W�a
5kM5L�b���)�@�5�0�����P��ǊpR�������}���. 	8Q���{�kk]�r��+�i�k�^�������x��K�Uq��Qt� ��!q�W>U%���K��������_>�caH4b��[/ɀ�'�Ep����/~(bE����q���xR���2V=�aߟ_�H��S�A	�k�/_]�����i!���A�0���i!�1o�3��ת��*��<}�5^�O�9��9������v��(e@+��`���
���(�����	*�6p��������9:�I��� �ud�s��]���9���$8��M^q������`Q��Q�u>�_�iR��Q�b�oC���pP�8�r�b�jrR�C�����u`C�V_�W���ӧ>����<�p�G�Oɣ�3���x��q�*8}�m��7���2�$J��pz:F�d9aw��y�֧o4I�n�c�b:m��K�OI4!J7�]\q@���SF��O�hrQ��3�|E#J�"F$��J�1OQ`ʨ�fn�)������~��V�t��#��dSY�w�8`���^;L2�IJ����
�冡����}%eH哹&g�u!�u�D/��o^�|���(ݧ���'�'Y�\+2?��zůXE�:�mY{d}:E/��nҲ�lT�s4�幯��j`��eH7$��fi�ǡ�I������%~\d���ǝI��(��Iw�Jm��>$�'#k@�8v����5$�"?�t��~�&
*q�J:���yp�_��}螺�0�L�����|��k����6��-a��;~}���H��r~]0Ӈo���<��ᰐ�
mB�����^�۰��&NR���(�%&��$��-c��9>��0���2��{�܇��:�6��2{C/��%.}�$����xu�i�����1o�i����@��V�ъh-Y�)ߩ�7��%�%s�ļ+�1�ZF3_���9~��dxO��,������~d��n�&2q0�����I�ܜW�.o�#*�)���2�5b2���O.Zs�#&#�@O���l���Gj>��1�}�ц8���;�\	ck�K�1M�I�5&��1-���52bC��s[�@P1:ӟl����s�_�x�9z�*5��5G�{o�/f�����r֘���(:Ϩ���}.���j�r�K���l���XK�"!�##��_��IdE��8��x����2�#�-�*ۮ�5Ѵ��hȮ�>͎���z�ʸ+�ヌ�&��k{�A_n�15r̊3|D��9�����$+5�o�m)	w(�[��&D(P�T2Gwص9����oR؊���k�b��P5��3�1���������ڧ�k�8aE>��n�7�"m6����������}6��ܦ ��$$�ϮK���6����ql�?_?��#�R�����\���X��J�B�0�w�5����^�ě4�]��N��ַ]�~-�Z>j`�o�e�#l��D��,*7i\��I}Θ���D�
|J��~�"d���q���Q�����1�bem�b�n3z�>��?Z]I�GH9�O&�+2���7�m^��"`+?QQB�jP���$�I�8��0GX��0B;�aޱ�Œ|�\���-j8�J�"DqP(BֲX�K��qu}��nJ�b�F�'_	��[���[��K:Dr��~��t���h���]����Q�q�*��n��� �}ZƐV^N���W�&�I��X���:���@^w$�);=��r7���J�X��i��P����e�x�Z���M&�\J��$�K^F'��zO2��#���@�rƞc(uJ����������?�qB      d   P  x�mQ[n�0��N���?����<��
���oP�� -�"9���}
�@�RUZ�]͚2m�Å�x���X���cK1s
\�5v���[����Y&'>c-0�-�)b�I/.����{���#mJ6����D�̲d��bK�� �!i4CyY��]��A��H�b���g��T�b�������X3�^�1ż�l�6�H`(M����L˪�q�F92���+C�u���^r0�!mK�s_�.�U�cd
Pr)��Ih��f���]W­�X�<hQ��Z�J+�d��0�%�]B��0�U~��=�kn����*��et�{yc��}0�73|�      j   �  x�m�M��8���*��[�~�Q���0�ؾ�U܊��:��R���xp$d}�0���u�+-��iLے=4+�!whN4K�мh�¡�<�C����-Rh�h�6�֓iզ[Q2F���Z2
��3d�g�( #DΑQHF��'���P�@Fa�r��3B�:2
����*6+ln �ج�y�IJؼ!�ج�yKV�Ya�b���=Y�f�����
��d�6ߑUlV�|ON�9a�9��-�����,�i(l��SlN؂#�؜�ON�9a��bs�"9��-t���ГWl^��@^�ya�-y��-��[D��"���+6/lѓWl^�b �ؼ��H^�ya�y��-�[�8PPlAغ��b��
�-[g)(� l:�n!��y
�-[((� l]��؂�u����)*�(l�@Q�Ea�[��-
[o(*�(l���آ����b��֣?�)l}��5ۼ�]���C�E�(���S��/�@�9� ��Rg5�P��+���j_TG]8ԡ����(�"��k�B7D��)xCG��3�o�W|� �
�BӶ�+D�n�W�����^a���zj��{��m��W��Tם��zG�����=
���4(^[yMK�ⵕ�����Ҡxm�5��k+��4�����i����ט�iI�"F�&��낟[Z��{}��%Ms��^o�˶������yL?������ߚ�?�L�yA�;�˴��Ut\��k^��k������o}����6񮋌;�`[�G�ԕq己y��)-?'�GV1Sz�q�}�x��%�j:��vPz����>����c�~/�4�1�6����؍ Afo�Y�˒�(�Kz����JlqP'��H,���&�ry?��B�E����R'��J�+���\�
Hƚ���T0�,�ZD��&���@�Tճo��ZeС ���BA@Ӳ�y
�� �b�l�h C5��Ǆ\}ϩ���9���wz��`�.�m>!J�^H4<r ���������� ��Ӳ������4�����5<iFai��7��ԉ ��A}m\G�"�8�ƆG�
<�]�2��lj���d�� ap.�6��{����s�Ny�� ��>��1}D��AX�o�L��A@�.��!P,��������od�|LM>�R��
�fI�q�\�g)V L�?q`o��Q+`�h>#�<޷
����N�����Zaep乿|������y,�1����&��Ӵ?68=PG�W�ru."�W�}+��g���m[?S**��gn�3�;9H�AC3��Q�*�"�L뜞�V�����K�c��m��4��׉��T��g�-�E��{~[�ȅy��zׁ9'y�.''�:=�c ��98 �	B��N�8F ��u�Ԇ`w,����,v�p<���[\�����2��/q�� 6�����Ӄ��|]�t��4�9�����9�<�����F�Iye ���u�T��A$\٧�>�/+�@i��F���>`a��&=?�� ԰@��T%P�L=O|��}��Ed�p>g>�k�����NNQ��}���pH@�3�#�q���<��Z���vyh�:�uI��X;�ݯ���]�hU,Nz�F�8�l@��1C��K~�
*�TR����+�
����幥���c�_�q_�E�LA[������,JxW���s����{�7ر/8D(��������i=��GD�yl���x��y���.�x������^�ao>���jx퇵9���õX8hWw��i𽏖�*"��Nr�d`&_���Y�I�-U���l���`3�����2�`j���˵����Y��:�� ,wb��-4�YF[^��/�\~��S�iM����V���o�l���E���<��l�t��r=�	`��W��)K�C���y/�h�Ӯ���Z�|$��f7p�GY��#`����H����L�}� �΅���("��r.����6AC�5�,��*�r��mI�"Fgagu� ��:��+�E���`��8��
��u~���3� s}���GU;�?��p>_�dp����} l�:ܩ��v��� :����Vl�=�Z�k�!�sO�5��<]���9r���]��/<j����K��Y��o>Ȓy�B��;Ғ$��98�T���@��l���|��hűnɓ�7�H��l:�	.�p,�X[�ؼ�8ب%��t��q[��s���/G�7+R)�����2ڛg��� ����oG      b      x�3��wQpr�sw������ 0�2      f   8   x�3���r�Pvtq�425021�44�4�2��	ur�t�[����b���� E�
�      Z   U   x��A@@���a�gjt� 6��"!����Cz��������u&Q-���[ ���1��x	\ul��D���������&�����      \      x������ � �      ^      x������ � �     