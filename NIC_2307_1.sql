PGDMP                         x            NIC_1707    12.2    12.2 �   ^           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            _           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            `           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            a           1262    78049    NIC_1707    DATABASE     �   CREATE DATABASE "NIC_1707" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
    DROP DATABASE "NIC_1707";
                postgres    false            �            1259    78050    mpr_master_table    TABLE     �  CREATE TABLE public.mpr_master_table (
    id_pk bigint NOT NULL,
    login_id_fk bigint NOT NULL,
    ip character varying(20) NOT NULL,
    nodal_check integer NOT NULL,
    session character varying(4) NOT NULL,
    month numeric(2,0) NOT NULL,
    inserted_at timestamp without time zone NOT NULL,
    CONSTRAINT month_check CHECK (((month > (0)::numeric) AND (month < (13)::numeric))),
    CONSTRAINT node_check CHECK (((nodal_check >= '-1'::integer) AND (nodal_check <= 1)))
);
 $   DROP TABLE public.mpr_master_table;
       public         heap    postgres    false            �            1259    78055    mpr_scheme_awcc    TABLE     S  CREATE TABLE public.mpr_scheme_awcc (
    no_of_icds_cenetres_devoid_of_own_building numeric(10,0) NOT NULL,
    no_of_new_icds_building_constructed numeric(10,0) NOT NULL,
    no_of_icds_centres_running_in_open_space numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 #   DROP TABLE public.mpr_scheme_awcc;
       public         heap    postgres    false    202            �            1259    78061    AWCC_id_seq    SEQUENCE     v   CREATE SEQUENCE public."AWCC_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public."AWCC_id_seq";
       public          postgres    false    203            b           0    0    AWCC_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."AWCC_id_seq" OWNED BY public.mpr_scheme_awcc.id_pk;
          public          postgres    false    204            �            1259    78063    mpr_scheme_baitarani    TABLE     �   CREATE TABLE public.mpr_scheme_baitarani (
    no_of_burning_ghats_taken_up numeric(10,0) NOT NULL,
    completed_till_date date NOT NULL,
    location_code character varying(8) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 (   DROP TABLE public.mpr_scheme_baitarani;
       public         heap    postgres    false    202            �            1259    78069    BAITARANI_id_seq    SEQUENCE     {   CREATE SEQUENCE public."BAITARANI_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."BAITARANI_id_seq";
       public          postgres    false    205            c           0    0    BAITARANI_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."BAITARANI_id_seq" OWNED BY public.mpr_scheme_baitarani.id_pk;
          public          postgres    false    206            �            1259    78071    mpr_scheme_dog    TABLE     h  CREATE TABLE public.mpr_scheme_dog (
    target_for_distribution_of_goats numeric(10,0) NOT NULL,
    no_of_goats_actually_distributed numeric(10,0) NOT NULL,
    no_of_beneficiaries_selected numeric(10,0) NOT NULL,
    no_of_beneficiaries_approved numeric(10,0) NOT NULL,
    location_code character varying(10) NOT NULL
)
INHERITS (public.mpr_master_table);
 "   DROP TABLE public.mpr_scheme_dog;
       public         heap    postgres    false    202            �            1259    78076 
   DOG_id_seq    SEQUENCE     u   CREATE SEQUENCE public."DOG_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public."DOG_id_seq";
       public          postgres    false    207            d           0    0 
   DOG_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."DOG_id_seq" OWNED BY public.mpr_scheme_dog.id_pk;
          public          postgres    false    208            �            1259    78078    mpr_scheme_doptuhd    TABLE     �   CREATE TABLE public.mpr_scheme_doptuhd (
    no_of_power_tiller_distributed numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 &   DROP TABLE public.mpr_scheme_doptuhd;
       public         heap    postgres    false    202            �            1259    78084    DOPTUHD_id_seq    SEQUENCE     y   CREATE SEQUENCE public."DOPTUHD_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."DOPTUHD_id_seq";
       public          postgres    false    209            e           0    0    DOPTUHD_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."DOPTUHD_id_seq" OWNED BY public.mpr_scheme_doptuhd.id_pk;
          public          postgres    false    210            �            1259    78086    mpr_scheme_enrollment    TABLE     }  CREATE TABLE public.mpr_scheme_enrollment (
    gross_enrolment_ratio_primary numeric(10,0) NOT NULL,
    net_enrolment_ratio_primary numeric(10,0) NOT NULL,
    gross_enrolment_ratio_upper_primary numeric(10,0) NOT NULL,
    net_enrolment_ratio_upper_primary numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 )   DROP TABLE public.mpr_scheme_enrollment;
       public         heap    postgres    false    202            �            1259    78092    ENROLLMENT_id_seq    SEQUENCE     |   CREATE SEQUENCE public."ENROLLMENT_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."ENROLLMENT_id_seq";
       public          postgres    false    211            f           0    0    ENROLLMENT_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."ENROLLMENT_id_seq" OWNED BY public.mpr_scheme_enrollment.id_pk;
          public          postgres    false    212            �            1259    78094    mpr_scheme_foodpro    TABLE     �   CREATE TABLE public.mpr_scheme_foodpro (
    status_of_pocurement numeric(10,0) NOT NULL,
    target_of_pocurement numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 &   DROP TABLE public.mpr_scheme_foodpro;
       public         heap    postgres    false    202            �            1259    78100    FOODPRO_id_seq    SEQUENCE     y   CREATE SEQUENCE public."FOODPRO_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."FOODPRO_id_seq";
       public          postgres    false    213            g           0    0    FOODPRO_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."FOODPRO_id_seq" OWNED BY public.mpr_scheme_foodpro.id_pk;
          public          postgres    false    214            �            1259    78102    mpr_scheme_gitanjali    TABLE     I  CREATE TABLE public.mpr_scheme_gitanjali (
    no_of_case_sanctioned_under_gitanjali numeric(10,0) NOT NULL,
    date_of_inception character varying(15) NOT NULL,
    no_of_houses_constructed_under_gitanjali numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 (   DROP TABLE public.mpr_scheme_gitanjali;
       public         heap    postgres    false    202            �            1259    78108    GITANJALI_id_seq    SEQUENCE     {   CREATE SEQUENCE public."GITANJALI_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."GITANJALI_id_seq";
       public          postgres    false    215            h           0    0    GITANJALI_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."GITANJALI_id_seq" OWNED BY public.mpr_scheme_gitanjali.id_pk;
          public          postgres    false    216            �            1259    78110    mpr_scheme_immunisati    TABLE     �   CREATE TABLE public.mpr_scheme_immunisati (
    per_of_fully_immunised_child numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 )   DROP TABLE public.mpr_scheme_immunisati;
       public         heap    postgres    false    202            �            1259    78116    IMMUNISATION_id_seq    SEQUENCE     ~   CREATE SEQUENCE public."IMMUNISATION_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."IMMUNISATION_id_seq";
       public          postgres    false    217            i           0    0    IMMUNISATION_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."IMMUNISATION_id_seq" OWNED BY public.mpr_scheme_immunisati.id_pk;
          public          postgres    false    218            �            1259    78118    mpr_scheme_infantd    TABLE     �   CREATE TABLE public.mpr_scheme_infantd (
    total_no_of_infant_death numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 &   DROP TABLE public.mpr_scheme_infantd;
       public         heap    postgres    false    202            �            1259    78124    INFANTD_id_seq    SEQUENCE     y   CREATE SEQUENCE public."INFANTD_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."INFANTD_id_seq";
       public          postgres    false    219            j           0    0    INFANTD_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."INFANTD_id_seq" OWNED BY public.mpr_scheme_infantd.id_pk;
          public          postgres    false    220            �            1259    78126    mpr_scheme_inspection    TABLE       CREATE TABLE public.mpr_scheme_inspection (
    no_of_homes_inspected_by_senior_officers numeric(10,0) NOT NULL,
    designation_of_officers character varying(5) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 )   DROP TABLE public.mpr_scheme_inspection;
       public         heap    postgres    false    202            �            1259    78132    INSPECTION_id_seq    SEQUENCE     |   CREATE SEQUENCE public."INSPECTION_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."INSPECTION_id_seq";
       public          postgres    false    221            k           0    0    INSPECTION_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."INSPECTION_id_seq" OWNED BY public.mpr_scheme_inspection.id_pk;
          public          postgres    false    222            �            1259    78134    mpr_scheme_instdel    TABLE     �   CREATE TABLE public.mpr_scheme_instdel (
    per_of_institutional_delivery numeric(52,0) NOT NULL,
    location_code character varying(8) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 &   DROP TABLE public.mpr_scheme_instdel;
       public         heap    postgres    false    202            �            1259    78140    INSTDEL_id_seq    SEQUENCE     y   CREATE SEQUENCE public."INSTDEL_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."INSTDEL_id_seq";
       public          postgres    false    223            l           0    0    INSTDEL_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."INSTDEL_id_seq" OWNED BY public.mpr_scheme_instdel.id_pk;
          public          postgres    false    224            �            1259    78142    mpr_scheme_jaldjalb    TABLE     N  CREATE TABLE public.mpr_scheme_jaldjalb (
    date_of_inspection character varying(15) NOT NULL,
    no_of_ponds_excavated_under_jal_dharo_jal_bharo numeric(10,0) NOT NULL,
    no_of_ponds_fish_production_started numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 '   DROP TABLE public.mpr_scheme_jaldjalb;
       public         heap    postgres    false    202            �            1259    78148    JALDJALB_id_seq    SEQUENCE     z   CREATE SEQUENCE public."JALDJALB_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."JALDJALB_id_seq";
       public          postgres    false    225            m           0    0    JALDJALB_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."JALDJALB_id_seq" OWNED BY public.mpr_scheme_jaldjalb.id_pk;
          public          postgres    false    226            �            1259    78150    mpr_scheme_kanyas    TABLE       CREATE TABLE public.mpr_scheme_kanyas (
    no_of_k1_cases_application_received numeric(10,0) NOT NULL,
    no_of_k1_cases_application_sanctioned numeric(10,0) NOT NULL,
    no_of_k1_cases_application_disbursed numeric(10,0) NOT NULL,
    no_of_k2_cases_application_received numeric(10,0) NOT NULL,
    no_of_k2_cases_application_sanctioned numeric(10,0) NOT NULL,
    no_of_k2_cases_application_disbursed numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 %   DROP TABLE public.mpr_scheme_kanyas;
       public         heap    postgres    false    202            �            1259    78156    KANYAS_id_seq    SEQUENCE     x   CREATE SEQUENCE public."KANYAS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."KANYAS_id_seq";
       public          postgres    false    227            n           0    0    KANYAS_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."KANYAS_id_seq" OWNED BY public.mpr_scheme_kanyas.id_pk;
          public          postgres    false    228            �            1259    78158    mpr_scheme_karmatirth    TABLE     �  CREATE TABLE public.mpr_scheme_karmatirth (
    no_of_karmatirtha_sanctioned numeric(10,0) NOT NULL,
    no_of_karmatirtha_for_which_construction_started numeric(10,0) NOT NULL,
    no_of_karmatirtha_for_which_construction_completed numeric(10,0) NOT NULL,
    no_of_karmatirth_operationalised numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 )   DROP TABLE public.mpr_scheme_karmatirth;
       public         heap    postgres    false    202            �            1259    78164    KARMATIRTHA_id_seq    SEQUENCE     }   CREATE SEQUENCE public."KARMATIRTHA_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."KARMATIRTHA_id_seq";
       public          postgres    false    229            o           0    0    KARMATIRTHA_id_seq    SEQUENCE OWNED BY     X   ALTER SEQUENCE public."KARMATIRTHA_id_seq" OWNED BY public.mpr_scheme_karmatirth.id_pk;
          public          postgres    false    230            �            1259    78166    mpr_scheme_kcc    TABLE     �  CREATE TABLE public.mpr_scheme_kcc (
    no_of_agricultrural_families_in_the_district numeric(10,0) NOT NULL,
    no_of_agricultural_families_covered_by_kcc numeric(10,0) NOT NULL,
    kcc_coverage_percentage numeric(6,3) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL,
    CONSTRAINT percent_check CHECK (((kcc_coverage_percentage >= (0)::numeric) AND (kcc_coverage_percentage <= (100)::numeric)))
)
INHERITS (public.mpr_master_table);
 "   DROP TABLE public.mpr_scheme_kcc;
       public         heap    postgres    false    202            �            1259    78173    KCC_id_pk_seq    SEQUENCE     x   CREATE SEQUENCE public."KCC_id_pk_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."KCC_id_pk_seq";
       public          postgres    false    231            p           0    0    KCC_id_pk_seq    SEQUENCE OWNED BY     L   ALTER SEQUENCE public."KCC_id_pk_seq" OWNED BY public.mpr_scheme_kcc.id_pk;
          public          postgres    false    232            �            1259    78175    mpr_scheme_landpp    TABLE     �   CREATE TABLE public.mpr_scheme_landpp (
    no_of_land_permission_pending numeric(10,0) NOT NULL,
    projects_name character varying(30) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 %   DROP TABLE public.mpr_scheme_landpp;
       public         heap    postgres    false    202            �            1259    78181    LANDPP_id_seq    SEQUENCE     x   CREATE SEQUENCE public."LANDPP_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."LANDPP_id_seq";
       public          postgres    false    233            q           0    0    LANDPP_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."LANDPP_id_seq" OWNED BY public.mpr_scheme_landpp.id_pk;
          public          postgres    false    234            �            1259    78183    mpr_semitrans_login    TABLE       CREATE TABLE public.mpr_semitrans_login (
    username character varying(50) NOT NULL,
    password text NOT NULL,
    user_type_id_fk bigint DEFAULT 0 NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL,
    login_id_pk bigint NOT NULL,
    active_status numeric(1,0) NOT NULL,
    dept_id_fk bigint DEFAULT 0 NOT NULL,
    office_id_fk bigint DEFAULT 0 NOT NULL,
    desig_id_fk bigint DEFAULT 0 NOT NULL,
    CONSTRAINT login_active_check CHECK (((active_status >= (0)::numeric) AND (active_status <= (1)::numeric)))
);
 '   DROP TABLE public.mpr_semitrans_login;
       public         heap    postgres    false            �            1259    78195    Login_id_seq    SEQUENCE     w   CREATE SEQUENCE public."Login_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Login_id_seq";
       public          postgres    false    235            r           0    0    Login_id_seq    SEQUENCE OWNED BY     V   ALTER SEQUENCE public."Login_id_seq" OWNED BY public.mpr_semitrans_login.login_id_pk;
          public          postgres    false    236            �            1259    78197    Login_user_type_id_fk_seq    SEQUENCE     �   CREATE SEQUENCE public."Login_user_type_id_fk_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."Login_user_type_id_fk_seq";
       public          postgres    false    235            s           0    0    Login_user_type_id_fk_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."Login_user_type_id_fk_seq" OWNED BY public.mpr_semitrans_login.user_type_id_fk;
          public          postgres    false    237            �            1259    78199    mpr_scheme_maternald    TABLE     �   CREATE TABLE public.mpr_scheme_maternald (
    total_no_of_maternal_death numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 (   DROP TABLE public.mpr_scheme_maternald;
       public         heap    postgres    false    202            �            1259    78205    MATERNALD_id_seq    SEQUENCE     {   CREATE SEQUENCE public."MATERNALD_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."MATERNALD_id_seq";
       public          postgres    false    238            t           0    0    MATERNALD_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."MATERNALD_id_seq" OWNED BY public.mpr_scheme_maternald.id_pk;
          public          postgres    false    239            �            1259    78207    mpr_scheme_mci    TABLE     Z  CREATE TABLE public.mpr_scheme_mci (
    percentage_of_malnourished_child numeric(6,3) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL,
    CONSTRAINT mci_percent_check CHECK (((percentage_of_malnourished_child >= (0)::numeric) AND (percentage_of_malnourished_child <= (100)::numeric)))
)
INHERITS (public.mpr_master_table);
 "   DROP TABLE public.mpr_scheme_mci;
       public         heap    postgres    false    202            �            1259    78214 
   MCI_id_seq    SEQUENCE     u   CREATE SEQUENCE public."MCI_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public."MCI_id_seq";
       public          postgres    false    240            u           0    0 
   MCI_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."MCI_id_seq" OWNED BY public.mpr_scheme_mci.id_pk;
          public          postgres    false    241            �            1259    78216    mpr_scheme_minoritys    TABLE     n  CREATE TABLE public.mpr_scheme_minoritys (
    target_for_scholarship_distribution_aikyashree numeric(10,0) NOT NULL,
    no_of_students_distributed_scholarship numeric(10,0) NOT NULL,
    no_of_application_uploaded_under_aikyashree_scholarship numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 (   DROP TABLE public.mpr_scheme_minoritys;
       public         heap    postgres    false    202            �            1259    78222    MINORITYS_id_seq    SEQUENCE     {   CREATE SEQUENCE public."MINORITYS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."MINORITYS_id_seq";
       public          postgres    false    242            v           0    0    MINORITYS_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."MINORITYS_id_seq" OWNED BY public.mpr_scheme_minoritys.id_pk;
          public          postgres    false    243            �            1259    78224    mpr_scheme_poe    TABLE     �   CREATE TABLE public.mpr_scheme_poe (
    target numeric(10,0) NOT NULL,
    production numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 "   DROP TABLE public.mpr_scheme_poe;
       public         heap    postgres    false    202            �            1259    78230 
   POE_id_seq    SEQUENCE     u   CREATE SEQUENCE public."POE_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public."POE_id_seq";
       public          postgres    false    244            w           0    0 
   POE_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."POE_id_seq" OWNED BY public.mpr_scheme_poe.id_pk;
          public          postgres    false    245            �            1259    78232    mpr_scheme_saboojshre    TABLE     <  CREATE TABLE public.mpr_scheme_saboojshre (
    no_of_children_born_since_inception_of_the_project_in_the_dist numeric(10,0) NOT NULL,
    no_of_tree_sapling_handed_over_to_the_new_born_children numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 )   DROP TABLE public.mpr_scheme_saboojshre;
       public         heap    postgres    false    202            �            1259    78238    SABOOJSHREE_id_seq    SEQUENCE     }   CREATE SEQUENCE public."SABOOJSHREE_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."SABOOJSHREE_id_seq";
       public          postgres    false    246            x           0    0    SABOOJSHREE_id_seq    SEQUENCE OWNED BY     X   ALTER SEQUENCE public."SABOOJSHREE_id_seq" OWNED BY public.mpr_scheme_saboojshre.id_pk;
          public          postgres    false    247            �            1259    78240    mpr_scheme_saboojs    TABLE        CREATE TABLE public.mpr_scheme_saboojs (
    target_for_distribution_of_cycles numeric(10,0) NOT NULL,
    cycle_distributed_till_date numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 &   DROP TABLE public.mpr_scheme_saboojs;
       public         heap    postgres    false    202            �            1259    78246    SABOOJS_id_seq    SEQUENCE     y   CREATE SEQUENCE public."SABOOJS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."SABOOJS_id_seq";
       public          postgres    false    248            y           0    0    SABOOJS_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."SABOOJS_id_seq" OWNED BY public.mpr_scheme_saboojs.id_pk;
          public          postgres    false    249            �            1259    78248    mpr_scheme_safedsavel    TABLE       CREATE TABLE public.mpr_scheme_safedsavel (
    no_of_accidents numeric(10,0) NOT NULL,
    no_of_death numeric(10,0) NOT NULL,
    no_of_insured_person numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 )   DROP TABLE public.mpr_scheme_safedsavel;
       public         heap    postgres    false    202            �            1259    78254    SAFEDSAVEL_id_seq    SEQUENCE     |   CREATE SEQUENCE public."SAFEDSAVEL_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."SAFEDSAVEL_id_seq";
       public          postgres    false    250            z           0    0    SAFEDSAVEL_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."SAFEDSAVEL_id_seq" OWNED BY public.mpr_scheme_safedsavel.id_pk;
          public          postgres    false    251            �            1259    78256    mpr_scheme_samabythi    TABLE       CREATE TABLE public.mpr_scheme_samabythi (
    no_of_beneficiaries_provided_benefit_till_date numeric(10,0) NOT NULL,
    till_date character varying(15) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 (   DROP TABLE public.mpr_scheme_samabythi;
       public         heap    postgres    false    202            �            1259    78262    SAMABYTHI_id_seq    SEQUENCE     {   CREATE SEQUENCE public."SAMABYTHI_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."SAMABYTHI_id_seq";
       public          postgres    false    252            {           0    0    SAMABYTHI_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."SAMABYTHI_id_seq" OWNED BY public.mpr_scheme_samabythi.id_pk;
          public          postgres    false    253            �            1259    78264    mpr_scheme_sikshas    TABLE     m  CREATE TABLE public.mpr_scheme_sikshas (
    targetted_no_of_sc_st_student_under_sikshashree numeric(10,0) NOT NULL,
    no_of_students_getting_benefit_under_sikshashree numeric(10,0) NOT NULL,
    no_of_applications_uploaded_under_sikshashree numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 &   DROP TABLE public.mpr_scheme_sikshas;
       public         heap    postgres    false    202            �            1259    78270    SIKSHAS_id_seq    SEQUENCE     y   CREATE SEQUENCE public."SIKSHAS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."SIKSHAS_id_seq";
       public          postgres    false    254            |           0    0    SIKSHAS_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."SIKSHAS_id_seq" OWNED BY public.mpr_scheme_sikshas.id_pk;
          public          postgres    false    255                        1259    78272    mpr_scheme_svskp    TABLE     	  CREATE TABLE public.mpr_scheme_svskp (
    no_of_project_sponsored_under_svskp numeric(10,0) NOT NULL,
    no_of_project_sanctioned_under_svskp numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 $   DROP TABLE public.mpr_scheme_svskp;
       public         heap    postgres    false    202                       1259    78278    SVSKP_id_seq    SEQUENCE     w   CREATE SEQUENCE public."SVSKP_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."SVSKP_id_seq";
       public          postgres    false    256            }           0    0    SVSKP_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."SVSKP_id_seq" OWNED BY public.mpr_scheme_svskp.id_pk;
          public          postgres    false    257                       1259    78280    mpr_scheme_yubas    TABLE     /  CREATE TABLE public.mpr_scheme_yubas (
    no_of_unemployed_youth_registered_under_yubashree numeric(10,0) NOT NULL,
    no_of_unemployed_registered_youth_getting_monthly_assistance numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 $   DROP TABLE public.mpr_scheme_yubas;
       public         heap    postgres    false    202                       1259    78286    YUBAS_id_seq    SEQUENCE     w   CREATE SEQUENCE public."YUBAS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."YUBAS_id_seq";
       public          postgres    false    258            ~           0    0    YUBAS_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."YUBAS_id_seq" OWNED BY public.mpr_scheme_yubas.id_pk;
          public          postgres    false    259                       1259    78288    mpr_scheme_anand    TABLE       CREATE TABLE public.mpr_scheme_anand (
    total_no_of_shgs_formed_in_the_district numeric(10,0) NOT NULL,
    total_no_of_shgs_got_credit_linkage numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 $   DROP TABLE public.mpr_scheme_anand;
       public         heap    postgres    false    202                       1259    78294    anand_id_seq    SEQUENCE     u   CREATE SEQUENCE public.anand_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.anand_id_seq;
       public          postgres    false    260                       0    0    anand_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.anand_id_seq OWNED BY public.mpr_scheme_anand.id_pk;
          public          postgres    false    261                       1259    78296    mpr_master_attri_table    TABLE     �   CREATE TABLE public.mpr_master_attri_table (
    attri_id_pk bigint NOT NULL,
    scheme_id_fk bigint DEFAULT 0 NOT NULL,
    attri_name character varying(100) NOT NULL,
    actual_name character varying(100) NOT NULL
);
 *   DROP TABLE public.mpr_master_attri_table;
       public         heap    postgres    false                       1259    78300    att_table_id_seq    SEQUENCE     y   CREATE SEQUENCE public.att_table_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.att_table_id_seq;
       public          postgres    false    262            �           0    0    att_table_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.att_table_id_seq OWNED BY public.mpr_master_attri_table.attri_id_pk;
          public          postgres    false    263                       1259    78302    mpr_trans_audit_log    TABLE     �  CREATE TABLE public.mpr_trans_audit_log (
    section character varying(100) NOT NULL,
    action character varying(50) NOT NULL,
    request character varying(100) NOT NULL,
    comment character varying(200) DEFAULT 'NA'::character varying NOT NULL,
    ip_addr character varying(20) NOT NULL,
    audit_id_pk bigint NOT NULL,
    login_id_fk bigint NOT NULL,
    "timestamp" timestamp without time zone NOT NULL
);
 '   DROP TABLE public.mpr_trans_audit_log;
       public         heap    postgres    false            	           1259    78306    audit_log_id_seq    SEQUENCE     y   CREATE SEQUENCE public.audit_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.audit_log_id_seq;
       public          postgres    false    264            �           0    0    audit_log_id_seq    SEQUENCE OWNED BY     X   ALTER SEQUENCE public.audit_log_id_seq OWNED BY public.mpr_trans_audit_log.audit_id_pk;
          public          postgres    false    265            
           1259    78308    mpr_semitrans_check_first_user    TABLE     u  CREATE TABLE public.mpr_semitrans_check_first_user (
    user_id_pk bigint NOT NULL,
    check_if_first_user integer NOT NULL,
    check_profile_updated_once integer NOT NULL,
    CONSTRAINT check_first_user_check CHECK ((check_if_first_user = ANY (ARRAY[0, 1]))),
    CONSTRAINT check_profile_updated_once_check CHECK ((check_profile_updated_once = ANY (ARRAY[0, 1])))
);
 2   DROP TABLE public.mpr_semitrans_check_first_user;
       public         heap    postgres    false                       1259    78313 (   check_First_User_check_if_first_user_seq    SEQUENCE     �   CREATE SEQUENCE public."check_First_User_check_if_first_user_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public."check_First_User_check_if_first_user_seq";
       public          postgres    false    266            �           0    0 (   check_First_User_check_if_first_user_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."check_First_User_check_if_first_user_seq" OWNED BY public.mpr_semitrans_check_first_user.check_if_first_user;
          public          postgres    false    267                       1259    78315    check_First_User_user_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public."check_First_User_user_id_pk_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."check_First_User_user_id_pk_seq";
       public          postgres    false    266            �           0    0    check_First_User_user_id_pk_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public."check_First_User_user_id_pk_seq" OWNED BY public.mpr_semitrans_check_first_user.user_id_pk;
          public          postgres    false    268                       1259    78317 !   mpr_semitrans_dba_financial_range    TABLE     %  CREATE TABLE public.mpr_semitrans_dba_financial_range (
    dba_financial_range_table_id_pk bigint NOT NULL,
    financial_year_range character varying(4) NOT NULL,
    month numeric(2,0) NOT NULL,
    CONSTRAINT dba_month_check CHECK (((month > (0)::numeric) AND (month < (13)::numeric)))
);
 5   DROP TABLE public.mpr_semitrans_dba_financial_range;
       public         heap    postgres    false                       1259    78321 =   dba_financial_range_table_dba_financial_range_table_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.dba_financial_range_table_dba_financial_range_table_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 T   DROP SEQUENCE public.dba_financial_range_table_dba_financial_range_table_id_pk_seq;
       public          postgres    false    269            �           0    0 =   dba_financial_range_table_dba_financial_range_table_id_pk_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.dba_financial_range_table_dba_financial_range_table_id_pk_seq OWNED BY public.mpr_semitrans_dba_financial_range.dba_financial_range_table_id_pk;
          public          postgres    false    270                       1259    78323    mpr_master_designation    TABLE     �   CREATE TABLE public.mpr_master_designation (
    desig_id_pk bigint NOT NULL,
    desig_name character varying(100) NOT NULL,
    dept_id_fk bigint NOT NULL
);
 *   DROP TABLE public.mpr_master_designation;
       public         heap    postgres    false                       1259    78326    designation_desig_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.designation_desig_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.designation_desig_id_pk_seq;
       public          postgres    false    271            �           0    0    designation_desig_id_pk_seq    SEQUENCE OWNED BY     f   ALTER SEQUENCE public.designation_desig_id_pk_seq OWNED BY public.mpr_master_designation.desig_id_pk;
          public          postgres    false    272                       1259    78328    mpr_scheme_doc    TABLE       CREATE TABLE public.mpr_scheme_doc (
    target_for_distribution_of_poultry numeric(10,0) NOT NULL,
    no_of_poultry_actually_distributed numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 "   DROP TABLE public.mpr_scheme_doc;
       public         heap    postgres    false    202                       1259    78334 
   doc_id_seq    SEQUENCE     s   CREATE SEQUENCE public.doc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.doc_id_seq;
       public          postgres    false    273            �           0    0 
   doc_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.doc_id_seq OWNED BY public.mpr_scheme_doc.id_pk;
          public          postgres    false    274                       1259    78336    mpr_master_financial_year    TABLE     �   CREATE TABLE public.mpr_master_financial_year (
    financial_year_master_id_pk bigint NOT NULL,
    year_type character varying(50) NOT NULL
);
 -   DROP TABLE public.mpr_master_financial_year;
       public         heap    postgres    false                       1259    78339 5   financial_year_master_financial_year_master_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.financial_year_master_financial_year_master_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 L   DROP SEQUENCE public.financial_year_master_financial_year_master_id_pk_seq;
       public          postgres    false    275            �           0    0 5   financial_year_master_financial_year_master_id_pk_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.financial_year_master_financial_year_master_id_pk_seq OWNED BY public.mpr_master_financial_year.financial_year_master_id_pk;
          public          postgres    false    276                       1259    78341    mpr_scheme_kishanm    TABLE     ,  CREATE TABLE public.mpr_scheme_kishanm (
    no_of_kishan_mandis_sanctioned numeric(10,0) NOT NULL,
    no_of_kishan_mandis_operational numeric(10,0) NOT NULL,
    operationality numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 &   DROP TABLE public.mpr_scheme_kishanm;
       public         heap    postgres    false    202                       1259    78347    kishanm_id_seq    SEQUENCE     w   CREATE SEQUENCE public.kishanm_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.kishanm_id_seq;
       public          postgres    false    277            �           0    0    kishanm_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.kishanm_id_seq OWNED BY public.mpr_scheme_kishanm.id_pk;
          public          postgres    false    278                       1259    78349    mpr_master_location_data    TABLE     �   CREATE TABLE public.mpr_master_location_data (
    location_area character varying(100) NOT NULL,
    location_code character varying(12) NOT NULL,
    location_id_pk bigint NOT NULL
);
 ,   DROP TABLE public.mpr_master_location_data;
       public         heap    postgres    false                       1259    78352     location_data_location_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.location_data_location_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.location_data_location_id_pk_seq;
       public          postgres    false    279            �           0    0     location_data_location_id_pk_seq    SEQUENCE OWNED BY     p   ALTER SEQUENCE public.location_data_location_id_pk_seq OWNED BY public.mpr_master_location_data.location_id_pk;
          public          postgres    false    280                       1259    78354    mpr_trans_meeting_schedule    TABLE     �   CREATE TABLE public.mpr_trans_meeting_schedule (
    meeting_id_pk bigint NOT NULL,
    start_time character varying(16) NOT NULL,
    end_time character varying(16) NOT NULL
);
 .   DROP TABLE public.mpr_trans_meeting_schedule;
       public         heap    postgres    false                       1259    78357    meeting_schedule_id_seq    SEQUENCE     �   CREATE SEQUENCE public.meeting_schedule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.meeting_schedule_id_seq;
       public          postgres    false    281            �           0    0    meeting_schedule_id_seq    SEQUENCE OWNED BY     h   ALTER SEQUENCE public.meeting_schedule_id_seq OWNED BY public.mpr_trans_meeting_schedule.meeting_id_pk;
          public          postgres    false    282                       1259    78359    mpr_scheme_mgnregs    TABLE     �  CREATE TABLE public.mpr_scheme_mgnregs (
    no_of_person_days_generated_under_mgnregs numeric(10,0) NOT NULL,
    average_no_of_persondays_generated_per_household numeric(10,0) NOT NULL,
    expenditure_of_the_session numeric(10,0) NOT NULL,
    per_of_labour_budget_achieved numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 &   DROP TABLE public.mpr_scheme_mgnregs;
       public         heap    postgres    false    202                       1259    78365    mgnres_id_seq    SEQUENCE     v   CREATE SEQUENCE public.mgnres_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.mgnres_id_seq;
       public          postgres    false    283            �           0    0    mgnres_id_seq    SEQUENCE OWNED BY     N   ALTER SEQUENCE public.mgnres_id_seq OWNED BY public.mpr_scheme_mgnregs.id_pk;
          public          postgres    false    284                       1259    78367    mpr_master_block    TABLE     �   CREATE TABLE public.mpr_master_block (
    block_id_pk bigint NOT NULL,
    block_name character varying(50) NOT NULL,
    block_lg_code bigint NOT NULL,
    subdiv_id_fk bigint DEFAULT 0 NOT NULL,
    location_id_fk bigint DEFAULT 0 NOT NULL
);
 $   DROP TABLE public.mpr_master_block;
       public         heap    postgres    false                       1259    78372    mpr_master_dashboard_info    TABLE     �   CREATE TABLE public.mpr_master_dashboard_info (
    dashboard_id_pk bigint NOT NULL,
    sch_tab_name character varying(50) NOT NULL,
    attr_target character varying(100) NOT NULL,
    attri_progress character varying(100) NOT NULL
);
 -   DROP TABLE public.mpr_master_dashboard_info;
       public         heap    postgres    false                       1259    78375    mpr_master_department    TABLE     �   CREATE TABLE public.mpr_master_department (
    dept_id_pk bigint NOT NULL,
    dept_name character varying(100) NOT NULL,
    short_name character varying(15) NOT NULL,
    office_id_fk bigint DEFAULT 0 NOT NULL
);
 )   DROP TABLE public.mpr_master_department;
       public         heap    postgres    false                        1259    78379    mpr_master_district    TABLE     �   CREATE TABLE public.mpr_master_district (
    district_id_pk bigint NOT NULL,
    district_name character varying(50) NOT NULL,
    state_id_fk bigint DEFAULT 0 NOT NULL,
    dist_lg_code bigint NOT NULL,
    location_id_fk bigint DEFAULT 0 NOT NULL
);
 '   DROP TABLE public.mpr_master_district;
       public         heap    postgres    false            !           1259    78384 &   mpr_master_district_district_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.mpr_master_district_district_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.mpr_master_district_district_id_pk_seq;
       public          postgres    false    288            �           0    0 &   mpr_master_district_district_id_pk_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.mpr_master_district_district_id_pk_seq OWNED BY public.mpr_master_district.district_id_pk;
          public          postgres    false    289            "           1259    78386    mpr_master_office    TABLE     }   CREATE TABLE public.mpr_master_office (
    office_id_pk bigint NOT NULL,
    office_name character varying(100) NOT NULL
);
 %   DROP TABLE public.mpr_master_office;
       public         heap    postgres    false            #           1259    78389    mpr_master_scheme_dept    TABLE     �   CREATE TABLE public.mpr_master_scheme_dept (
    scheme_dept_id_pk bigint NOT NULL,
    scheme_id_fk bigint DEFAULT 0 NOT NULL,
    dept_id_fk bigint NOT NULL
);
 *   DROP TABLE public.mpr_master_scheme_dept;
       public         heap    postgres    false            $           1259    78393    mpr_master_scheme_table    TABLE     �   CREATE TABLE public.mpr_master_scheme_table (
    scheme_id_pk bigint NOT NULL,
    short_name character varying(30) NOT NULL,
    name character varying(50) NOT NULL,
    financial_year_id_fk bigint NOT NULL,
    desig_id_fk bigint NOT NULL
);
 +   DROP TABLE public.mpr_master_scheme_table;
       public         heap    postgres    false            %           1259    78396    mpr_master_state    TABLE     y   CREATE TABLE public.mpr_master_state (
    state_id_pk bigint NOT NULL,
    state_name character varying(50) NOT NULL
);
 $   DROP TABLE public.mpr_master_state;
       public         heap    postgres    false            &           1259    78399     mpr_master_state_state_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.mpr_master_state_state_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.mpr_master_state_state_id_pk_seq;
       public          postgres    false    293            �           0    0     mpr_master_state_state_id_pk_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.mpr_master_state_state_id_pk_seq OWNED BY public.mpr_master_state.state_id_pk;
          public          postgres    false    294            '           1259    78401    mpr_master_subdiv    TABLE     �   CREATE TABLE public.mpr_master_subdiv (
    sub_div_id_pk bigint NOT NULL,
    sub_div_name character varying(50) NOT NULL,
    sub_div_lg_code bigint NOT NULL,
    district_id_fk bigint DEFAULT 0 NOT NULL,
    location_id_fk bigint DEFAULT 0 NOT NULL
);
 %   DROP TABLE public.mpr_master_subdiv;
       public         heap    postgres    false            (           1259    78406 #   mpr_master_subdiv_sub_div_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.mpr_master_subdiv_sub_div_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.mpr_master_subdiv_sub_div_id_pk_seq;
       public          postgres    false    295            �           0    0 #   mpr_master_subdiv_sub_div_id_pk_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.mpr_master_subdiv_sub_div_id_pk_seq OWNED BY public.mpr_master_subdiv.sub_div_id_pk;
          public          postgres    false    296            )           1259    78607    mpr_semitrans_privilege    TABLE       CREATE TABLE public.mpr_semitrans_privilege (
    privilege_id_pk bigint NOT NULL,
    parent integer NOT NULL,
    link character varying(70) NOT NULL,
    "order" integer NOT NULL,
    page_name character varying(70) NOT NULL,
    active_status numeric NOT NULL,
    view_sidebar numeric NOT NULL,
    CONSTRAINT privilege_active_check CHECK (((active_status >= (0)::numeric) AND (active_status <= (1)::numeric))),
    CONSTRAINT view_sidebar_active_check CHECK (((view_sidebar >= (0)::numeric) AND (view_sidebar <= (1)::numeric)))
);
 +   DROP TABLE public.mpr_semitrans_privilege;
       public         heap    postgres    false            *           1259    78615    mpr_semitrans_profile    TABLE     �  CREATE TABLE public.mpr_semitrans_profile (
    username character varying(50) DEFAULT 'NA'::character varying NOT NULL,
    f_name character varying(50) DEFAULT 'NA'::character varying NOT NULL,
    m_name character varying(50) DEFAULT 'NA'::character varying NOT NULL,
    l_name character varying(50) DEFAULT 'NA'::character varying NOT NULL,
    mobile numeric(10,0) DEFAULT 0 NOT NULL,
    email character varying(50) DEFAULT 'NA'::character varying NOT NULL,
    district character varying(50) DEFAULT 'NA'::character varying NOT NULL,
    image text,
    profile_id_pk bigint NOT NULL,
    desig character varying(50) NOT NULL,
    office character varying(50) NOT NULL,
    dept character varying(50) NOT NULL
);
 )   DROP TABLE public.mpr_semitrans_profile;
       public         heap    postgres    false            +           1259    78628    mpr_semitrans_user_privilege    TABLE     X  CREATE TABLE public.mpr_semitrans_user_privilege (
    user_priv_id_pk bigint NOT NULL,
    privilege_id_fk bigint NOT NULL,
    user_type_id_fk bigint NOT NULL,
    active_status integer NOT NULL,
    CONSTRAINT user_privilege_active_check CHECK ((((active_status)::numeric >= (0)::numeric) AND ((active_status)::numeric <= (1)::numeric)))
);
 0   DROP TABLE public.mpr_semitrans_user_privilege;
       public         heap    postgres    false            ,           1259    78632    mpr_semitrans_user_type    TABLE     0  CREATE TABLE public.mpr_semitrans_user_type (
    user_type_id_pk bigint NOT NULL,
    desig character varying(50) NOT NULL,
    active_status numeric NOT NULL,
    user_level integer,
    CONSTRAINT user_type_active_check CHECK (((active_status >= (0)::numeric) AND (active_status <= (1)::numeric)))
);
 +   DROP TABLE public.mpr_semitrans_user_type;
       public         heap    postgres    false            -           1259    78639    mpr_trans_fundalloc    TABLE       CREATE TABLE public.mpr_trans_fundalloc (
    fundalloc_id_pk bigint NOT NULL,
    location_id_fk bigint NOT NULL,
    scheme_id_fk bigint NOT NULL,
    funds_allocated numeric(15,0) NOT NULL,
    funds_utilised numeric(15,0) NOT NULL,
    threshold numeric(6,3) NOT NULL
);
 '   DROP TABLE public.mpr_trans_fundalloc;
       public         heap    postgres    false            .           1259    78642 '   mpr_trans_fundalloc_fundalloc_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.mpr_trans_fundalloc_fundalloc_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.mpr_trans_fundalloc_fundalloc_id_pk_seq;
       public          postgres    false    301            �           0    0 '   mpr_trans_fundalloc_fundalloc_id_pk_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.mpr_trans_fundalloc_fundalloc_id_pk_seq OWNED BY public.mpr_trans_fundalloc.fundalloc_id_pk;
          public          postgres    false    302            9           1259    87579    mpr_trans_issues    TABLE     *   CREATE TABLE public.mpr_trans_issues (
);
 $   DROP TABLE public.mpr_trans_issues;
       public         heap    postgres    false            /           1259    78644    mpr_trans_notification    TABLE       CREATE TABLE public.mpr_trans_notification (
    audience_id character varying(20) NOT NULL,
    notification_text text NOT NULL,
    notification_id_pk bigint NOT NULL,
    "timestamp" timestamp without time zone NOT NULL,
    notification_head text NOT NULL,
    active_status integer NOT NULL,
    audience_desig bigint NOT NULL,
    audience_loc character varying(12) NOT NULL,
    audience_desig_only bigint NOT NULL,
    CONSTRAINT notification_active_check CHECK (((active_status >= 0) AND (active_status <= 1)))
);
 *   DROP TABLE public.mpr_trans_notification;
       public         heap    postgres    false            0           1259    78651    notifications_id_seq    SEQUENCE     }   CREATE SEQUENCE public.notifications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.notifications_id_seq;
       public          postgres    false    303            �           0    0    notifications_id_seq    SEQUENCE OWNED BY     f   ALTER SEQUENCE public.notifications_id_seq OWNED BY public.mpr_trans_notification.notification_id_pk;
          public          postgres    false    304            1           1259    78653    office_dept_office_dept_seq    SEQUENCE     �   CREATE SEQUENCE public.office_dept_office_dept_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.office_dept_office_dept_seq;
       public          postgres    false    287            �           0    0    office_dept_office_dept_seq    SEQUENCE OWNED BY     d   ALTER SEQUENCE public.office_dept_office_dept_seq OWNED BY public.mpr_master_department.dept_id_pk;
          public          postgres    false    305            2           1259    78655    office_office_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.office_office_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.office_office_id_pk_seq;
       public          postgres    false    290            �           0    0    office_office_id_pk_seq    SEQUENCE OWNED BY     ^   ALTER SEQUENCE public.office_office_id_pk_seq OWNED BY public.mpr_master_office.office_id_pk;
          public          postgres    false    306            3           1259    78657    profile_id_pk_seq    SEQUENCE     z   CREATE SEQUENCE public.profile_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.profile_id_pk_seq;
       public          postgres    false    298            �           0    0    profile_id_pk_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.profile_id_pk_seq OWNED BY public.mpr_semitrans_profile.profile_id_pk;
          public          postgres    false    307            4           1259    78659 !   scheme_dept_scheme_dept_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.scheme_dept_scheme_dept_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.scheme_dept_scheme_dept_id_pk_seq;
       public          postgres    false    291            �           0    0 !   scheme_dept_scheme_dept_id_pk_seq    SEQUENCE OWNED BY     r   ALTER SEQUENCE public.scheme_dept_scheme_dept_id_pk_seq OWNED BY public.mpr_master_scheme_dept.scheme_dept_id_pk;
          public          postgres    false    308            5           1259    78661    scheme_table_id_seq    SEQUENCE     |   CREATE SEQUENCE public.scheme_table_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.scheme_table_id_seq;
       public          postgres    false    292            �           0    0    scheme_table_id_seq    SEQUENCE OWNED BY     `   ALTER SEQUENCE public.scheme_table_id_seq OWNED BY public.mpr_master_scheme_table.scheme_id_pk;
          public          postgres    false    309            6           1259    78663    table_id_pk_seq    SEQUENCE     x   CREATE SEQUENCE public.table_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.table_id_pk_seq;
       public          postgres    false    202            �           0    0    table_id_pk_seq    SEQUENCE OWNED BY     N   ALTER SEQUENCE public.table_id_pk_seq OWNED BY public.mpr_master_table.id_pk;
          public          postgres    false    310            7           1259    78665 "   user_privilege_privilege_id_fk_seq    SEQUENCE     �   CREATE SEQUENCE public.user_privilege_privilege_id_fk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.user_privilege_privilege_id_fk_seq;
       public          postgres    false    299            �           0    0 "   user_privilege_privilege_id_fk_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.user_privilege_privilege_id_fk_seq OWNED BY public.mpr_semitrans_user_privilege.privilege_id_fk;
          public          postgres    false    311            8           1259    78667 "   user_privilege_user_type_id_fk_seq    SEQUENCE     �   CREATE SEQUENCE public.user_privilege_user_type_id_fk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.user_privilege_user_type_id_fk_seq;
       public          postgres    false    299            �           0    0 "   user_privilege_user_type_id_fk_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.user_privilege_user_type_id_fk_seq OWNED BY public.mpr_semitrans_user_privilege.user_type_id_fk;
          public          postgres    false    312            L           2604    78669 "   mpr_master_attri_table attri_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_attri_table ALTER COLUMN attri_id_pk SET DEFAULT nextval('public.att_table_id_seq'::regclass);
 Q   ALTER TABLE public.mpr_master_attri_table ALTER COLUMN attri_id_pk DROP DEFAULT;
       public          postgres    false    263    262            g           2604    78670     mpr_master_department dept_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_department ALTER COLUMN dept_id_pk SET DEFAULT nextval('public.office_dept_office_dept_seq'::regclass);
 O   ALTER TABLE public.mpr_master_department ALTER COLUMN dept_id_pk DROP DEFAULT;
       public          postgres    false    305    287            T           2604    78671 "   mpr_master_designation desig_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_designation ALTER COLUMN desig_id_pk SET DEFAULT nextval('public.designation_desig_id_pk_seq'::regclass);
 Q   ALTER TABLE public.mpr_master_designation ALTER COLUMN desig_id_pk DROP DEFAULT;
       public          postgres    false    272    271            j           2604    78672 "   mpr_master_district district_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_district ALTER COLUMN district_id_pk SET DEFAULT nextval('public.mpr_master_district_district_id_pk_seq'::regclass);
 Q   ALTER TABLE public.mpr_master_district ALTER COLUMN district_id_pk DROP DEFAULT;
       public          postgres    false    289    288            Y           2604    78673 5   mpr_master_financial_year financial_year_master_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_financial_year ALTER COLUMN financial_year_master_id_pk SET DEFAULT nextval('public.financial_year_master_financial_year_master_id_pk_seq'::regclass);
 d   ALTER TABLE public.mpr_master_financial_year ALTER COLUMN financial_year_master_id_pk DROP DEFAULT;
       public          postgres    false    276    275            ^           2604    78674 '   mpr_master_location_data location_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_location_data ALTER COLUMN location_id_pk SET DEFAULT nextval('public.location_data_location_id_pk_seq'::regclass);
 V   ALTER TABLE public.mpr_master_location_data ALTER COLUMN location_id_pk DROP DEFAULT;
       public          postgres    false    280    279            k           2604    78675    mpr_master_office office_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_office ALTER COLUMN office_id_pk SET DEFAULT nextval('public.office_office_id_pk_seq'::regclass);
 M   ALTER TABLE public.mpr_master_office ALTER COLUMN office_id_pk DROP DEFAULT;
       public          postgres    false    306    290            m           2604    78676 (   mpr_master_scheme_dept scheme_dept_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_scheme_dept ALTER COLUMN scheme_dept_id_pk SET DEFAULT nextval('public.scheme_dept_scheme_dept_id_pk_seq'::regclass);
 W   ALTER TABLE public.mpr_master_scheme_dept ALTER COLUMN scheme_dept_id_pk DROP DEFAULT;
       public          postgres    false    308    291            n           2604    78677 $   mpr_master_scheme_table scheme_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_scheme_table ALTER COLUMN scheme_id_pk SET DEFAULT nextval('public.scheme_table_id_seq'::regclass);
 S   ALTER TABLE public.mpr_master_scheme_table ALTER COLUMN scheme_id_pk DROP DEFAULT;
       public          postgres    false    309    292            o           2604    78678    mpr_master_state state_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_state ALTER COLUMN state_id_pk SET DEFAULT nextval('public.mpr_master_state_state_id_pk_seq'::regclass);
 K   ALTER TABLE public.mpr_master_state ALTER COLUMN state_id_pk DROP DEFAULT;
       public          postgres    false    294    293            r           2604    78679    mpr_master_subdiv sub_div_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_subdiv ALTER COLUMN sub_div_id_pk SET DEFAULT nextval('public.mpr_master_subdiv_sub_div_id_pk_seq'::regclass);
 N   ALTER TABLE public.mpr_master_subdiv ALTER COLUMN sub_div_id_pk DROP DEFAULT;
       public          postgres    false    296    295            �           2604    78680    mpr_master_table id_pk    DEFAULT     u   ALTER TABLE ONLY public.mpr_master_table ALTER COLUMN id_pk SET DEFAULT nextval('public.table_id_pk_seq'::regclass);
 E   ALTER TABLE public.mpr_master_table ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    310    202            H           2604    78681    mpr_scheme_anand id_pk    DEFAULT     r   ALTER TABLE ONLY public.mpr_scheme_anand ALTER COLUMN id_pk SET DEFAULT nextval('public.anand_id_seq'::regclass);
 E   ALTER TABLE public.mpr_scheme_anand ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    260    261            �           2604    78684    mpr_scheme_awcc id_pk    DEFAULT     r   ALTER TABLE ONLY public.mpr_scheme_awcc ALTER COLUMN id_pk SET DEFAULT nextval('public."AWCC_id_seq"'::regclass);
 D   ALTER TABLE public.mpr_scheme_awcc ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    204    203            �           2604    78685    mpr_scheme_baitarani id_pk    DEFAULT     |   ALTER TABLE ONLY public.mpr_scheme_baitarani ALTER COLUMN id_pk SET DEFAULT nextval('public."BAITARANI_id_seq"'::regclass);
 I   ALTER TABLE public.mpr_scheme_baitarani ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    205    206            V           2604    78688    mpr_scheme_doc id_pk    DEFAULT     n   ALTER TABLE ONLY public.mpr_scheme_doc ALTER COLUMN id_pk SET DEFAULT nextval('public.doc_id_seq'::regclass);
 C   ALTER TABLE public.mpr_scheme_doc ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    273    274            �           2604    78689    mpr_scheme_dog id_pk    DEFAULT     p   ALTER TABLE ONLY public.mpr_scheme_dog ALTER COLUMN id_pk SET DEFAULT nextval('public."DOG_id_seq"'::regclass);
 C   ALTER TABLE public.mpr_scheme_dog ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    207    208            �           2604    78690    mpr_scheme_doptuhd id_pk    DEFAULT     x   ALTER TABLE ONLY public.mpr_scheme_doptuhd ALTER COLUMN id_pk SET DEFAULT nextval('public."DOPTUHD_id_seq"'::regclass);
 G   ALTER TABLE public.mpr_scheme_doptuhd ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    210    209            �           2604    78691    mpr_scheme_enrollment id_pk    DEFAULT     ~   ALTER TABLE ONLY public.mpr_scheme_enrollment ALTER COLUMN id_pk SET DEFAULT nextval('public."ENROLLMENT_id_seq"'::regclass);
 J   ALTER TABLE public.mpr_scheme_enrollment ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    211    212            �           2604    78694    mpr_scheme_foodpro id_pk    DEFAULT     x   ALTER TABLE ONLY public.mpr_scheme_foodpro ALTER COLUMN id_pk SET DEFAULT nextval('public."FOODPRO_id_seq"'::regclass);
 G   ALTER TABLE public.mpr_scheme_foodpro ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    213    214            �           2604    78695    mpr_scheme_gitanjali id_pk    DEFAULT     |   ALTER TABLE ONLY public.mpr_scheme_gitanjali ALTER COLUMN id_pk SET DEFAULT nextval('public."GITANJALI_id_seq"'::regclass);
 I   ALTER TABLE public.mpr_scheme_gitanjali ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    215    216            �           2604    78698    mpr_scheme_immunisati id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_scheme_immunisati ALTER COLUMN id_pk SET DEFAULT nextval('public."IMMUNISATION_id_seq"'::regclass);
 J   ALTER TABLE public.mpr_scheme_immunisati ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    217    218            �           2604    78701    mpr_scheme_infantd id_pk    DEFAULT     x   ALTER TABLE ONLY public.mpr_scheme_infantd ALTER COLUMN id_pk SET DEFAULT nextval('public."INFANTD_id_seq"'::regclass);
 G   ALTER TABLE public.mpr_scheme_infantd ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    219    220            �           2604    78702    mpr_scheme_inspection id_pk    DEFAULT     ~   ALTER TABLE ONLY public.mpr_scheme_inspection ALTER COLUMN id_pk SET DEFAULT nextval('public."INSPECTION_id_seq"'::regclass);
 J   ALTER TABLE public.mpr_scheme_inspection ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    221    222            �           2604    78705    mpr_scheme_instdel id_pk    DEFAULT     x   ALTER TABLE ONLY public.mpr_scheme_instdel ALTER COLUMN id_pk SET DEFAULT nextval('public."INSTDEL_id_seq"'::regclass);
 G   ALTER TABLE public.mpr_scheme_instdel ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    224    223            �           2604    78706    mpr_scheme_jaldjalb id_pk    DEFAULT     z   ALTER TABLE ONLY public.mpr_scheme_jaldjalb ALTER COLUMN id_pk SET DEFAULT nextval('public."JALDJALB_id_seq"'::regclass);
 H   ALTER TABLE public.mpr_scheme_jaldjalb ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    226    225                       2604    78707    mpr_scheme_kanyas id_pk    DEFAULT     v   ALTER TABLE ONLY public.mpr_scheme_kanyas ALTER COLUMN id_pk SET DEFAULT nextval('public."KANYAS_id_seq"'::regclass);
 F   ALTER TABLE public.mpr_scheme_kanyas ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    227    228                       2604    78710    mpr_scheme_karmatirth id_pk    DEFAULT        ALTER TABLE ONLY public.mpr_scheme_karmatirth ALTER COLUMN id_pk SET DEFAULT nextval('public."KARMATIRTHA_id_seq"'::regclass);
 J   ALTER TABLE public.mpr_scheme_karmatirth ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    230    229                       2604    78711    mpr_scheme_kcc id_pk    DEFAULT     s   ALTER TABLE ONLY public.mpr_scheme_kcc ALTER COLUMN id_pk SET DEFAULT nextval('public."KCC_id_pk_seq"'::regclass);
 C   ALTER TABLE public.mpr_scheme_kcc ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    231    232            [           2604    78714    mpr_scheme_kishanm id_pk    DEFAULT     v   ALTER TABLE ONLY public.mpr_scheme_kishanm ALTER COLUMN id_pk SET DEFAULT nextval('public.kishanm_id_seq'::regclass);
 G   ALTER TABLE public.mpr_scheme_kishanm ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    278    277                       2604    78717    mpr_scheme_landpp id_pk    DEFAULT     v   ALTER TABLE ONLY public.mpr_scheme_landpp ALTER COLUMN id_pk SET DEFAULT nextval('public."LANDPP_id_seq"'::regclass);
 F   ALTER TABLE public.mpr_scheme_landpp ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    233    234                       2604    78720    mpr_scheme_maternald id_pk    DEFAULT     |   ALTER TABLE ONLY public.mpr_scheme_maternald ALTER COLUMN id_pk SET DEFAULT nextval('public."MATERNALD_id_seq"'::regclass);
 I   ALTER TABLE public.mpr_scheme_maternald ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    239    238                       2604    78721    mpr_scheme_mci id_pk    DEFAULT     p   ALTER TABLE ONLY public.mpr_scheme_mci ALTER COLUMN id_pk SET DEFAULT nextval('public."MCI_id_seq"'::regclass);
 C   ALTER TABLE public.mpr_scheme_mci ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    241    240            a           2604    78722    mpr_scheme_mgnregs id_pk    DEFAULT     u   ALTER TABLE ONLY public.mpr_scheme_mgnregs ALTER COLUMN id_pk SET DEFAULT nextval('public.mgnres_id_seq'::regclass);
 G   ALTER TABLE public.mpr_scheme_mgnregs ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    283    284            $           2604    78725    mpr_scheme_minoritys id_pk    DEFAULT     |   ALTER TABLE ONLY public.mpr_scheme_minoritys ALTER COLUMN id_pk SET DEFAULT nextval('public."MINORITYS_id_seq"'::regclass);
 I   ALTER TABLE public.mpr_scheme_minoritys ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    242    243            (           2604    78728    mpr_scheme_poe id_pk    DEFAULT     p   ALTER TABLE ONLY public.mpr_scheme_poe ALTER COLUMN id_pk SET DEFAULT nextval('public."POE_id_seq"'::regclass);
 C   ALTER TABLE public.mpr_scheme_poe ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    244    245            0           2604    78729    mpr_scheme_saboojs id_pk    DEFAULT     x   ALTER TABLE ONLY public.mpr_scheme_saboojs ALTER COLUMN id_pk SET DEFAULT nextval('public."SABOOJS_id_seq"'::regclass);
 G   ALTER TABLE public.mpr_scheme_saboojs ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    249    248            ,           2604    78730    mpr_scheme_saboojshre id_pk    DEFAULT        ALTER TABLE ONLY public.mpr_scheme_saboojshre ALTER COLUMN id_pk SET DEFAULT nextval('public."SABOOJSHREE_id_seq"'::regclass);
 J   ALTER TABLE public.mpr_scheme_saboojshre ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    247    246            4           2604    78731    mpr_scheme_safedsavel id_pk    DEFAULT     ~   ALTER TABLE ONLY public.mpr_scheme_safedsavel ALTER COLUMN id_pk SET DEFAULT nextval('public."SAFEDSAVEL_id_seq"'::regclass);
 J   ALTER TABLE public.mpr_scheme_safedsavel ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    251    250            8           2604    78732    mpr_scheme_samabythi id_pk    DEFAULT     |   ALTER TABLE ONLY public.mpr_scheme_samabythi ALTER COLUMN id_pk SET DEFAULT nextval('public."SAMABYTHI_id_seq"'::regclass);
 I   ALTER TABLE public.mpr_scheme_samabythi ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    253    252            <           2604    78733    mpr_scheme_sikshas id_pk    DEFAULT     x   ALTER TABLE ONLY public.mpr_scheme_sikshas ALTER COLUMN id_pk SET DEFAULT nextval('public."SIKSHAS_id_seq"'::regclass);
 G   ALTER TABLE public.mpr_scheme_sikshas ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    254    255            @           2604    78734    mpr_scheme_svskp id_pk    DEFAULT     t   ALTER TABLE ONLY public.mpr_scheme_svskp ALTER COLUMN id_pk SET DEFAULT nextval('public."SVSKP_id_seq"'::regclass);
 E   ALTER TABLE public.mpr_scheme_svskp ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    256    257            D           2604    78735    mpr_scheme_yubas id_pk    DEFAULT     t   ALTER TABLE ONLY public.mpr_scheme_yubas ALTER COLUMN id_pk SET DEFAULT nextval('public."YUBAS_id_seq"'::regclass);
 E   ALTER TABLE public.mpr_scheme_yubas ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    259    258            O           2604    78736 )   mpr_semitrans_check_first_user user_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_semitrans_check_first_user ALTER COLUMN user_id_pk SET DEFAULT nextval('public."check_First_User_user_id_pk_seq"'::regclass);
 X   ALTER TABLE public.mpr_semitrans_check_first_user ALTER COLUMN user_id_pk DROP DEFAULT;
       public          postgres    false    268    266            R           2604    78737 A   mpr_semitrans_dba_financial_range dba_financial_range_table_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_semitrans_dba_financial_range ALTER COLUMN dba_financial_range_table_id_pk SET DEFAULT nextval('public.dba_financial_range_table_dba_financial_range_table_id_pk_seq'::regclass);
 p   ALTER TABLE public.mpr_semitrans_dba_financial_range ALTER COLUMN dba_financial_range_table_id_pk DROP DEFAULT;
       public          postgres    false    270    269                       2604    78738    mpr_semitrans_login login_id_pk    DEFAULT     }   ALTER TABLE ONLY public.mpr_semitrans_login ALTER COLUMN login_id_pk SET DEFAULT nextval('public."Login_id_seq"'::regclass);
 N   ALTER TABLE public.mpr_semitrans_login ALTER COLUMN login_id_pk DROP DEFAULT;
       public          postgres    false    236    235            |           2604    78739 #   mpr_semitrans_profile profile_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_semitrans_profile ALTER COLUMN profile_id_pk SET DEFAULT nextval('public.profile_id_pk_seq'::regclass);
 R   ALTER TABLE public.mpr_semitrans_profile ALTER COLUMN profile_id_pk DROP DEFAULT;
       public          postgres    false    307    298            N           2604    78740    mpr_trans_audit_log audit_id_pk    DEFAULT        ALTER TABLE ONLY public.mpr_trans_audit_log ALTER COLUMN audit_id_pk SET DEFAULT nextval('public.audit_log_id_seq'::regclass);
 N   ALTER TABLE public.mpr_trans_audit_log ALTER COLUMN audit_id_pk DROP DEFAULT;
       public          postgres    false    265    264                       2604    78741 #   mpr_trans_fundalloc fundalloc_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_trans_fundalloc ALTER COLUMN fundalloc_id_pk SET DEFAULT nextval('public.mpr_trans_fundalloc_fundalloc_id_pk_seq'::regclass);
 R   ALTER TABLE public.mpr_trans_fundalloc ALTER COLUMN fundalloc_id_pk DROP DEFAULT;
       public          postgres    false    302    301            _           2604    78742 (   mpr_trans_meeting_schedule meeting_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_trans_meeting_schedule ALTER COLUMN meeting_id_pk SET DEFAULT nextval('public.meeting_schedule_id_seq'::regclass);
 W   ALTER TABLE public.mpr_trans_meeting_schedule ALTER COLUMN meeting_id_pk DROP DEFAULT;
       public          postgres    false    282    281            �           2604    78743 )   mpr_trans_notification notification_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_trans_notification ALTER COLUMN notification_id_pk SET DEFAULT nextval('public.notifications_id_seq'::regclass);
 X   ALTER TABLE public.mpr_trans_notification ALTER COLUMN notification_id_pk DROP DEFAULT;
       public          postgres    false    304    303            (          0    78296    mpr_master_attri_table 
   TABLE DATA           d   COPY public.mpr_master_attri_table (attri_id_pk, scheme_id_fk, attri_name, actual_name) FROM stdin;
    public          postgres    false    262   ��      ?          0    78367    mpr_master_block 
   TABLE DATA           p   COPY public.mpr_master_block (block_id_pk, block_name, block_lg_code, subdiv_id_fk, location_id_fk) FROM stdin;
    public          postgres    false    285   ��      @          0    78372    mpr_master_dashboard_info 
   TABLE DATA           o   COPY public.mpr_master_dashboard_info (dashboard_id_pk, sch_tab_name, attr_target, attri_progress) FROM stdin;
    public          postgres    false    286   ��      A          0    78375    mpr_master_department 
   TABLE DATA           `   COPY public.mpr_master_department (dept_id_pk, dept_name, short_name, office_id_fk) FROM stdin;
    public          postgres    false    287   ��      1          0    78323    mpr_master_designation 
   TABLE DATA           U   COPY public.mpr_master_designation (desig_id_pk, desig_name, dept_id_fk) FROM stdin;
    public          postgres    false    271   ��      B          0    78379    mpr_master_district 
   TABLE DATA           w   COPY public.mpr_master_district (district_id_pk, district_name, state_id_fk, dist_lg_code, location_id_fk) FROM stdin;
    public          postgres    false    288   )�      5          0    78336    mpr_master_financial_year 
   TABLE DATA           [   COPY public.mpr_master_financial_year (financial_year_master_id_pk, year_type) FROM stdin;
    public          postgres    false    275   Y�      9          0    78349    mpr_master_location_data 
   TABLE DATA           `   COPY public.mpr_master_location_data (location_area, location_code, location_id_pk) FROM stdin;
    public          postgres    false    279   ��      D          0    78386    mpr_master_office 
   TABLE DATA           F   COPY public.mpr_master_office (office_id_pk, office_name) FROM stdin;
    public          postgres    false    290   ��      E          0    78389    mpr_master_scheme_dept 
   TABLE DATA           ]   COPY public.mpr_master_scheme_dept (scheme_dept_id_pk, scheme_id_fk, dept_id_fk) FROM stdin;
    public          postgres    false    291   ��      F          0    78393    mpr_master_scheme_table 
   TABLE DATA           t   COPY public.mpr_master_scheme_table (scheme_id_pk, short_name, name, financial_year_id_fk, desig_id_fk) FROM stdin;
    public          postgres    false    292   ��      G          0    78396    mpr_master_state 
   TABLE DATA           C   COPY public.mpr_master_state (state_id_pk, state_name) FROM stdin;
    public          postgres    false    293   7�      I          0    78401    mpr_master_subdiv 
   TABLE DATA           y   COPY public.mpr_master_subdiv (sub_div_id_pk, sub_div_name, sub_div_lg_code, district_id_fk, location_id_fk) FROM stdin;
    public          postgres    false    295   c�      �          0    78050    mpr_master_table 
   TABLE DATA           l   COPY public.mpr_master_table (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at) FROM stdin;
    public          postgres    false    202   ��      &          0    78288    mpr_scheme_anand 
   TABLE DATA           �   COPY public.mpr_scheme_anand (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, total_no_of_shgs_formed_in_the_district, total_no_of_shgs_got_credit_linkage, location_code) FROM stdin;
    public          postgres    false    260   ��      �          0    78055    mpr_scheme_awcc 
   TABLE DATA           �   COPY public.mpr_scheme_awcc (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_icds_cenetres_devoid_of_own_building, no_of_new_icds_building_constructed, no_of_icds_centres_running_in_open_space, location_code) FROM stdin;
    public          postgres    false    203   ��      �          0    78063    mpr_scheme_baitarani 
   TABLE DATA           �   COPY public.mpr_scheme_baitarani (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_burning_ghats_taken_up, completed_till_date, location_code) FROM stdin;
    public          postgres    false    205   ��      3          0    78328    mpr_scheme_doc 
   TABLE DATA           �   COPY public.mpr_scheme_doc (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, target_for_distribution_of_poultry, no_of_poultry_actually_distributed, location_code) FROM stdin;
    public          postgres    false    273   �      �          0    78071    mpr_scheme_dog 
   TABLE DATA           �   COPY public.mpr_scheme_dog (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, target_for_distribution_of_goats, no_of_goats_actually_distributed, no_of_beneficiaries_selected, no_of_beneficiaries_approved, location_code) FROM stdin;
    public          postgres    false    207   5�      �          0    78078    mpr_scheme_doptuhd 
   TABLE DATA           �   COPY public.mpr_scheme_doptuhd (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_power_tiller_distributed, location_code) FROM stdin;
    public          postgres    false    209   R�      �          0    78086    mpr_scheme_enrollment 
   TABLE DATA             COPY public.mpr_scheme_enrollment (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, gross_enrolment_ratio_primary, net_enrolment_ratio_primary, gross_enrolment_ratio_upper_primary, net_enrolment_ratio_upper_primary, location_code) FROM stdin;
    public          postgres    false    211   o�      �          0    78094    mpr_scheme_foodpro 
   TABLE DATA           �   COPY public.mpr_scheme_foodpro (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, status_of_pocurement, target_of_pocurement, location_code) FROM stdin;
    public          postgres    false    213   ��      �          0    78102    mpr_scheme_gitanjali 
   TABLE DATA           �   COPY public.mpr_scheme_gitanjali (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_case_sanctioned_under_gitanjali, date_of_inception, no_of_houses_constructed_under_gitanjali, location_code) FROM stdin;
    public          postgres    false    215   ��      �          0    78110    mpr_scheme_immunisati 
   TABLE DATA           �   COPY public.mpr_scheme_immunisati (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, per_of_fully_immunised_child, location_code) FROM stdin;
    public          postgres    false    217   ��      �          0    78118    mpr_scheme_infantd 
   TABLE DATA           �   COPY public.mpr_scheme_infantd (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, total_no_of_infant_death, location_code) FROM stdin;
    public          postgres    false    219   ��      �          0    78126    mpr_scheme_inspection 
   TABLE DATA           �   COPY public.mpr_scheme_inspection (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_homes_inspected_by_senior_officers, designation_of_officers, location_code) FROM stdin;
    public          postgres    false    221    �                0    78134    mpr_scheme_instdel 
   TABLE DATA           �   COPY public.mpr_scheme_instdel (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, per_of_institutional_delivery, location_code) FROM stdin;
    public          postgres    false    223   �                0    78142    mpr_scheme_jaldjalb 
   TABLE DATA           �   COPY public.mpr_scheme_jaldjalb (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, date_of_inspection, no_of_ponds_excavated_under_jal_dharo_jal_bharo, no_of_ponds_fish_production_started, location_code) FROM stdin;
    public          postgres    false    225   :�                0    78150    mpr_scheme_kanyas 
   TABLE DATA           `  COPY public.mpr_scheme_kanyas (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_k1_cases_application_received, no_of_k1_cases_application_sanctioned, no_of_k1_cases_application_disbursed, no_of_k2_cases_application_received, no_of_k2_cases_application_sanctioned, no_of_k2_cases_application_disbursed, location_code) FROM stdin;
    public          postgres    false    227   W�                0    78158    mpr_scheme_karmatirth 
   TABLE DATA           &  COPY public.mpr_scheme_karmatirth (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_karmatirtha_sanctioned, no_of_karmatirtha_for_which_construction_started, no_of_karmatirtha_for_which_construction_completed, no_of_karmatirth_operationalised, location_code) FROM stdin;
    public          postgres    false    229   t�      	          0    78166    mpr_scheme_kcc 
   TABLE DATA           �   COPY public.mpr_scheme_kcc (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_agricultrural_families_in_the_district, no_of_agricultural_families_covered_by_kcc, kcc_coverage_percentage, location_code) FROM stdin;
    public          postgres    false    231   ��      7          0    78341    mpr_scheme_kishanm 
   TABLE DATA           �   COPY public.mpr_scheme_kishanm (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_kishan_mandis_sanctioned, no_of_kishan_mandis_operational, operationality, location_code) FROM stdin;
    public          postgres    false    277   ��                0    78175    mpr_scheme_landpp 
   TABLE DATA           �   COPY public.mpr_scheme_landpp (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_land_permission_pending, projects_name, location_code) FROM stdin;
    public          postgres    false    233   ��                0    78199    mpr_scheme_maternald 
   TABLE DATA           �   COPY public.mpr_scheme_maternald (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, total_no_of_maternal_death, location_code) FROM stdin;
    public          postgres    false    238   ��                0    78207    mpr_scheme_mci 
   TABLE DATA           �   COPY public.mpr_scheme_mci (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, percentage_of_malnourished_child, location_code) FROM stdin;
    public          postgres    false    240   �      =          0    78359    mpr_scheme_mgnregs 
   TABLE DATA             COPY public.mpr_scheme_mgnregs (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_person_days_generated_under_mgnregs, average_no_of_persondays_generated_per_household, expenditure_of_the_session, per_of_labour_budget_achieved, location_code) FROM stdin;
    public          postgres    false    283   "�                0    78216    mpr_scheme_minoritys 
   TABLE DATA             COPY public.mpr_scheme_minoritys (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, target_for_scholarship_distribution_aikyashree, no_of_students_distributed_scholarship, no_of_application_uploaded_under_aikyashree_scholarship, location_code) FROM stdin;
    public          postgres    false    242   ?�                0    78224    mpr_scheme_poe 
   TABLE DATA           �   COPY public.mpr_scheme_poe (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, target, production, location_code) FROM stdin;
    public          postgres    false    244   \�                0    78240    mpr_scheme_saboojs 
   TABLE DATA           �   COPY public.mpr_scheme_saboojs (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, target_for_distribution_of_cycles, cycle_distributed_till_date, location_code) FROM stdin;
    public          postgres    false    248   y�                0    78232    mpr_scheme_saboojshre 
   TABLE DATA           �   COPY public.mpr_scheme_saboojshre (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_children_born_since_inception_of_the_project_in_the_dist, no_of_tree_sapling_handed_over_to_the_new_born_children, location_code) FROM stdin;
    public          postgres    false    246   ��                0    78248    mpr_scheme_safedsavel 
   TABLE DATA           �   COPY public.mpr_scheme_safedsavel (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_accidents, no_of_death, no_of_insured_person, location_code) FROM stdin;
    public          postgres    false    250   ��                0    78256    mpr_scheme_samabythi 
   TABLE DATA           �   COPY public.mpr_scheme_samabythi (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_beneficiaries_provided_benefit_till_date, till_date, location_code) FROM stdin;
    public          postgres    false    252   ��                 0    78264    mpr_scheme_sikshas 
   TABLE DATA             COPY public.mpr_scheme_sikshas (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, targetted_no_of_sc_st_student_under_sikshashree, no_of_students_getting_benefit_under_sikshashree, no_of_applications_uploaded_under_sikshashree, location_code) FROM stdin;
    public          postgres    false    254   ��      "          0    78272    mpr_scheme_svskp 
   TABLE DATA           �   COPY public.mpr_scheme_svskp (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_project_sponsored_under_svskp, no_of_project_sanctioned_under_svskp, location_code) FROM stdin;
    public          postgres    false    256   
�      $          0    78280    mpr_scheme_yubas 
   TABLE DATA           �   COPY public.mpr_scheme_yubas (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_unemployed_youth_registered_under_yubashree, no_of_unemployed_registered_youth_getting_monthly_assistance, location_code) FROM stdin;
    public          postgres    false    258   '�      ,          0    78308    mpr_semitrans_check_first_user 
   TABLE DATA           u   COPY public.mpr_semitrans_check_first_user (user_id_pk, check_if_first_user, check_profile_updated_once) FROM stdin;
    public          postgres    false    266   D�      /          0    78317 !   mpr_semitrans_dba_financial_range 
   TABLE DATA           y   COPY public.mpr_semitrans_dba_financial_range (dba_financial_range_table_id_pk, financial_year_range, month) FROM stdin;
    public          postgres    false    269   x�                0    78183    mpr_semitrans_login 
   TABLE DATA           �   COPY public.mpr_semitrans_login (username, password, user_type_id_fk, location_code, login_id_pk, active_status, dept_id_fk, office_id_fk, desig_id_fk) FROM stdin;
    public          postgres    false    235   ��      K          0    78607    mpr_semitrans_privilege 
   TABLE DATA           �   COPY public.mpr_semitrans_privilege (privilege_id_pk, parent, link, "order", page_name, active_status, view_sidebar) FROM stdin;
    public          postgres    false    297   ��      L          0    78615    mpr_semitrans_profile 
   TABLE DATA           �   COPY public.mpr_semitrans_profile (username, f_name, m_name, l_name, mobile, email, district, image, profile_id_pk, desig, office, dept) FROM stdin;
    public          postgres    false    298   ;�      M          0    78628    mpr_semitrans_user_privilege 
   TABLE DATA           x   COPY public.mpr_semitrans_user_privilege (user_priv_id_pk, privilege_id_fk, user_type_id_fk, active_status) FROM stdin;
    public          postgres    false    299   ��      N          0    78632    mpr_semitrans_user_type 
   TABLE DATA           d   COPY public.mpr_semitrans_user_type (user_type_id_pk, desig, active_status, user_level) FROM stdin;
    public          postgres    false    300   ��      *          0    78302    mpr_trans_audit_log 
   TABLE DATA           �   COPY public.mpr_trans_audit_log (section, action, request, comment, ip_addr, audit_id_pk, login_id_fk, "timestamp") FROM stdin;
    public          postgres    false    264   ��      O          0    78639    mpr_trans_fundalloc 
   TABLE DATA           �   COPY public.mpr_trans_fundalloc (fundalloc_id_pk, location_id_fk, scheme_id_fk, funds_allocated, funds_utilised, threshold) FROM stdin;
    public          postgres    false    301   �      [          0    87579    mpr_trans_issues 
   TABLE DATA           *   COPY public.mpr_trans_issues  FROM stdin;
    public          postgres    false    313   X      ;          0    78354    mpr_trans_meeting_schedule 
   TABLE DATA           Y   COPY public.mpr_trans_meeting_schedule (meeting_id_pk, start_time, end_time) FROM stdin;
    public          postgres    false    281   u      Q          0    78644    mpr_trans_notification 
   TABLE DATA           �   COPY public.mpr_trans_notification (audience_id, notification_text, notification_id_pk, "timestamp", notification_head, active_status, audience_desig, audience_loc, audience_desig_only) FROM stdin;
    public          postgres    false    303   \      �           0    0    AWCC_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."AWCC_id_seq"', 1, false);
          public          postgres    false    204            �           0    0    BAITARANI_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."BAITARANI_id_seq"', 1, false);
          public          postgres    false    206            �           0    0 
   DOG_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."DOG_id_seq"', 1, false);
          public          postgres    false    208            �           0    0    DOPTUHD_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."DOPTUHD_id_seq"', 1, false);
          public          postgres    false    210            �           0    0    ENROLLMENT_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."ENROLLMENT_id_seq"', 1, false);
          public          postgres    false    212            �           0    0    FOODPRO_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."FOODPRO_id_seq"', 1, false);
          public          postgres    false    214            �           0    0    GITANJALI_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."GITANJALI_id_seq"', 1, false);
          public          postgres    false    216            �           0    0    IMMUNISATION_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."IMMUNISATION_id_seq"', 1, false);
          public          postgres    false    218            �           0    0    INFANTD_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."INFANTD_id_seq"', 1, false);
          public          postgres    false    220            �           0    0    INSPECTION_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."INSPECTION_id_seq"', 1, false);
          public          postgres    false    222            �           0    0    INSTDEL_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."INSTDEL_id_seq"', 1, false);
          public          postgres    false    224            �           0    0    JALDJALB_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."JALDJALB_id_seq"', 1, false);
          public          postgres    false    226            �           0    0    KANYAS_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."KANYAS_id_seq"', 1, false);
          public          postgres    false    228            �           0    0    KARMATIRTHA_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."KARMATIRTHA_id_seq"', 1, false);
          public          postgres    false    230            �           0    0    KCC_id_pk_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."KCC_id_pk_seq"', 26, true);
          public          postgres    false    232            �           0    0    LANDPP_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."LANDPP_id_seq"', 1, false);
          public          postgres    false    234            �           0    0    Login_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Login_id_seq"', 7, true);
          public          postgres    false    236            �           0    0    Login_user_type_id_fk_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."Login_user_type_id_fk_seq"', 1, false);
          public          postgres    false    237            �           0    0    MATERNALD_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."MATERNALD_id_seq"', 1, false);
          public          postgres    false    239            �           0    0 
   MCI_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."MCI_id_seq"', 1, false);
          public          postgres    false    241            �           0    0    MINORITYS_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."MINORITYS_id_seq"', 1, false);
          public          postgres    false    243            �           0    0 
   POE_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."POE_id_seq"', 1, false);
          public          postgres    false    245            �           0    0    SABOOJSHREE_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."SABOOJSHREE_id_seq"', 1, false);
          public          postgres    false    247            �           0    0    SABOOJS_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."SABOOJS_id_seq"', 1, false);
          public          postgres    false    249            �           0    0    SAFEDSAVEL_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."SAFEDSAVEL_id_seq"', 1, false);
          public          postgres    false    251            �           0    0    SAMABYTHI_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."SAMABYTHI_id_seq"', 1, false);
          public          postgres    false    253            �           0    0    SIKSHAS_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."SIKSHAS_id_seq"', 1, false);
          public          postgres    false    255            �           0    0    SVSKP_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."SVSKP_id_seq"', 1, false);
          public          postgres    false    257            �           0    0    YUBAS_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."YUBAS_id_seq"', 1, false);
          public          postgres    false    259            �           0    0    anand_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.anand_id_seq', 2, true);
          public          postgres    false    261            �           0    0    att_table_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.att_table_id_seq', 1, false);
          public          postgres    false    263            �           0    0    audit_log_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.audit_log_id_seq', 1115, true);
          public          postgres    false    265            �           0    0 (   check_First_User_check_if_first_user_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public."check_First_User_check_if_first_user_seq"', 1, true);
          public          postgres    false    267            �           0    0    check_First_User_user_id_pk_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."check_First_User_user_id_pk_seq"', 1, false);
          public          postgres    false    268            �           0    0 =   dba_financial_range_table_dba_financial_range_table_id_pk_seq    SEQUENCE SET     k   SELECT pg_catalog.setval('public.dba_financial_range_table_dba_financial_range_table_id_pk_seq', 1, true);
          public          postgres    false    270            �           0    0    designation_desig_id_pk_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.designation_desig_id_pk_seq', 1, false);
          public          postgres    false    272            �           0    0 
   doc_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.doc_id_seq', 1, false);
          public          postgres    false    274            �           0    0 5   financial_year_master_financial_year_master_id_pk_seq    SEQUENCE SET     d   SELECT pg_catalog.setval('public.financial_year_master_financial_year_master_id_pk_seq', 1, false);
          public          postgres    false    276            �           0    0    kishanm_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.kishanm_id_seq', 18, true);
          public          postgres    false    278            �           0    0     location_data_location_id_pk_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.location_data_location_id_pk_seq', 1, false);
          public          postgres    false    280            �           0    0    meeting_schedule_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.meeting_schedule_id_seq', 26, true);
          public          postgres    false    282            �           0    0    mgnres_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.mgnres_id_seq', 2, true);
          public          postgres    false    284            �           0    0 &   mpr_master_district_district_id_pk_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.mpr_master_district_district_id_pk_seq', 1, false);
          public          postgres    false    289            �           0    0     mpr_master_state_state_id_pk_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.mpr_master_state_state_id_pk_seq', 1, false);
          public          postgres    false    294            �           0    0 #   mpr_master_subdiv_sub_div_id_pk_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.mpr_master_subdiv_sub_div_id_pk_seq', 1, false);
          public          postgres    false    296            �           0    0 '   mpr_trans_fundalloc_fundalloc_id_pk_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.mpr_trans_fundalloc_fundalloc_id_pk_seq', 7, true);
          public          postgres    false    302            �           0    0    notifications_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.notifications_id_seq', 173, true);
          public          postgres    false    304            �           0    0    office_dept_office_dept_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.office_dept_office_dept_seq', 1, false);
          public          postgres    false    305            �           0    0    office_office_id_pk_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.office_office_id_pk_seq', 1, false);
          public          postgres    false    306            �           0    0    profile_id_pk_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.profile_id_pk_seq', 7, true);
          public          postgres    false    307            �           0    0 !   scheme_dept_scheme_dept_id_pk_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.scheme_dept_scheme_dept_id_pk_seq', 1, false);
          public          postgres    false    308            �           0    0    scheme_table_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.scheme_table_id_seq', 31, true);
          public          postgres    false    309            �           0    0    table_id_pk_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.table_id_pk_seq', 1, false);
          public          postgres    false    310            �           0    0 "   user_privilege_privilege_id_fk_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.user_privilege_privilege_id_fk_seq', 1, false);
          public          postgres    false    311            �           0    0 "   user_privilege_user_type_id_fk_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.user_privilege_user_type_id_fk_seq', 1, false);
          public          postgres    false    312            �           2606    78745    mpr_scheme_awcc AWCC_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.mpr_scheme_awcc
    ADD CONSTRAINT "AWCC_pkey" PRIMARY KEY (id_pk);
 E   ALTER TABLE ONLY public.mpr_scheme_awcc DROP CONSTRAINT "AWCC_pkey";
       public            postgres    false    203            �           2606    78747 #   mpr_scheme_baitarani BAITARANI_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.mpr_scheme_baitarani
    ADD CONSTRAINT "BAITARANI_pkey" PRIMARY KEY (id_pk);
 O   ALTER TABLE ONLY public.mpr_scheme_baitarani DROP CONSTRAINT "BAITARANI_pkey";
       public            postgres    false    205            �           2606    78749    mpr_scheme_dog DOG_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.mpr_scheme_dog
    ADD CONSTRAINT "DOG_pkey" PRIMARY KEY (id_pk);
 C   ALTER TABLE ONLY public.mpr_scheme_dog DROP CONSTRAINT "DOG_pkey";
       public            postgres    false    207            �           2606    78751    mpr_scheme_doptuhd DOPTUHD_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.mpr_scheme_doptuhd
    ADD CONSTRAINT "DOPTUHD_pkey" PRIMARY KEY (id_pk);
 K   ALTER TABLE ONLY public.mpr_scheme_doptuhd DROP CONSTRAINT "DOPTUHD_pkey";
       public            postgres    false    209            �           2606    78753 %   mpr_scheme_enrollment ENROLLMENT_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.mpr_scheme_enrollment
    ADD CONSTRAINT "ENROLLMENT_pkey" PRIMARY KEY (id_pk);
 Q   ALTER TABLE ONLY public.mpr_scheme_enrollment DROP CONSTRAINT "ENROLLMENT_pkey";
       public            postgres    false    211            �           2606    78755    mpr_scheme_foodpro FOODPRO_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.mpr_scheme_foodpro
    ADD CONSTRAINT "FOODPRO_pkey" PRIMARY KEY (id_pk);
 K   ALTER TABLE ONLY public.mpr_scheme_foodpro DROP CONSTRAINT "FOODPRO_pkey";
       public            postgres    false    213            �           2606    78757 #   mpr_scheme_gitanjali GITANJALI_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.mpr_scheme_gitanjali
    ADD CONSTRAINT "GITANJALI_pkey" PRIMARY KEY (id_pk);
 O   ALTER TABLE ONLY public.mpr_scheme_gitanjali DROP CONSTRAINT "GITANJALI_pkey";
       public            postgres    false    215            �           2606    78759 '   mpr_scheme_immunisati IMMUNISATION_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.mpr_scheme_immunisati
    ADD CONSTRAINT "IMMUNISATION_pkey" PRIMARY KEY (id_pk);
 S   ALTER TABLE ONLY public.mpr_scheme_immunisati DROP CONSTRAINT "IMMUNISATION_pkey";
       public            postgres    false    217            �           2606    78761    mpr_scheme_infantd INFANTD_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.mpr_scheme_infantd
    ADD CONSTRAINT "INFANTD_pkey" PRIMARY KEY (id_pk);
 K   ALTER TABLE ONLY public.mpr_scheme_infantd DROP CONSTRAINT "INFANTD_pkey";
       public            postgres    false    219            �           2606    78763 %   mpr_scheme_inspection INSPECTION_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.mpr_scheme_inspection
    ADD CONSTRAINT "INSPECTION_pkey" PRIMARY KEY (id_pk);
 Q   ALTER TABLE ONLY public.mpr_scheme_inspection DROP CONSTRAINT "INSPECTION_pkey";
       public            postgres    false    221            �           2606    78765    mpr_scheme_instdel INSTDEL_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.mpr_scheme_instdel
    ADD CONSTRAINT "INSTDEL_pkey" PRIMARY KEY (id_pk);
 K   ALTER TABLE ONLY public.mpr_scheme_instdel DROP CONSTRAINT "INSTDEL_pkey";
       public            postgres    false    223            �           2606    78767 !   mpr_scheme_jaldjalb JALDJALB_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.mpr_scheme_jaldjalb
    ADD CONSTRAINT "JALDJALB_pkey" PRIMARY KEY (id_pk);
 M   ALTER TABLE ONLY public.mpr_scheme_jaldjalb DROP CONSTRAINT "JALDJALB_pkey";
       public            postgres    false    225            �           2606    78769    mpr_scheme_kanyas KANYAS_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.mpr_scheme_kanyas
    ADD CONSTRAINT "KANYAS_pkey" PRIMARY KEY (id_pk);
 I   ALTER TABLE ONLY public.mpr_scheme_kanyas DROP CONSTRAINT "KANYAS_pkey";
       public            postgres    false    227            �           2606    78771 %   mpr_scheme_karmatirth KARMATIRTH_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.mpr_scheme_karmatirth
    ADD CONSTRAINT "KARMATIRTH_pkey" PRIMARY KEY (id_pk);
 Q   ALTER TABLE ONLY public.mpr_scheme_karmatirth DROP CONSTRAINT "KARMATIRTH_pkey";
       public            postgres    false    229            �           2606    78773    mpr_scheme_kcc KCC_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.mpr_scheme_kcc
    ADD CONSTRAINT "KCC_pkey" PRIMARY KEY (id_pk);
 C   ALTER TABLE ONLY public.mpr_scheme_kcc DROP CONSTRAINT "KCC_pkey";
       public            postgres    false    231            �           2606    78775    mpr_scheme_landpp LANDPP_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.mpr_scheme_landpp
    ADD CONSTRAINT "LANDPP_pkey" PRIMARY KEY (id_pk);
 I   ALTER TABLE ONLY public.mpr_scheme_landpp DROP CONSTRAINT "LANDPP_pkey";
       public            postgres    false    233            �           2606    78777    mpr_semitrans_login Login_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.mpr_semitrans_login
    ADD CONSTRAINT "Login_pkey" PRIMARY KEY (login_id_pk);
 J   ALTER TABLE ONLY public.mpr_semitrans_login DROP CONSTRAINT "Login_pkey";
       public            postgres    false    235            �           2606    78779 0   mpr_semitrans_login Login_username_username1_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_login
    ADD CONSTRAINT "Login_username_username1_key" UNIQUE (username) INCLUDE (username);
 \   ALTER TABLE ONLY public.mpr_semitrans_login DROP CONSTRAINT "Login_username_username1_key";
       public            postgres    false    235    235            �           2606    78781 #   mpr_scheme_maternald MATERNALD_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.mpr_scheme_maternald
    ADD CONSTRAINT "MATERNALD_pkey" PRIMARY KEY (id_pk);
 O   ALTER TABLE ONLY public.mpr_scheme_maternald DROP CONSTRAINT "MATERNALD_pkey";
       public            postgres    false    238            �           2606    78783    mpr_scheme_mci MCI_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.mpr_scheme_mci
    ADD CONSTRAINT "MCI_pkey" PRIMARY KEY (id_pk);
 C   ALTER TABLE ONLY public.mpr_scheme_mci DROP CONSTRAINT "MCI_pkey";
       public            postgres    false    240            �           2606    78785    mpr_scheme_mgnregs MGNREGS_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.mpr_scheme_mgnregs
    ADD CONSTRAINT "MGNREGS_pkey" PRIMARY KEY (id_pk);
 K   ALTER TABLE ONLY public.mpr_scheme_mgnregs DROP CONSTRAINT "MGNREGS_pkey";
       public            postgres    false    283            �           2606    78787 #   mpr_scheme_minoritys MINORITYS_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.mpr_scheme_minoritys
    ADD CONSTRAINT "MINORITYS_pkey" PRIMARY KEY (id_pk);
 O   ALTER TABLE ONLY public.mpr_scheme_minoritys DROP CONSTRAINT "MINORITYS_pkey";
       public            postgres    false    242            �           2606    78789    mpr_scheme_poe POE_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.mpr_scheme_poe
    ADD CONSTRAINT "POE_pkey" PRIMARY KEY (id_pk);
 C   ALTER TABLE ONLY public.mpr_scheme_poe DROP CONSTRAINT "POE_pkey";
       public            postgres    false    244                       2606    78791 &   mpr_semitrans_privilege Privilege_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.mpr_semitrans_privilege
    ADD CONSTRAINT "Privilege_pkey" PRIMARY KEY (privilege_id_pk);
 R   ALTER TABLE ONLY public.mpr_semitrans_privilege DROP CONSTRAINT "Privilege_pkey";
       public            postgres    false    297            �           2606    78793 %   mpr_scheme_saboojshre SABOOJSHRE_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.mpr_scheme_saboojshre
    ADD CONSTRAINT "SABOOJSHRE_pkey" PRIMARY KEY (id_pk);
 Q   ALTER TABLE ONLY public.mpr_scheme_saboojshre DROP CONSTRAINT "SABOOJSHRE_pkey";
       public            postgres    false    246            �           2606    78795    mpr_scheme_saboojs SABOOJS_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.mpr_scheme_saboojs
    ADD CONSTRAINT "SABOOJS_pkey" PRIMARY KEY (id_pk);
 K   ALTER TABLE ONLY public.mpr_scheme_saboojs DROP CONSTRAINT "SABOOJS_pkey";
       public            postgres    false    248            �           2606    78797 %   mpr_scheme_safedsavel SAFEDSAVEL_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.mpr_scheme_safedsavel
    ADD CONSTRAINT "SAFEDSAVEL_pkey" PRIMARY KEY (id_pk);
 Q   ALTER TABLE ONLY public.mpr_scheme_safedsavel DROP CONSTRAINT "SAFEDSAVEL_pkey";
       public            postgres    false    250            �           2606    78799 #   mpr_scheme_samabythi SAMABYTHI_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.mpr_scheme_samabythi
    ADD CONSTRAINT "SAMABYTHI_pkey" PRIMARY KEY (id_pk);
 O   ALTER TABLE ONLY public.mpr_scheme_samabythi DROP CONSTRAINT "SAMABYTHI_pkey";
       public            postgres    false    252            �           2606    78801    mpr_scheme_sikshas SIKSHAS_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.mpr_scheme_sikshas
    ADD CONSTRAINT "SIKSHAS_pkey" PRIMARY KEY (id_pk);
 K   ALTER TABLE ONLY public.mpr_scheme_sikshas DROP CONSTRAINT "SIKSHAS_pkey";
       public            postgres    false    254            �           2606    78803    mpr_scheme_svskp SVSKP_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.mpr_scheme_svskp
    ADD CONSTRAINT "SVSKP_pkey" PRIMARY KEY (id_pk);
 G   ALTER TABLE ONLY public.mpr_scheme_svskp DROP CONSTRAINT "SVSKP_pkey";
       public            postgres    false    256            �           2606    78805    mpr_scheme_yubas YUBAS_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.mpr_scheme_yubas
    ADD CONSTRAINT "YUBAS_pkey" PRIMARY KEY (id_pk);
 G   ALTER TABLE ONLY public.mpr_scheme_yubas DROP CONSTRAINT "YUBAS_pkey";
       public            postgres    false    258            �           2606    78807    mpr_scheme_anand anand_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.mpr_scheme_anand
    ADD CONSTRAINT anand_pkey PRIMARY KEY (id_pk);
 E   ALTER TABLE ONLY public.mpr_scheme_anand DROP CONSTRAINT anand_pkey;
       public            postgres    false    260            �           2606    78809 %   mpr_master_attri_table att_table_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.mpr_master_attri_table
    ADD CONSTRAINT att_table_pkey PRIMARY KEY (attri_id_pk);
 O   ALTER TABLE ONLY public.mpr_master_attri_table DROP CONSTRAINT att_table_pkey;
       public            postgres    false    262            �           2606    78811 "   mpr_trans_audit_log audit_log_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.mpr_trans_audit_log
    ADD CONSTRAINT audit_log_pkey PRIMARY KEY (audit_id_pk);
 L   ALTER TABLE ONLY public.mpr_trans_audit_log DROP CONSTRAINT audit_log_pkey;
       public            postgres    false    264            �           2606    78813 4   mpr_semitrans_check_first_user check_First_User_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.mpr_semitrans_check_first_user
    ADD CONSTRAINT "check_First_User_pkey" PRIMARY KEY (user_id_pk);
 `   ALTER TABLE ONLY public.mpr_semitrans_check_first_user DROP CONSTRAINT "check_First_User_pkey";
       public            postgres    false    266            �           2606    78815 -   mpr_master_dashboard_info dashboard_info_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.mpr_master_dashboard_info
    ADD CONSTRAINT dashboard_info_pkey PRIMARY KEY (dashboard_id_pk);
 W   ALTER TABLE ONLY public.mpr_master_dashboard_info DROP CONSTRAINT dashboard_info_pkey;
       public            postgres    false    286            �           2606    78817 @   mpr_semitrans_dba_financial_range dba_financial_range_table_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_dba_financial_range
    ADD CONSTRAINT dba_financial_range_table_pkey PRIMARY KEY (dba_financial_range_table_id_pk);
 j   ALTER TABLE ONLY public.mpr_semitrans_dba_financial_range DROP CONSTRAINT dba_financial_range_table_pkey;
       public            postgres    false    269            �           2606    78819 '   mpr_master_designation designation_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.mpr_master_designation
    ADD CONSTRAINT designation_pkey PRIMARY KEY (desig_id_pk);
 Q   ALTER TABLE ONLY public.mpr_master_designation DROP CONSTRAINT designation_pkey;
       public            postgres    false    271            �           2606    78821    mpr_scheme_doc doc_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.mpr_scheme_doc
    ADD CONSTRAINT doc_pkey PRIMARY KEY (id_pk);
 A   ALTER TABLE ONLY public.mpr_scheme_doc DROP CONSTRAINT doc_pkey;
       public            postgres    false    273            �           2606    78823 4   mpr_master_financial_year financial_year_master_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_financial_year
    ADD CONSTRAINT financial_year_master_pkey PRIMARY KEY (financial_year_master_id_pk);
 ^   ALTER TABLE ONLY public.mpr_master_financial_year DROP CONSTRAINT financial_year_master_pkey;
       public            postgres    false    275            �           2606    78825    mpr_scheme_kishanm kishanm_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.mpr_scheme_kishanm
    ADD CONSTRAINT kishanm_pkey PRIMARY KEY (id_pk);
 I   ALTER TABLE ONLY public.mpr_scheme_kishanm DROP CONSTRAINT kishanm_pkey;
       public            postgres    false    277            �           2606    78827 +   mpr_master_location_data location_data_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.mpr_master_location_data
    ADD CONSTRAINT location_data_pkey PRIMARY KEY (location_id_pk);
 U   ALTER TABLE ONLY public.mpr_master_location_data DROP CONSTRAINT location_data_pkey;
       public            postgres    false    279            �           2606    78829 0   mpr_trans_meeting_schedule meeting_schedule_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.mpr_trans_meeting_schedule
    ADD CONSTRAINT meeting_schedule_pkey PRIMARY KEY (meeting_id_pk);
 Z   ALTER TABLE ONLY public.mpr_trans_meeting_schedule DROP CONSTRAINT meeting_schedule_pkey;
       public            postgres    false    281            �           2606    78831 3   mpr_master_block mpr_master_block_block_lg_code_key 
   CONSTRAINT     w   ALTER TABLE ONLY public.mpr_master_block
    ADD CONSTRAINT mpr_master_block_block_lg_code_key UNIQUE (block_lg_code);
 ]   ALTER TABLE ONLY public.mpr_master_block DROP CONSTRAINT mpr_master_block_block_lg_code_key;
       public            postgres    false    285            �           2606    78833 &   mpr_master_block mpr_master_block_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.mpr_master_block
    ADD CONSTRAINT mpr_master_block_pkey PRIMARY KEY (block_id_pk);
 P   ALTER TABLE ONLY public.mpr_master_block DROP CONSTRAINT mpr_master_block_pkey;
       public            postgres    false    285            �           2606    78835 8   mpr_master_district mpr_master_district_dist_lg_code_key 
   CONSTRAINT     {   ALTER TABLE ONLY public.mpr_master_district
    ADD CONSTRAINT mpr_master_district_dist_lg_code_key UNIQUE (dist_lg_code);
 b   ALTER TABLE ONLY public.mpr_master_district DROP CONSTRAINT mpr_master_district_dist_lg_code_key;
       public            postgres    false    288            �           2606    78837 ,   mpr_master_district mpr_master_district_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.mpr_master_district
    ADD CONSTRAINT mpr_master_district_pkey PRIMARY KEY (district_id_pk);
 V   ALTER TABLE ONLY public.mpr_master_district DROP CONSTRAINT mpr_master_district_pkey;
       public            postgres    false    288            �           2606    78839 C   mpr_master_location_data mpr_master_location_data_location_code_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_location_data
    ADD CONSTRAINT mpr_master_location_data_location_code_key UNIQUE (location_code);
 m   ALTER TABLE ONLY public.mpr_master_location_data DROP CONSTRAINT mpr_master_location_data_location_code_key;
       public            postgres    false    279                       2606    78841 &   mpr_master_state mpr_master_state_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.mpr_master_state
    ADD CONSTRAINT mpr_master_state_pkey PRIMARY KEY (state_id_pk);
 P   ALTER TABLE ONLY public.mpr_master_state DROP CONSTRAINT mpr_master_state_pkey;
       public            postgres    false    293            	           2606    78843 (   mpr_master_subdiv mpr_master_subdiv_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.mpr_master_subdiv
    ADD CONSTRAINT mpr_master_subdiv_pkey PRIMARY KEY (sub_div_id_pk);
 R   ALTER TABLE ONLY public.mpr_master_subdiv DROP CONSTRAINT mpr_master_subdiv_pkey;
       public            postgres    false    295                       2606    78845 4   mpr_master_subdiv mpr_master_subdiv_sub_div_code_key 
   CONSTRAINT     z   ALTER TABLE ONLY public.mpr_master_subdiv
    ADD CONSTRAINT mpr_master_subdiv_sub_div_code_key UNIQUE (sub_div_lg_code);
 ^   ALTER TABLE ONLY public.mpr_master_subdiv DROP CONSTRAINT mpr_master_subdiv_sub_div_code_key;
       public            postgres    false    295                       2606    78849 8   mpr_semitrans_profile mpr_semitrans_profile_username_key 
   CONSTRAINT     w   ALTER TABLE ONLY public.mpr_semitrans_profile
    ADD CONSTRAINT mpr_semitrans_profile_username_key UNIQUE (username);
 b   ALTER TABLE ONLY public.mpr_semitrans_profile DROP CONSTRAINT mpr_semitrans_profile_username_key;
       public            postgres    false    298                       2606    78851 ,   mpr_trans_fundalloc mpr_trans_fundalloc_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.mpr_trans_fundalloc
    ADD CONSTRAINT mpr_trans_fundalloc_pkey PRIMARY KEY (fundalloc_id_pk);
 V   ALTER TABLE ONLY public.mpr_trans_fundalloc DROP CONSTRAINT mpr_trans_fundalloc_pkey;
       public            postgres    false    301                       2606    78853 )   mpr_trans_notification notifications_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.mpr_trans_notification
    ADD CONSTRAINT notifications_pkey PRIMARY KEY (notification_id_pk);
 S   ALTER TABLE ONLY public.mpr_trans_notification DROP CONSTRAINT notifications_pkey;
       public            postgres    false    303            �           2606    78855 &   mpr_master_department office_dept_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.mpr_master_department
    ADD CONSTRAINT office_dept_pkey PRIMARY KEY (dept_id_pk);
 P   ALTER TABLE ONLY public.mpr_master_department DROP CONSTRAINT office_dept_pkey;
       public            postgres    false    287                       2606    78857    mpr_master_office office_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.mpr_master_office
    ADD CONSTRAINT office_pkey PRIMARY KEY (office_id_pk);
 G   ALTER TABLE ONLY public.mpr_master_office DROP CONSTRAINT office_pkey;
       public            postgres    false    290                       2606    78907 "   mpr_semitrans_profile profile_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.mpr_semitrans_profile
    ADD CONSTRAINT profile_pkey PRIMARY KEY (profile_id_pk);
 L   ALTER TABLE ONLY public.mpr_semitrans_profile DROP CONSTRAINT profile_pkey;
       public            postgres    false    298                       2606    78909 '   mpr_master_scheme_dept scheme_dept_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.mpr_master_scheme_dept
    ADD CONSTRAINT scheme_dept_pkey PRIMARY KEY (scheme_dept_id_pk);
 Q   ALTER TABLE ONLY public.mpr_master_scheme_dept DROP CONSTRAINT scheme_dept_pkey;
       public            postgres    false    291                       2606    78911 )   mpr_master_scheme_table scheme_table_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.mpr_master_scheme_table
    ADD CONSTRAINT scheme_table_pkey PRIMARY KEY (scheme_id_pk);
 S   ALTER TABLE ONLY public.mpr_master_scheme_table DROP CONSTRAINT scheme_table_pkey;
       public            postgres    false    292                       2606    78913 0   mpr_semitrans_user_privilege user_privilege_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY public.mpr_semitrans_user_privilege
    ADD CONSTRAINT user_privilege_pkey PRIMARY KEY (user_priv_id_pk);
 Z   ALTER TABLE ONLY public.mpr_semitrans_user_privilege DROP CONSTRAINT user_privilege_pkey;
       public            postgres    false    299                       2606    78915 &   mpr_semitrans_user_type user_type_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.mpr_semitrans_user_type
    ADD CONSTRAINT user_type_pkey PRIMARY KEY (user_type_id_pk);
 P   ALTER TABLE ONLY public.mpr_semitrans_user_type DROP CONSTRAINT user_type_pkey;
       public            postgres    false    300            �           1259    78916 	   idx_anand    INDEX     _   CREATE INDEX idx_anand ON public.mpr_scheme_anand USING btree (session, month, location_code);
    DROP INDEX public.idx_anand;
       public            postgres    false    260    260    260            �           1259    78917    idx_awcc    INDEX     ]   CREATE INDEX idx_awcc ON public.mpr_scheme_awcc USING btree (session, month, location_code);
    DROP INDEX public.idx_awcc;
       public            postgres    false    203    203    203            �           1259    78918    idx_baitarani    INDEX     g   CREATE INDEX idx_baitarani ON public.mpr_scheme_baitarani USING btree (session, month, location_code);
 !   DROP INDEX public.idx_baitarani;
       public            postgres    false    205    205    205            �           1259    78919    idx_doc    INDEX     [   CREATE INDEX idx_doc ON public.mpr_scheme_doc USING btree (session, month, location_code);
    DROP INDEX public.idx_doc;
       public            postgres    false    273    273    273            �           1259    78920    idx_doptuhd    INDEX     c   CREATE INDEX idx_doptuhd ON public.mpr_scheme_doptuhd USING btree (session, month, location_code);
    DROP INDEX public.idx_doptuhd;
       public            postgres    false    209    209    209            �           1259    78921    idx_enrollment    INDEX     i   CREATE INDEX idx_enrollment ON public.mpr_scheme_enrollment USING btree (session, month, location_code);
 "   DROP INDEX public.idx_enrollment;
       public            postgres    false    211    211    211            �           1259    78922    idx_foodpro    INDEX     c   CREATE INDEX idx_foodpro ON public.mpr_scheme_foodpro USING btree (session, month, location_code);
    DROP INDEX public.idx_foodpro;
       public            postgres    false    213    213    213            �           1259    78923    idx_gitanjali    INDEX     g   CREATE INDEX idx_gitanjali ON public.mpr_scheme_gitanjali USING btree (session, month, location_code);
 !   DROP INDEX public.idx_gitanjali;
       public            postgres    false    215    215    215            �           1259    78924    idx_immunisati    INDEX     i   CREATE INDEX idx_immunisati ON public.mpr_scheme_immunisati USING btree (session, month, location_code);
 "   DROP INDEX public.idx_immunisati;
       public            postgres    false    217    217    217            �           1259    78925    idx_infantd    INDEX     c   CREATE INDEX idx_infantd ON public.mpr_scheme_infantd USING btree (session, month, location_code);
    DROP INDEX public.idx_infantd;
       public            postgres    false    219    219    219            �           1259    78926    idx_inspection    INDEX     i   CREATE INDEX idx_inspection ON public.mpr_scheme_inspection USING btree (session, month, location_code);
 "   DROP INDEX public.idx_inspection;
       public            postgres    false    221    221    221            �           1259    78927    idx_instdel    INDEX     c   CREATE INDEX idx_instdel ON public.mpr_scheme_instdel USING btree (session, month, location_code);
    DROP INDEX public.idx_instdel;
       public            postgres    false    223    223    223            �           1259    78928    idx_jaldjalb    INDEX     e   CREATE INDEX idx_jaldjalb ON public.mpr_scheme_jaldjalb USING btree (session, month, location_code);
     DROP INDEX public.idx_jaldjalb;
       public            postgres    false    225    225    225            �           1259    78929 
   idx_kanyas    INDEX     a   CREATE INDEX idx_kanyas ON public.mpr_scheme_kanyas USING btree (session, month, location_code);
    DROP INDEX public.idx_kanyas;
       public            postgres    false    227    227    227            �           1259    78930    idx_karmatirth    INDEX     i   CREATE INDEX idx_karmatirth ON public.mpr_scheme_karmatirth USING btree (session, month, location_code);
 "   DROP INDEX public.idx_karmatirth;
       public            postgres    false    229    229    229            �           1259    78931    idx_kcc    INDEX     [   CREATE INDEX idx_kcc ON public.mpr_scheme_kcc USING btree (session, month, location_code);
    DROP INDEX public.idx_kcc;
       public            postgres    false    231    231    231            �           1259    78932    idx_kishanm    INDEX     c   CREATE INDEX idx_kishanm ON public.mpr_scheme_kishanm USING btree (session, month, location_code);
    DROP INDEX public.idx_kishanm;
       public            postgres    false    277    277    277            �           1259    78933 
   idx_landpp    INDEX     a   CREATE INDEX idx_landpp ON public.mpr_scheme_landpp USING btree (session, month, location_code);
    DROP INDEX public.idx_landpp;
       public            postgres    false    233    233    233            �           1259    78934    idx_maternald    INDEX     g   CREATE INDEX idx_maternald ON public.mpr_scheme_maternald USING btree (session, month, location_code);
 !   DROP INDEX public.idx_maternald;
       public            postgres    false    238    238    238            �           1259    78935    idx_mci    INDEX     [   CREATE INDEX idx_mci ON public.mpr_scheme_mci USING btree (session, month, location_code);
    DROP INDEX public.idx_mci;
       public            postgres    false    240    240    240            �           1259    78936    idx_mgnregs    INDEX     c   CREATE INDEX idx_mgnregs ON public.mpr_scheme_mgnregs USING btree (session, month, location_code);
    DROP INDEX public.idx_mgnregs;
       public            postgres    false    283    283    283            �           1259    78937    idx_minoritys    INDEX     g   CREATE INDEX idx_minoritys ON public.mpr_scheme_minoritys USING btree (session, month, location_code);
 !   DROP INDEX public.idx_minoritys;
       public            postgres    false    242    242    242            �           1259    78938    idx_poe    INDEX     [   CREATE INDEX idx_poe ON public.mpr_scheme_poe USING btree (session, month, location_code);
    DROP INDEX public.idx_poe;
       public            postgres    false    244    244    244            �           1259    78939    idx_saboojs    INDEX     c   CREATE INDEX idx_saboojs ON public.mpr_scheme_saboojs USING btree (session, month, location_code);
    DROP INDEX public.idx_saboojs;
       public            postgres    false    248    248    248            �           1259    78940    idx_saboojshre    INDEX     i   CREATE INDEX idx_saboojshre ON public.mpr_scheme_saboojshre USING btree (session, month, location_code);
 "   DROP INDEX public.idx_saboojshre;
       public            postgres    false    246    246    246            �           1259    78941    idx_safedsavel    INDEX     i   CREATE INDEX idx_safedsavel ON public.mpr_scheme_safedsavel USING btree (session, month, location_code);
 "   DROP INDEX public.idx_safedsavel;
       public            postgres    false    250    250    250            �           1259    78942    idx_samabythi    INDEX     g   CREATE INDEX idx_samabythi ON public.mpr_scheme_samabythi USING btree (session, month, location_code);
 !   DROP INDEX public.idx_samabythi;
       public            postgres    false    252    252    252            �           1259    78943    idx_sikshas    INDEX     c   CREATE INDEX idx_sikshas ON public.mpr_scheme_sikshas USING btree (session, month, location_code);
    DROP INDEX public.idx_sikshas;
       public            postgres    false    254    254    254            �           1259    78944 	   idx_svskp    INDEX     _   CREATE INDEX idx_svskp ON public.mpr_scheme_svskp USING btree (session, month, location_code);
    DROP INDEX public.idx_svskp;
       public            postgres    false    256    256    256            �           1259    78945 	   idx_yubas    INDEX     _   CREATE INDEX idx_yubas ON public.mpr_scheme_yubas USING btree (session, month, location_code);
    DROP INDEX public.idx_yubas;
       public            postgres    false    258    258    258            R           2606    78946 '   mpr_scheme_anand ANAND_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_anand
    ADD CONSTRAINT "ANAND_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 S   ALTER TABLE ONLY public.mpr_scheme_anand DROP CONSTRAINT "ANAND_login_id_fk_fkey";
       public          postgres    false    260    3250    235                       2606    78951 %   mpr_scheme_awcc AWCC_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_awcc
    ADD CONSTRAINT "AWCC_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 Q   ALTER TABLE ONLY public.mpr_scheme_awcc DROP CONSTRAINT "AWCC_login_id_fk_fkey";
       public          postgres    false    235    203    3250                       2606    78956 /   mpr_scheme_baitarani BAITARANI_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_baitarani
    ADD CONSTRAINT "BAITARANI_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 [   ALTER TABLE ONLY public.mpr_scheme_baitarani DROP CONSTRAINT "BAITARANI_login_id_fk_fkey";
       public          postgres    false    3250    235    205            W           2606    78961 #   mpr_scheme_doc DOC_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_doc
    ADD CONSTRAINT "DOC_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 O   ALTER TABLE ONLY public.mpr_scheme_doc DROP CONSTRAINT "DOC_login_id_fk_fkey";
       public          postgres    false    273    3250    235                       2606    78966 #   mpr_scheme_dog DOG_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_dog
    ADD CONSTRAINT "DOG_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 O   ALTER TABLE ONLY public.mpr_scheme_dog DROP CONSTRAINT "DOG_login_id_fk_fkey";
       public          postgres    false    207    3250    235                       2606    78971 +   mpr_scheme_doptuhd DOPTUHD_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_doptuhd
    ADD CONSTRAINT "DOPTUHD_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 W   ALTER TABLE ONLY public.mpr_scheme_doptuhd DROP CONSTRAINT "DOPTUHD_login_id_fk_fkey";
       public          postgres    false    209    3250    235            !           2606    78976 1   mpr_scheme_enrollment ENROLLMENT_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_enrollment
    ADD CONSTRAINT "ENROLLMENT_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 ]   ALTER TABLE ONLY public.mpr_scheme_enrollment DROP CONSTRAINT "ENROLLMENT_login_id_fk_fkey";
       public          postgres    false    211    3250    235            #           2606    78981 +   mpr_scheme_foodpro FOODPRO_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_foodpro
    ADD CONSTRAINT "FOODPRO_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 W   ALTER TABLE ONLY public.mpr_scheme_foodpro DROP CONSTRAINT "FOODPRO_login_id_fk_fkey";
       public          postgres    false    3250    235    213            %           2606    78986 /   mpr_scheme_gitanjali GITANJALI_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_gitanjali
    ADD CONSTRAINT "GITANJALI_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 [   ALTER TABLE ONLY public.mpr_scheme_gitanjali DROP CONSTRAINT "GITANJALI_login_id_fk_fkey";
       public          postgres    false    215    3250    235            '           2606    78991 1   mpr_scheme_immunisati IMMUNISATI_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_immunisati
    ADD CONSTRAINT "IMMUNISATI_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 ]   ALTER TABLE ONLY public.mpr_scheme_immunisati DROP CONSTRAINT "IMMUNISATI_login_id_fk_fkey";
       public          postgres    false    217    3250    235            )           2606    78996 +   mpr_scheme_infantd INFANTD_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_infantd
    ADD CONSTRAINT "INFANTD_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 W   ALTER TABLE ONLY public.mpr_scheme_infantd DROP CONSTRAINT "INFANTD_login_id_fk_fkey";
       public          postgres    false    235    3250    219            *           2606    79001 1   mpr_scheme_inspection INSPECTION_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_inspection
    ADD CONSTRAINT "INSPECTION_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 ]   ALTER TABLE ONLY public.mpr_scheme_inspection DROP CONSTRAINT "INSPECTION_login_id_fk_fkey";
       public          postgres    false    235    3250    221            ,           2606    79006 +   mpr_scheme_instdel INSTDEL_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_instdel
    ADD CONSTRAINT "INSTDEL_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 W   ALTER TABLE ONLY public.mpr_scheme_instdel DROP CONSTRAINT "INSTDEL_login_id_fk_fkey";
       public          postgres    false    3250    223    235            .           2606    79011 -   mpr_scheme_jaldjalb JALDJALB_Login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_jaldjalb
    ADD CONSTRAINT "JALDJALB_Login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 Y   ALTER TABLE ONLY public.mpr_scheme_jaldjalb DROP CONSTRAINT "JALDJALB_Login_id_fk_fkey";
       public          postgres    false    235    225    3250            0           2606    79016 )   mpr_scheme_kanyas KANYAS_Login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_kanyas
    ADD CONSTRAINT "KANYAS_Login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 U   ALTER TABLE ONLY public.mpr_scheme_kanyas DROP CONSTRAINT "KANYAS_Login_id_fk_fkey";
       public          postgres    false    235    3250    227            2           2606    79021 1   mpr_scheme_karmatirth KARMATIRTH_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_karmatirth
    ADD CONSTRAINT "KARMATIRTH_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 ]   ALTER TABLE ONLY public.mpr_scheme_karmatirth DROP CONSTRAINT "KARMATIRTH_login_id_fk_fkey";
       public          postgres    false    3250    235    229            4           2606    79026 #   mpr_scheme_kcc KCC_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_kcc
    ADD CONSTRAINT "KCC_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 O   ALTER TABLE ONLY public.mpr_scheme_kcc DROP CONSTRAINT "KCC_login_id_fk_fkey";
       public          postgres    false    3250    231    235            Y           2606    79031 +   mpr_scheme_kishanm KishanM_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_kishanm
    ADD CONSTRAINT "KishanM_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 W   ALTER TABLE ONLY public.mpr_scheme_kishanm DROP CONSTRAINT "KishanM_login_id_fk_fkey";
       public          postgres    false    3250    277    235            6           2606    79036 )   mpr_scheme_landpp LANDPP_Login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_landpp
    ADD CONSTRAINT "LANDPP_Login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 U   ALTER TABLE ONLY public.mpr_scheme_landpp DROP CONSTRAINT "LANDPP_Login_id_fk_fkey";
       public          postgres    false    3250    235    233            8           2606    79041 *   mpr_semitrans_login Login_desig_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_login
    ADD CONSTRAINT "Login_desig_id_fk_fkey" FOREIGN KEY (desig_id_fk) REFERENCES public.mpr_master_designation(desig_id_pk) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 V   ALTER TABLE ONLY public.mpr_semitrans_login DROP CONSTRAINT "Login_desig_id_fk_fkey";
       public          postgres    false    235    3298    271            9           2606    79046 0   mpr_semitrans_login Login_office_dept_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_login
    ADD CONSTRAINT "Login_office_dept_id_fk_fkey" FOREIGN KEY (dept_id_fk) REFERENCES public.mpr_master_department(dept_id_pk) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 \   ALTER TABLE ONLY public.mpr_semitrans_login DROP CONSTRAINT "Login_office_dept_id_fk_fkey";
       public          postgres    false    235    287    3323            :           2606    79051 +   mpr_semitrans_login Login_office_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_login
    ADD CONSTRAINT "Login_office_id_fk_fkey" FOREIGN KEY (office_id_fk) REFERENCES public.mpr_master_office(office_id_pk) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 W   ALTER TABLE ONLY public.mpr_semitrans_login DROP CONSTRAINT "Login_office_id_fk_fkey";
       public          postgres    false    290    3329    235            ;           2606    79056 .   mpr_semitrans_login Login_user_type_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_login
    ADD CONSTRAINT "Login_user_type_id_fk_fkey" FOREIGN KEY (user_type_id_fk) REFERENCES public.mpr_semitrans_user_type(user_type_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 Z   ALTER TABLE ONLY public.mpr_semitrans_login DROP CONSTRAINT "Login_user_type_id_fk_fkey";
       public          postgres    false    300    235    3349            =           2606    79061 /   mpr_scheme_maternald MATERNALD_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_maternald
    ADD CONSTRAINT "MATERNALD_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 [   ALTER TABLE ONLY public.mpr_scheme_maternald DROP CONSTRAINT "MATERNALD_login_id_fk_fkey";
       public          postgres    false    3250    235    238            ?           2606    79066 #   mpr_scheme_mci MCI_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_mci
    ADD CONSTRAINT "MCI_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 O   ALTER TABLE ONLY public.mpr_scheme_mci DROP CONSTRAINT "MCI_login_id_fk_fkey";
       public          postgres    false    3250    240    235            [           2606    79071 +   mpr_scheme_mgnregs MGNREGS_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_mgnregs
    ADD CONSTRAINT "MGNREGS_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 W   ALTER TABLE ONLY public.mpr_scheme_mgnregs DROP CONSTRAINT "MGNREGS_login_id_fk_fkey";
       public          postgres    false    235    283    3250            A           2606    79076 /   mpr_scheme_minoritys MINORITYS_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_minoritys
    ADD CONSTRAINT "MINORITYS_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 [   ALTER TABLE ONLY public.mpr_scheme_minoritys DROP CONSTRAINT "MINORITYS_login_id_fk_fkey";
       public          postgres    false    3250    235    242            C           2606    79081 #   mpr_scheme_poe POE_Login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_poe
    ADD CONSTRAINT "POE_Login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 O   ALTER TABLE ONLY public.mpr_scheme_poe DROP CONSTRAINT "POE_Login_id_fk_fkey";
       public          postgres    false    244    235    3250            D           2606    79086 1   mpr_scheme_saboojshre SABOOJSHRE_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_saboojshre
    ADD CONSTRAINT "SABOOJSHRE_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 ]   ALTER TABLE ONLY public.mpr_scheme_saboojshre DROP CONSTRAINT "SABOOJSHRE_login_id_fk_fkey";
       public          postgres    false    235    246    3250            F           2606    79091 +   mpr_scheme_saboojs SABOOJS_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_saboojs
    ADD CONSTRAINT "SABOOJS_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 W   ALTER TABLE ONLY public.mpr_scheme_saboojs DROP CONSTRAINT "SABOOJS_login_id_fk_fkey";
       public          postgres    false    3250    235    248            H           2606    79096 1   mpr_scheme_safedsavel SAFEDSAVEL_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_safedsavel
    ADD CONSTRAINT "SAFEDSAVEL_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 ]   ALTER TABLE ONLY public.mpr_scheme_safedsavel DROP CONSTRAINT "SAFEDSAVEL_login_id_fk_fkey";
       public          postgres    false    250    235    3250            J           2606    79101 /   mpr_scheme_samabythi SAMABYTHI_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_samabythi
    ADD CONSTRAINT "SAMABYTHI_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 [   ALTER TABLE ONLY public.mpr_scheme_samabythi DROP CONSTRAINT "SAMABYTHI_login_id_fk_fkey";
       public          postgres    false    252    3250    235            L           2606    79106 +   mpr_scheme_sikshas SIKSHAS_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_sikshas
    ADD CONSTRAINT "SIKSHAS_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 W   ALTER TABLE ONLY public.mpr_scheme_sikshas DROP CONSTRAINT "SIKSHAS_login_id_fk_fkey";
       public          postgres    false    235    3250    254            N           2606    79111 '   mpr_scheme_svskp SVSKP_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_svskp
    ADD CONSTRAINT "SVSKP_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 S   ALTER TABLE ONLY public.mpr_scheme_svskp DROP CONSTRAINT "SVSKP_login_id_fk_fkey";
       public          postgres    false    3250    256    235            P           2606    79116 '   mpr_scheme_yubas YUBAS_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_yubas
    ADD CONSTRAINT "YUBAS_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 S   ALTER TABLE ONLY public.mpr_scheme_yubas DROP CONSTRAINT "YUBAS_login_id_fk_fkey";
       public          postgres    false    258    235    3250            V           2606    79126 9   mpr_master_designation designation_office_dept_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_designation
    ADD CONSTRAINT designation_office_dept_id_fk_fkey FOREIGN KEY (dept_id_fk) REFERENCES public.mpr_master_department(dept_id_pk) ON UPDATE CASCADE ON DELETE SET NULL;
 c   ALTER TABLE ONLY public.mpr_master_designation DROP CONSTRAINT designation_office_dept_id_fk_fkey;
       public          postgres    false    287    3323    271            T           2606    79131 ?   mpr_master_attri_table mpr_master_attri_table_scheme_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_attri_table
    ADD CONSTRAINT mpr_master_attri_table_scheme_id_fk_fkey FOREIGN KEY (scheme_id_fk) REFERENCES public.mpr_master_scheme_table(scheme_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 i   ALTER TABLE ONLY public.mpr_master_attri_table DROP CONSTRAINT mpr_master_attri_table_scheme_id_fk_fkey;
       public          postgres    false    3333    292    262            ]           2606    79136 5   mpr_master_block mpr_master_block_location_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_block
    ADD CONSTRAINT mpr_master_block_location_id_fk_fkey FOREIGN KEY (location_id_fk) REFERENCES public.mpr_master_location_data(location_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 _   ALTER TABLE ONLY public.mpr_master_block DROP CONSTRAINT mpr_master_block_location_id_fk_fkey;
       public          postgres    false    3308    279    285            ^           2606    79141 3   mpr_master_block mpr_master_block_subdiv_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_block
    ADD CONSTRAINT mpr_master_block_subdiv_id_fk_fkey FOREIGN KEY (subdiv_id_fk) REFERENCES public.mpr_master_subdiv(sub_div_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 ]   ALTER TABLE ONLY public.mpr_master_block DROP CONSTRAINT mpr_master_block_subdiv_id_fk_fkey;
       public          postgres    false    285    3337    295            a           2606    87556 ;   mpr_master_district mpr_master_district_location_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_district
    ADD CONSTRAINT mpr_master_district_location_id_fk_fkey FOREIGN KEY (location_id_fk) REFERENCES public.mpr_master_location_data(location_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 e   ALTER TABLE ONLY public.mpr_master_district DROP CONSTRAINT mpr_master_district_location_id_fk_fkey;
       public          postgres    false    288    279    3308            `           2606    79146 8   mpr_master_district mpr_master_district_state_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_district
    ADD CONSTRAINT mpr_master_district_state_id_fk_fkey FOREIGN KEY (state_id_fk) REFERENCES public.mpr_master_state(state_id_pk) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 b   ALTER TABLE ONLY public.mpr_master_district DROP CONSTRAINT mpr_master_district_state_id_fk_fkey;
       public          postgres    false    288    293    3335            b           2606    79151 ?   mpr_master_scheme_dept mpr_master_scheme_dept_scheme_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_scheme_dept
    ADD CONSTRAINT mpr_master_scheme_dept_scheme_id_fk_fkey FOREIGN KEY (scheme_id_fk) REFERENCES public.mpr_master_scheme_table(scheme_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 i   ALTER TABLE ONLY public.mpr_master_scheme_dept DROP CONSTRAINT mpr_master_scheme_dept_scheme_id_fk_fkey;
       public          postgres    false    292    3333    291            d           2606    79156 @   mpr_master_scheme_table mpr_master_scheme_table_desig_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_scheme_table
    ADD CONSTRAINT mpr_master_scheme_table_desig_id_fk_fkey FOREIGN KEY (desig_id_fk) REFERENCES public.mpr_master_designation(desig_id_pk) NOT VALID;
 j   ALTER TABLE ONLY public.mpr_master_scheme_table DROP CONSTRAINT mpr_master_scheme_table_desig_id_fk_fkey;
       public          postgres    false    3298    292    271            e           2606    79161 I   mpr_master_scheme_table mpr_master_scheme_table_financial_year_id_fk_fkey    FK CONSTRAINT       ALTER TABLE ONLY public.mpr_master_scheme_table
    ADD CONSTRAINT mpr_master_scheme_table_financial_year_id_fk_fkey FOREIGN KEY (financial_year_id_fk) REFERENCES public.mpr_master_financial_year(financial_year_master_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 s   ALTER TABLE ONLY public.mpr_master_scheme_table DROP CONSTRAINT mpr_master_scheme_table_financial_year_id_fk_fkey;
       public          postgres    false    3303    275    292            f           2606    79166 3   mpr_master_subdiv mpr_master_subdiv_dist_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_subdiv
    ADD CONSTRAINT mpr_master_subdiv_dist_id_fk_fkey FOREIGN KEY (district_id_fk) REFERENCES public.mpr_master_district(district_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 ]   ALTER TABLE ONLY public.mpr_master_subdiv DROP CONSTRAINT mpr_master_subdiv_dist_id_fk_fkey;
       public          postgres    false    3327    288    295            g           2606    87561 7   mpr_master_subdiv mpr_master_subdiv_location_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_subdiv
    ADD CONSTRAINT mpr_master_subdiv_location_id_fk_fkey FOREIGN KEY (location_id_fk) REFERENCES public.mpr_master_location_data(location_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 a   ALTER TABLE ONLY public.mpr_master_subdiv DROP CONSTRAINT mpr_master_subdiv_location_id_fk_fkey;
       public          postgres    false    279    3308    295            S           2606    79171 &   mpr_scheme_anand mpr_scheme_anand_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_anand
    ADD CONSTRAINT mpr_scheme_anand_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 P   ALTER TABLE ONLY public.mpr_scheme_anand DROP CONSTRAINT mpr_scheme_anand_lcfk;
       public          postgres    false    260    279    3310                       2606    79176 $   mpr_scheme_awcc mpr_scheme_awcc_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_awcc
    ADD CONSTRAINT mpr_scheme_awcc_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 N   ALTER TABLE ONLY public.mpr_scheme_awcc DROP CONSTRAINT mpr_scheme_awcc_lcfk;
       public          postgres    false    3310    279    203                       2606    79181 .   mpr_scheme_baitarani mpr_scheme_baitarani_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_baitarani
    ADD CONSTRAINT mpr_scheme_baitarani_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 X   ALTER TABLE ONLY public.mpr_scheme_baitarani DROP CONSTRAINT mpr_scheme_baitarani_lcfk;
       public          postgres    false    205    3310    279            X           2606    79186 "   mpr_scheme_doc mpr_scheme_doc_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_doc
    ADD CONSTRAINT mpr_scheme_doc_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 L   ALTER TABLE ONLY public.mpr_scheme_doc DROP CONSTRAINT mpr_scheme_doc_lcfk;
       public          postgres    false    279    273    3310                        2606    79191 *   mpr_scheme_doptuhd mpr_scheme_dopthud_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_doptuhd
    ADD CONSTRAINT mpr_scheme_dopthud_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 T   ALTER TABLE ONLY public.mpr_scheme_doptuhd DROP CONSTRAINT mpr_scheme_dopthud_lcfk;
       public          postgres    false    209    3310    279            "           2606    79196 0   mpr_scheme_enrollment mpr_scheme_enrollment_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_enrollment
    ADD CONSTRAINT mpr_scheme_enrollment_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 Z   ALTER TABLE ONLY public.mpr_scheme_enrollment DROP CONSTRAINT mpr_scheme_enrollment_lcfk;
       public          postgres    false    279    211    3310            $           2606    79201 *   mpr_scheme_foodpro mpr_scheme_foodpro_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_foodpro
    ADD CONSTRAINT mpr_scheme_foodpro_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 T   ALTER TABLE ONLY public.mpr_scheme_foodpro DROP CONSTRAINT mpr_scheme_foodpro_lcfk;
       public          postgres    false    3310    213    279            &           2606    79206 .   mpr_scheme_gitanjali mpr_scheme_gitanjali_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_gitanjali
    ADD CONSTRAINT mpr_scheme_gitanjali_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 X   ALTER TABLE ONLY public.mpr_scheme_gitanjali DROP CONSTRAINT mpr_scheme_gitanjali_lcfk;
       public          postgres    false    215    279    3310            (           2606    79211 0   mpr_scheme_immunisati mpr_scheme_immunisati_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_immunisati
    ADD CONSTRAINT mpr_scheme_immunisati_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 Z   ALTER TABLE ONLY public.mpr_scheme_immunisati DROP CONSTRAINT mpr_scheme_immunisati_lcfk;
       public          postgres    false    279    217    3310            +           2606    79216 0   mpr_scheme_inspection mpr_scheme_inspection_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_inspection
    ADD CONSTRAINT mpr_scheme_inspection_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 Z   ALTER TABLE ONLY public.mpr_scheme_inspection DROP CONSTRAINT mpr_scheme_inspection_lcfk;
       public          postgres    false    221    279    3310            -           2606    79221 *   mpr_scheme_instdel mpr_scheme_instdel_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_instdel
    ADD CONSTRAINT mpr_scheme_instdel_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 T   ALTER TABLE ONLY public.mpr_scheme_instdel DROP CONSTRAINT mpr_scheme_instdel_lcfk;
       public          postgres    false    223    279    3310            /           2606    79226 ,   mpr_scheme_jaldjalb mpr_scheme_jaldjalb_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_jaldjalb
    ADD CONSTRAINT mpr_scheme_jaldjalb_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 V   ALTER TABLE ONLY public.mpr_scheme_jaldjalb DROP CONSTRAINT mpr_scheme_jaldjalb_lcfk;
       public          postgres    false    225    279    3310            1           2606    79231 (   mpr_scheme_kanyas mpr_scheme_kanyas_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_kanyas
    ADD CONSTRAINT mpr_scheme_kanyas_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 R   ALTER TABLE ONLY public.mpr_scheme_kanyas DROP CONSTRAINT mpr_scheme_kanyas_lcfk;
       public          postgres    false    227    279    3310            3           2606    79236 1   mpr_scheme_karmatirth mpr_scheme_karmatirtha_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_karmatirth
    ADD CONSTRAINT mpr_scheme_karmatirtha_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 [   ALTER TABLE ONLY public.mpr_scheme_karmatirth DROP CONSTRAINT mpr_scheme_karmatirtha_lcfk;
       public          postgres    false    229    3310    279            5           2606    79241 "   mpr_scheme_kcc mpr_scheme_kcc_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_kcc
    ADD CONSTRAINT mpr_scheme_kcc_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 L   ALTER TABLE ONLY public.mpr_scheme_kcc DROP CONSTRAINT mpr_scheme_kcc_lcfk;
       public          postgres    false    3310    279    231            Z           2606    79246 *   mpr_scheme_kishanm mpr_scheme_kishanm_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_kishanm
    ADD CONSTRAINT mpr_scheme_kishanm_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 T   ALTER TABLE ONLY public.mpr_scheme_kishanm DROP CONSTRAINT mpr_scheme_kishanm_lcfk;
       public          postgres    false    279    277    3310            7           2606    79251 (   mpr_scheme_landpp mpr_scheme_landpp_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_landpp
    ADD CONSTRAINT mpr_scheme_landpp_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 R   ALTER TABLE ONLY public.mpr_scheme_landpp DROP CONSTRAINT mpr_scheme_landpp_lcfk;
       public          postgres    false    233    279    3310            >           2606    79256 .   mpr_scheme_maternald mpr_scheme_maternald_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_maternald
    ADD CONSTRAINT mpr_scheme_maternald_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 X   ALTER TABLE ONLY public.mpr_scheme_maternald DROP CONSTRAINT mpr_scheme_maternald_lcfk;
       public          postgres    false    279    3310    238            @           2606    79261 "   mpr_scheme_mci mpr_scheme_mci_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_mci
    ADD CONSTRAINT mpr_scheme_mci_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 L   ALTER TABLE ONLY public.mpr_scheme_mci DROP CONSTRAINT mpr_scheme_mci_lcfk;
       public          postgres    false    3310    240    279            \           2606    79266 *   mpr_scheme_mgnregs mpr_scheme_mgnregs_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_mgnregs
    ADD CONSTRAINT mpr_scheme_mgnregs_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 T   ALTER TABLE ONLY public.mpr_scheme_mgnregs DROP CONSTRAINT mpr_scheme_mgnregs_lcfk;
       public          postgres    false    3310    279    283            B           2606    79271 .   mpr_scheme_minoritys mpr_scheme_minoritys_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_minoritys
    ADD CONSTRAINT mpr_scheme_minoritys_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 X   ALTER TABLE ONLY public.mpr_scheme_minoritys DROP CONSTRAINT mpr_scheme_minoritys_lcfk;
       public          postgres    false    3310    279    242            G           2606    79276 *   mpr_scheme_saboojs mpr_scheme_saboojs_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_saboojs
    ADD CONSTRAINT mpr_scheme_saboojs_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 T   ALTER TABLE ONLY public.mpr_scheme_saboojs DROP CONSTRAINT mpr_scheme_saboojs_lcfk;
       public          postgres    false    248    279    3310            E           2606    79281 0   mpr_scheme_saboojshre mpr_scheme_saboojshre_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_saboojshre
    ADD CONSTRAINT mpr_scheme_saboojshre_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 Z   ALTER TABLE ONLY public.mpr_scheme_saboojshre DROP CONSTRAINT mpr_scheme_saboojshre_lcfk;
       public          postgres    false    279    246    3310            I           2606    79286 0   mpr_scheme_safedsavel mpr_scheme_safedsavel_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_safedsavel
    ADD CONSTRAINT mpr_scheme_safedsavel_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 Z   ALTER TABLE ONLY public.mpr_scheme_safedsavel DROP CONSTRAINT mpr_scheme_safedsavel_lcfk;
       public          postgres    false    3310    279    250            K           2606    79291 /   mpr_scheme_samabythi mpr_scheme_samaybythi_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_samabythi
    ADD CONSTRAINT mpr_scheme_samaybythi_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 Y   ALTER TABLE ONLY public.mpr_scheme_samabythi DROP CONSTRAINT mpr_scheme_samaybythi_lcfk;
       public          postgres    false    252    279    3310            M           2606    79296 )   mpr_scheme_sikshas mpr_scheme_sikhas_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_sikshas
    ADD CONSTRAINT mpr_scheme_sikhas_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 S   ALTER TABLE ONLY public.mpr_scheme_sikshas DROP CONSTRAINT mpr_scheme_sikhas_lcfk;
       public          postgres    false    3310    279    254            O           2606    79301 &   mpr_scheme_svskp mpr_scheme_svskp_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_svskp
    ADD CONSTRAINT mpr_scheme_svskp_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 P   ALTER TABLE ONLY public.mpr_scheme_svskp DROP CONSTRAINT mpr_scheme_svskp_lcfk;
       public          postgres    false    256    279    3310            Q           2606    79306 &   mpr_scheme_yubas mpr_scheme_yubas_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_yubas
    ADD CONSTRAINT mpr_scheme_yubas_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 P   ALTER TABLE ONLY public.mpr_scheme_yubas DROP CONSTRAINT mpr_scheme_yubas_lcfk;
       public          postgres    false    258    279    3310            <           2606    87566 :   mpr_semitrans_login mpr_semitrans_login_location_code_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_login
    ADD CONSTRAINT mpr_semitrans_login_location_code_fkey FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 d   ALTER TABLE ONLY public.mpr_semitrans_login DROP CONSTRAINT mpr_semitrans_login_location_code_fkey;
       public          postgres    false    235    3310    279            h           2606    79326 9   mpr_semitrans_profile mpr_semitrans_profile_username_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_profile
    ADD CONSTRAINT mpr_semitrans_profile_username_fkey FOREIGN KEY (username) REFERENCES public.mpr_semitrans_login(username) NOT VALID;
 c   ALTER TABLE ONLY public.mpr_semitrans_profile DROP CONSTRAINT mpr_semitrans_profile_username_fkey;
       public          postgres    false    298    235    3252            l           2606    87571 ;   mpr_trans_fundalloc mpr_trans_fundalloc_location_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_trans_fundalloc
    ADD CONSTRAINT mpr_trans_fundalloc_location_id_fk_fkey FOREIGN KEY (location_id_fk) REFERENCES public.mpr_master_location_data(location_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 e   ALTER TABLE ONLY public.mpr_trans_fundalloc DROP CONSTRAINT mpr_trans_fundalloc_location_id_fk_fkey;
       public          postgres    false    301    3308    279            m           2606    79368 9   mpr_trans_fundalloc mpr_trans_fundalloc_scheme_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_trans_fundalloc
    ADD CONSTRAINT mpr_trans_fundalloc_scheme_id_fk_fkey FOREIGN KEY (scheme_id_fk) REFERENCES public.mpr_master_scheme_table(scheme_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 c   ALTER TABLE ONLY public.mpr_trans_fundalloc DROP CONSTRAINT mpr_trans_fundalloc_scheme_id_fk_fkey;
       public          postgres    false    301    3333    292            _           2606    79331 3   mpr_master_department office_dept_office_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_department
    ADD CONSTRAINT office_dept_office_id_fk_fkey FOREIGN KEY (office_id_fk) REFERENCES public.mpr_master_office(office_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT;
 ]   ALTER TABLE ONLY public.mpr_master_department DROP CONSTRAINT office_dept_office_id_fk_fkey;
       public          postgres    false    287    290    3329            j           2606    79336 ,   mpr_semitrans_user_privilege privilege_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_user_privilege
    ADD CONSTRAINT privilege_id_fk FOREIGN KEY (privilege_id_fk) REFERENCES public.mpr_semitrans_privilege(privilege_id_pk) ON UPDATE CASCADE ON DELETE SET NULL;
 V   ALTER TABLE ONLY public.mpr_semitrans_user_privilege DROP CONSTRAINT privilege_id_fk;
       public          postgres    false    299    297    3341            i           2606    79341 (   mpr_semitrans_profile profile_id_pk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_profile
    ADD CONSTRAINT profile_id_pk_fkey FOREIGN KEY (profile_id_pk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 R   ALTER TABLE ONLY public.mpr_semitrans_profile DROP CONSTRAINT profile_id_pk_fkey;
       public          postgres    false    298    235    3250            c           2606    79346 9   mpr_master_scheme_dept scheme_dept_office_dept_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_scheme_dept
    ADD CONSTRAINT scheme_dept_office_dept_id_fk_fkey FOREIGN KEY (dept_id_fk) REFERENCES public.mpr_master_department(dept_id_pk);
 c   ALTER TABLE ONLY public.mpr_master_scheme_dept DROP CONSTRAINT scheme_dept_office_dept_id_fk_fkey;
       public          postgres    false    291    3323    287            U           2606    79351 )   mpr_semitrans_check_first_user user_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_check_first_user
    ADD CONSTRAINT user_id_fk FOREIGN KEY (user_id_pk) REFERENCES public.mpr_semitrans_login(login_id_pk);
 S   ALTER TABLE ONLY public.mpr_semitrans_check_first_user DROP CONSTRAINT user_id_fk;
       public          postgres    false    266    235    3250            k           2606    79356 @   mpr_semitrans_user_privilege user_privilege_user_type_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_user_privilege
    ADD CONSTRAINT user_privilege_user_type_id_fk_fkey FOREIGN KEY (user_type_id_fk) REFERENCES public.mpr_semitrans_user_type(user_type_id_pk) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 j   ALTER TABLE ONLY public.mpr_semitrans_user_privilege DROP CONSTRAINT user_privilege_user_type_id_fk_fkey;
       public          postgres    false    300    299    3349            (   �  x��X[o�:~&_�y8YK�e�1�f�=E۠�.p�Zfl�2e�Rz��w����d��Ȝo�^�B&$!�)���ZY�u��-��g~���������J݁�#_�<��y0���y0M����U�"Z�-7��PUos;,ۜ��;�5�X
��I��P|�3?��8���Bk�(����ƶ��#��9I����\�G�`6��� .����F̾1b�|��?8bx=I�i�oٝɷ�O��H�̀@7���.wB!V�W[іǝj�N;����$3H�������[�$@�ݒ�.�a��7���ޒ[�ֱ�3����`F�u0w8��1�sDȈ�ʉh��*���o��-7�v'��W{)^`���:VƬ�yMdN���ch���;]>7�fuy؟�f��׃fwuΓ|�t�teGVve-�O�!`��0��IA��-N	�9o6=�ُ��L�]b1��&+�r�h�`�����9�g�A���Bӄ�oy�kx���� h��������M6�l��=�J�3����Hȼ���W����6/��{!Ms�tk�fL�%�xۛD@�O��H1l�O8���k�NL��̊G���r��B����݊�Fnq��� d��j��>�}\�;�}�d�ÀdI�t`V�e�Bȭ
|�����ah�]�i�l{���Қ*��Wb�I��B 3@�-仐Ǒ��k�)�b��� @������K�=:y<�J��d���"��>�~Oc�V��yN�!I�?$*��aCj	��l�>�2���� �8_H��Uڼۏ��'# U�Ō@�����[[k�R�y](������Ja>�:�{�;W5�<@e��V�MZ;�\`t�x��]̃�ZV�l�?������m�f=e���TT��Z���,�.rd2?�h4Z���eq(��d(���"�CWP�x���4�����M5rj�co8]���ŮŮF6�2z���Fs��|�B��)"�i���'t���'�Y~�y6�6�Co�ИoNҙ㫸�d;�q�� G��k����q�l�U�dR46|6����`��*:N�����8^{ May�O��p�Ѽ@�/
�����/QS��}���|m�k(��g���� D����W�V�!S����i�m� 3bX�0��K��ܱ�J!v����}	(D�ֹߌ�>h�?Q�7�?�]��"֨Ol�Fu{��zG�VUF#s־OrN�e��u�Ձ��~e����� ��A1�����s/�}8pכsb1
,Vv�H~�N��b�_�4��"��_x��N0_ h��K��P`ᚄ�oteט��M�*[�[�?�1�ǬC=�5�e���ף���d3�ݞDþ<��0�z�PC�(r�ԟI>	>*���2T�����˺JɨdK���?$&���VTB�>���I��ly͊w��c�0
�l�%T�M��w��"����r�֔��;t��M�E�%�N��c�l -��VL��㥫��g̟c+dFȌ-
�=n��XtƗ�rR	��-+�ޏЊ��t�ߏ����c�l7�]�H�z�1���dt	�##p+*�j��J�\ ��CC���Qf��;
٣���wm��A�N��< ���
t�kތ�&}S��b����h^�L�`�ʹP��{�!��'9��8�7���oHW	�f�5c�T�(���o��=����/�t�!�Z�!���Q�G�Ҽ�M�� eNJWs��U%M_�_��o�Z���X����<HaB}k�t�3�dv�.R�ؓ�k�z�
j��'n O���op�����_{&� �
we+��)���&|Ď��_�"��[�4���7��a���ޥ|���m13�lP�Of�վx�b䍸a�,Y����-{����Y����-��      ?      x������ � �      @   �  x��V�r�(}���ػ��TQ-`*.�������=��<������q
<
�F���5Ćn*Р���_��B�N���$Iɲɵ�QioeSVд��x��'���)�~�cЛ��ة7n��00V7p�]L!D��~���d"�K%{X�d22Q#e����P������LqK��rAQEN�d��d��A	enG�wu"9Q>J��ٽ��L��^�K�v���Y�Q�ڧ�%�#��M�Ҥ\��� �0?���G��B.�&�����,(�?
X�\��	�S{�w���E�}9{���њS�#ϓ�$Q��$ιi�ԦS� AtJT=�}1�k�����56�B���.�h���ŷ��U�Y���L2'��X�oU�|0i��B�-���TG s����d��j��-^��t
�U��ㄪ��^�{:��J��&p0��+Y��I�l�E-�U�-��~����-��j�Z@�)��/__�g]5��%j��h�$r�ȥ&&J9֛���R��]���c\7ʚ�[ڌ��|(e]5�s�	�N����3�>'b����E�����Iw5�c�.ip��H��&Ȁ15���A��~r?��h���e�{�3h�vI����} �d��ϴ�]�� �q˲L�f�pl8I�P�\a���/��Y<�qX�a�G��w̮�!�Gܛ).w9f��ꬫ��'A wD����0����G���GUsL��å0���'�G$�m�Lf�3��
HW�_+���,�;��Q�0�}��+��c){j��_��x�؝�0�m��v�
'�����̿�N�6*�i�Ĭ"�+	����
72�wp^�OPg���x���� ��h�Y�~ ��A���k���UDA�Twk�C,7���Q>�>q߀*��{��-]��/'��r/+�1e*�s�_j��#�����}��O^m.L��K�دo��� �U`      A   	  x�mT�n�0</��?��<�HJbC�I�uы�m�4)Ҵ@��Kʉ��[�ᒻ;�� 삑�MS�C�*�}H�l�S��ՀA�ߒ-A�F�|��H�ܷ�����hSr�=��
�0Z�K������a�6�~L��;`��a@g:��b�N�#�By���I�H��`;�����)��A�HI�X1� �<w��Ǉ�=���_�q������w�NO����\�]�� 5zn���tz>������ο���?ʮx~�}����TeO���{�v�KN/��A��H�D����:d�Z���8U?Z�#��+�5KhM��̿"Q1���e��ZMi&&HW�UP���p���8L:rl[4!����-4(ot�\Z���m�,��C^߁��2y�A�>l�,��p�Zg���@�Ԑz�8�+���conc���)>�\M��p��D��%��!ׁزjQˠف4�"1�Z� ~A,X��)Q�|>���SC��O]��/�ɃرZ\�G/�}�%PŃ�j���9��=19fG*��֏oG@�A�\D����1ElY���o�C9ba/b�13[�Rx��DÐ�t���!��a�ӗ���+�7y_'"e߱� rA�[�rX|+���qˢ�M9��<���cI�kG3��j�}7�\�78�-a$G9�:�3���x�>b�M�|F��|Y*m���hi�D�aFj�����5e���p���=�)����x�HƼdzMSAg��hMF���,$���D|z��OH�      1     x�uT�r�0<_�c{iŇd����D"5$�T3���((;�:�4#��H	�-kل���%&A���u*kr Q��s�P��0SzuŇ����{���|-�L��|�`�'l��%N��}�����.���pz�\�ي>���4�T}W�"�S@j<�X�|]�.�4x�d��~ـe�b��A��B)�������U댎�2�PO�by���`�(|o��Di ���+���ՠlw,p�n� A�Qv{N�k�/���Aq����ه�<KA�@>q���yc,�&�cF�!��܍cT,��"gբ��}�_07/S���BQ
i��S9Q��G�wf՝������ �:T�Sk���䆘������{/��6*{FZ׵��Mq�?���~�V�b��vߠ�����eZs�#	���Ĭ��e�׏a��kϬc ٢n �bY��g�y���mP��I����P�]��N�%��Q�P�9{ki�%��gԦ�\p�[�AԎ���ݷ)Sz#&�_+\��~�Pǧ;X���� ��	�Z_��D�Q%0
���CɂF�;�#`���_�y����j	;@߃i�(�R�:���觩Nh��<�i��n�t�_����h��]��i�m�Ŀ��PM%,      B       x�34���r��4��464�4����� <4      5   Q   x�3���KNU�%��y\F�n�y�yə�9
���E\ƜΉ9�y)�E�	�wFbQf��o~~^1+�&u��qqq 8��      9   �   x�M�Kn�0D��)r���_N� R*ˆb�0�����GJV�f����C��"$�B�B�����`�r�0�j�1˩8A$�|���%QIUB�UTf�z}�N�����\�aC˛d�����GE���i͡�V�}{{2E���W��*e�A#ₗ���
���%)�-RLMR}Ј���~�˰8ә	�ҍ~=f3��[I�$�[i���,������WZ�      D   '  x�]QIn�0<S����~d$�&�Ő�)��w��a;��4�L�K�l��M%V��96�Z�NF��c^��)���0r@�3�4�B�҃|ź�N`z&�Y6�MN������^��.0$/�6).�S���p�iinP����{�f.=�o�A�2G̯l�	KP*+vج��RXE[c�z>�}��=�0�e���G�T:՜���ի�ָM��Lߖ�ͬ�L��k�Qʗ6�O��r��$�XIen%����n1�`)UR����c�Ұ����j[�H\f�~wJ�?:l��      E   �  x�%�э1������k����7XB�(Q�;yOK=�M��ee�}ٲ�۶��}z;�~�Z��0J�a9<4#�<4e�5���T�ۨ��*��c�硑�jz��S#�ӤΦ��j�<�T��(}��*OMUmO�X�k�J��Tq}���O�Z>5�{���:j����2@?r@���^C蜲!� �� �!XmB�[�����7\\�h�6$.���p,\  2��2���2� ���6�wkpw���5��G�yP�$B��A٠'6����,l ���`���� �$6������R��a8� .6w`l �`b(�1�.���Ɇ�G6��P�dC��p A:�$��|@��V'���@�C�N����6p��
��ۡ�vhD��o�F����{;4"��ȷ���vp��n�ہ�Ž�������W      F   ~  x�mT]�� |�_�c�JU���x��i��*:W�*U:C��`�)������fWf��N��>��T�z>�9ـ+�fs�$x6VN8M"\����G�% *��-�.�U�#���O�UF�gtx�+�]�,��I�tt��&'p�®�`43{6/!?� ��q.ށWF�vr�m�"[kd�_�ˢp��y�O�Ǐ�Y��+�t�k��F�N���QJ� :�QTڴyR2�]I��狎���B��#�.�V� R�u�jp�Y�)v��)� lP���1��[�
�ʞ.øb/��X"B�//�H�Zxeq1�'<g6��m�Hv��\,�F�G�8�3�q]d.\�ǔO��A��κd,�KS	�Jhe�#������6[�N&4��*��"* �>�}�4������N�v5,d�!�M"������`d贼��[{2$�A$���TU7��S��ŕ�M"�N�����%�:��dQ#�(ɦOE@&4��v\�g��hJ�7
�bw
�d}��1M"�vi�B��3|���w6�|{��RNh�S���4��*[�s��n>;��h��F�J:qD�g8��Eǣ���=�^���:�_�Ʒ�|�zlͫ��T�VK��!o+�z�����gJ�_F��      G      x�3��wQpr�sw������ 0�2      I   1   x�3�vtq�425021�44�4�2��	ur�t�[����b���� ���      �      x������ � �      &      x������ � �      �      x������ � �      �      x������ � �      3      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �            x������ � �            x������ � �            x������ � �            x������ � �      	      x������ � �      7      x������ � �            x������ � �            x������ � �            x������ � �      =      x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �             x������ � �      "      x������ � �      $      x������ � �      ,   $   x�3�4�4�2��`�L��I30i$�b���� ��z      /      x�3�4204�4����� ��         �   x���M�� �u8�E�����&�G�*u��[tfN�����k�Ӹm]\ޏ���e�d��9�cԈh8����r/\t�#F�A��=E+�=�`8'��$Dpp_/T��W�����dn��K�����i>s���A��h��X���kI�Y��)f�t�/�%�Ǹ���[BႰ.��=^�%��P�>���-�Ғ�_�〈?�SJ} ��ɟ      K   �  x�uR�N�0}n�"_@�ux�@$$��k�6�K�$ݴ��I�.�8�s���x�Ѳ�l���赬1ʢ���������@��w�URy����I��	�t�X��Bvl���w\���� �QH�%�Wd_����c�M�!��>�k�˶AçbCc�]ĺ�#n�HDbe�چ��p�XJ�8�U�*K�5���.C�i��������o	�R3�����ȷ�+��G��#��Y偽�����5 ����D\@9�8���B�������� *V��{�M�<�f�S� �B�.�t�1'�_G����Q�w��!
�s�����tm�;=w)��S^�l����kYtz�.'a ��1b���`��!-b�[�}�Ϻ$���;X�د�jZw��,LV��;[�4�f��E�?��      L   X  x����n�0E����<	����Z�KMʊ�	B�H_
N+��]�̜3���ű����:O���$o*�������4{e�B�>qF�0-ۙ�3O~w���l�������HS -^,؜^Gбٔ��&��ޏh�Ơ�ri�~�+��{Y4�(+	,:~��>b�Dހ�3�D�g���:�*��~@�����E#tE�8	i�}�@�$�~����.!}�	[�7s��m����ެ2O�9Uf��$���'�i7���yd���vS��A�cFy I	�x�+rI�뺨���˖w��y�8⃷}%��� *��z������i�H�t,	p�h�����Q�      M   2  x�%����0�8�+!!�r���i����#{��4����/Tu}[Uח�W�(E�ꗜA���H`	
�� �'�@�j�A�
�9'O�p2�$�p� ��� i��Y-�G�«�p�Ŏ; \�F��vf:��Δ�3�p�a���-{hpv@�F@��0����~��}���i�(�1�彦��w�[3�m}�mM}+l���9L/�L���v:�ނ��f��:7�ڙ֯MTO��O�BXj@�^�|Ms�Km��0׶�D	a��0ׁ�|!�g@��C���?/N����}�LLb0      N   �   x�u���0Eg�+2�����&)�hc��J��wR!��Y�q|-xΚة���9IX�a�=+K����!�/����f��(�V:O�K�g�xOJ&DM��{(,IfS;MMt��a2�'��;Y�ȏ~�l�N�no���z�`������BK      *      x�͝�n$7���姨��k;y&u��i��1�Y`���TV��CCR{��~�̒ZA�IF� ��Vk���d~<E?>=}:�������ǧ�~�����v�����O������n������g��������6����������o����=�����sq&}&�� ��� �f��Z�K��G6E���Ҍ�)y.\I��wOO�_nv�ol�����p�x�qw�������O���?�����a�����a�}�}؀���������/�����n�q������|Ɂ�%<V߶))��~������6��o7���?`7�|(�=��"��/��/��%�:oOȜU�쭤�/{>}1����F��[	S8�*���du_�;`���N����}�����d��K���*!ۓ/-��\	�-Ĺ��R1*2y>>�.��
)�@����"���aW��n�f�W��v����
M�p>M�ޞ�n<aEr��������mG��?�*`W�0B�rn���m#%���j#�u�¤m�r�Lq�av���q`4-�\˛3Y7EN2��؍ZmlS������3[�s����p��-<a��=�jL"�}a~K��~����n�kO&7��*.Vr�y��\���Z�s���Qc^�nʳ���[i¼��f��".�o�0�����}Lo�	$xY]�~����?Gtԫ��~�r#�(Q����QB�\��/�@��]��a��X��1xtЪj����/��'��o�FX�6�Fy��.����01��4�-<^h���/F_�>ws��B�w��f�p}�~$`�p�)`̯�b������6Cq�/�����Nx׵6�w>�4߶�fXm��b�I��c�ט棯�}��V�7�-�|�d_�Yq6k��1���nȹ1+���nƷѲ���Fb7�0�2�Q97z�������.�tq&�KU�(�'�{�=<-�d8�m�w0�p.�k�!�y�F���� �E�(w%7�Ză�rZ>Py�j�e�)�Foy۩r{Gx�u(o���TNQ�C}�O���:^��)��3L}����"]���!M�~��:�\�s�2�CN�|p�\1���.N�c Z@ѧ!���+J��ϟoo�_���p���f7}?��)��(��=������v3�S<�j�)JK��Z���L&K���O�z�ʹ�u������آ�~�������0sX�a�so��Z�U�&b��r��S�|��?�=\|u;�������Og?����8�۸@ɿ�Q
ZB����K/����1A��qAhS 9@n�8t}�Ǉ�o����/��НI��Ƈ<���ʚp�w �%CN�>BW0�1`� ��Gb�dmO2�S>�\�B!�9�y���pw���u�}��ߝ���?6���z?l���������fl���鏷�U�q�ev���L[��v�{�K��>���/�6?~��U|�qkqF�/?rqI5�/�0�;�,�N�B\.����:�B��ϫ��S�8_���ٝ<辽C9�By�R
8}q����N�|N�&Ed�x���u.?K�����~>M�f�8�KNV�������	����n�M`�2�{K'�`%�wn�Òc9Fz��+1�c _C �����������7���XNg����1)𻶧*�UI	�^�S槤�Ss������R��X���P*Ri�5�
���Ose��֏��*�gG8?8��Je8�['����=!��d͗�5�_�����t攬��.2������O�u�0���3Z�ATc�j�v�a��䫼��<*hL_7Wo.L�V_]��1vc�m���7*hL��^�Wе��1�__���E9��?�汦���dx<�ø�6��f ds�`G_�YP�<6��F�_"J��V_}��y���Q���`Jpݩ��b�����<�YťV[�cC9e���<u�+��<���=i3<6�!�<�7���i���ө���ؾ�C=��m�@��|.�c���<v[B<d��]M���.�cGحZ�c��qxp��K��:f;�mQ�/؛�u��(>�q���]�٫)���|~X�/��ȹ(��籗Y'��+��:�p����^��3rn���e��(�<���m�����W_�dx\w���c��1%I�T������&iM.ʵ���&o�����<��["Ղ.o�-�1�ɚ׏���Y_k���h˭���^|�J��u�1�<�9d����ڞͧ`.�_W+�C6�(�!v籂�e���s6b�!�c_S����
&�M��WPR0�m��^���
�Ɖ����%aԐ�q���@��8
B���j�<�����w%0�I���X`���c�PC�l>��&(��,�1�Ӌ�r�*���V�+��'�u�GA+��G�Œ��`J���ګs�&_�&�Y�\����C�~�LЋ��j37_��}G-�����c'�=2l75w�G-��7�0R0)O�a��Q(
&�M�j�`c�`.^�՘#ӧ�2<~G�;
�������1L����O�|S���1��\t�M��G�Ǯ�N"�a��H7S�S���&�M�M��] ���ڒ��y��~;��:��
��w��^vu`~�t�λ9�P0k��/�aN���џ�0��������r�bM20χ��D�o�h=��&[�אP0=����:L�;�{/��ysў$Tc;Y�e8I���/'a���b��H��79�ؕ&�[aNݤc�*�*�.����
��E_�õN�<�Yr�4��؛+�cC���T@��q�$�P���hϞ�w3��l:���<��v�s�)�ᱭ�2!���M:��8)�.7)�oN�L�;�Z{_f�E[�a_��u��(0=��｜�����^�<�d͗�1�__�\��E�GJ{dx��bp�!6�I�ȐI����O�2	r2��w�2�q���y�*�7�jBH���$�E_�f�4�"')nN42d��dh��m��)����<Ű�Mi�c5�\nE�q&�N�u@T&A.^d���3�7���a�q&!.�Ƿ��I&��WW�dR�T�V1+�3ys�����L�]�w�z&/^ٸ��8�u7:)�"ky�I�u��ٗ�8� �4a�l��P*��/f�R��q�e����Q�r��LAiݩu�K�a�I��������BF��K�J�r�&����Q���rw��VgJB��H�ۯ���G[��i�4�ݬd�b#� ̦�wY�.d�����nnG�}��b��gН��9����O�#l�rp�Д�2e�8z��8or�ʎ��������e<ms���a�j��k,�	���k��*�6Ŋ	�ڰ؆!�7<�[�Ȓ���Ϻi�����by����rȺa|~)r��ǵi)�� 3�3�j�"�\ܢ�}x�%�[��.�()J���W�
J�R�Dq��o�﮾�u��Ŵss��r��qM�&5���xӤ	w�L�z-'��h���x�:!ީI��ٴ���	��l�ԻH�&M�e��ҫv�������ow'd���%��A�R��t��y�г/��f���p���K����7 ��n ����`c���M�K�R G.u����iB�'_�S�&G�PA�ё�9��ı9�9G�I�#�9B~ �#�X]���w�Fߚ0�dsrTF7�y���=\ǋ��__��QC �,v�z���. �����"��]\������>��˟�����n{w���l�w�ѫ�$��H|�$6���Z-����i�Q�8��L�@��T)��b�'6sa��$\.й@Xυ!%]*�����0��K��Ux&
�w����Q{<DyCH+{\͉�6�i>�H��_wO�/�,���˧����Qq���q�j�y�}`H���N��b�<�@~���\�����!�&7k���2/��!�����B4&5��8��Y�����/��_�� ���;Ә�r��o�S�I�T��x89*'�/�t�s���8�N�[�Rztd	��`!R���NwȮC�-�{�Y]9�Q[L��Vy����\��_��}�)n\�J�>��H71���L;�BR�r�r�ي�X���{��`EJ�ɒF�9����    )@8w����H��9_�˟k�ϨX�4�r��_�r=�N<W5�s���|�"����?;;��=!6|�ٱ�'W4Y��l��lT�K���pY�bK�,i�Ϻa�[�!�����b9J� A`�yI�YI�n�j�)��Q���X���d���eV�S(K�h�` 
p�dc)�ND^q6���hW2=��I�����<=#�R��\��JnH[�̭d��M�!��������7k�%3��(�gx�$S+���)��_V�����y)�|
��=[7D�O�4|7T�rRdy_z!�4��y)H��Lc퉹�h�W�T��[�h���BF@B�Xǯ?��WH��H�ժ�jR(�	�5�)@��=��J�,��*���P���#)C����h�U�J�R1n���I��Ǉ!EVj��K#e�W�&Oז*�-����T�;��VB�IZ=d�ɧ��{�+׌�L���L�1��BLn @u<٪����)H[MT�������K�k��k׃3
�֤%c�u���5��pƻ������i�y)HH�H,���?��Sߎ3����=�@X1}G!�Fr d��1I	Bl3σ��6&7���. �'o��"D�տ��Z�'�32&7��
�_���b;,2�܋I���� ��|U]k�6�02�a�F�n8vEdd��Z�:fc -'_�'�ܔm&7 �i��v�w�s����L��d2csR��㲾8f��#�X���tʄ��S�K�H��Ty�n���I�|�(I��#q�i��v��6�i�_%/�v����˧�Y��m�6��ӧ(N�)�<�c4����a���1�c?I�i�9����(��W�}A��t�,a
��W��c�g?�z�o�7/��x��d ޒ��Y8�Zi�A\Nn8��ĥO�d�4�w��1�|Xi��0GIw1��T�w��t��0O�'̾��`�ʰ^��<���k���U�mzZR�l&7��2�fr�Y�ρ�ǠՊ��Z/�)��Y�0"5�v5���cXF_!ly��cj�@���7�g���^��$}�t0S����+`��_��$_<���\p�y]��&�Rv���rC˙Yx0���R�M�(��A�3������h����:{�f��ܾ��	s�P����쀹}-�S�|e+*����ʰV��o����!CZA
y��!_A����!`A�yc����ܐ.�}�Q��:2��!\ʝo˒e���<Yv1I�k���Rb���Vd(�֯�cE������2�"�N]�RL���"�B��2���ϐϬ�f�aH7>7��>ǥ�V@@�T}��^��}/� ['_��EB�N��^�[	q\틥�KH�w��g����<�Z�V`+!�'_kg�Z	i�^|aړ|UN�q���!je�蔙1���%�h�놘UjK��X�2 �܍�����%ᬎ�Ū��@���2 ~�2 ��g���z�5�a�𕡴",�}ex�|�������Ȃ/��5٪�*SsehO��3	��[э&D���R�ro�]"�jM��Ee��F���~3��;�0����!p��\�(X�UY��5I��2}�����Y��u���L�m�a��8,L�z7�0eG_�OYQz�{�!L��������v��KS��\��jX��5	.8�]�aQ6X�/��-�<R��/�a��>�46:�R l"٣� ��%U+,J'Kw�p�xY�N��(�����������m{w���������~:���uo~�|y9�ꯟon��e%�GG�e���3���3��y���<������<��Jq^�m��\S5j�s�>��z���0TK�����|�<�y�VrC:Z�i�yZ6Մ2,�*�<	�ƂG�r] �tg���⋥���#���T.�BS��6(��b���=��ͳ�\��O+k�/0j�35y�ڵz�gJ�x���6{9�FW2���B�<TT=&FA�s��ᮈ�*����L=+��^�[Wj��P��*z��HCK�K��p��c��e�<��0�����-{8���|q�Uu�Kك;��O[R������o#`��Xi���l$K�r�{�v��4y�M�:z0'� K&,2�d�A�<8�rn��C��%<���A>��q+[�ԃ��;�<+)yД�g�R�͓���(�z��5�Ǖ؃"`���w�cL��9W![���5�z���q��1]��hAn�JI������ъ�����
䦌E���Z{Y�ܔ��v�������i�a���d�r��(+�{p���0�	[o�������#x��d��HW�Q+��BG�馏r����/�y��X���kGr��$�n�oH;�
$q�R����
$��m�VX��x�prPFM�&������|_�huBԤ���YBz&+���K� �=��}u����p4Ħ���S{ ��OC_2���yI��	���bε#�z�a�c+�t��J@V☺�RC�J9�|y�x���:#�<�'Y�4꺿\�Nr�g}w9	.4v�p8O�I%$k���'�<+v��;�V�;=�����}N��Z�c����m��p�ř\c�3��[��=*�,I�T���ȹ)��]����:j,��4�T������ߑ��JV�j���=n�l��>�B����Һ�C*i��f9m��Y=�	�m�v<���Uk��d�zM��>���Q!Rg9�E%ŮQT.�(%X�i�����R�=	#(����;ޓ,�Ir���q؊"�6tj<�R�m�����DL$���nn�7ۣ۫�=O���жo?��P����N}�fpfIw�����������<�"C:_L$�5��M;�l�t�tFZ=lX�4����,���?]<��*�v��\�w�k�4���y��a�E)rbV�:�����,����&��D�"�����o2�Io	S��C�3��HI5���͹X��Vŀ��;愍I�.�;���$dܸaou~@��L��fNzq^ _�-��w_��k�/u'�;J
���n��v�{Ͽy� d<١o���^#I9�h��*m �]z�y���WEYL�jF�C|&[�_/�<*�Wu�@�t蛴�4@�&��z�����U���'��K��ׇv�Ni�n�i������]�lT��K�0�F)S�YQ��2�Ik�.5N\���)��lמ���h�X�k<��8�*6����R��L�W�LH�9��g�jH'd���,�b�1��(��eRDE�ʠ	�<��YZ�W_����i{���fOp��w�zt9��h�#˓������i���G=z�Q�p������|�����~��ːu��ww�77���'��W�|��,}��eK	�����e�)����_>�Rd]6Kdq)�Kմb���]}�Dpx�ţ� ��*X��.�]34|�]�03�P2�O܆�qF7U��e;�;
���Q��q���Oܒ���r�{b���ƭ{ף��q�v����K0x�Sk��H�|�̹(Ǵr4��Yir�N�%����v��w���K ��C���o�~��9����W���h�YOK���)�<Q�U�<�!�.��b��+�I�.7�J21	����������^�0�ՙ�r�t<_P�9����N����Mɔ�9kY���6Q��R��<{�
UR.Ө�6S�JZH�r��/���C�M�m]�@��$�&��KZB�S�g��H�2�7@��S���\MdN����{U܇Aĭpѹ�ď����-�_]�2�p������ʴ����o�R��K��?���Ő�b�v��п�(�م�\dQ;>��6ft	w>���zɿz���q_���N��K�hr�����X�*���8�jKSS�{�������{�͊{�W93�#D��/���@��X쫼���_�ټ�ղާ�, ��T�U:�k7k_��_������x������]�M�wԛ�zk��qR}�˧��tz��V^��������^���J�*�l��f�M[Bt��p����K�e��qnu��r?t�1��.��cVR��/XY8LN��L���i0WJ����٠3H�t[|�	���!I������eݬ��|�ME� Q  ��XGu�mTx�~�I���^��^d�5t�n�$v�[c�K�	.�'�6Ζ4�2ܧ"�mU1J�p�=i6�9t{�P�(_�gsZ�Jg����F�r�s��a�Ų�]�<
�*`̑����U���u*��e����&�g
ӂ���܎*��+�b˪��&@09_�]�[�f׹z��u���_�Y_���}/!���f^�����O&_x�k(絵1�GO�� W�!�X���Hؐn�hH}�K���|������d���;I�Ap�u=����nz�1p*R�o�ba���I�\��~+�O8I5T��C�:�j�Y��Adh��G`r<�Ɏ�/�!�d�W���d�Ou���BrqB})}�����{%�ܫ�� ��MH7Ǯ}Mx����rv�򖲨����&s���s/*���:VvZ}�%1�E�5�}���X�5��^d�q.(��K�݃Ā������ 1����٧s�C�ţ��1�P��!�H��E.��cg?�z�o�|)!�3Ƃ�P�����-� �n�(���bQ���D�F���p�&(�Sd,+��th9�b��D��T����H�4�%��F�a��e�#\Y�I��97-��ދ��b��#�XL�Tu��
X_UT"j��CN�����J������S*�.yTu:)���PqKs�b�iڕҝ�1ô ��:�cV�x����1���ȇiև �1���ժo ��>�SkևT�)����*>uF�Z>]1�c�J��ׂ����v�շ���k����@H&_�%�;)䡦\��=B�x�"Gi�`0���,�\�>=e-������GŔ���%Ro�vp�V����o���&�a�(;�K�0l��Sa�D)��`1W��j_��\Q�2B�R!*��{}lse\�p�s�M
#DӮ��Ԫ�+�0�U̕(u���ð�����R6UR͏�	d��v�<&P�T�z�%C+"X���@lR�@��[����w|qL=��	���N}��s��c�����M���qY/�bR�f�\���L���qF�'�R��%����0¥Rj�#B�$]z�yDH�I�<�Y���0��d7�b�T��4-����)ZSC�7�e	<je�aX���S��ãF�ƌ�ܠ�ޠ:Q�a-5ja�Ti-HL����0	�0j���?$��T�X���Jk�C
�=z�2Ú�����\�.�R�V�E���3j��/{HL�Q�>vU=$���-���Q���a�K�����$OL�dyH�Y3j�`L�<�V�j�Cb�D��
����L �>		�n��( ;jA�Lw��hA�*�<��:�L\�����1H��~�:A�bP�[�N�[��� �<-sIgQ�k�_��Qr���-Mf���V�J£��	���iO��g�&mJŠ��I��ˊv������g�c��h]�g�c�;���7=�Y������$��I7P����)c�{��QHc!I����gQ&c$-=@�������)�왦� �z�:N�1�3Ƴ�4��~Ѫ*3�|����!�L(���ڐ"g�#�lԒXːv�{'��^�,m����*�8���9�ݼ@:��]ʗ���3�{{~�t/�)���Ά�j�-����6ew��, �`���4�͂�_�4��x'� �IKq-�f��溱oi)�e�)��g��/��:��d����f��/�<[ȳX��l![�+�B�x>CH�I�*�z�C:���K,��A�LZ���A�شBb�Bp<I�o�Ǧ=�;�I�o�'���%�qԂ������Fa�T��#6Ԃ�IZu����C�LŏX��!x��F,$��5i�q���3-t�ʗ	C�ď�0�_Ժ<I�g
�1kb:?�=Of�<fM���Ӡ�5�Z��ՀY/�`@�0k��j����+���m��Y�,�Qk���Z,��!Ú�C���aO��Q+�W��X������j�C�!ÚPY�j�C��G<oR�5Q�}wE<Z�Tm�0k�V���ޒ�'p1x�c��EZ�֝�k���6�	�*<��b�9;��XK7��j�8r��R�fa�-�Y�h���J�5��W�
���2�H��bE�S�l/V�X����]�h��KU��7���7�|������      O   R   x�]��	�0��a��<����稒b
�`��� ��ث{ѱ*<�FM�P����Kl`�0��GK?J��z{�%�_���=�qt      [      x������ � �      ;   �   x����B!гTA8��������u���!� ����s|q��8�H�3��vP<�w=ezO��4���� ���0����.�s���q^��&�M��lb6Mś��F�3��<P�gT=�D�<Ձd�o[�T=�@e_e2y�z�sTM�P;�4�7Ae�B|n~��{��uX���m�L�7Nl������Ġ�[�\4��ιM2�      Q   �   x�u�M�0���\`Lg�)�a��@��sK�	��u�����TM���{�
��:+�l�����(Q��%J�R�Ɇ5Tu���D�iO��0V#�9�7��Ĭ,�V���������+ �+�� )�ib��t���흣�ӆÑ��ݑWk������7�}0k}��x��a!�x �_%     