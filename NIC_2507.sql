PGDMP     %        	            x            NIC2    12.3    12.3    ~           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    22958    NIC2    DATABASE     �   CREATE DATABASE "NIC2" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
    DROP DATABASE "NIC2";
                postgres    false            �            1259    22959    mpr_master_table    TABLE     �  CREATE TABLE public.mpr_master_table (
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
       public         heap    postgres    false            �            1259    22964    mpr_scheme_awcc    TABLE     S  CREATE TABLE public.mpr_scheme_awcc (
    no_of_icds_cenetres_devoid_of_own_building numeric(10,0) NOT NULL,
    no_of_new_icds_building_constructed numeric(10,0) NOT NULL,
    no_of_icds_centres_running_in_open_space numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 #   DROP TABLE public.mpr_scheme_awcc;
       public         heap    postgres    false    202            �            1259    22970    AWCC_id_seq    SEQUENCE     v   CREATE SEQUENCE public."AWCC_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public."AWCC_id_seq";
       public          postgres    false    203            �           0    0    AWCC_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."AWCC_id_seq" OWNED BY public.mpr_scheme_awcc.id_pk;
          public          postgres    false    204            �            1259    22972    mpr_scheme_baitarani    TABLE     �   CREATE TABLE public.mpr_scheme_baitarani (
    no_of_burning_ghats_taken_up numeric(10,0) NOT NULL,
    completed_till_date date NOT NULL,
    location_code character varying(8) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 (   DROP TABLE public.mpr_scheme_baitarani;
       public         heap    postgres    false    202            �            1259    22978    BAITARANI_id_seq    SEQUENCE     {   CREATE SEQUENCE public."BAITARANI_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."BAITARANI_id_seq";
       public          postgres    false    205            �           0    0    BAITARANI_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."BAITARANI_id_seq" OWNED BY public.mpr_scheme_baitarani.id_pk;
          public          postgres    false    206            �            1259    22980    mpr_scheme_dog    TABLE     h  CREATE TABLE public.mpr_scheme_dog (
    target_for_distribution_of_goats numeric(10,0) NOT NULL,
    no_of_goats_actually_distributed numeric(10,0) NOT NULL,
    no_of_beneficiaries_selected numeric(10,0) NOT NULL,
    no_of_beneficiaries_approved numeric(10,0) NOT NULL,
    location_code character varying(10) NOT NULL
)
INHERITS (public.mpr_master_table);
 "   DROP TABLE public.mpr_scheme_dog;
       public         heap    postgres    false    202            �            1259    22985 
   DOG_id_seq    SEQUENCE     u   CREATE SEQUENCE public."DOG_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public."DOG_id_seq";
       public          postgres    false    207            �           0    0 
   DOG_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."DOG_id_seq" OWNED BY public.mpr_scheme_dog.id_pk;
          public          postgres    false    208            �            1259    22987    mpr_scheme_doptuhd    TABLE     �   CREATE TABLE public.mpr_scheme_doptuhd (
    no_of_power_tiller_distributed numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 &   DROP TABLE public.mpr_scheme_doptuhd;
       public         heap    postgres    false    202            �            1259    22993    DOPTUHD_id_seq    SEQUENCE     y   CREATE SEQUENCE public."DOPTUHD_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."DOPTUHD_id_seq";
       public          postgres    false    209            �           0    0    DOPTUHD_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."DOPTUHD_id_seq" OWNED BY public.mpr_scheme_doptuhd.id_pk;
          public          postgres    false    210            �            1259    22995    mpr_scheme_enrollment    TABLE     }  CREATE TABLE public.mpr_scheme_enrollment (
    gross_enrolment_ratio_primary numeric(10,0) NOT NULL,
    net_enrolment_ratio_primary numeric(10,0) NOT NULL,
    gross_enrolment_ratio_upper_primary numeric(10,0) NOT NULL,
    net_enrolment_ratio_upper_primary numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 )   DROP TABLE public.mpr_scheme_enrollment;
       public         heap    postgres    false    202            �            1259    23001    ENROLLMENT_id_seq    SEQUENCE     |   CREATE SEQUENCE public."ENROLLMENT_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."ENROLLMENT_id_seq";
       public          postgres    false    211            �           0    0    ENROLLMENT_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."ENROLLMENT_id_seq" OWNED BY public.mpr_scheme_enrollment.id_pk;
          public          postgres    false    212            �            1259    23003    mpr_scheme_foodpro    TABLE     �   CREATE TABLE public.mpr_scheme_foodpro (
    status_of_pocurement numeric(10,0) NOT NULL,
    target_of_pocurement numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 &   DROP TABLE public.mpr_scheme_foodpro;
       public         heap    postgres    false    202            �            1259    23009    FOODPRO_id_seq    SEQUENCE     y   CREATE SEQUENCE public."FOODPRO_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."FOODPRO_id_seq";
       public          postgres    false    213            �           0    0    FOODPRO_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."FOODPRO_id_seq" OWNED BY public.mpr_scheme_foodpro.id_pk;
          public          postgres    false    214            �            1259    23011    mpr_scheme_gitanjali    TABLE     I  CREATE TABLE public.mpr_scheme_gitanjali (
    no_of_case_sanctioned_under_gitanjali numeric(10,0) NOT NULL,
    date_of_inception character varying(15) NOT NULL,
    no_of_houses_constructed_under_gitanjali numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 (   DROP TABLE public.mpr_scheme_gitanjali;
       public         heap    postgres    false    202            �            1259    23017    GITANJALI_id_seq    SEQUENCE     {   CREATE SEQUENCE public."GITANJALI_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."GITANJALI_id_seq";
       public          postgres    false    215            �           0    0    GITANJALI_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."GITANJALI_id_seq" OWNED BY public.mpr_scheme_gitanjali.id_pk;
          public          postgres    false    216            �            1259    23019    mpr_scheme_immunisati    TABLE     �   CREATE TABLE public.mpr_scheme_immunisati (
    per_of_fully_immunised_child numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 )   DROP TABLE public.mpr_scheme_immunisati;
       public         heap    postgres    false    202            �            1259    23025    IMMUNISATION_id_seq    SEQUENCE     ~   CREATE SEQUENCE public."IMMUNISATION_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."IMMUNISATION_id_seq";
       public          postgres    false    217            �           0    0    IMMUNISATION_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."IMMUNISATION_id_seq" OWNED BY public.mpr_scheme_immunisati.id_pk;
          public          postgres    false    218            �            1259    23027    mpr_scheme_infantd    TABLE     �   CREATE TABLE public.mpr_scheme_infantd (
    total_no_of_infant_death numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 &   DROP TABLE public.mpr_scheme_infantd;
       public         heap    postgres    false    202            �            1259    23033    INFANTD_id_seq    SEQUENCE     y   CREATE SEQUENCE public."INFANTD_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."INFANTD_id_seq";
       public          postgres    false    219            �           0    0    INFANTD_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."INFANTD_id_seq" OWNED BY public.mpr_scheme_infantd.id_pk;
          public          postgres    false    220            �            1259    23035    mpr_scheme_inspection    TABLE       CREATE TABLE public.mpr_scheme_inspection (
    no_of_homes_inspected_by_senior_officers numeric(10,0) NOT NULL,
    designation_of_officers character varying(5) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 )   DROP TABLE public.mpr_scheme_inspection;
       public         heap    postgres    false    202            �            1259    23041    INSPECTION_id_seq    SEQUENCE     |   CREATE SEQUENCE public."INSPECTION_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."INSPECTION_id_seq";
       public          postgres    false    221            �           0    0    INSPECTION_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."INSPECTION_id_seq" OWNED BY public.mpr_scheme_inspection.id_pk;
          public          postgres    false    222            �            1259    23043    mpr_scheme_instdel    TABLE     �   CREATE TABLE public.mpr_scheme_instdel (
    per_of_institutional_delivery numeric(52,0) NOT NULL,
    location_code character varying(8) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 &   DROP TABLE public.mpr_scheme_instdel;
       public         heap    postgres    false    202            �            1259    23049    INSTDEL_id_seq    SEQUENCE     y   CREATE SEQUENCE public."INSTDEL_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."INSTDEL_id_seq";
       public          postgres    false    223            �           0    0    INSTDEL_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."INSTDEL_id_seq" OWNED BY public.mpr_scheme_instdel.id_pk;
          public          postgres    false    224            �            1259    23051    mpr_scheme_jaldjalb    TABLE     N  CREATE TABLE public.mpr_scheme_jaldjalb (
    date_of_inspection character varying(15) NOT NULL,
    no_of_ponds_excavated_under_jal_dharo_jal_bharo numeric(10,0) NOT NULL,
    no_of_ponds_fish_production_started numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 '   DROP TABLE public.mpr_scheme_jaldjalb;
       public         heap    postgres    false    202            �            1259    23057    JALDJALB_id_seq    SEQUENCE     z   CREATE SEQUENCE public."JALDJALB_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."JALDJALB_id_seq";
       public          postgres    false    225            �           0    0    JALDJALB_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."JALDJALB_id_seq" OWNED BY public.mpr_scheme_jaldjalb.id_pk;
          public          postgres    false    226            �            1259    23059    mpr_scheme_kanyas    TABLE       CREATE TABLE public.mpr_scheme_kanyas (
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
       public         heap    postgres    false    202            �            1259    23065    KANYAS_id_seq    SEQUENCE     x   CREATE SEQUENCE public."KANYAS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."KANYAS_id_seq";
       public          postgres    false    227            �           0    0    KANYAS_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."KANYAS_id_seq" OWNED BY public.mpr_scheme_kanyas.id_pk;
          public          postgres    false    228            �            1259    23067    mpr_scheme_karmatirth    TABLE     �  CREATE TABLE public.mpr_scheme_karmatirth (
    no_of_karmatirtha_sanctioned numeric(10,0) NOT NULL,
    no_of_karmatirtha_for_which_construction_started numeric(10,0) NOT NULL,
    no_of_karmatirtha_for_which_construction_completed numeric(10,0) NOT NULL,
    no_of_karmatirth_operationalised numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 )   DROP TABLE public.mpr_scheme_karmatirth;
       public         heap    postgres    false    202            �            1259    23073    KARMATIRTHA_id_seq    SEQUENCE     }   CREATE SEQUENCE public."KARMATIRTHA_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."KARMATIRTHA_id_seq";
       public          postgres    false    229            �           0    0    KARMATIRTHA_id_seq    SEQUENCE OWNED BY     X   ALTER SEQUENCE public."KARMATIRTHA_id_seq" OWNED BY public.mpr_scheme_karmatirth.id_pk;
          public          postgres    false    230            �            1259    23075    mpr_scheme_kcc    TABLE     �  CREATE TABLE public.mpr_scheme_kcc (
    no_of_agricultrural_families_in_the_district numeric(10,0) NOT NULL,
    no_of_agricultural_families_covered_by_kcc numeric(10,0) NOT NULL,
    kcc_coverage_percentage numeric(6,3) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL,
    CONSTRAINT percent_check CHECK (((kcc_coverage_percentage >= (0)::numeric) AND (kcc_coverage_percentage <= (100)::numeric)))
)
INHERITS (public.mpr_master_table);
 "   DROP TABLE public.mpr_scheme_kcc;
       public         heap    postgres    false    202            �            1259    23082    KCC_id_pk_seq    SEQUENCE     x   CREATE SEQUENCE public."KCC_id_pk_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."KCC_id_pk_seq";
       public          postgres    false    231            �           0    0    KCC_id_pk_seq    SEQUENCE OWNED BY     L   ALTER SEQUENCE public."KCC_id_pk_seq" OWNED BY public.mpr_scheme_kcc.id_pk;
          public          postgres    false    232            �            1259    23084    mpr_scheme_landpp    TABLE     �   CREATE TABLE public.mpr_scheme_landpp (
    no_of_land_permission_pending numeric(10,0) NOT NULL,
    projects_name character varying(30) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 %   DROP TABLE public.mpr_scheme_landpp;
       public         heap    postgres    false    202            �            1259    23090    LANDPP_id_seq    SEQUENCE     x   CREATE SEQUENCE public."LANDPP_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."LANDPP_id_seq";
       public          postgres    false    233            �           0    0    LANDPP_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."LANDPP_id_seq" OWNED BY public.mpr_scheme_landpp.id_pk;
          public          postgres    false    234            �            1259    23092    mpr_semitrans_login    TABLE       CREATE TABLE public.mpr_semitrans_login (
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
       public         heap    postgres    false            �            1259    23104    Login_id_seq    SEQUENCE     w   CREATE SEQUENCE public."Login_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Login_id_seq";
       public          postgres    false    235            �           0    0    Login_id_seq    SEQUENCE OWNED BY     V   ALTER SEQUENCE public."Login_id_seq" OWNED BY public.mpr_semitrans_login.login_id_pk;
          public          postgres    false    236            �            1259    23106    Login_user_type_id_fk_seq    SEQUENCE     �   CREATE SEQUENCE public."Login_user_type_id_fk_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."Login_user_type_id_fk_seq";
       public          postgres    false    235            �           0    0    Login_user_type_id_fk_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."Login_user_type_id_fk_seq" OWNED BY public.mpr_semitrans_login.user_type_id_fk;
          public          postgres    false    237            �            1259    23108    mpr_scheme_maternald    TABLE     �   CREATE TABLE public.mpr_scheme_maternald (
    total_no_of_maternal_death numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 (   DROP TABLE public.mpr_scheme_maternald;
       public         heap    postgres    false    202            �            1259    23114    MATERNALD_id_seq    SEQUENCE     {   CREATE SEQUENCE public."MATERNALD_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."MATERNALD_id_seq";
       public          postgres    false    238            �           0    0    MATERNALD_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."MATERNALD_id_seq" OWNED BY public.mpr_scheme_maternald.id_pk;
          public          postgres    false    239            �            1259    23116    mpr_scheme_mci    TABLE     Z  CREATE TABLE public.mpr_scheme_mci (
    percentage_of_malnourished_child numeric(6,3) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL,
    CONSTRAINT mci_percent_check CHECK (((percentage_of_malnourished_child >= (0)::numeric) AND (percentage_of_malnourished_child <= (100)::numeric)))
)
INHERITS (public.mpr_master_table);
 "   DROP TABLE public.mpr_scheme_mci;
       public         heap    postgres    false    202            �            1259    23123 
   MCI_id_seq    SEQUENCE     u   CREATE SEQUENCE public."MCI_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public."MCI_id_seq";
       public          postgres    false    240            �           0    0 
   MCI_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."MCI_id_seq" OWNED BY public.mpr_scheme_mci.id_pk;
          public          postgres    false    241            �            1259    23125    mpr_scheme_minoritys    TABLE     n  CREATE TABLE public.mpr_scheme_minoritys (
    target_for_scholarship_distribution_aikyashree numeric(10,0) NOT NULL,
    no_of_students_distributed_scholarship numeric(10,0) NOT NULL,
    no_of_application_uploaded_under_aikyashree_scholarship numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 (   DROP TABLE public.mpr_scheme_minoritys;
       public         heap    postgres    false    202            �            1259    23131    MINORITYS_id_seq    SEQUENCE     {   CREATE SEQUENCE public."MINORITYS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."MINORITYS_id_seq";
       public          postgres    false    242            �           0    0    MINORITYS_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."MINORITYS_id_seq" OWNED BY public.mpr_scheme_minoritys.id_pk;
          public          postgres    false    243            �            1259    23133    mpr_scheme_poe    TABLE     �   CREATE TABLE public.mpr_scheme_poe (
    target numeric(10,0) NOT NULL,
    production numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 "   DROP TABLE public.mpr_scheme_poe;
       public         heap    postgres    false    202            �            1259    23139 
   POE_id_seq    SEQUENCE     u   CREATE SEQUENCE public."POE_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public."POE_id_seq";
       public          postgres    false    244            �           0    0 
   POE_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."POE_id_seq" OWNED BY public.mpr_scheme_poe.id_pk;
          public          postgres    false    245            �            1259    23141    mpr_scheme_saboojshre    TABLE     <  CREATE TABLE public.mpr_scheme_saboojshre (
    no_of_children_born_since_inception_of_the_project_in_the_dist numeric(10,0) NOT NULL,
    no_of_tree_sapling_handed_over_to_the_new_born_children numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 )   DROP TABLE public.mpr_scheme_saboojshre;
       public         heap    postgres    false    202            �            1259    23147    SABOOJSHREE_id_seq    SEQUENCE     }   CREATE SEQUENCE public."SABOOJSHREE_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."SABOOJSHREE_id_seq";
       public          postgres    false    246            �           0    0    SABOOJSHREE_id_seq    SEQUENCE OWNED BY     X   ALTER SEQUENCE public."SABOOJSHREE_id_seq" OWNED BY public.mpr_scheme_saboojshre.id_pk;
          public          postgres    false    247            �            1259    23149    mpr_scheme_saboojs    TABLE        CREATE TABLE public.mpr_scheme_saboojs (
    target_for_distribution_of_cycles numeric(10,0) NOT NULL,
    cycle_distributed_till_date numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 &   DROP TABLE public.mpr_scheme_saboojs;
       public         heap    postgres    false    202            �            1259    23155    SABOOJS_id_seq    SEQUENCE     y   CREATE SEQUENCE public."SABOOJS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."SABOOJS_id_seq";
       public          postgres    false    248            �           0    0    SABOOJS_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."SABOOJS_id_seq" OWNED BY public.mpr_scheme_saboojs.id_pk;
          public          postgres    false    249            �            1259    23157    mpr_scheme_safedsavel    TABLE       CREATE TABLE public.mpr_scheme_safedsavel (
    no_of_accidents numeric(10,0) NOT NULL,
    no_of_death numeric(10,0) NOT NULL,
    no_of_insured_person numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 )   DROP TABLE public.mpr_scheme_safedsavel;
       public         heap    postgres    false    202            �            1259    23163    SAFEDSAVEL_id_seq    SEQUENCE     |   CREATE SEQUENCE public."SAFEDSAVEL_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."SAFEDSAVEL_id_seq";
       public          postgres    false    250            �           0    0    SAFEDSAVEL_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."SAFEDSAVEL_id_seq" OWNED BY public.mpr_scheme_safedsavel.id_pk;
          public          postgres    false    251            �            1259    23165    mpr_scheme_samabythi    TABLE       CREATE TABLE public.mpr_scheme_samabythi (
    no_of_beneficiaries_provided_benefit_till_date numeric(10,0) NOT NULL,
    till_date character varying(15) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 (   DROP TABLE public.mpr_scheme_samabythi;
       public         heap    postgres    false    202            �            1259    23171    SAMABYTHI_id_seq    SEQUENCE     {   CREATE SEQUENCE public."SAMABYTHI_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."SAMABYTHI_id_seq";
       public          postgres    false    252            �           0    0    SAMABYTHI_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."SAMABYTHI_id_seq" OWNED BY public.mpr_scheme_samabythi.id_pk;
          public          postgres    false    253            �            1259    23173    mpr_scheme_sikshas    TABLE     m  CREATE TABLE public.mpr_scheme_sikshas (
    targetted_no_of_sc_st_student_under_sikshashree numeric(10,0) NOT NULL,
    no_of_students_getting_benefit_under_sikshashree numeric(10,0) NOT NULL,
    no_of_applications_uploaded_under_sikshashree numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 &   DROP TABLE public.mpr_scheme_sikshas;
       public         heap    postgres    false    202            �            1259    23179    SIKSHAS_id_seq    SEQUENCE     y   CREATE SEQUENCE public."SIKSHAS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."SIKSHAS_id_seq";
       public          postgres    false    254            �           0    0    SIKSHAS_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."SIKSHAS_id_seq" OWNED BY public.mpr_scheme_sikshas.id_pk;
          public          postgres    false    255                        1259    23181    mpr_scheme_svskp    TABLE     	  CREATE TABLE public.mpr_scheme_svskp (
    no_of_project_sponsored_under_svskp numeric(10,0) NOT NULL,
    no_of_project_sanctioned_under_svskp numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 $   DROP TABLE public.mpr_scheme_svskp;
       public         heap    postgres    false    202                       1259    23187    SVSKP_id_seq    SEQUENCE     w   CREATE SEQUENCE public."SVSKP_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."SVSKP_id_seq";
       public          postgres    false    256            �           0    0    SVSKP_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."SVSKP_id_seq" OWNED BY public.mpr_scheme_svskp.id_pk;
          public          postgres    false    257                       1259    23189    mpr_scheme_yubas    TABLE     /  CREATE TABLE public.mpr_scheme_yubas (
    no_of_unemployed_youth_registered_under_yubashree numeric(10,0) NOT NULL,
    no_of_unemployed_registered_youth_getting_monthly_assistance numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 $   DROP TABLE public.mpr_scheme_yubas;
       public         heap    postgres    false    202                       1259    23195    YUBAS_id_seq    SEQUENCE     w   CREATE SEQUENCE public."YUBAS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."YUBAS_id_seq";
       public          postgres    false    258            �           0    0    YUBAS_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."YUBAS_id_seq" OWNED BY public.mpr_scheme_yubas.id_pk;
          public          postgres    false    259                       1259    23197    mpr_scheme_anand    TABLE       CREATE TABLE public.mpr_scheme_anand (
    total_no_of_shgs_formed_in_the_district numeric(10,0) NOT NULL,
    total_no_of_shgs_got_credit_linkage numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 $   DROP TABLE public.mpr_scheme_anand;
       public         heap    postgres    false    202                       1259    23203    anand_id_seq    SEQUENCE     u   CREATE SEQUENCE public.anand_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.anand_id_seq;
       public          postgres    false    260            �           0    0    anand_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.anand_id_seq OWNED BY public.mpr_scheme_anand.id_pk;
          public          postgres    false    261                       1259    23205    mpr_master_attri_table    TABLE     �   CREATE TABLE public.mpr_master_attri_table (
    attri_id_pk bigint NOT NULL,
    scheme_id_fk bigint DEFAULT 0 NOT NULL,
    attri_name character varying(100) NOT NULL,
    actual_name character varying(100) NOT NULL
);
 *   DROP TABLE public.mpr_master_attri_table;
       public         heap    postgres    false                       1259    23209    att_table_id_seq    SEQUENCE     y   CREATE SEQUENCE public.att_table_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.att_table_id_seq;
       public          postgres    false    262            �           0    0    att_table_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.att_table_id_seq OWNED BY public.mpr_master_attri_table.attri_id_pk;
          public          postgres    false    263                       1259    23211    mpr_trans_audit_log    TABLE     �  CREATE TABLE public.mpr_trans_audit_log (
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
       public         heap    postgres    false            	           1259    23215    audit_log_id_seq    SEQUENCE     y   CREATE SEQUENCE public.audit_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.audit_log_id_seq;
       public          postgres    false    264            �           0    0    audit_log_id_seq    SEQUENCE OWNED BY     X   ALTER SEQUENCE public.audit_log_id_seq OWNED BY public.mpr_trans_audit_log.audit_id_pk;
          public          postgres    false    265            
           1259    23217    mpr_semitrans_check_first_user    TABLE     u  CREATE TABLE public.mpr_semitrans_check_first_user (
    user_id_pk bigint NOT NULL,
    check_if_first_user integer NOT NULL,
    check_profile_updated_once integer NOT NULL,
    CONSTRAINT check_first_user_check CHECK ((check_if_first_user = ANY (ARRAY[0, 1]))),
    CONSTRAINT check_profile_updated_once_check CHECK ((check_profile_updated_once = ANY (ARRAY[0, 1])))
);
 2   DROP TABLE public.mpr_semitrans_check_first_user;
       public         heap    postgres    false                       1259    23222 (   check_First_User_check_if_first_user_seq    SEQUENCE     �   CREATE SEQUENCE public."check_First_User_check_if_first_user_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public."check_First_User_check_if_first_user_seq";
       public          postgres    false    266            �           0    0 (   check_First_User_check_if_first_user_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."check_First_User_check_if_first_user_seq" OWNED BY public.mpr_semitrans_check_first_user.check_if_first_user;
          public          postgres    false    267                       1259    23224    check_First_User_user_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public."check_First_User_user_id_pk_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."check_First_User_user_id_pk_seq";
       public          postgres    false    266            �           0    0    check_First_User_user_id_pk_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public."check_First_User_user_id_pk_seq" OWNED BY public.mpr_semitrans_check_first_user.user_id_pk;
          public          postgres    false    268                       1259    23226 !   mpr_semitrans_dba_financial_range    TABLE     %  CREATE TABLE public.mpr_semitrans_dba_financial_range (
    dba_financial_range_table_id_pk bigint NOT NULL,
    financial_year_range character varying(4) NOT NULL,
    month numeric(2,0) NOT NULL,
    CONSTRAINT dba_month_check CHECK (((month > (0)::numeric) AND (month < (13)::numeric)))
);
 5   DROP TABLE public.mpr_semitrans_dba_financial_range;
       public         heap    postgres    false                       1259    23230 =   dba_financial_range_table_dba_financial_range_table_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.dba_financial_range_table_dba_financial_range_table_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 T   DROP SEQUENCE public.dba_financial_range_table_dba_financial_range_table_id_pk_seq;
       public          postgres    false    269            �           0    0 =   dba_financial_range_table_dba_financial_range_table_id_pk_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.dba_financial_range_table_dba_financial_range_table_id_pk_seq OWNED BY public.mpr_semitrans_dba_financial_range.dba_financial_range_table_id_pk;
          public          postgres    false    270                       1259    23232    mpr_master_designation    TABLE     �   CREATE TABLE public.mpr_master_designation (
    desig_id_pk bigint NOT NULL,
    desig_name character varying(100) NOT NULL,
    dept_id_fk bigint NOT NULL
);
 *   DROP TABLE public.mpr_master_designation;
       public         heap    postgres    false                       1259    23235    designation_desig_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.designation_desig_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.designation_desig_id_pk_seq;
       public          postgres    false    271            �           0    0    designation_desig_id_pk_seq    SEQUENCE OWNED BY     f   ALTER SEQUENCE public.designation_desig_id_pk_seq OWNED BY public.mpr_master_designation.desig_id_pk;
          public          postgres    false    272                       1259    23237    mpr_scheme_doc    TABLE       CREATE TABLE public.mpr_scheme_doc (
    target_for_distribution_of_poultry numeric(10,0) NOT NULL,
    no_of_poultry_actually_distributed numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 "   DROP TABLE public.mpr_scheme_doc;
       public         heap    postgres    false    202                       1259    23243 
   doc_id_seq    SEQUENCE     s   CREATE SEQUENCE public.doc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.doc_id_seq;
       public          postgres    false    273            �           0    0 
   doc_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.doc_id_seq OWNED BY public.mpr_scheme_doc.id_pk;
          public          postgres    false    274                       1259    23245    mpr_master_financial_year    TABLE     �   CREATE TABLE public.mpr_master_financial_year (
    financial_year_master_id_pk bigint NOT NULL,
    year_type character varying(50) NOT NULL
);
 -   DROP TABLE public.mpr_master_financial_year;
       public         heap    postgres    false                       1259    23248 5   financial_year_master_financial_year_master_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.financial_year_master_financial_year_master_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 L   DROP SEQUENCE public.financial_year_master_financial_year_master_id_pk_seq;
       public          postgres    false    275            �           0    0 5   financial_year_master_financial_year_master_id_pk_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.financial_year_master_financial_year_master_id_pk_seq OWNED BY public.mpr_master_financial_year.financial_year_master_id_pk;
          public          postgres    false    276                       1259    23250    mpr_scheme_kishanm    TABLE     ,  CREATE TABLE public.mpr_scheme_kishanm (
    no_of_kishan_mandis_sanctioned numeric(10,0) NOT NULL,
    no_of_kishan_mandis_operational numeric(10,0) NOT NULL,
    operationality numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 &   DROP TABLE public.mpr_scheme_kishanm;
       public         heap    postgres    false    202                       1259    23256    kishanm_id_seq    SEQUENCE     w   CREATE SEQUENCE public.kishanm_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.kishanm_id_seq;
       public          postgres    false    277            �           0    0    kishanm_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.kishanm_id_seq OWNED BY public.mpr_scheme_kishanm.id_pk;
          public          postgres    false    278                       1259    23258    mpr_master_location_data    TABLE     �   CREATE TABLE public.mpr_master_location_data (
    location_area character varying(100) NOT NULL,
    location_code character varying(12) NOT NULL,
    location_id_pk bigint NOT NULL
);
 ,   DROP TABLE public.mpr_master_location_data;
       public         heap    postgres    false                       1259    23261     location_data_location_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.location_data_location_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.location_data_location_id_pk_seq;
       public          postgres    false    279            �           0    0     location_data_location_id_pk_seq    SEQUENCE OWNED BY     p   ALTER SEQUENCE public.location_data_location_id_pk_seq OWNED BY public.mpr_master_location_data.location_id_pk;
          public          postgres    false    280                       1259    23263    mpr_trans_meeting_schedule    TABLE     �   CREATE TABLE public.mpr_trans_meeting_schedule (
    meeting_id_pk bigint NOT NULL,
    start_time character varying(16) NOT NULL,
    end_time character varying(16) NOT NULL
);
 .   DROP TABLE public.mpr_trans_meeting_schedule;
       public         heap    postgres    false                       1259    23266    meeting_schedule_id_seq    SEQUENCE     �   CREATE SEQUENCE public.meeting_schedule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.meeting_schedule_id_seq;
       public          postgres    false    281            �           0    0    meeting_schedule_id_seq    SEQUENCE OWNED BY     h   ALTER SEQUENCE public.meeting_schedule_id_seq OWNED BY public.mpr_trans_meeting_schedule.meeting_id_pk;
          public          postgres    false    282                       1259    23268    mpr_scheme_mgnregs    TABLE     �  CREATE TABLE public.mpr_scheme_mgnregs (
    no_of_person_days_generated_under_mgnregs numeric(10,0) NOT NULL,
    average_no_of_persondays_generated_per_household numeric(10,0) NOT NULL,
    expenditure_of_the_session numeric(10,0) NOT NULL,
    per_of_labour_budget_achieved numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 &   DROP TABLE public.mpr_scheme_mgnregs;
       public         heap    postgres    false    202                       1259    23274    mgnres_id_seq    SEQUENCE     v   CREATE SEQUENCE public.mgnres_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.mgnres_id_seq;
       public          postgres    false    283            �           0    0    mgnres_id_seq    SEQUENCE OWNED BY     N   ALTER SEQUENCE public.mgnres_id_seq OWNED BY public.mpr_scheme_mgnregs.id_pk;
          public          postgres    false    284                       1259    23276    mpr_master_block    TABLE     �   CREATE TABLE public.mpr_master_block (
    block_id_pk bigint NOT NULL,
    block_name character varying(50) NOT NULL,
    block_lg_code bigint NOT NULL,
    subdiv_id_fk bigint DEFAULT 0 NOT NULL,
    location_id_fk bigint DEFAULT 0 NOT NULL
);
 $   DROP TABLE public.mpr_master_block;
       public         heap    postgres    false                       1259    23281    mpr_master_dashboard_info    TABLE     �   CREATE TABLE public.mpr_master_dashboard_info (
    dashboard_id_pk bigint NOT NULL,
    sch_tab_name character varying(50) NOT NULL,
    attr_target character varying(100) NOT NULL,
    attri_progress character varying(100) NOT NULL
);
 -   DROP TABLE public.mpr_master_dashboard_info;
       public         heap    postgres    false                       1259    23284    mpr_master_department    TABLE     �   CREATE TABLE public.mpr_master_department (
    dept_id_pk bigint NOT NULL,
    dept_name character varying(100) NOT NULL,
    short_name character varying(15) NOT NULL,
    office_id_fk bigint DEFAULT 0 NOT NULL
);
 )   DROP TABLE public.mpr_master_department;
       public         heap    postgres    false                        1259    23288    mpr_master_district    TABLE     �   CREATE TABLE public.mpr_master_district (
    district_id_pk bigint NOT NULL,
    district_name character varying(50) NOT NULL,
    state_id_fk bigint DEFAULT 0 NOT NULL,
    dist_lg_code bigint NOT NULL,
    location_id_fk bigint DEFAULT 0 NOT NULL
);
 '   DROP TABLE public.mpr_master_district;
       public         heap    postgres    false            !           1259    23293 &   mpr_master_district_district_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.mpr_master_district_district_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.mpr_master_district_district_id_pk_seq;
       public          postgres    false    288            �           0    0 &   mpr_master_district_district_id_pk_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.mpr_master_district_district_id_pk_seq OWNED BY public.mpr_master_district.district_id_pk;
          public          postgres    false    289            "           1259    23295    mpr_master_office    TABLE     }   CREATE TABLE public.mpr_master_office (
    office_id_pk bigint NOT NULL,
    office_name character varying(100) NOT NULL
);
 %   DROP TABLE public.mpr_master_office;
       public         heap    postgres    false            #           1259    23298    mpr_master_scheme_dept    TABLE     �   CREATE TABLE public.mpr_master_scheme_dept (
    scheme_dept_id_pk bigint NOT NULL,
    scheme_id_fk bigint DEFAULT 0 NOT NULL,
    dept_id_fk bigint NOT NULL
);
 *   DROP TABLE public.mpr_master_scheme_dept;
       public         heap    postgres    false            $           1259    23302    mpr_master_scheme_table    TABLE     �   CREATE TABLE public.mpr_master_scheme_table (
    scheme_id_pk bigint NOT NULL,
    short_name character varying(30) NOT NULL,
    name character varying(50) NOT NULL,
    financial_year_id_fk bigint NOT NULL,
    desig_id_fk bigint NOT NULL
);
 +   DROP TABLE public.mpr_master_scheme_table;
       public         heap    postgres    false            %           1259    23305    mpr_master_state    TABLE     y   CREATE TABLE public.mpr_master_state (
    state_id_pk bigint NOT NULL,
    state_name character varying(50) NOT NULL
);
 $   DROP TABLE public.mpr_master_state;
       public         heap    postgres    false            &           1259    23308     mpr_master_state_state_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.mpr_master_state_state_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.mpr_master_state_state_id_pk_seq;
       public          postgres    false    293            �           0    0     mpr_master_state_state_id_pk_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.mpr_master_state_state_id_pk_seq OWNED BY public.mpr_master_state.state_id_pk;
          public          postgres    false    294            '           1259    23310    mpr_master_subdiv    TABLE     �   CREATE TABLE public.mpr_master_subdiv (
    sub_div_id_pk bigint NOT NULL,
    sub_div_name character varying(50) NOT NULL,
    sub_div_lg_code bigint NOT NULL,
    district_id_fk bigint DEFAULT 0 NOT NULL,
    location_id_fk bigint DEFAULT 0 NOT NULL
);
 %   DROP TABLE public.mpr_master_subdiv;
       public         heap    postgres    false            (           1259    23315 #   mpr_master_subdiv_sub_div_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.mpr_master_subdiv_sub_div_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.mpr_master_subdiv_sub_div_id_pk_seq;
       public          postgres    false    295            �           0    0 #   mpr_master_subdiv_sub_div_id_pk_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.mpr_master_subdiv_sub_div_id_pk_seq OWNED BY public.mpr_master_subdiv.sub_div_id_pk;
          public          postgres    false    296            <           1259    24022    mpr_scheme_kcc_backup    TABLE     
  CREATE TABLE public.mpr_scheme_kcc_backup (
    id_pk integer NOT NULL,
    login_id_fk bigint NOT NULL,
    ip character varying NOT NULL,
    nodal_check integer NOT NULL,
    session character varying NOT NULL,
    month numeric NOT NULL,
    inserted_at timestamp without time zone NOT NULL,
    no_of_agricultrural_families_in_the_district numeric NOT NULL,
    no_of_agricultural_families_covered_by_kcc numeric NOT NULL,
    kcc_coverage_percentage numeric NOT NULL,
    location_code character varying NOT NULL
);
 )   DROP TABLE public.mpr_scheme_kcc_backup;
       public         heap    postgres    false            ;           1259    24020    mpr_scheme_kcc_backup_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.mpr_scheme_kcc_backup_id_pk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.mpr_scheme_kcc_backup_id_pk_seq;
       public          postgres    false    316            �           0    0    mpr_scheme_kcc_backup_id_pk_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.mpr_scheme_kcc_backup_id_pk_seq OWNED BY public.mpr_scheme_kcc_backup.id_pk;
          public          postgres    false    315            >           1259    24033    mpr_scheme_kcc_draft    TABLE     	  CREATE TABLE public.mpr_scheme_kcc_draft (
    id_pk integer NOT NULL,
    login_id_fk bigint NOT NULL,
    ip character varying NOT NULL,
    nodal_check integer NOT NULL,
    session character varying NOT NULL,
    month numeric NOT NULL,
    inserted_at timestamp without time zone NOT NULL,
    no_of_agricultrural_families_in_the_district numeric NOT NULL,
    no_of_agricultural_families_covered_by_kcc numeric NOT NULL,
    kcc_coverage_percentage numeric NOT NULL,
    location_code character varying NOT NULL
);
 (   DROP TABLE public.mpr_scheme_kcc_draft;
       public         heap    postgres    false            =           1259    24031    mpr_scheme_kcc_draft_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.mpr_scheme_kcc_draft_id_pk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.mpr_scheme_kcc_draft_id_pk_seq;
       public          postgres    false    318            �           0    0    mpr_scheme_kcc_draft_id_pk_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.mpr_scheme_kcc_draft_id_pk_seq OWNED BY public.mpr_scheme_kcc_draft.id_pk;
          public          postgres    false    317            )           1259    23317    mpr_semitrans_privilege    TABLE       CREATE TABLE public.mpr_semitrans_privilege (
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
       public         heap    postgres    false            *           1259    23325    mpr_semitrans_profile    TABLE     �  CREATE TABLE public.mpr_semitrans_profile (
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
       public         heap    postgres    false            +           1259    23338    mpr_semitrans_user_privilege    TABLE     X  CREATE TABLE public.mpr_semitrans_user_privilege (
    user_priv_id_pk bigint NOT NULL,
    privilege_id_fk bigint NOT NULL,
    user_type_id_fk bigint NOT NULL,
    active_status integer NOT NULL,
    CONSTRAINT user_privilege_active_check CHECK ((((active_status)::numeric >= (0)::numeric) AND ((active_status)::numeric <= (1)::numeric)))
);
 0   DROP TABLE public.mpr_semitrans_user_privilege;
       public         heap    postgres    false            ,           1259    23342    mpr_semitrans_user_type    TABLE     0  CREATE TABLE public.mpr_semitrans_user_type (
    user_type_id_pk bigint NOT NULL,
    desig character varying(50) NOT NULL,
    active_status numeric NOT NULL,
    user_level integer,
    CONSTRAINT user_type_active_check CHECK (((active_status >= (0)::numeric) AND (active_status <= (1)::numeric)))
);
 +   DROP TABLE public.mpr_semitrans_user_type;
       public         heap    postgres    false            -           1259    23349    mpr_trans_fundalloc    TABLE       CREATE TABLE public.mpr_trans_fundalloc (
    fundalloc_id_pk bigint NOT NULL,
    location_id_fk bigint NOT NULL,
    scheme_id_fk bigint NOT NULL,
    funds_allocated numeric(15,0) NOT NULL,
    funds_utilised numeric(15,0) NOT NULL,
    threshold numeric(6,3) NOT NULL
);
 '   DROP TABLE public.mpr_trans_fundalloc;
       public         heap    postgres    false            .           1259    23352 '   mpr_trans_fundalloc_fundalloc_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.mpr_trans_fundalloc_fundalloc_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.mpr_trans_fundalloc_fundalloc_id_pk_seq;
       public          postgres    false    301            �           0    0 '   mpr_trans_fundalloc_fundalloc_id_pk_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.mpr_trans_fundalloc_fundalloc_id_pk_seq OWNED BY public.mpr_trans_fundalloc.fundalloc_id_pk;
          public          postgres    false    302            /           1259    23354    mpr_trans_issues    TABLE     5  CREATE TABLE public.mpr_trans_issues (
    issue_id_pk bigint NOT NULL,
    name character varying(70) NOT NULL,
    email character varying(70) NOT NULL,
    rating numeric(1,0) NOT NULL,
    description text NOT NULL,
    "timestamp" timestamp without time zone NOT NULL,
    login_id_fk bigint NOT NULL
);
 $   DROP TABLE public.mpr_trans_issues;
       public         heap    postgres    false            0           1259    23360     mpr_trans_issues_issue_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.mpr_trans_issues_issue_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.mpr_trans_issues_issue_id_pk_seq;
       public          postgres    false    303            �           0    0     mpr_trans_issues_issue_id_pk_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.mpr_trans_issues_issue_id_pk_seq OWNED BY public.mpr_trans_issues.issue_id_pk;
          public          postgres    false    304            1           1259    23362    mpr_trans_notification    TABLE       CREATE TABLE public.mpr_trans_notification (
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
       public         heap    postgres    false            2           1259    23369    notifications_id_seq    SEQUENCE     }   CREATE SEQUENCE public.notifications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.notifications_id_seq;
       public          postgres    false    305            �           0    0    notifications_id_seq    SEQUENCE OWNED BY     f   ALTER SEQUENCE public.notifications_id_seq OWNED BY public.mpr_trans_notification.notification_id_pk;
          public          postgres    false    306            3           1259    23371    office_dept_office_dept_seq    SEQUENCE     �   CREATE SEQUENCE public.office_dept_office_dept_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.office_dept_office_dept_seq;
       public          postgres    false    287            �           0    0    office_dept_office_dept_seq    SEQUENCE OWNED BY     d   ALTER SEQUENCE public.office_dept_office_dept_seq OWNED BY public.mpr_master_department.dept_id_pk;
          public          postgres    false    307            4           1259    23373    office_office_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.office_office_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.office_office_id_pk_seq;
       public          postgres    false    290            �           0    0    office_office_id_pk_seq    SEQUENCE OWNED BY     ^   ALTER SEQUENCE public.office_office_id_pk_seq OWNED BY public.mpr_master_office.office_id_pk;
          public          postgres    false    308            5           1259    23375    profile_id_pk_seq    SEQUENCE     z   CREATE SEQUENCE public.profile_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.profile_id_pk_seq;
       public          postgres    false    298            �           0    0    profile_id_pk_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.profile_id_pk_seq OWNED BY public.mpr_semitrans_profile.profile_id_pk;
          public          postgres    false    309            6           1259    23377 !   scheme_dept_scheme_dept_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.scheme_dept_scheme_dept_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.scheme_dept_scheme_dept_id_pk_seq;
       public          postgres    false    291            �           0    0 !   scheme_dept_scheme_dept_id_pk_seq    SEQUENCE OWNED BY     r   ALTER SEQUENCE public.scheme_dept_scheme_dept_id_pk_seq OWNED BY public.mpr_master_scheme_dept.scheme_dept_id_pk;
          public          postgres    false    310            7           1259    23379    scheme_table_id_seq    SEQUENCE     |   CREATE SEQUENCE public.scheme_table_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.scheme_table_id_seq;
       public          postgres    false    292            �           0    0    scheme_table_id_seq    SEQUENCE OWNED BY     `   ALTER SEQUENCE public.scheme_table_id_seq OWNED BY public.mpr_master_scheme_table.scheme_id_pk;
          public          postgres    false    311            8           1259    23381    table_id_pk_seq    SEQUENCE     x   CREATE SEQUENCE public.table_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.table_id_pk_seq;
       public          postgres    false    202            �           0    0    table_id_pk_seq    SEQUENCE OWNED BY     N   ALTER SEQUENCE public.table_id_pk_seq OWNED BY public.mpr_master_table.id_pk;
          public          postgres    false    312            9           1259    23383 "   user_privilege_privilege_id_fk_seq    SEQUENCE     �   CREATE SEQUENCE public.user_privilege_privilege_id_fk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.user_privilege_privilege_id_fk_seq;
       public          postgres    false    299            �           0    0 "   user_privilege_privilege_id_fk_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.user_privilege_privilege_id_fk_seq OWNED BY public.mpr_semitrans_user_privilege.privilege_id_fk;
          public          postgres    false    313            :           1259    23385 "   user_privilege_user_type_id_fk_seq    SEQUENCE     �   CREATE SEQUENCE public.user_privilege_user_type_id_fk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.user_privilege_user_type_id_fk_seq;
       public          postgres    false    299            �           0    0 "   user_privilege_user_type_id_fk_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.user_privilege_user_type_id_fk_seq OWNED BY public.mpr_semitrans_user_privilege.user_type_id_fk;
          public          postgres    false    314            ]           2604    23387 "   mpr_master_attri_table attri_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_attri_table ALTER COLUMN attri_id_pk SET DEFAULT nextval('public.att_table_id_seq'::regclass);
 Q   ALTER TABLE public.mpr_master_attri_table ALTER COLUMN attri_id_pk DROP DEFAULT;
       public          postgres    false    263    262            x           2604    23388     mpr_master_department dept_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_department ALTER COLUMN dept_id_pk SET DEFAULT nextval('public.office_dept_office_dept_seq'::regclass);
 O   ALTER TABLE public.mpr_master_department ALTER COLUMN dept_id_pk DROP DEFAULT;
       public          postgres    false    307    287            e           2604    23389 "   mpr_master_designation desig_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_designation ALTER COLUMN desig_id_pk SET DEFAULT nextval('public.designation_desig_id_pk_seq'::regclass);
 Q   ALTER TABLE public.mpr_master_designation ALTER COLUMN desig_id_pk DROP DEFAULT;
       public          postgres    false    272    271            {           2604    23390 "   mpr_master_district district_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_district ALTER COLUMN district_id_pk SET DEFAULT nextval('public.mpr_master_district_district_id_pk_seq'::regclass);
 Q   ALTER TABLE public.mpr_master_district ALTER COLUMN district_id_pk DROP DEFAULT;
       public          postgres    false    289    288            j           2604    23391 5   mpr_master_financial_year financial_year_master_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_financial_year ALTER COLUMN financial_year_master_id_pk SET DEFAULT nextval('public.financial_year_master_financial_year_master_id_pk_seq'::regclass);
 d   ALTER TABLE public.mpr_master_financial_year ALTER COLUMN financial_year_master_id_pk DROP DEFAULT;
       public          postgres    false    276    275            o           2604    23392 '   mpr_master_location_data location_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_location_data ALTER COLUMN location_id_pk SET DEFAULT nextval('public.location_data_location_id_pk_seq'::regclass);
 V   ALTER TABLE public.mpr_master_location_data ALTER COLUMN location_id_pk DROP DEFAULT;
       public          postgres    false    280    279            |           2604    23393    mpr_master_office office_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_office ALTER COLUMN office_id_pk SET DEFAULT nextval('public.office_office_id_pk_seq'::regclass);
 M   ALTER TABLE public.mpr_master_office ALTER COLUMN office_id_pk DROP DEFAULT;
       public          postgres    false    308    290            ~           2604    23394 (   mpr_master_scheme_dept scheme_dept_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_scheme_dept ALTER COLUMN scheme_dept_id_pk SET DEFAULT nextval('public.scheme_dept_scheme_dept_id_pk_seq'::regclass);
 W   ALTER TABLE public.mpr_master_scheme_dept ALTER COLUMN scheme_dept_id_pk DROP DEFAULT;
       public          postgres    false    310    291                       2604    23395 $   mpr_master_scheme_table scheme_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_scheme_table ALTER COLUMN scheme_id_pk SET DEFAULT nextval('public.scheme_table_id_seq'::regclass);
 S   ALTER TABLE public.mpr_master_scheme_table ALTER COLUMN scheme_id_pk DROP DEFAULT;
       public          postgres    false    311    292            �           2604    23396    mpr_master_state state_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_state ALTER COLUMN state_id_pk SET DEFAULT nextval('public.mpr_master_state_state_id_pk_seq'::regclass);
 K   ALTER TABLE public.mpr_master_state ALTER COLUMN state_id_pk DROP DEFAULT;
       public          postgres    false    294    293            �           2604    23397    mpr_master_subdiv sub_div_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_subdiv ALTER COLUMN sub_div_id_pk SET DEFAULT nextval('public.mpr_master_subdiv_sub_div_id_pk_seq'::regclass);
 N   ALTER TABLE public.mpr_master_subdiv ALTER COLUMN sub_div_id_pk DROP DEFAULT;
       public          postgres    false    296    295            �           2604    23398    mpr_master_table id_pk    DEFAULT     u   ALTER TABLE ONLY public.mpr_master_table ALTER COLUMN id_pk SET DEFAULT nextval('public.table_id_pk_seq'::regclass);
 E   ALTER TABLE public.mpr_master_table ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    312    202            Y           2604    23399    mpr_scheme_anand id_pk    DEFAULT     r   ALTER TABLE ONLY public.mpr_scheme_anand ALTER COLUMN id_pk SET DEFAULT nextval('public.anand_id_seq'::regclass);
 E   ALTER TABLE public.mpr_scheme_anand ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    261    260            �           2604    23400    mpr_scheme_awcc id_pk    DEFAULT     r   ALTER TABLE ONLY public.mpr_scheme_awcc ALTER COLUMN id_pk SET DEFAULT nextval('public."AWCC_id_seq"'::regclass);
 D   ALTER TABLE public.mpr_scheme_awcc ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    203    204            �           2604    23401    mpr_scheme_baitarani id_pk    DEFAULT     |   ALTER TABLE ONLY public.mpr_scheme_baitarani ALTER COLUMN id_pk SET DEFAULT nextval('public."BAITARANI_id_seq"'::regclass);
 I   ALTER TABLE public.mpr_scheme_baitarani ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    206    205            g           2604    23402    mpr_scheme_doc id_pk    DEFAULT     n   ALTER TABLE ONLY public.mpr_scheme_doc ALTER COLUMN id_pk SET DEFAULT nextval('public.doc_id_seq'::regclass);
 C   ALTER TABLE public.mpr_scheme_doc ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    274    273            �           2604    23403    mpr_scheme_dog id_pk    DEFAULT     p   ALTER TABLE ONLY public.mpr_scheme_dog ALTER COLUMN id_pk SET DEFAULT nextval('public."DOG_id_seq"'::regclass);
 C   ALTER TABLE public.mpr_scheme_dog ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    207    208            �           2604    23404    mpr_scheme_doptuhd id_pk    DEFAULT     x   ALTER TABLE ONLY public.mpr_scheme_doptuhd ALTER COLUMN id_pk SET DEFAULT nextval('public."DOPTUHD_id_seq"'::regclass);
 G   ALTER TABLE public.mpr_scheme_doptuhd ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    209    210            �           2604    23405    mpr_scheme_enrollment id_pk    DEFAULT     ~   ALTER TABLE ONLY public.mpr_scheme_enrollment ALTER COLUMN id_pk SET DEFAULT nextval('public."ENROLLMENT_id_seq"'::regclass);
 J   ALTER TABLE public.mpr_scheme_enrollment ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    211    212            �           2604    23406    mpr_scheme_foodpro id_pk    DEFAULT     x   ALTER TABLE ONLY public.mpr_scheme_foodpro ALTER COLUMN id_pk SET DEFAULT nextval('public."FOODPRO_id_seq"'::regclass);
 G   ALTER TABLE public.mpr_scheme_foodpro ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    214    213            �           2604    23407    mpr_scheme_gitanjali id_pk    DEFAULT     |   ALTER TABLE ONLY public.mpr_scheme_gitanjali ALTER COLUMN id_pk SET DEFAULT nextval('public."GITANJALI_id_seq"'::regclass);
 I   ALTER TABLE public.mpr_scheme_gitanjali ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    216    215                        2604    23408    mpr_scheme_immunisati id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_scheme_immunisati ALTER COLUMN id_pk SET DEFAULT nextval('public."IMMUNISATION_id_seq"'::regclass);
 J   ALTER TABLE public.mpr_scheme_immunisati ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    217    218                       2604    23409    mpr_scheme_infantd id_pk    DEFAULT     x   ALTER TABLE ONLY public.mpr_scheme_infantd ALTER COLUMN id_pk SET DEFAULT nextval('public."INFANTD_id_seq"'::regclass);
 G   ALTER TABLE public.mpr_scheme_infantd ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    220    219                       2604    23410    mpr_scheme_inspection id_pk    DEFAULT     ~   ALTER TABLE ONLY public.mpr_scheme_inspection ALTER COLUMN id_pk SET DEFAULT nextval('public."INSPECTION_id_seq"'::regclass);
 J   ALTER TABLE public.mpr_scheme_inspection ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    221    222                       2604    23411    mpr_scheme_instdel id_pk    DEFAULT     x   ALTER TABLE ONLY public.mpr_scheme_instdel ALTER COLUMN id_pk SET DEFAULT nextval('public."INSTDEL_id_seq"'::regclass);
 G   ALTER TABLE public.mpr_scheme_instdel ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    224    223                       2604    23412    mpr_scheme_jaldjalb id_pk    DEFAULT     z   ALTER TABLE ONLY public.mpr_scheme_jaldjalb ALTER COLUMN id_pk SET DEFAULT nextval('public."JALDJALB_id_seq"'::regclass);
 H   ALTER TABLE public.mpr_scheme_jaldjalb ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    226    225                       2604    23413    mpr_scheme_kanyas id_pk    DEFAULT     v   ALTER TABLE ONLY public.mpr_scheme_kanyas ALTER COLUMN id_pk SET DEFAULT nextval('public."KANYAS_id_seq"'::regclass);
 F   ALTER TABLE public.mpr_scheme_kanyas ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    227    228                       2604    23414    mpr_scheme_karmatirth id_pk    DEFAULT        ALTER TABLE ONLY public.mpr_scheme_karmatirth ALTER COLUMN id_pk SET DEFAULT nextval('public."KARMATIRTHA_id_seq"'::regclass);
 J   ALTER TABLE public.mpr_scheme_karmatirth ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    230    229                       2604    23415    mpr_scheme_kcc id_pk    DEFAULT     s   ALTER TABLE ONLY public.mpr_scheme_kcc ALTER COLUMN id_pk SET DEFAULT nextval('public."KCC_id_pk_seq"'::regclass);
 C   ALTER TABLE public.mpr_scheme_kcc ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    232    231            �           2604    24025    mpr_scheme_kcc_backup id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_scheme_kcc_backup ALTER COLUMN id_pk SET DEFAULT nextval('public.mpr_scheme_kcc_backup_id_pk_seq'::regclass);
 J   ALTER TABLE public.mpr_scheme_kcc_backup ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    316    315    316            �           2604    24036    mpr_scheme_kcc_draft id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_scheme_kcc_draft ALTER COLUMN id_pk SET DEFAULT nextval('public.mpr_scheme_kcc_draft_id_pk_seq'::regclass);
 I   ALTER TABLE public.mpr_scheme_kcc_draft ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    318    317    318            l           2604    23416    mpr_scheme_kishanm id_pk    DEFAULT     v   ALTER TABLE ONLY public.mpr_scheme_kishanm ALTER COLUMN id_pk SET DEFAULT nextval('public.kishanm_id_seq'::regclass);
 G   ALTER TABLE public.mpr_scheme_kishanm ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    277    278            !           2604    23417    mpr_scheme_landpp id_pk    DEFAULT     v   ALTER TABLE ONLY public.mpr_scheme_landpp ALTER COLUMN id_pk SET DEFAULT nextval('public."LANDPP_id_seq"'::regclass);
 F   ALTER TABLE public.mpr_scheme_landpp ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    233    234            ,           2604    23418    mpr_scheme_maternald id_pk    DEFAULT     |   ALTER TABLE ONLY public.mpr_scheme_maternald ALTER COLUMN id_pk SET DEFAULT nextval('public."MATERNALD_id_seq"'::regclass);
 I   ALTER TABLE public.mpr_scheme_maternald ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    239    238            0           2604    23419    mpr_scheme_mci id_pk    DEFAULT     p   ALTER TABLE ONLY public.mpr_scheme_mci ALTER COLUMN id_pk SET DEFAULT nextval('public."MCI_id_seq"'::regclass);
 C   ALTER TABLE public.mpr_scheme_mci ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    240    241            r           2604    23420    mpr_scheme_mgnregs id_pk    DEFAULT     u   ALTER TABLE ONLY public.mpr_scheme_mgnregs ALTER COLUMN id_pk SET DEFAULT nextval('public.mgnres_id_seq'::regclass);
 G   ALTER TABLE public.mpr_scheme_mgnregs ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    284    283            5           2604    23421    mpr_scheme_minoritys id_pk    DEFAULT     |   ALTER TABLE ONLY public.mpr_scheme_minoritys ALTER COLUMN id_pk SET DEFAULT nextval('public."MINORITYS_id_seq"'::regclass);
 I   ALTER TABLE public.mpr_scheme_minoritys ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    242    243            9           2604    23422    mpr_scheme_poe id_pk    DEFAULT     p   ALTER TABLE ONLY public.mpr_scheme_poe ALTER COLUMN id_pk SET DEFAULT nextval('public."POE_id_seq"'::regclass);
 C   ALTER TABLE public.mpr_scheme_poe ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    244    245            A           2604    23423    mpr_scheme_saboojs id_pk    DEFAULT     x   ALTER TABLE ONLY public.mpr_scheme_saboojs ALTER COLUMN id_pk SET DEFAULT nextval('public."SABOOJS_id_seq"'::regclass);
 G   ALTER TABLE public.mpr_scheme_saboojs ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    249    248            =           2604    23424    mpr_scheme_saboojshre id_pk    DEFAULT        ALTER TABLE ONLY public.mpr_scheme_saboojshre ALTER COLUMN id_pk SET DEFAULT nextval('public."SABOOJSHREE_id_seq"'::regclass);
 J   ALTER TABLE public.mpr_scheme_saboojshre ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    246    247            E           2604    23425    mpr_scheme_safedsavel id_pk    DEFAULT     ~   ALTER TABLE ONLY public.mpr_scheme_safedsavel ALTER COLUMN id_pk SET DEFAULT nextval('public."SAFEDSAVEL_id_seq"'::regclass);
 J   ALTER TABLE public.mpr_scheme_safedsavel ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    250    251            I           2604    23426    mpr_scheme_samabythi id_pk    DEFAULT     |   ALTER TABLE ONLY public.mpr_scheme_samabythi ALTER COLUMN id_pk SET DEFAULT nextval('public."SAMABYTHI_id_seq"'::regclass);
 I   ALTER TABLE public.mpr_scheme_samabythi ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    253    252            M           2604    23427    mpr_scheme_sikshas id_pk    DEFAULT     x   ALTER TABLE ONLY public.mpr_scheme_sikshas ALTER COLUMN id_pk SET DEFAULT nextval('public."SIKSHAS_id_seq"'::regclass);
 G   ALTER TABLE public.mpr_scheme_sikshas ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    254    255            Q           2604    23428    mpr_scheme_svskp id_pk    DEFAULT     t   ALTER TABLE ONLY public.mpr_scheme_svskp ALTER COLUMN id_pk SET DEFAULT nextval('public."SVSKP_id_seq"'::regclass);
 E   ALTER TABLE public.mpr_scheme_svskp ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    256    257            U           2604    23429    mpr_scheme_yubas id_pk    DEFAULT     t   ALTER TABLE ONLY public.mpr_scheme_yubas ALTER COLUMN id_pk SET DEFAULT nextval('public."YUBAS_id_seq"'::regclass);
 E   ALTER TABLE public.mpr_scheme_yubas ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    258    259            `           2604    23430 )   mpr_semitrans_check_first_user user_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_semitrans_check_first_user ALTER COLUMN user_id_pk SET DEFAULT nextval('public."check_First_User_user_id_pk_seq"'::regclass);
 X   ALTER TABLE public.mpr_semitrans_check_first_user ALTER COLUMN user_id_pk DROP DEFAULT;
       public          postgres    false    268    266            c           2604    23431 A   mpr_semitrans_dba_financial_range dba_financial_range_table_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_semitrans_dba_financial_range ALTER COLUMN dba_financial_range_table_id_pk SET DEFAULT nextval('public.dba_financial_range_table_dba_financial_range_table_id_pk_seq'::regclass);
 p   ALTER TABLE public.mpr_semitrans_dba_financial_range ALTER COLUMN dba_financial_range_table_id_pk DROP DEFAULT;
       public          postgres    false    270    269            )           2604    23432    mpr_semitrans_login login_id_pk    DEFAULT     }   ALTER TABLE ONLY public.mpr_semitrans_login ALTER COLUMN login_id_pk SET DEFAULT nextval('public."Login_id_seq"'::regclass);
 N   ALTER TABLE public.mpr_semitrans_login ALTER COLUMN login_id_pk DROP DEFAULT;
       public          postgres    false    236    235            �           2604    23433 #   mpr_semitrans_profile profile_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_semitrans_profile ALTER COLUMN profile_id_pk SET DEFAULT nextval('public.profile_id_pk_seq'::regclass);
 R   ALTER TABLE public.mpr_semitrans_profile ALTER COLUMN profile_id_pk DROP DEFAULT;
       public          postgres    false    309    298            _           2604    23434    mpr_trans_audit_log audit_id_pk    DEFAULT        ALTER TABLE ONLY public.mpr_trans_audit_log ALTER COLUMN audit_id_pk SET DEFAULT nextval('public.audit_log_id_seq'::regclass);
 N   ALTER TABLE public.mpr_trans_audit_log ALTER COLUMN audit_id_pk DROP DEFAULT;
       public          postgres    false    265    264            �           2604    23435 #   mpr_trans_fundalloc fundalloc_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_trans_fundalloc ALTER COLUMN fundalloc_id_pk SET DEFAULT nextval('public.mpr_trans_fundalloc_fundalloc_id_pk_seq'::regclass);
 R   ALTER TABLE public.mpr_trans_fundalloc ALTER COLUMN fundalloc_id_pk DROP DEFAULT;
       public          postgres    false    302    301            �           2604    23436    mpr_trans_issues issue_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_trans_issues ALTER COLUMN issue_id_pk SET DEFAULT nextval('public.mpr_trans_issues_issue_id_pk_seq'::regclass);
 K   ALTER TABLE public.mpr_trans_issues ALTER COLUMN issue_id_pk DROP DEFAULT;
       public          postgres    false    304    303            p           2604    23437 (   mpr_trans_meeting_schedule meeting_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_trans_meeting_schedule ALTER COLUMN meeting_id_pk SET DEFAULT nextval('public.meeting_schedule_id_seq'::regclass);
 W   ALTER TABLE public.mpr_trans_meeting_schedule ALTER COLUMN meeting_id_pk DROP DEFAULT;
       public          postgres    false    282    281            �           2604    23438 )   mpr_trans_notification notification_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_trans_notification ALTER COLUMN notification_id_pk SET DEFAULT nextval('public.notifications_id_seq'::regclass);
 X   ALTER TABLE public.mpr_trans_notification ALTER COLUMN notification_id_pk DROP DEFAULT;
       public          postgres    false    306    305            C          0    23205    mpr_master_attri_table 
   TABLE DATA           d   COPY public.mpr_master_attri_table (attri_id_pk, scheme_id_fk, attri_name, actual_name) FROM stdin;
    public          postgres    false    262   ��      Z          0    23276    mpr_master_block 
   TABLE DATA           p   COPY public.mpr_master_block (block_id_pk, block_name, block_lg_code, subdiv_id_fk, location_id_fk) FROM stdin;
    public          postgres    false    285   K�      [          0    23281    mpr_master_dashboard_info 
   TABLE DATA           o   COPY public.mpr_master_dashboard_info (dashboard_id_pk, sch_tab_name, attr_target, attri_progress) FROM stdin;
    public          postgres    false    286   G�      \          0    23284    mpr_master_department 
   TABLE DATA           `   COPY public.mpr_master_department (dept_id_pk, dept_name, short_name, office_id_fk) FROM stdin;
    public          postgres    false    287   �      L          0    23232    mpr_master_designation 
   TABLE DATA           U   COPY public.mpr_master_designation (desig_id_pk, desig_name, dept_id_fk) FROM stdin;
    public          postgres    false    271   .�      ]          0    23288    mpr_master_district 
   TABLE DATA           w   COPY public.mpr_master_district (district_id_pk, district_name, state_id_fk, dist_lg_code, location_id_fk) FROM stdin;
    public          postgres    false    288   ��      P          0    23245    mpr_master_financial_year 
   TABLE DATA           [   COPY public.mpr_master_financial_year (financial_year_master_id_pk, year_type) FROM stdin;
    public          postgres    false    275   ��      T          0    23258    mpr_master_location_data 
   TABLE DATA           `   COPY public.mpr_master_location_data (location_area, location_code, location_id_pk) FROM stdin;
    public          postgres    false    279   N�      _          0    23295    mpr_master_office 
   TABLE DATA           F   COPY public.mpr_master_office (office_id_pk, office_name) FROM stdin;
    public          postgres    false    290   :�      `          0    23298    mpr_master_scheme_dept 
   TABLE DATA           ]   COPY public.mpr_master_scheme_dept (scheme_dept_id_pk, scheme_id_fk, dept_id_fk) FROM stdin;
    public          postgres    false    291   q�      a          0    23302    mpr_master_scheme_table 
   TABLE DATA           t   COPY public.mpr_master_scheme_table (scheme_id_pk, short_name, name, financial_year_id_fk, desig_id_fk) FROM stdin;
    public          postgres    false    292   =�      b          0    23305    mpr_master_state 
   TABLE DATA           C   COPY public.mpr_master_state (state_id_pk, state_name) FROM stdin;
    public          postgres    false    293   ��      d          0    23310    mpr_master_subdiv 
   TABLE DATA           y   COPY public.mpr_master_subdiv (sub_div_id_pk, sub_div_name, sub_div_lg_code, district_id_fk, location_id_fk) FROM stdin;
    public          postgres    false    295   ��                0    22959    mpr_master_table 
   TABLE DATA           l   COPY public.mpr_master_table (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at) FROM stdin;
    public          postgres    false    202   8�      A          0    23197    mpr_scheme_anand 
   TABLE DATA           �   COPY public.mpr_scheme_anand (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, total_no_of_shgs_formed_in_the_district, total_no_of_shgs_got_credit_linkage, location_code) FROM stdin;
    public          postgres    false    260   U�                0    22964    mpr_scheme_awcc 
   TABLE DATA           �   COPY public.mpr_scheme_awcc (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_icds_cenetres_devoid_of_own_building, no_of_new_icds_building_constructed, no_of_icds_centres_running_in_open_space, location_code) FROM stdin;
    public          postgres    false    203   r�      
          0    22972    mpr_scheme_baitarani 
   TABLE DATA           �   COPY public.mpr_scheme_baitarani (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_burning_ghats_taken_up, completed_till_date, location_code) FROM stdin;
    public          postgres    false    205   ��      N          0    23237    mpr_scheme_doc 
   TABLE DATA           �   COPY public.mpr_scheme_doc (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, target_for_distribution_of_poultry, no_of_poultry_actually_distributed, location_code) FROM stdin;
    public          postgres    false    273   ��                0    22980    mpr_scheme_dog 
   TABLE DATA           �   COPY public.mpr_scheme_dog (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, target_for_distribution_of_goats, no_of_goats_actually_distributed, no_of_beneficiaries_selected, no_of_beneficiaries_approved, location_code) FROM stdin;
    public          postgres    false    207   ��                0    22987    mpr_scheme_doptuhd 
   TABLE DATA           �   COPY public.mpr_scheme_doptuhd (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_power_tiller_distributed, location_code) FROM stdin;
    public          postgres    false    209   ��                0    22995    mpr_scheme_enrollment 
   TABLE DATA             COPY public.mpr_scheme_enrollment (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, gross_enrolment_ratio_primary, net_enrolment_ratio_primary, gross_enrolment_ratio_upper_primary, net_enrolment_ratio_upper_primary, location_code) FROM stdin;
    public          postgres    false    211   �                0    23003    mpr_scheme_foodpro 
   TABLE DATA           �   COPY public.mpr_scheme_foodpro (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, status_of_pocurement, target_of_pocurement, location_code) FROM stdin;
    public          postgres    false    213    �                0    23011    mpr_scheme_gitanjali 
   TABLE DATA           �   COPY public.mpr_scheme_gitanjali (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_case_sanctioned_under_gitanjali, date_of_inception, no_of_houses_constructed_under_gitanjali, location_code) FROM stdin;
    public          postgres    false    215   =�                0    23019    mpr_scheme_immunisati 
   TABLE DATA           �   COPY public.mpr_scheme_immunisati (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, per_of_fully_immunised_child, location_code) FROM stdin;
    public          postgres    false    217   Z�                0    23027    mpr_scheme_infantd 
   TABLE DATA           �   COPY public.mpr_scheme_infantd (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, total_no_of_infant_death, location_code) FROM stdin;
    public          postgres    false    219   w�                0    23035    mpr_scheme_inspection 
   TABLE DATA           �   COPY public.mpr_scheme_inspection (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_homes_inspected_by_senior_officers, designation_of_officers, location_code) FROM stdin;
    public          postgres    false    221   ��                0    23043    mpr_scheme_instdel 
   TABLE DATA           �   COPY public.mpr_scheme_instdel (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, per_of_institutional_delivery, location_code) FROM stdin;
    public          postgres    false    223   ��                0    23051    mpr_scheme_jaldjalb 
   TABLE DATA           �   COPY public.mpr_scheme_jaldjalb (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, date_of_inspection, no_of_ponds_excavated_under_jal_dharo_jal_bharo, no_of_ponds_fish_production_started, location_code) FROM stdin;
    public          postgres    false    225   ��                 0    23059    mpr_scheme_kanyas 
   TABLE DATA           `  COPY public.mpr_scheme_kanyas (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_k1_cases_application_received, no_of_k1_cases_application_sanctioned, no_of_k1_cases_application_disbursed, no_of_k2_cases_application_received, no_of_k2_cases_application_sanctioned, no_of_k2_cases_application_disbursed, location_code) FROM stdin;
    public          postgres    false    227   ��      "          0    23067    mpr_scheme_karmatirth 
   TABLE DATA           &  COPY public.mpr_scheme_karmatirth (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_karmatirtha_sanctioned, no_of_karmatirtha_for_which_construction_started, no_of_karmatirtha_for_which_construction_completed, no_of_karmatirth_operationalised, location_code) FROM stdin;
    public          postgres    false    229   �      $          0    23075    mpr_scheme_kcc 
   TABLE DATA           �   COPY public.mpr_scheme_kcc (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_agricultrural_families_in_the_district, no_of_agricultural_families_covered_by_kcc, kcc_coverage_percentage, location_code) FROM stdin;
    public          postgres    false    231   %�      y          0    24022    mpr_scheme_kcc_backup 
   TABLE DATA           �   COPY public.mpr_scheme_kcc_backup (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_agricultrural_families_in_the_district, no_of_agricultural_families_covered_by_kcc, kcc_coverage_percentage, location_code) FROM stdin;
    public          postgres    false    316   B�      {          0    24033    mpr_scheme_kcc_draft 
   TABLE DATA           �   COPY public.mpr_scheme_kcc_draft (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_agricultrural_families_in_the_district, no_of_agricultural_families_covered_by_kcc, kcc_coverage_percentage, location_code) FROM stdin;
    public          postgres    false    318   _�      R          0    23250    mpr_scheme_kishanm 
   TABLE DATA           �   COPY public.mpr_scheme_kishanm (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_kishan_mandis_sanctioned, no_of_kishan_mandis_operational, operationality, location_code) FROM stdin;
    public          postgres    false    277   |�      &          0    23084    mpr_scheme_landpp 
   TABLE DATA           �   COPY public.mpr_scheme_landpp (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_land_permission_pending, projects_name, location_code) FROM stdin;
    public          postgres    false    233   ��      +          0    23108    mpr_scheme_maternald 
   TABLE DATA           �   COPY public.mpr_scheme_maternald (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, total_no_of_maternal_death, location_code) FROM stdin;
    public          postgres    false    238   ��      -          0    23116    mpr_scheme_mci 
   TABLE DATA           �   COPY public.mpr_scheme_mci (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, percentage_of_malnourished_child, location_code) FROM stdin;
    public          postgres    false    240   ��      X          0    23268    mpr_scheme_mgnregs 
   TABLE DATA             COPY public.mpr_scheme_mgnregs (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_person_days_generated_under_mgnregs, average_no_of_persondays_generated_per_household, expenditure_of_the_session, per_of_labour_budget_achieved, location_code) FROM stdin;
    public          postgres    false    283   ��      /          0    23125    mpr_scheme_minoritys 
   TABLE DATA             COPY public.mpr_scheme_minoritys (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, target_for_scholarship_distribution_aikyashree, no_of_students_distributed_scholarship, no_of_application_uploaded_under_aikyashree_scholarship, location_code) FROM stdin;
    public          postgres    false    242          1          0    23133    mpr_scheme_poe 
   TABLE DATA           �   COPY public.mpr_scheme_poe (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, target, production, location_code) FROM stdin;
    public          postgres    false    244   *       5          0    23149    mpr_scheme_saboojs 
   TABLE DATA           �   COPY public.mpr_scheme_saboojs (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, target_for_distribution_of_cycles, cycle_distributed_till_date, location_code) FROM stdin;
    public          postgres    false    248   G       3          0    23141    mpr_scheme_saboojshre 
   TABLE DATA           �   COPY public.mpr_scheme_saboojshre (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_children_born_since_inception_of_the_project_in_the_dist, no_of_tree_sapling_handed_over_to_the_new_born_children, location_code) FROM stdin;
    public          postgres    false    246   d       7          0    23157    mpr_scheme_safedsavel 
   TABLE DATA           �   COPY public.mpr_scheme_safedsavel (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_accidents, no_of_death, no_of_insured_person, location_code) FROM stdin;
    public          postgres    false    250   �       9          0    23165    mpr_scheme_samabythi 
   TABLE DATA           �   COPY public.mpr_scheme_samabythi (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_beneficiaries_provided_benefit_till_date, till_date, location_code) FROM stdin;
    public          postgres    false    252   �       ;          0    23173    mpr_scheme_sikshas 
   TABLE DATA             COPY public.mpr_scheme_sikshas (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, targetted_no_of_sc_st_student_under_sikshashree, no_of_students_getting_benefit_under_sikshashree, no_of_applications_uploaded_under_sikshashree, location_code) FROM stdin;
    public          postgres    false    254   �       =          0    23181    mpr_scheme_svskp 
   TABLE DATA           �   COPY public.mpr_scheme_svskp (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_project_sponsored_under_svskp, no_of_project_sanctioned_under_svskp, location_code) FROM stdin;
    public          postgres    false    256   �       ?          0    23189    mpr_scheme_yubas 
   TABLE DATA           �   COPY public.mpr_scheme_yubas (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_unemployed_youth_registered_under_yubashree, no_of_unemployed_registered_youth_getting_monthly_assistance, location_code) FROM stdin;
    public          postgres    false    258   �       G          0    23217    mpr_semitrans_check_first_user 
   TABLE DATA           u   COPY public.mpr_semitrans_check_first_user (user_id_pk, check_if_first_user, check_profile_updated_once) FROM stdin;
    public          postgres    false    266         J          0    23226 !   mpr_semitrans_dba_financial_range 
   TABLE DATA           y   COPY public.mpr_semitrans_dba_financial_range (dba_financial_range_table_id_pk, financial_year_range, month) FROM stdin;
    public          postgres    false    269   F      (          0    23092    mpr_semitrans_login 
   TABLE DATA           �   COPY public.mpr_semitrans_login (username, password, user_type_id_fk, location_code, login_id_pk, active_status, dept_id_fk, office_id_fk, desig_id_fk) FROM stdin;
    public          postgres    false    235   l      f          0    23317    mpr_semitrans_privilege 
   TABLE DATA           �   COPY public.mpr_semitrans_privilege (privilege_id_pk, parent, link, "order", page_name, active_status, view_sidebar) FROM stdin;
    public          postgres    false    297   Q      g          0    23325    mpr_semitrans_profile 
   TABLE DATA           �   COPY public.mpr_semitrans_profile (username, f_name, m_name, l_name, mobile, email, district, image, profile_id_pk, desig, office, dept) FROM stdin;
    public          postgres    false    298   7      h          0    23338    mpr_semitrans_user_privilege 
   TABLE DATA           x   COPY public.mpr_semitrans_user_privilege (user_priv_id_pk, privilege_id_fk, user_type_id_fk, active_status) FROM stdin;
    public          postgres    false    299   �      i          0    23342    mpr_semitrans_user_type 
   TABLE DATA           d   COPY public.mpr_semitrans_user_type (user_type_id_pk, desig, active_status, user_level) FROM stdin;
    public          postgres    false    300         E          0    23211    mpr_trans_audit_log 
   TABLE DATA           �   COPY public.mpr_trans_audit_log (section, action, request, comment, ip_addr, audit_id_pk, login_id_fk, "timestamp") FROM stdin;
    public          postgres    false    264   �      j          0    23349    mpr_trans_fundalloc 
   TABLE DATA           �   COPY public.mpr_trans_fundalloc (fundalloc_id_pk, location_id_fk, scheme_id_fk, funds_allocated, funds_utilised, threshold) FROM stdin;
    public          postgres    false    301   �0      l          0    23354    mpr_trans_issues 
   TABLE DATA           s   COPY public.mpr_trans_issues (issue_id_pk, name, email, rating, description, "timestamp", login_id_fk) FROM stdin;
    public          postgres    false    303   '1      V          0    23263    mpr_trans_meeting_schedule 
   TABLE DATA           Y   COPY public.mpr_trans_meeting_schedule (meeting_id_pk, start_time, end_time) FROM stdin;
    public          postgres    false    281   D1      n          0    23362    mpr_trans_notification 
   TABLE DATA           �   COPY public.mpr_trans_notification (audience_id, notification_text, notification_id_pk, "timestamp", notification_head, active_status, audience_desig, audience_loc, audience_desig_only) FROM stdin;
    public          postgres    false    305   +2      �           0    0    AWCC_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."AWCC_id_seq"', 1, false);
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
          public          postgres    false    263            �           0    0    audit_log_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.audit_log_id_seq', 1133, true);
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
          public          postgres    false    296            �           0    0    mpr_scheme_kcc_backup_id_pk_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.mpr_scheme_kcc_backup_id_pk_seq', 1, false);
          public          postgres    false    315            �           0    0    mpr_scheme_kcc_draft_id_pk_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.mpr_scheme_kcc_draft_id_pk_seq', 1, false);
          public          postgres    false    317            �           0    0 '   mpr_trans_fundalloc_fundalloc_id_pk_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.mpr_trans_fundalloc_fundalloc_id_pk_seq', 7, true);
          public          postgres    false    302            �           0    0     mpr_trans_issues_issue_id_pk_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.mpr_trans_issues_issue_id_pk_seq', 1, false);
          public          postgres    false    304            �           0    0    notifications_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.notifications_id_seq', 173, true);
          public          postgres    false    306            �           0    0    office_dept_office_dept_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.office_dept_office_dept_seq', 1, false);
          public          postgres    false    307            �           0    0    office_office_id_pk_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.office_office_id_pk_seq', 1, false);
          public          postgres    false    308            �           0    0    profile_id_pk_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.profile_id_pk_seq', 7, true);
          public          postgres    false    309            �           0    0 !   scheme_dept_scheme_dept_id_pk_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.scheme_dept_scheme_dept_id_pk_seq', 1, false);
          public          postgres    false    310            �           0    0    scheme_table_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.scheme_table_id_seq', 31, true);
          public          postgres    false    311            �           0    0    table_id_pk_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.table_id_pk_seq', 1, false);
          public          postgres    false    312            �           0    0 "   user_privilege_privilege_id_fk_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.user_privilege_privilege_id_fk_seq', 1, false);
          public          postgres    false    313            �           0    0 "   user_privilege_user_type_id_fk_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.user_privilege_user_type_id_fk_seq', 1, false);
          public          postgres    false    314            �           2606    23440    mpr_scheme_awcc AWCC_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.mpr_scheme_awcc
    ADD CONSTRAINT "AWCC_pkey" PRIMARY KEY (id_pk);
 E   ALTER TABLE ONLY public.mpr_scheme_awcc DROP CONSTRAINT "AWCC_pkey";
       public            postgres    false    203            �           2606    23442 #   mpr_scheme_baitarani BAITARANI_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.mpr_scheme_baitarani
    ADD CONSTRAINT "BAITARANI_pkey" PRIMARY KEY (id_pk);
 O   ALTER TABLE ONLY public.mpr_scheme_baitarani DROP CONSTRAINT "BAITARANI_pkey";
       public            postgres    false    205            �           2606    23444    mpr_scheme_dog DOG_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.mpr_scheme_dog
    ADD CONSTRAINT "DOG_pkey" PRIMARY KEY (id_pk);
 C   ALTER TABLE ONLY public.mpr_scheme_dog DROP CONSTRAINT "DOG_pkey";
       public            postgres    false    207            �           2606    23446    mpr_scheme_doptuhd DOPTUHD_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.mpr_scheme_doptuhd
    ADD CONSTRAINT "DOPTUHD_pkey" PRIMARY KEY (id_pk);
 K   ALTER TABLE ONLY public.mpr_scheme_doptuhd DROP CONSTRAINT "DOPTUHD_pkey";
       public            postgres    false    209            �           2606    23448 %   mpr_scheme_enrollment ENROLLMENT_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.mpr_scheme_enrollment
    ADD CONSTRAINT "ENROLLMENT_pkey" PRIMARY KEY (id_pk);
 Q   ALTER TABLE ONLY public.mpr_scheme_enrollment DROP CONSTRAINT "ENROLLMENT_pkey";
       public            postgres    false    211            �           2606    23450    mpr_scheme_foodpro FOODPRO_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.mpr_scheme_foodpro
    ADD CONSTRAINT "FOODPRO_pkey" PRIMARY KEY (id_pk);
 K   ALTER TABLE ONLY public.mpr_scheme_foodpro DROP CONSTRAINT "FOODPRO_pkey";
       public            postgres    false    213            �           2606    23452 #   mpr_scheme_gitanjali GITANJALI_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.mpr_scheme_gitanjali
    ADD CONSTRAINT "GITANJALI_pkey" PRIMARY KEY (id_pk);
 O   ALTER TABLE ONLY public.mpr_scheme_gitanjali DROP CONSTRAINT "GITANJALI_pkey";
       public            postgres    false    215            �           2606    23454 '   mpr_scheme_immunisati IMMUNISATION_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.mpr_scheme_immunisati
    ADD CONSTRAINT "IMMUNISATION_pkey" PRIMARY KEY (id_pk);
 S   ALTER TABLE ONLY public.mpr_scheme_immunisati DROP CONSTRAINT "IMMUNISATION_pkey";
       public            postgres    false    217            �           2606    23456    mpr_scheme_infantd INFANTD_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.mpr_scheme_infantd
    ADD CONSTRAINT "INFANTD_pkey" PRIMARY KEY (id_pk);
 K   ALTER TABLE ONLY public.mpr_scheme_infantd DROP CONSTRAINT "INFANTD_pkey";
       public            postgres    false    219            �           2606    23458 %   mpr_scheme_inspection INSPECTION_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.mpr_scheme_inspection
    ADD CONSTRAINT "INSPECTION_pkey" PRIMARY KEY (id_pk);
 Q   ALTER TABLE ONLY public.mpr_scheme_inspection DROP CONSTRAINT "INSPECTION_pkey";
       public            postgres    false    221            �           2606    23460    mpr_scheme_instdel INSTDEL_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.mpr_scheme_instdel
    ADD CONSTRAINT "INSTDEL_pkey" PRIMARY KEY (id_pk);
 K   ALTER TABLE ONLY public.mpr_scheme_instdel DROP CONSTRAINT "INSTDEL_pkey";
       public            postgres    false    223            �           2606    23462 !   mpr_scheme_jaldjalb JALDJALB_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.mpr_scheme_jaldjalb
    ADD CONSTRAINT "JALDJALB_pkey" PRIMARY KEY (id_pk);
 M   ALTER TABLE ONLY public.mpr_scheme_jaldjalb DROP CONSTRAINT "JALDJALB_pkey";
       public            postgres    false    225            �           2606    23464    mpr_scheme_kanyas KANYAS_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.mpr_scheme_kanyas
    ADD CONSTRAINT "KANYAS_pkey" PRIMARY KEY (id_pk);
 I   ALTER TABLE ONLY public.mpr_scheme_kanyas DROP CONSTRAINT "KANYAS_pkey";
       public            postgres    false    227            �           2606    23466 %   mpr_scheme_karmatirth KARMATIRTH_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.mpr_scheme_karmatirth
    ADD CONSTRAINT "KARMATIRTH_pkey" PRIMARY KEY (id_pk);
 Q   ALTER TABLE ONLY public.mpr_scheme_karmatirth DROP CONSTRAINT "KARMATIRTH_pkey";
       public            postgres    false    229            �           2606    23468    mpr_scheme_kcc KCC_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.mpr_scheme_kcc
    ADD CONSTRAINT "KCC_pkey" PRIMARY KEY (id_pk);
 C   ALTER TABLE ONLY public.mpr_scheme_kcc DROP CONSTRAINT "KCC_pkey";
       public            postgres    false    231            �           2606    23470    mpr_scheme_landpp LANDPP_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.mpr_scheme_landpp
    ADD CONSTRAINT "LANDPP_pkey" PRIMARY KEY (id_pk);
 I   ALTER TABLE ONLY public.mpr_scheme_landpp DROP CONSTRAINT "LANDPP_pkey";
       public            postgres    false    233            �           2606    23472    mpr_semitrans_login Login_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.mpr_semitrans_login
    ADD CONSTRAINT "Login_pkey" PRIMARY KEY (login_id_pk);
 J   ALTER TABLE ONLY public.mpr_semitrans_login DROP CONSTRAINT "Login_pkey";
       public            postgres    false    235            �           2606    23474 0   mpr_semitrans_login Login_username_username1_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_login
    ADD CONSTRAINT "Login_username_username1_key" UNIQUE (username) INCLUDE (username);
 \   ALTER TABLE ONLY public.mpr_semitrans_login DROP CONSTRAINT "Login_username_username1_key";
       public            postgres    false    235    235            �           2606    23476 #   mpr_scheme_maternald MATERNALD_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.mpr_scheme_maternald
    ADD CONSTRAINT "MATERNALD_pkey" PRIMARY KEY (id_pk);
 O   ALTER TABLE ONLY public.mpr_scheme_maternald DROP CONSTRAINT "MATERNALD_pkey";
       public            postgres    false    238            �           2606    23478    mpr_scheme_mci MCI_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.mpr_scheme_mci
    ADD CONSTRAINT "MCI_pkey" PRIMARY KEY (id_pk);
 C   ALTER TABLE ONLY public.mpr_scheme_mci DROP CONSTRAINT "MCI_pkey";
       public            postgres    false    240                       2606    23480    mpr_scheme_mgnregs MGNREGS_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.mpr_scheme_mgnregs
    ADD CONSTRAINT "MGNREGS_pkey" PRIMARY KEY (id_pk);
 K   ALTER TABLE ONLY public.mpr_scheme_mgnregs DROP CONSTRAINT "MGNREGS_pkey";
       public            postgres    false    283            �           2606    23482 #   mpr_scheme_minoritys MINORITYS_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.mpr_scheme_minoritys
    ADD CONSTRAINT "MINORITYS_pkey" PRIMARY KEY (id_pk);
 O   ALTER TABLE ONLY public.mpr_scheme_minoritys DROP CONSTRAINT "MINORITYS_pkey";
       public            postgres    false    242            �           2606    23484    mpr_scheme_poe POE_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.mpr_scheme_poe
    ADD CONSTRAINT "POE_pkey" PRIMARY KEY (id_pk);
 C   ALTER TABLE ONLY public.mpr_scheme_poe DROP CONSTRAINT "POE_pkey";
       public            postgres    false    244            !           2606    23486 &   mpr_semitrans_privilege Privilege_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.mpr_semitrans_privilege
    ADD CONSTRAINT "Privilege_pkey" PRIMARY KEY (privilege_id_pk);
 R   ALTER TABLE ONLY public.mpr_semitrans_privilege DROP CONSTRAINT "Privilege_pkey";
       public            postgres    false    297            �           2606    23488 %   mpr_scheme_saboojshre SABOOJSHRE_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.mpr_scheme_saboojshre
    ADD CONSTRAINT "SABOOJSHRE_pkey" PRIMARY KEY (id_pk);
 Q   ALTER TABLE ONLY public.mpr_scheme_saboojshre DROP CONSTRAINT "SABOOJSHRE_pkey";
       public            postgres    false    246            �           2606    23490    mpr_scheme_saboojs SABOOJS_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.mpr_scheme_saboojs
    ADD CONSTRAINT "SABOOJS_pkey" PRIMARY KEY (id_pk);
 K   ALTER TABLE ONLY public.mpr_scheme_saboojs DROP CONSTRAINT "SABOOJS_pkey";
       public            postgres    false    248            �           2606    23492 %   mpr_scheme_safedsavel SAFEDSAVEL_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.mpr_scheme_safedsavel
    ADD CONSTRAINT "SAFEDSAVEL_pkey" PRIMARY KEY (id_pk);
 Q   ALTER TABLE ONLY public.mpr_scheme_safedsavel DROP CONSTRAINT "SAFEDSAVEL_pkey";
       public            postgres    false    250            �           2606    23494 #   mpr_scheme_samabythi SAMABYTHI_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.mpr_scheme_samabythi
    ADD CONSTRAINT "SAMABYTHI_pkey" PRIMARY KEY (id_pk);
 O   ALTER TABLE ONLY public.mpr_scheme_samabythi DROP CONSTRAINT "SAMABYTHI_pkey";
       public            postgres    false    252            �           2606    23496    mpr_scheme_sikshas SIKSHAS_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.mpr_scheme_sikshas
    ADD CONSTRAINT "SIKSHAS_pkey" PRIMARY KEY (id_pk);
 K   ALTER TABLE ONLY public.mpr_scheme_sikshas DROP CONSTRAINT "SIKSHAS_pkey";
       public            postgres    false    254            �           2606    23498    mpr_scheme_svskp SVSKP_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.mpr_scheme_svskp
    ADD CONSTRAINT "SVSKP_pkey" PRIMARY KEY (id_pk);
 G   ALTER TABLE ONLY public.mpr_scheme_svskp DROP CONSTRAINT "SVSKP_pkey";
       public            postgres    false    256            �           2606    23500    mpr_scheme_yubas YUBAS_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.mpr_scheme_yubas
    ADD CONSTRAINT "YUBAS_pkey" PRIMARY KEY (id_pk);
 G   ALTER TABLE ONLY public.mpr_scheme_yubas DROP CONSTRAINT "YUBAS_pkey";
       public            postgres    false    258            �           2606    23502    mpr_scheme_anand anand_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.mpr_scheme_anand
    ADD CONSTRAINT anand_pkey PRIMARY KEY (id_pk);
 E   ALTER TABLE ONLY public.mpr_scheme_anand DROP CONSTRAINT anand_pkey;
       public            postgres    false    260            �           2606    23504 %   mpr_master_attri_table att_table_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.mpr_master_attri_table
    ADD CONSTRAINT att_table_pkey PRIMARY KEY (attri_id_pk);
 O   ALTER TABLE ONLY public.mpr_master_attri_table DROP CONSTRAINT att_table_pkey;
       public            postgres    false    262            �           2606    23506 "   mpr_trans_audit_log audit_log_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.mpr_trans_audit_log
    ADD CONSTRAINT audit_log_pkey PRIMARY KEY (audit_id_pk);
 L   ALTER TABLE ONLY public.mpr_trans_audit_log DROP CONSTRAINT audit_log_pkey;
       public            postgres    false    264            �           2606    23508 4   mpr_semitrans_check_first_user check_First_User_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.mpr_semitrans_check_first_user
    ADD CONSTRAINT "check_First_User_pkey" PRIMARY KEY (user_id_pk);
 `   ALTER TABLE ONLY public.mpr_semitrans_check_first_user DROP CONSTRAINT "check_First_User_pkey";
       public            postgres    false    266                       2606    23510 -   mpr_master_dashboard_info dashboard_info_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.mpr_master_dashboard_info
    ADD CONSTRAINT dashboard_info_pkey PRIMARY KEY (dashboard_id_pk);
 W   ALTER TABLE ONLY public.mpr_master_dashboard_info DROP CONSTRAINT dashboard_info_pkey;
       public            postgres    false    286            �           2606    23512 @   mpr_semitrans_dba_financial_range dba_financial_range_table_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_dba_financial_range
    ADD CONSTRAINT dba_financial_range_table_pkey PRIMARY KEY (dba_financial_range_table_id_pk);
 j   ALTER TABLE ONLY public.mpr_semitrans_dba_financial_range DROP CONSTRAINT dba_financial_range_table_pkey;
       public            postgres    false    269            �           2606    23514 '   mpr_master_designation designation_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.mpr_master_designation
    ADD CONSTRAINT designation_pkey PRIMARY KEY (desig_id_pk);
 Q   ALTER TABLE ONLY public.mpr_master_designation DROP CONSTRAINT designation_pkey;
       public            postgres    false    271            �           2606    23516    mpr_scheme_doc doc_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.mpr_scheme_doc
    ADD CONSTRAINT doc_pkey PRIMARY KEY (id_pk);
 A   ALTER TABLE ONLY public.mpr_scheme_doc DROP CONSTRAINT doc_pkey;
       public            postgres    false    273            �           2606    23518 4   mpr_master_financial_year financial_year_master_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_financial_year
    ADD CONSTRAINT financial_year_master_pkey PRIMARY KEY (financial_year_master_id_pk);
 ^   ALTER TABLE ONLY public.mpr_master_financial_year DROP CONSTRAINT financial_year_master_pkey;
       public            postgres    false    275            �           2606    23520    mpr_scheme_kishanm kishanm_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.mpr_scheme_kishanm
    ADD CONSTRAINT kishanm_pkey PRIMARY KEY (id_pk);
 I   ALTER TABLE ONLY public.mpr_scheme_kishanm DROP CONSTRAINT kishanm_pkey;
       public            postgres    false    277                        2606    23522 +   mpr_master_location_data location_data_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.mpr_master_location_data
    ADD CONSTRAINT location_data_pkey PRIMARY KEY (location_id_pk);
 U   ALTER TABLE ONLY public.mpr_master_location_data DROP CONSTRAINT location_data_pkey;
       public            postgres    false    279                       2606    23524 0   mpr_trans_meeting_schedule meeting_schedule_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.mpr_trans_meeting_schedule
    ADD CONSTRAINT meeting_schedule_pkey PRIMARY KEY (meeting_id_pk);
 Z   ALTER TABLE ONLY public.mpr_trans_meeting_schedule DROP CONSTRAINT meeting_schedule_pkey;
       public            postgres    false    281            	           2606    23526 3   mpr_master_block mpr_master_block_block_lg_code_key 
   CONSTRAINT     w   ALTER TABLE ONLY public.mpr_master_block
    ADD CONSTRAINT mpr_master_block_block_lg_code_key UNIQUE (block_lg_code);
 ]   ALTER TABLE ONLY public.mpr_master_block DROP CONSTRAINT mpr_master_block_block_lg_code_key;
       public            postgres    false    285                       2606    23528 &   mpr_master_block mpr_master_block_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.mpr_master_block
    ADD CONSTRAINT mpr_master_block_pkey PRIMARY KEY (block_id_pk);
 P   ALTER TABLE ONLY public.mpr_master_block DROP CONSTRAINT mpr_master_block_pkey;
       public            postgres    false    285                       2606    23530 8   mpr_master_district mpr_master_district_dist_lg_code_key 
   CONSTRAINT     {   ALTER TABLE ONLY public.mpr_master_district
    ADD CONSTRAINT mpr_master_district_dist_lg_code_key UNIQUE (dist_lg_code);
 b   ALTER TABLE ONLY public.mpr_master_district DROP CONSTRAINT mpr_master_district_dist_lg_code_key;
       public            postgres    false    288                       2606    23532 ,   mpr_master_district mpr_master_district_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.mpr_master_district
    ADD CONSTRAINT mpr_master_district_pkey PRIMARY KEY (district_id_pk);
 V   ALTER TABLE ONLY public.mpr_master_district DROP CONSTRAINT mpr_master_district_pkey;
       public            postgres    false    288                       2606    23534 C   mpr_master_location_data mpr_master_location_data_location_code_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_location_data
    ADD CONSTRAINT mpr_master_location_data_location_code_key UNIQUE (location_code);
 m   ALTER TABLE ONLY public.mpr_master_location_data DROP CONSTRAINT mpr_master_location_data_location_code_key;
       public            postgres    false    279                       2606    23536 &   mpr_master_state mpr_master_state_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.mpr_master_state
    ADD CONSTRAINT mpr_master_state_pkey PRIMARY KEY (state_id_pk);
 P   ALTER TABLE ONLY public.mpr_master_state DROP CONSTRAINT mpr_master_state_pkey;
       public            postgres    false    293                       2606    23538 (   mpr_master_subdiv mpr_master_subdiv_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.mpr_master_subdiv
    ADD CONSTRAINT mpr_master_subdiv_pkey PRIMARY KEY (sub_div_id_pk);
 R   ALTER TABLE ONLY public.mpr_master_subdiv DROP CONSTRAINT mpr_master_subdiv_pkey;
       public            postgres    false    295                       2606    23540 4   mpr_master_subdiv mpr_master_subdiv_sub_div_code_key 
   CONSTRAINT     z   ALTER TABLE ONLY public.mpr_master_subdiv
    ADD CONSTRAINT mpr_master_subdiv_sub_div_code_key UNIQUE (sub_div_lg_code);
 ^   ALTER TABLE ONLY public.mpr_master_subdiv DROP CONSTRAINT mpr_master_subdiv_sub_div_code_key;
       public            postgres    false    295            #           2606    23542 8   mpr_semitrans_profile mpr_semitrans_profile_username_key 
   CONSTRAINT     w   ALTER TABLE ONLY public.mpr_semitrans_profile
    ADD CONSTRAINT mpr_semitrans_profile_username_key UNIQUE (username);
 b   ALTER TABLE ONLY public.mpr_semitrans_profile DROP CONSTRAINT mpr_semitrans_profile_username_key;
       public            postgres    false    298            +           2606    23544 ,   mpr_trans_fundalloc mpr_trans_fundalloc_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.mpr_trans_fundalloc
    ADD CONSTRAINT mpr_trans_fundalloc_pkey PRIMARY KEY (fundalloc_id_pk);
 V   ALTER TABLE ONLY public.mpr_trans_fundalloc DROP CONSTRAINT mpr_trans_fundalloc_pkey;
       public            postgres    false    301            -           2606    23546 &   mpr_trans_issues mpr_trans_issues_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.mpr_trans_issues
    ADD CONSTRAINT mpr_trans_issues_pkey PRIMARY KEY (issue_id_pk);
 P   ALTER TABLE ONLY public.mpr_trans_issues DROP CONSTRAINT mpr_trans_issues_pkey;
       public            postgres    false    303            /           2606    23548 )   mpr_trans_notification notifications_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.mpr_trans_notification
    ADD CONSTRAINT notifications_pkey PRIMARY KEY (notification_id_pk);
 S   ALTER TABLE ONLY public.mpr_trans_notification DROP CONSTRAINT notifications_pkey;
       public            postgres    false    305                       2606    23550 &   mpr_master_department office_dept_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.mpr_master_department
    ADD CONSTRAINT office_dept_pkey PRIMARY KEY (dept_id_pk);
 P   ALTER TABLE ONLY public.mpr_master_department DROP CONSTRAINT office_dept_pkey;
       public            postgres    false    287                       2606    23552    mpr_master_office office_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.mpr_master_office
    ADD CONSTRAINT office_pkey PRIMARY KEY (office_id_pk);
 G   ALTER TABLE ONLY public.mpr_master_office DROP CONSTRAINT office_pkey;
       public            postgres    false    290            1           2606    24030 .   mpr_scheme_kcc_backup pk_mpr_scheme_kcc_backup 
   CONSTRAINT     o   ALTER TABLE ONLY public.mpr_scheme_kcc_backup
    ADD CONSTRAINT pk_mpr_scheme_kcc_backup PRIMARY KEY (id_pk);
 X   ALTER TABLE ONLY public.mpr_scheme_kcc_backup DROP CONSTRAINT pk_mpr_scheme_kcc_backup;
       public            postgres    false    316            3           2606    24041 ,   mpr_scheme_kcc_draft pk_mpr_scheme_kcc_draft 
   CONSTRAINT     m   ALTER TABLE ONLY public.mpr_scheme_kcc_draft
    ADD CONSTRAINT pk_mpr_scheme_kcc_draft PRIMARY KEY (id_pk);
 V   ALTER TABLE ONLY public.mpr_scheme_kcc_draft DROP CONSTRAINT pk_mpr_scheme_kcc_draft;
       public            postgres    false    318            %           2606    23554 "   mpr_semitrans_profile profile_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.mpr_semitrans_profile
    ADD CONSTRAINT profile_pkey PRIMARY KEY (profile_id_pk);
 L   ALTER TABLE ONLY public.mpr_semitrans_profile DROP CONSTRAINT profile_pkey;
       public            postgres    false    298                       2606    23556 '   mpr_master_scheme_dept scheme_dept_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.mpr_master_scheme_dept
    ADD CONSTRAINT scheme_dept_pkey PRIMARY KEY (scheme_dept_id_pk);
 Q   ALTER TABLE ONLY public.mpr_master_scheme_dept DROP CONSTRAINT scheme_dept_pkey;
       public            postgres    false    291                       2606    23558 )   mpr_master_scheme_table scheme_table_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.mpr_master_scheme_table
    ADD CONSTRAINT scheme_table_pkey PRIMARY KEY (scheme_id_pk);
 S   ALTER TABLE ONLY public.mpr_master_scheme_table DROP CONSTRAINT scheme_table_pkey;
       public            postgres    false    292            '           2606    23560 0   mpr_semitrans_user_privilege user_privilege_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY public.mpr_semitrans_user_privilege
    ADD CONSTRAINT user_privilege_pkey PRIMARY KEY (user_priv_id_pk);
 Z   ALTER TABLE ONLY public.mpr_semitrans_user_privilege DROP CONSTRAINT user_privilege_pkey;
       public            postgres    false    299            )           2606    23562 &   mpr_semitrans_user_type user_type_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.mpr_semitrans_user_type
    ADD CONSTRAINT user_type_pkey PRIMARY KEY (user_type_id_pk);
 P   ALTER TABLE ONLY public.mpr_semitrans_user_type DROP CONSTRAINT user_type_pkey;
       public            postgres    false    300            �           1259    23563 	   idx_anand    INDEX     _   CREATE INDEX idx_anand ON public.mpr_scheme_anand USING btree (session, month, location_code);
    DROP INDEX public.idx_anand;
       public            postgres    false    260    260    260            �           1259    23564    idx_awcc    INDEX     ]   CREATE INDEX idx_awcc ON public.mpr_scheme_awcc USING btree (session, month, location_code);
    DROP INDEX public.idx_awcc;
       public            postgres    false    203    203    203            �           1259    23565    idx_baitarani    INDEX     g   CREATE INDEX idx_baitarani ON public.mpr_scheme_baitarani USING btree (session, month, location_code);
 !   DROP INDEX public.idx_baitarani;
       public            postgres    false    205    205    205            �           1259    23566    idx_doc    INDEX     [   CREATE INDEX idx_doc ON public.mpr_scheme_doc USING btree (session, month, location_code);
    DROP INDEX public.idx_doc;
       public            postgres    false    273    273    273            �           1259    23567    idx_doptuhd    INDEX     c   CREATE INDEX idx_doptuhd ON public.mpr_scheme_doptuhd USING btree (session, month, location_code);
    DROP INDEX public.idx_doptuhd;
       public            postgres    false    209    209    209            �           1259    23568    idx_enrollment    INDEX     i   CREATE INDEX idx_enrollment ON public.mpr_scheme_enrollment USING btree (session, month, location_code);
 "   DROP INDEX public.idx_enrollment;
       public            postgres    false    211    211    211            �           1259    23569    idx_foodpro    INDEX     c   CREATE INDEX idx_foodpro ON public.mpr_scheme_foodpro USING btree (session, month, location_code);
    DROP INDEX public.idx_foodpro;
       public            postgres    false    213    213    213            �           1259    23570    idx_gitanjali    INDEX     g   CREATE INDEX idx_gitanjali ON public.mpr_scheme_gitanjali USING btree (session, month, location_code);
 !   DROP INDEX public.idx_gitanjali;
       public            postgres    false    215    215    215            �           1259    23571    idx_immunisati    INDEX     i   CREATE INDEX idx_immunisati ON public.mpr_scheme_immunisati USING btree (session, month, location_code);
 "   DROP INDEX public.idx_immunisati;
       public            postgres    false    217    217    217            �           1259    23572    idx_infantd    INDEX     c   CREATE INDEX idx_infantd ON public.mpr_scheme_infantd USING btree (session, month, location_code);
    DROP INDEX public.idx_infantd;
       public            postgres    false    219    219    219            �           1259    23573    idx_inspection    INDEX     i   CREATE INDEX idx_inspection ON public.mpr_scheme_inspection USING btree (session, month, location_code);
 "   DROP INDEX public.idx_inspection;
       public            postgres    false    221    221    221            �           1259    23574    idx_instdel    INDEX     c   CREATE INDEX idx_instdel ON public.mpr_scheme_instdel USING btree (session, month, location_code);
    DROP INDEX public.idx_instdel;
       public            postgres    false    223    223    223            �           1259    23575    idx_jaldjalb    INDEX     e   CREATE INDEX idx_jaldjalb ON public.mpr_scheme_jaldjalb USING btree (session, month, location_code);
     DROP INDEX public.idx_jaldjalb;
       public            postgres    false    225    225    225            �           1259    23576 
   idx_kanyas    INDEX     a   CREATE INDEX idx_kanyas ON public.mpr_scheme_kanyas USING btree (session, month, location_code);
    DROP INDEX public.idx_kanyas;
       public            postgres    false    227    227    227            �           1259    23577    idx_karmatirth    INDEX     i   CREATE INDEX idx_karmatirth ON public.mpr_scheme_karmatirth USING btree (session, month, location_code);
 "   DROP INDEX public.idx_karmatirth;
       public            postgres    false    229    229    229            �           1259    23578    idx_kcc    INDEX     [   CREATE INDEX idx_kcc ON public.mpr_scheme_kcc USING btree (session, month, location_code);
    DROP INDEX public.idx_kcc;
       public            postgres    false    231    231    231            �           1259    23579    idx_kishanm    INDEX     c   CREATE INDEX idx_kishanm ON public.mpr_scheme_kishanm USING btree (session, month, location_code);
    DROP INDEX public.idx_kishanm;
       public            postgres    false    277    277    277            �           1259    23580 
   idx_landpp    INDEX     a   CREATE INDEX idx_landpp ON public.mpr_scheme_landpp USING btree (session, month, location_code);
    DROP INDEX public.idx_landpp;
       public            postgres    false    233    233    233            �           1259    23581    idx_maternald    INDEX     g   CREATE INDEX idx_maternald ON public.mpr_scheme_maternald USING btree (session, month, location_code);
 !   DROP INDEX public.idx_maternald;
       public            postgres    false    238    238    238            �           1259    23582    idx_mci    INDEX     [   CREATE INDEX idx_mci ON public.mpr_scheme_mci USING btree (session, month, location_code);
    DROP INDEX public.idx_mci;
       public            postgres    false    240    240    240                       1259    23583    idx_mgnregs    INDEX     c   CREATE INDEX idx_mgnregs ON public.mpr_scheme_mgnregs USING btree (session, month, location_code);
    DROP INDEX public.idx_mgnregs;
       public            postgres    false    283    283    283            �           1259    23584    idx_minoritys    INDEX     g   CREATE INDEX idx_minoritys ON public.mpr_scheme_minoritys USING btree (session, month, location_code);
 !   DROP INDEX public.idx_minoritys;
       public            postgres    false    242    242    242            �           1259    23585    idx_poe    INDEX     [   CREATE INDEX idx_poe ON public.mpr_scheme_poe USING btree (session, month, location_code);
    DROP INDEX public.idx_poe;
       public            postgres    false    244    244    244            �           1259    23586    idx_saboojs    INDEX     c   CREATE INDEX idx_saboojs ON public.mpr_scheme_saboojs USING btree (session, month, location_code);
    DROP INDEX public.idx_saboojs;
       public            postgres    false    248    248    248            �           1259    23587    idx_saboojshre    INDEX     i   CREATE INDEX idx_saboojshre ON public.mpr_scheme_saboojshre USING btree (session, month, location_code);
 "   DROP INDEX public.idx_saboojshre;
       public            postgres    false    246    246    246            �           1259    23588    idx_safedsavel    INDEX     i   CREATE INDEX idx_safedsavel ON public.mpr_scheme_safedsavel USING btree (session, month, location_code);
 "   DROP INDEX public.idx_safedsavel;
       public            postgres    false    250    250    250            �           1259    23589    idx_samabythi    INDEX     g   CREATE INDEX idx_samabythi ON public.mpr_scheme_samabythi USING btree (session, month, location_code);
 !   DROP INDEX public.idx_samabythi;
       public            postgres    false    252    252    252            �           1259    23590    idx_sikshas    INDEX     c   CREATE INDEX idx_sikshas ON public.mpr_scheme_sikshas USING btree (session, month, location_code);
    DROP INDEX public.idx_sikshas;
       public            postgres    false    254    254    254            �           1259    23591 	   idx_svskp    INDEX     _   CREATE INDEX idx_svskp ON public.mpr_scheme_svskp USING btree (session, month, location_code);
    DROP INDEX public.idx_svskp;
       public            postgres    false    256    256    256            �           1259    23592 	   idx_yubas    INDEX     _   CREATE INDEX idx_yubas ON public.mpr_scheme_yubas USING btree (session, month, location_code);
    DROP INDEX public.idx_yubas;
       public            postgres    false    258    258    258            l           2606    23593 '   mpr_scheme_anand ANAND_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_anand
    ADD CONSTRAINT "ANAND_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 S   ALTER TABLE ONLY public.mpr_scheme_anand DROP CONSTRAINT "ANAND_login_id_fk_fkey";
       public          postgres    false    235    3270    260            4           2606    23598 %   mpr_scheme_awcc AWCC_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_awcc
    ADD CONSTRAINT "AWCC_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 Q   ALTER TABLE ONLY public.mpr_scheme_awcc DROP CONSTRAINT "AWCC_login_id_fk_fkey";
       public          postgres    false    203    235    3270            6           2606    23603 /   mpr_scheme_baitarani BAITARANI_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_baitarani
    ADD CONSTRAINT "BAITARANI_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 [   ALTER TABLE ONLY public.mpr_scheme_baitarani DROP CONSTRAINT "BAITARANI_login_id_fk_fkey";
       public          postgres    false    3270    205    235            q           2606    23608 #   mpr_scheme_doc DOC_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_doc
    ADD CONSTRAINT "DOC_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 O   ALTER TABLE ONLY public.mpr_scheme_doc DROP CONSTRAINT "DOC_login_id_fk_fkey";
       public          postgres    false    235    273    3270            8           2606    23613 #   mpr_scheme_dog DOG_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_dog
    ADD CONSTRAINT "DOG_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 O   ALTER TABLE ONLY public.mpr_scheme_dog DROP CONSTRAINT "DOG_login_id_fk_fkey";
       public          postgres    false    235    207    3270            9           2606    23618 +   mpr_scheme_doptuhd DOPTUHD_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_doptuhd
    ADD CONSTRAINT "DOPTUHD_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 W   ALTER TABLE ONLY public.mpr_scheme_doptuhd DROP CONSTRAINT "DOPTUHD_login_id_fk_fkey";
       public          postgres    false    235    209    3270            ;           2606    23623 1   mpr_scheme_enrollment ENROLLMENT_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_enrollment
    ADD CONSTRAINT "ENROLLMENT_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 ]   ALTER TABLE ONLY public.mpr_scheme_enrollment DROP CONSTRAINT "ENROLLMENT_login_id_fk_fkey";
       public          postgres    false    211    3270    235            =           2606    23628 +   mpr_scheme_foodpro FOODPRO_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_foodpro
    ADD CONSTRAINT "FOODPRO_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 W   ALTER TABLE ONLY public.mpr_scheme_foodpro DROP CONSTRAINT "FOODPRO_login_id_fk_fkey";
       public          postgres    false    213    3270    235            ?           2606    23633 /   mpr_scheme_gitanjali GITANJALI_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_gitanjali
    ADD CONSTRAINT "GITANJALI_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 [   ALTER TABLE ONLY public.mpr_scheme_gitanjali DROP CONSTRAINT "GITANJALI_login_id_fk_fkey";
       public          postgres    false    3270    235    215            A           2606    23638 1   mpr_scheme_immunisati IMMUNISATI_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_immunisati
    ADD CONSTRAINT "IMMUNISATI_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 ]   ALTER TABLE ONLY public.mpr_scheme_immunisati DROP CONSTRAINT "IMMUNISATI_login_id_fk_fkey";
       public          postgres    false    3270    235    217            C           2606    23643 +   mpr_scheme_infantd INFANTD_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_infantd
    ADD CONSTRAINT "INFANTD_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 W   ALTER TABLE ONLY public.mpr_scheme_infantd DROP CONSTRAINT "INFANTD_login_id_fk_fkey";
       public          postgres    false    235    219    3270            D           2606    23648 1   mpr_scheme_inspection INSPECTION_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_inspection
    ADD CONSTRAINT "INSPECTION_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 ]   ALTER TABLE ONLY public.mpr_scheme_inspection DROP CONSTRAINT "INSPECTION_login_id_fk_fkey";
       public          postgres    false    235    221    3270            F           2606    23653 +   mpr_scheme_instdel INSTDEL_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_instdel
    ADD CONSTRAINT "INSTDEL_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 W   ALTER TABLE ONLY public.mpr_scheme_instdel DROP CONSTRAINT "INSTDEL_login_id_fk_fkey";
       public          postgres    false    235    223    3270            H           2606    23658 -   mpr_scheme_jaldjalb JALDJALB_Login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_jaldjalb
    ADD CONSTRAINT "JALDJALB_Login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 Y   ALTER TABLE ONLY public.mpr_scheme_jaldjalb DROP CONSTRAINT "JALDJALB_Login_id_fk_fkey";
       public          postgres    false    235    225    3270            J           2606    23663 )   mpr_scheme_kanyas KANYAS_Login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_kanyas
    ADD CONSTRAINT "KANYAS_Login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 U   ALTER TABLE ONLY public.mpr_scheme_kanyas DROP CONSTRAINT "KANYAS_Login_id_fk_fkey";
       public          postgres    false    235    227    3270            L           2606    23668 1   mpr_scheme_karmatirth KARMATIRTH_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_karmatirth
    ADD CONSTRAINT "KARMATIRTH_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 ]   ALTER TABLE ONLY public.mpr_scheme_karmatirth DROP CONSTRAINT "KARMATIRTH_login_id_fk_fkey";
       public          postgres    false    235    229    3270            N           2606    23673 #   mpr_scheme_kcc KCC_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_kcc
    ADD CONSTRAINT "KCC_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 O   ALTER TABLE ONLY public.mpr_scheme_kcc DROP CONSTRAINT "KCC_login_id_fk_fkey";
       public          postgres    false    235    231    3270            s           2606    23678 +   mpr_scheme_kishanm KishanM_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_kishanm
    ADD CONSTRAINT "KishanM_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 W   ALTER TABLE ONLY public.mpr_scheme_kishanm DROP CONSTRAINT "KishanM_login_id_fk_fkey";
       public          postgres    false    3270    277    235            P           2606    23683 )   mpr_scheme_landpp LANDPP_Login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_landpp
    ADD CONSTRAINT "LANDPP_Login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 U   ALTER TABLE ONLY public.mpr_scheme_landpp DROP CONSTRAINT "LANDPP_Login_id_fk_fkey";
       public          postgres    false    233    235    3270            R           2606    23688 *   mpr_semitrans_login Login_desig_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_login
    ADD CONSTRAINT "Login_desig_id_fk_fkey" FOREIGN KEY (desig_id_fk) REFERENCES public.mpr_master_designation(desig_id_pk) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 V   ALTER TABLE ONLY public.mpr_semitrans_login DROP CONSTRAINT "Login_desig_id_fk_fkey";
       public          postgres    false    235    271    3318            S           2606    23693 0   mpr_semitrans_login Login_office_dept_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_login
    ADD CONSTRAINT "Login_office_dept_id_fk_fkey" FOREIGN KEY (dept_id_fk) REFERENCES public.mpr_master_department(dept_id_pk) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 \   ALTER TABLE ONLY public.mpr_semitrans_login DROP CONSTRAINT "Login_office_dept_id_fk_fkey";
       public          postgres    false    235    287    3343            T           2606    23698 +   mpr_semitrans_login Login_office_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_login
    ADD CONSTRAINT "Login_office_id_fk_fkey" FOREIGN KEY (office_id_fk) REFERENCES public.mpr_master_office(office_id_pk) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 W   ALTER TABLE ONLY public.mpr_semitrans_login DROP CONSTRAINT "Login_office_id_fk_fkey";
       public          postgres    false    290    235    3349            U           2606    23703 .   mpr_semitrans_login Login_user_type_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_login
    ADD CONSTRAINT "Login_user_type_id_fk_fkey" FOREIGN KEY (user_type_id_fk) REFERENCES public.mpr_semitrans_user_type(user_type_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 Z   ALTER TABLE ONLY public.mpr_semitrans_login DROP CONSTRAINT "Login_user_type_id_fk_fkey";
       public          postgres    false    235    300    3369            W           2606    23708 /   mpr_scheme_maternald MATERNALD_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_maternald
    ADD CONSTRAINT "MATERNALD_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 [   ALTER TABLE ONLY public.mpr_scheme_maternald DROP CONSTRAINT "MATERNALD_login_id_fk_fkey";
       public          postgres    false    238    235    3270            Y           2606    23713 #   mpr_scheme_mci MCI_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_mci
    ADD CONSTRAINT "MCI_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 O   ALTER TABLE ONLY public.mpr_scheme_mci DROP CONSTRAINT "MCI_login_id_fk_fkey";
       public          postgres    false    240    235    3270            u           2606    23718 +   mpr_scheme_mgnregs MGNREGS_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_mgnregs
    ADD CONSTRAINT "MGNREGS_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 W   ALTER TABLE ONLY public.mpr_scheme_mgnregs DROP CONSTRAINT "MGNREGS_login_id_fk_fkey";
       public          postgres    false    283    235    3270            [           2606    23723 /   mpr_scheme_minoritys MINORITYS_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_minoritys
    ADD CONSTRAINT "MINORITYS_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 [   ALTER TABLE ONLY public.mpr_scheme_minoritys DROP CONSTRAINT "MINORITYS_login_id_fk_fkey";
       public          postgres    false    242    235    3270            ]           2606    23728 #   mpr_scheme_poe POE_Login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_poe
    ADD CONSTRAINT "POE_Login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 O   ALTER TABLE ONLY public.mpr_scheme_poe DROP CONSTRAINT "POE_Login_id_fk_fkey";
       public          postgres    false    244    235    3270            ^           2606    23733 1   mpr_scheme_saboojshre SABOOJSHRE_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_saboojshre
    ADD CONSTRAINT "SABOOJSHRE_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 ]   ALTER TABLE ONLY public.mpr_scheme_saboojshre DROP CONSTRAINT "SABOOJSHRE_login_id_fk_fkey";
       public          postgres    false    235    3270    246            `           2606    23738 +   mpr_scheme_saboojs SABOOJS_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_saboojs
    ADD CONSTRAINT "SABOOJS_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 W   ALTER TABLE ONLY public.mpr_scheme_saboojs DROP CONSTRAINT "SABOOJS_login_id_fk_fkey";
       public          postgres    false    235    248    3270            b           2606    23743 1   mpr_scheme_safedsavel SAFEDSAVEL_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_safedsavel
    ADD CONSTRAINT "SAFEDSAVEL_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 ]   ALTER TABLE ONLY public.mpr_scheme_safedsavel DROP CONSTRAINT "SAFEDSAVEL_login_id_fk_fkey";
       public          postgres    false    3270    250    235            d           2606    23748 /   mpr_scheme_samabythi SAMABYTHI_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_samabythi
    ADD CONSTRAINT "SAMABYTHI_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 [   ALTER TABLE ONLY public.mpr_scheme_samabythi DROP CONSTRAINT "SAMABYTHI_login_id_fk_fkey";
       public          postgres    false    252    235    3270            f           2606    23753 +   mpr_scheme_sikshas SIKSHAS_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_sikshas
    ADD CONSTRAINT "SIKSHAS_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 W   ALTER TABLE ONLY public.mpr_scheme_sikshas DROP CONSTRAINT "SIKSHAS_login_id_fk_fkey";
       public          postgres    false    254    235    3270            h           2606    23758 '   mpr_scheme_svskp SVSKP_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_svskp
    ADD CONSTRAINT "SVSKP_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 S   ALTER TABLE ONLY public.mpr_scheme_svskp DROP CONSTRAINT "SVSKP_login_id_fk_fkey";
       public          postgres    false    235    3270    256            j           2606    23763 '   mpr_scheme_yubas YUBAS_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_yubas
    ADD CONSTRAINT "YUBAS_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 S   ALTER TABLE ONLY public.mpr_scheme_yubas DROP CONSTRAINT "YUBAS_login_id_fk_fkey";
       public          postgres    false    3270    235    258            p           2606    23768 9   mpr_master_designation designation_office_dept_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_designation
    ADD CONSTRAINT designation_office_dept_id_fk_fkey FOREIGN KEY (dept_id_fk) REFERENCES public.mpr_master_department(dept_id_pk) ON UPDATE CASCADE ON DELETE SET NULL;
 c   ALTER TABLE ONLY public.mpr_master_designation DROP CONSTRAINT designation_office_dept_id_fk_fkey;
       public          postgres    false    271    287    3343            �           2606    23773    mpr_trans_issues login_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_trans_issues
    ADD CONSTRAINT login_id_fk FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE SET DEFAULT ON DELETE SET DEFAULT NOT VALID;
 F   ALTER TABLE ONLY public.mpr_trans_issues DROP CONSTRAINT login_id_fk;
       public          postgres    false    303    235    3270            n           2606    23778 ?   mpr_master_attri_table mpr_master_attri_table_scheme_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_attri_table
    ADD CONSTRAINT mpr_master_attri_table_scheme_id_fk_fkey FOREIGN KEY (scheme_id_fk) REFERENCES public.mpr_master_scheme_table(scheme_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 i   ALTER TABLE ONLY public.mpr_master_attri_table DROP CONSTRAINT mpr_master_attri_table_scheme_id_fk_fkey;
       public          postgres    false    262    292    3353            w           2606    23783 5   mpr_master_block mpr_master_block_location_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_block
    ADD CONSTRAINT mpr_master_block_location_id_fk_fkey FOREIGN KEY (location_id_fk) REFERENCES public.mpr_master_location_data(location_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 _   ALTER TABLE ONLY public.mpr_master_block DROP CONSTRAINT mpr_master_block_location_id_fk_fkey;
       public          postgres    false    3328    279    285            x           2606    23788 3   mpr_master_block mpr_master_block_subdiv_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_block
    ADD CONSTRAINT mpr_master_block_subdiv_id_fk_fkey FOREIGN KEY (subdiv_id_fk) REFERENCES public.mpr_master_subdiv(sub_div_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 ]   ALTER TABLE ONLY public.mpr_master_block DROP CONSTRAINT mpr_master_block_subdiv_id_fk_fkey;
       public          postgres    false    285    295    3357            z           2606    23793 ;   mpr_master_district mpr_master_district_location_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_district
    ADD CONSTRAINT mpr_master_district_location_id_fk_fkey FOREIGN KEY (location_id_fk) REFERENCES public.mpr_master_location_data(location_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 e   ALTER TABLE ONLY public.mpr_master_district DROP CONSTRAINT mpr_master_district_location_id_fk_fkey;
       public          postgres    false    3328    288    279            {           2606    23798 8   mpr_master_district mpr_master_district_state_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_district
    ADD CONSTRAINT mpr_master_district_state_id_fk_fkey FOREIGN KEY (state_id_fk) REFERENCES public.mpr_master_state(state_id_pk) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 b   ALTER TABLE ONLY public.mpr_master_district DROP CONSTRAINT mpr_master_district_state_id_fk_fkey;
       public          postgres    false    3355    293    288            |           2606    23803 ?   mpr_master_scheme_dept mpr_master_scheme_dept_scheme_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_scheme_dept
    ADD CONSTRAINT mpr_master_scheme_dept_scheme_id_fk_fkey FOREIGN KEY (scheme_id_fk) REFERENCES public.mpr_master_scheme_table(scheme_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 i   ALTER TABLE ONLY public.mpr_master_scheme_dept DROP CONSTRAINT mpr_master_scheme_dept_scheme_id_fk_fkey;
       public          postgres    false    291    292    3353            ~           2606    23808 @   mpr_master_scheme_table mpr_master_scheme_table_desig_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_scheme_table
    ADD CONSTRAINT mpr_master_scheme_table_desig_id_fk_fkey FOREIGN KEY (desig_id_fk) REFERENCES public.mpr_master_designation(desig_id_pk) NOT VALID;
 j   ALTER TABLE ONLY public.mpr_master_scheme_table DROP CONSTRAINT mpr_master_scheme_table_desig_id_fk_fkey;
       public          postgres    false    3318    271    292                       2606    23813 I   mpr_master_scheme_table mpr_master_scheme_table_financial_year_id_fk_fkey    FK CONSTRAINT       ALTER TABLE ONLY public.mpr_master_scheme_table
    ADD CONSTRAINT mpr_master_scheme_table_financial_year_id_fk_fkey FOREIGN KEY (financial_year_id_fk) REFERENCES public.mpr_master_financial_year(financial_year_master_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 s   ALTER TABLE ONLY public.mpr_master_scheme_table DROP CONSTRAINT mpr_master_scheme_table_financial_year_id_fk_fkey;
       public          postgres    false    3323    275    292            �           2606    23818 3   mpr_master_subdiv mpr_master_subdiv_dist_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_subdiv
    ADD CONSTRAINT mpr_master_subdiv_dist_id_fk_fkey FOREIGN KEY (district_id_fk) REFERENCES public.mpr_master_district(district_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 ]   ALTER TABLE ONLY public.mpr_master_subdiv DROP CONSTRAINT mpr_master_subdiv_dist_id_fk_fkey;
       public          postgres    false    295    3347    288            �           2606    23823 7   mpr_master_subdiv mpr_master_subdiv_location_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_subdiv
    ADD CONSTRAINT mpr_master_subdiv_location_id_fk_fkey FOREIGN KEY (location_id_fk) REFERENCES public.mpr_master_location_data(location_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 a   ALTER TABLE ONLY public.mpr_master_subdiv DROP CONSTRAINT mpr_master_subdiv_location_id_fk_fkey;
       public          postgres    false    3328    279    295            m           2606    23828 &   mpr_scheme_anand mpr_scheme_anand_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_anand
    ADD CONSTRAINT mpr_scheme_anand_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 P   ALTER TABLE ONLY public.mpr_scheme_anand DROP CONSTRAINT mpr_scheme_anand_lcfk;
       public          postgres    false    3330    279    260            5           2606    23833 $   mpr_scheme_awcc mpr_scheme_awcc_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_awcc
    ADD CONSTRAINT mpr_scheme_awcc_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 N   ALTER TABLE ONLY public.mpr_scheme_awcc DROP CONSTRAINT mpr_scheme_awcc_lcfk;
       public          postgres    false    3330    279    203            7           2606    23838 .   mpr_scheme_baitarani mpr_scheme_baitarani_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_baitarani
    ADD CONSTRAINT mpr_scheme_baitarani_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 X   ALTER TABLE ONLY public.mpr_scheme_baitarani DROP CONSTRAINT mpr_scheme_baitarani_lcfk;
       public          postgres    false    3330    279    205            r           2606    23843 "   mpr_scheme_doc mpr_scheme_doc_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_doc
    ADD CONSTRAINT mpr_scheme_doc_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 L   ALTER TABLE ONLY public.mpr_scheme_doc DROP CONSTRAINT mpr_scheme_doc_lcfk;
       public          postgres    false    3330    279    273            :           2606    23848 *   mpr_scheme_doptuhd mpr_scheme_dopthud_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_doptuhd
    ADD CONSTRAINT mpr_scheme_dopthud_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 T   ALTER TABLE ONLY public.mpr_scheme_doptuhd DROP CONSTRAINT mpr_scheme_dopthud_lcfk;
       public          postgres    false    3330    279    209            <           2606    23853 0   mpr_scheme_enrollment mpr_scheme_enrollment_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_enrollment
    ADD CONSTRAINT mpr_scheme_enrollment_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 Z   ALTER TABLE ONLY public.mpr_scheme_enrollment DROP CONSTRAINT mpr_scheme_enrollment_lcfk;
       public          postgres    false    279    3330    211            >           2606    23858 *   mpr_scheme_foodpro mpr_scheme_foodpro_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_foodpro
    ADD CONSTRAINT mpr_scheme_foodpro_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 T   ALTER TABLE ONLY public.mpr_scheme_foodpro DROP CONSTRAINT mpr_scheme_foodpro_lcfk;
       public          postgres    false    279    3330    213            @           2606    23863 .   mpr_scheme_gitanjali mpr_scheme_gitanjali_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_gitanjali
    ADD CONSTRAINT mpr_scheme_gitanjali_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 X   ALTER TABLE ONLY public.mpr_scheme_gitanjali DROP CONSTRAINT mpr_scheme_gitanjali_lcfk;
       public          postgres    false    215    279    3330            B           2606    23868 0   mpr_scheme_immunisati mpr_scheme_immunisati_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_immunisati
    ADD CONSTRAINT mpr_scheme_immunisati_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 Z   ALTER TABLE ONLY public.mpr_scheme_immunisati DROP CONSTRAINT mpr_scheme_immunisati_lcfk;
       public          postgres    false    3330    217    279            E           2606    23873 0   mpr_scheme_inspection mpr_scheme_inspection_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_inspection
    ADD CONSTRAINT mpr_scheme_inspection_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 Z   ALTER TABLE ONLY public.mpr_scheme_inspection DROP CONSTRAINT mpr_scheme_inspection_lcfk;
       public          postgres    false    221    3330    279            G           2606    23878 *   mpr_scheme_instdel mpr_scheme_instdel_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_instdel
    ADD CONSTRAINT mpr_scheme_instdel_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 T   ALTER TABLE ONLY public.mpr_scheme_instdel DROP CONSTRAINT mpr_scheme_instdel_lcfk;
       public          postgres    false    223    279    3330            I           2606    23883 ,   mpr_scheme_jaldjalb mpr_scheme_jaldjalb_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_jaldjalb
    ADD CONSTRAINT mpr_scheme_jaldjalb_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 V   ALTER TABLE ONLY public.mpr_scheme_jaldjalb DROP CONSTRAINT mpr_scheme_jaldjalb_lcfk;
       public          postgres    false    225    279    3330            K           2606    23888 (   mpr_scheme_kanyas mpr_scheme_kanyas_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_kanyas
    ADD CONSTRAINT mpr_scheme_kanyas_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 R   ALTER TABLE ONLY public.mpr_scheme_kanyas DROP CONSTRAINT mpr_scheme_kanyas_lcfk;
       public          postgres    false    227    279    3330            M           2606    23893 1   mpr_scheme_karmatirth mpr_scheme_karmatirtha_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_karmatirth
    ADD CONSTRAINT mpr_scheme_karmatirtha_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 [   ALTER TABLE ONLY public.mpr_scheme_karmatirth DROP CONSTRAINT mpr_scheme_karmatirtha_lcfk;
       public          postgres    false    229    3330    279            O           2606    23898 "   mpr_scheme_kcc mpr_scheme_kcc_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_kcc
    ADD CONSTRAINT mpr_scheme_kcc_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 L   ALTER TABLE ONLY public.mpr_scheme_kcc DROP CONSTRAINT mpr_scheme_kcc_lcfk;
       public          postgres    false    231    279    3330            t           2606    23903 *   mpr_scheme_kishanm mpr_scheme_kishanm_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_kishanm
    ADD CONSTRAINT mpr_scheme_kishanm_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 T   ALTER TABLE ONLY public.mpr_scheme_kishanm DROP CONSTRAINT mpr_scheme_kishanm_lcfk;
       public          postgres    false    3330    277    279            Q           2606    23908 (   mpr_scheme_landpp mpr_scheme_landpp_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_landpp
    ADD CONSTRAINT mpr_scheme_landpp_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 R   ALTER TABLE ONLY public.mpr_scheme_landpp DROP CONSTRAINT mpr_scheme_landpp_lcfk;
       public          postgres    false    279    233    3330            X           2606    23913 .   mpr_scheme_maternald mpr_scheme_maternald_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_maternald
    ADD CONSTRAINT mpr_scheme_maternald_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 X   ALTER TABLE ONLY public.mpr_scheme_maternald DROP CONSTRAINT mpr_scheme_maternald_lcfk;
       public          postgres    false    279    238    3330            Z           2606    23918 "   mpr_scheme_mci mpr_scheme_mci_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_mci
    ADD CONSTRAINT mpr_scheme_mci_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 L   ALTER TABLE ONLY public.mpr_scheme_mci DROP CONSTRAINT mpr_scheme_mci_lcfk;
       public          postgres    false    3330    240    279            v           2606    23923 *   mpr_scheme_mgnregs mpr_scheme_mgnregs_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_mgnregs
    ADD CONSTRAINT mpr_scheme_mgnregs_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 T   ALTER TABLE ONLY public.mpr_scheme_mgnregs DROP CONSTRAINT mpr_scheme_mgnregs_lcfk;
       public          postgres    false    283    3330    279            \           2606    23928 .   mpr_scheme_minoritys mpr_scheme_minoritys_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_minoritys
    ADD CONSTRAINT mpr_scheme_minoritys_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 X   ALTER TABLE ONLY public.mpr_scheme_minoritys DROP CONSTRAINT mpr_scheme_minoritys_lcfk;
       public          postgres    false    242    279    3330            a           2606    23933 *   mpr_scheme_saboojs mpr_scheme_saboojs_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_saboojs
    ADD CONSTRAINT mpr_scheme_saboojs_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 T   ALTER TABLE ONLY public.mpr_scheme_saboojs DROP CONSTRAINT mpr_scheme_saboojs_lcfk;
       public          postgres    false    248    279    3330            _           2606    23938 0   mpr_scheme_saboojshre mpr_scheme_saboojshre_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_saboojshre
    ADD CONSTRAINT mpr_scheme_saboojshre_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 Z   ALTER TABLE ONLY public.mpr_scheme_saboojshre DROP CONSTRAINT mpr_scheme_saboojshre_lcfk;
       public          postgres    false    246    279    3330            c           2606    23943 0   mpr_scheme_safedsavel mpr_scheme_safedsavel_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_safedsavel
    ADD CONSTRAINT mpr_scheme_safedsavel_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 Z   ALTER TABLE ONLY public.mpr_scheme_safedsavel DROP CONSTRAINT mpr_scheme_safedsavel_lcfk;
       public          postgres    false    250    279    3330            e           2606    23948 /   mpr_scheme_samabythi mpr_scheme_samaybythi_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_samabythi
    ADD CONSTRAINT mpr_scheme_samaybythi_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 Y   ALTER TABLE ONLY public.mpr_scheme_samabythi DROP CONSTRAINT mpr_scheme_samaybythi_lcfk;
       public          postgres    false    252    279    3330            g           2606    23953 )   mpr_scheme_sikshas mpr_scheme_sikhas_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_sikshas
    ADD CONSTRAINT mpr_scheme_sikhas_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 S   ALTER TABLE ONLY public.mpr_scheme_sikshas DROP CONSTRAINT mpr_scheme_sikhas_lcfk;
       public          postgres    false    254    279    3330            i           2606    23958 &   mpr_scheme_svskp mpr_scheme_svskp_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_svskp
    ADD CONSTRAINT mpr_scheme_svskp_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 P   ALTER TABLE ONLY public.mpr_scheme_svskp DROP CONSTRAINT mpr_scheme_svskp_lcfk;
       public          postgres    false    256    279    3330            k           2606    23963 &   mpr_scheme_yubas mpr_scheme_yubas_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_yubas
    ADD CONSTRAINT mpr_scheme_yubas_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 P   ALTER TABLE ONLY public.mpr_scheme_yubas DROP CONSTRAINT mpr_scheme_yubas_lcfk;
       public          postgres    false    258    3330    279            V           2606    23968 :   mpr_semitrans_login mpr_semitrans_login_location_code_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_login
    ADD CONSTRAINT mpr_semitrans_login_location_code_fkey FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 d   ALTER TABLE ONLY public.mpr_semitrans_login DROP CONSTRAINT mpr_semitrans_login_location_code_fkey;
       public          postgres    false    235    3330    279            �           2606    23973 9   mpr_semitrans_profile mpr_semitrans_profile_username_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_profile
    ADD CONSTRAINT mpr_semitrans_profile_username_fkey FOREIGN KEY (username) REFERENCES public.mpr_semitrans_login(username) NOT VALID;
 c   ALTER TABLE ONLY public.mpr_semitrans_profile DROP CONSTRAINT mpr_semitrans_profile_username_fkey;
       public          postgres    false    298    3272    235            �           2606    23978 ;   mpr_trans_fundalloc mpr_trans_fundalloc_location_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_trans_fundalloc
    ADD CONSTRAINT mpr_trans_fundalloc_location_id_fk_fkey FOREIGN KEY (location_id_fk) REFERENCES public.mpr_master_location_data(location_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 e   ALTER TABLE ONLY public.mpr_trans_fundalloc DROP CONSTRAINT mpr_trans_fundalloc_location_id_fk_fkey;
       public          postgres    false    279    3328    301            �           2606    23983 9   mpr_trans_fundalloc mpr_trans_fundalloc_scheme_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_trans_fundalloc
    ADD CONSTRAINT mpr_trans_fundalloc_scheme_id_fk_fkey FOREIGN KEY (scheme_id_fk) REFERENCES public.mpr_master_scheme_table(scheme_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 c   ALTER TABLE ONLY public.mpr_trans_fundalloc DROP CONSTRAINT mpr_trans_fundalloc_scheme_id_fk_fkey;
       public          postgres    false    301    292    3353            y           2606    23988 3   mpr_master_department office_dept_office_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_department
    ADD CONSTRAINT office_dept_office_id_fk_fkey FOREIGN KEY (office_id_fk) REFERENCES public.mpr_master_office(office_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT;
 ]   ALTER TABLE ONLY public.mpr_master_department DROP CONSTRAINT office_dept_office_id_fk_fkey;
       public          postgres    false    287    3349    290            �           2606    23993 ,   mpr_semitrans_user_privilege privilege_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_user_privilege
    ADD CONSTRAINT privilege_id_fk FOREIGN KEY (privilege_id_fk) REFERENCES public.mpr_semitrans_privilege(privilege_id_pk) ON UPDATE CASCADE ON DELETE SET NULL;
 V   ALTER TABLE ONLY public.mpr_semitrans_user_privilege DROP CONSTRAINT privilege_id_fk;
       public          postgres    false    297    3361    299            �           2606    23998 (   mpr_semitrans_profile profile_id_pk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_profile
    ADD CONSTRAINT profile_id_pk_fkey FOREIGN KEY (profile_id_pk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 R   ALTER TABLE ONLY public.mpr_semitrans_profile DROP CONSTRAINT profile_id_pk_fkey;
       public          postgres    false    3270    235    298            }           2606    24003 9   mpr_master_scheme_dept scheme_dept_office_dept_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_scheme_dept
    ADD CONSTRAINT scheme_dept_office_dept_id_fk_fkey FOREIGN KEY (dept_id_fk) REFERENCES public.mpr_master_department(dept_id_pk);
 c   ALTER TABLE ONLY public.mpr_master_scheme_dept DROP CONSTRAINT scheme_dept_office_dept_id_fk_fkey;
       public          postgres    false    287    3343    291            o           2606    24008 )   mpr_semitrans_check_first_user user_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_check_first_user
    ADD CONSTRAINT user_id_fk FOREIGN KEY (user_id_pk) REFERENCES public.mpr_semitrans_login(login_id_pk);
 S   ALTER TABLE ONLY public.mpr_semitrans_check_first_user DROP CONSTRAINT user_id_fk;
       public          postgres    false    235    3270    266            �           2606    24013 @   mpr_semitrans_user_privilege user_privilege_user_type_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_user_privilege
    ADD CONSTRAINT user_privilege_user_type_id_fk_fkey FOREIGN KEY (user_type_id_fk) REFERENCES public.mpr_semitrans_user_type(user_type_id_pk) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 j   ALTER TABLE ONLY public.mpr_semitrans_user_privilege DROP CONSTRAINT user_privilege_user_type_id_fk_fkey;
       public          postgres    false    3369    299    300            C   �  x��X[o�:~&_�y8YK�e�1�f�=E۠�.p�Zfl�2e�Rz��w����d��Ȝo�^�B&$!�)���ZY�u��-��g~���������J݁�#_�<��y0���y0M����U�"Z�-7��PUos;,ۜ��;�5�X
��I��P|�3?��8���Bk�(����ƶ��#��9I����\�G�`6��� .����F̾1b�|��?8bx=I�i�oٝɷ�O��H�̀@7���.wB!V�W[іǝj�N;����$3H�������[�$@�ݒ�.�a��7���ޒ[�ֱ�3����`F�u0w8��1�sDȈ�ʉh��*���o��-7�v'��W{)^`���:VƬ�yMdN���ch���;]>7�fuy؟�f��׃fwuΓ|�t�teGVve-�O�!`��0��IA��-N	�9o6=�ُ��L�]b1��&+�r�h�`�����9�g�A���Bӄ�oy�kx���� h��������M6�l��=�J�3����Hȼ���W����6/��{!Ms�tk�fL�%�xۛD@�O��H1l�O8���k�NL��̊G���r��B����݊�Fnq��� d��j��>�}\�;�}�d�ÀdI�t`V�e�Bȭ
|�����ah�]�i�l{���Қ*��Wb�I��B 3@�-仐Ǒ��k�)�b��� @������K�=:y<�J��d���"��>�~Oc�V��yN�!I�?$*��aCj	��l�>�2���� �8_H��Uڼۏ��'# U�Ō@�����[[k�R�y](������Ja>�:�{�;W5�<@e��V�MZ;�\`t�x��]̃�ZV�l�?������m�f=e���TT��Z���,�.rd2?�h4Z���eq(��d(���"�CWP�x���4�����M5rj�co8]���ŮŮF6�2z���Fs��|�B��)"�i���'t���'�Y~�y6�6�Co�ИoNҙ㫸�d;�q�� G��k����q�l�U�dR46|6����`��*:N�����8^{ May�O��p�Ѽ@�/
�����/QS��}���|m�k(��g���� D����W�V�!S����i�m� 3bX�0��K��ܱ�J!v����}	(D�ֹߌ�>h�?Q�7�?�]��"֨Ol�Fu{��zG�VUF#s־OrN�e��u�Ձ��~e����� ��A1�����s/�}8pכsb1
,Vv�H~�N��b�_�4��"��_x��N0_ h��K��P`ᚄ�oteט��M�*[�[�?�1�ǬC=�5�e���ף���d3�ݞDþ<��0�z�PC�(r�ԟI>	>*���2T�����˺JɨdK���?$&���VTB�>���I��ly͊w��c�0
�l�%T�M��w��"����r�֔��;t��M�E�%�N��c�l -��VL��㥫��g̟c+dFȌ-
�=n��XtƗ�rR	��-+�ޏЊ��t�ߏ����c�l7�]�H�z�1���dt	�##p+*�j��J�\ ��CC���Qf��;
٣���wm��A�N��< ���
t�kތ�&}S��b����h^�L�`�ʹP��{�!��'9��8�7���oHW	�f�5c�T�(���o��=����/�t�!�Z�!���Q�G�Ҽ�M�� eNJWs��U%M_�_��o�Z���X����<HaB}k�t�3�dv�.R�ؓ�k�z�
j��'n O���op�����_{&� �
we+��)���&|Ď��_�"��[�4���7��a���ޥ|���m13�lP�Of�վx�b䍸a�,Y����-{����Y����-��      Z   �   x�E�[r�0E��Ud� c��TH&85�qp:�t��d��{�ձd�V>{0}���E�!5��p�{��Za�V`'�E'0����;#k�A�\�鑓���؂�V��k���*�`�8�A��(#����;�
k�E�7�d��FV��Et��idQl��[���ϫz#9i�rK~��;�A��z+�(�q�I<�����aN˜x�s�*c[ݴCy�Or�����"����ژRF      [   �  x��V�r�(}���ػ��TQ-`*.�������=��<������q
<
�F���5Ćn*Р���_��B�N���$Iɲɵ�QioeSVд��x��'���)�~�cЛ��ة7n��00V7p�]L!D��~���d"�K%{X�d22Q#e����P������LqK��rAQEN�d��d��A	enG�wu"9Q>J��ٽ��L��^�K�v���Y�Q�ڧ�%�#��M�Ҥ\��� �0?���G��B.�&�����,(�?
X�\��	�S{�w���E�}9{���њS�#ϓ�$Q��$ιi�ԦS� AtJT=�}1�k�����56�B���.�h���ŷ��U�Y���L2'��X�oU�|0i��B�-���TG s����d��j��-^��t
�U��ㄪ��^�{:��J��&p0��+Y��I�l�E-�U�-��~����-��j�Z@�)��/__�g]5��%j��h�$r�ȥ&&J9֛���R��]���c\7ʚ�[ڌ��|(e]5�s�	�N����3�>'b����E�����Iw5�c�.ip��H��&Ȁ15���A��~r?��h���e�{�3h�vI����} �d��ϴ�]�� �q˲L�f�pl8I�P�\a���/��Y<�qX�a�G��w̮�!�Gܛ).w9f��ꬫ��'A wD����0����G���GUsL��å0���'�G$�m�Lf�3��
HW�_+���,�;��Q�0�}��+��c){j��_��x�؝�0�m��v�
'�����̿�N�6*�i�Ĭ"�+	����
72�wp^�OPg���x���� ��h�Y�~ ��A���k���UDA�Twk�C,7���Q>�>q߀*��{��-]��/'��r/+�1e*�s�_j��#�����}��O^m.L��K�دo��� �U`      \   	  x�mT�n�0</��?��<�HJbC�I�uы�m�4)Ҵ@��Kʉ��[�ᒻ;�� 삑�MS�C�*�}H�l�S��ՀA�ߒ-A�F�|��H�ܷ�����hSr�=��
�0Z�K������a�6�~L��;`��a@g:��b�N�#�By���I�H��`;�����)��A�HI�X1� �<w��Ǉ�=���_�q������w�NO����\�]�� 5zn���tz>������ο���?ʮx~�}����TeO���{�v�KN/��A��H�D����:d�Z���8U?Z�#��+�5KhM��̿"Q1���e��ZMi&&HW�UP���p���8L:rl[4!����-4(ot�\Z���m�,��C^߁��2y�A�>l�,��p�Zg���@�Ԑz�8�+���conc���)>�\M��p��D��%��!ׁزjQˠف4�"1�Z� ~A,X��)Q�|>���SC��O]��/�ɃرZ\�G/�}�%PŃ�j���9��=19fG*��֏oG@�A�\D����1ElY���o�C9ba/b�13[�Rx��DÐ�t���!��a�ӗ���+�7y_'"e߱� rA�[�rX|+���qˢ�M9��<���cI�kG3��j�}7�\�78�-a$G9�:�3���x�>b�M�|F��|Y*m���hi�D�aFj�����5e���p���=�)����x�HƼdzMSAg��hMF���,$���D|z��OH�      L     x�uT�r�0<_�c{iŇd����D"5$�T3���((;�:�4#��H	�-kل���%&A���u*kr Q��s�P��0SzuŇ����{���|-�L��|�`�'l��%N��}�����.���pz�\�ي>���4�T}W�"�S@j<�X�|]�.�4x�d��~ـe�b��A��B)�������U댎�2�PO�by���`�(|o��Di ���+���ՠlw,p�n� A�Qv{N�k�/���Aq����ه�<KA�@>q���yc,�&�cF�!��܍cT,��"gբ��}�_07/S���BQ
i��S9Q��G�wf՝������ �:T�Sk���䆘������{/��6*{FZ׵��Mq�?���~�V�b��vߠ�����eZs�#	���Ĭ��e�׏a��kϬc ٢n �bY��g�y���mP��I����P�]��N�%��Q�P�9{ki�%��gԦ�\p�[�AԎ���ݷ)Sz#&�_+\��~�Pǧ;X���� ��	�Z_��D�Q%0
���CɂF�;�#`���_�y����j	;@߃i�(�R�:���觩Nh��<�i��n�t�_����h��]��i�m�Ŀ��PM%,      ]       x�34���r��4��464�4����� <4      P   Q   x�3���KNU�%��y\F�n�y�yə�9
���E\ƜΉ9�y)�E�	�wFbQf��o~~^1+�&u��qqq 8��      T   �   x�M�Kn�0D��)r���_N� R*ˆb�0�����GJV�f����C��"$�B�B�����`�r�0�j�1˩8A$�|���%QIUB�UTf�z}�N�����\�aC˛d�����GE���i͡�V�}{{2E���W��*e�A#ₗ���
���%)�-RLMR}Ј���~�˰8ә	�ҍ~=f3��[I�$�[i���,������WZ�      _   '  x�]QIn�0<S����~d$�&�Ő�)��w��a;��4�L�K�l��M%V��96�Z�NF��c^��)���0r@�3�4�B�҃|ź�N`z&�Y6�MN������^��.0$/�6).�S���p�iinP����{�f.=�o�A�2G̯l�	KP*+vج��RXE[c�z>�}��=�0�e���G�T:՜���ի�ָM��Lߖ�ͬ�L��k�Qʗ6�O��r��$�XIen%����n1�`)UR����c�Ұ����j[�H\f�~wJ�?:l��      `   �  x�%�э1������k����7XB�(Q�;yOK=�M��ee�}ٲ�۶��}z;�~�Z��0J�a9<4#�<4e�5���T�ۨ��*��c�硑�jz��S#�ӤΦ��j�<�T��(}��*OMUmO�X�k�J��Tq}���O�Z>5�{���:j����2@?r@���^C蜲!� �� �!XmB�[�����7\\�h�6$.���p,\  2��2���2� ���6�wkpw���5��G�yP�$B��A٠'6����,l ���`���� �$6������R��a8� .6w`l �`b(�1�.���Ɇ�G6��P�dC��p A:�$��|@��V'���@�C�N����6p��
��ۡ�vhD��o�F����{;4"��ȷ���vp��n�ہ�Ž�������W      a   ~  x�mT]�� |�_�c�JU���x��i��*:W�*U:C��`�)������fWf��N��>��T�z>�9ـ+�fs�$x6VN8M"\����G�% *��-�.�U�#���O�UF�gtx�+�]�,��I�tt��&'p�®�`43{6/!?� ��q.ށWF�vr�m�"[kd�_�ˢp��y�O�Ǐ�Y��+�t�k��F�N���QJ� :�QTڴyR2�]I��狎���B��#�.�V� R�u�jp�Y�)v��)� lP���1��[�
�ʞ.øb/��X"B�//�H�Zxeq1�'<g6��m�Hv��\,�F�G�8�3�q]d.\�ǔO��A��κd,�KS	�Jhe�#������6[�N&4��*��"* �>�}�4������N�v5,d�!�M"������`d贼��[{2$�A$���TU7��S��ŕ�M"�N�����%�:��dQ#�(ɦOE@&4��v\�g��hJ�7
�bw
�d}��1M"�vi�B��3|���w6�|{��RNh�S���4��*[�s��n>;��h��F�J:qD�g8��Eǣ���=�^���:�_�Ʒ�|�zlͫ��T�VK��!o+�z�����gJ�_F��      b      x�3��wQpr�sw������ 0�2      d   1   x�3�vtq�425021�44�4�2��	ur�t�[����b���� ���            x������ � �      A      x������ � �            x������ � �      
      x������ � �      N      x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �             x������ � �      "      x������ � �      $      x������ � �      y      x������ � �      {      x������ � �      R      x������ � �      &      x������ � �      +      x������ � �      -      x������ � �      X      x������ � �      /      x������ � �      1      x������ � �      5      x������ � �      3      x������ � �      7      x������ � �      9      x������ � �      ;      x������ � �      =      x������ � �      ?      x������ � �      G   $   x�3�4�4�2��`�L��I30i$�b���� ��z      J      x�3�4204�4����� ��      (   �   x���M�� �u8�E�����&�G�*u��[tfN�����k�Ӹm]\ޏ���e�d��9�cԈh8����r/\t�#F�A��=E+�=�`8'��$Dpp_/T��W�����dn��K�����i>s���A��h��X���kI�Y��)f�t�/�%�Ǹ���[BႰ.��=^�%��P�>���-�Ғ�_�〈?�SJ} ��ɟ      f   �  x�uR[n�0��N�Ԗ�$ͧ7E��0�@�-�$"2)��߾�d�������}���<ٌ����~���(ɒ�Y�����;ء�e�LC�}��9�cp�2OW�Ti//��@�"���oMY)�f�UU��X������V�Cq*_�*�ƈ�x7cO�\V;�UDMD����3b�tc��_��h��5��l>����Vv�	ٗ��{�">�/~@V�b�{:��	ى�$������cY�9z}28�.G1��+��&�Vͤ�b�V#�y<��� ��@������ �@y����IeJ^��#o�['z���樵�>h~���َ�k�Hޫ��JߢIlN&&7��?3��Z����r�r@���0���Ǝ>Y���o�~%/��vt��gӏ�r�Y(n\@\)�n�
� ?{Kk�*9�c�p/a�<�W��w���t�E{�=eR;7��9
aY����w��4M�c�,]      g   X  x����n�0E����<	����Z�KMʊ�	B�H_
N+��]�̜3���ű����:O���$o*�������4{e�B�>qF�0-ۙ�3O~w���l�������HS -^,؜^Gбٔ��&��ޏh�Ơ�ri�~�+��{Y4�(+	,:~��>b�Dހ�3�D�g���:�*��~@�����E#tE�8	i�}�@�$�~����.!}�	[�7s��m����ެ2O�9Uf��$���'�i7���yd���vS��A�cFy I	�x�+rI�뺨���˖w��y�8⃷}%��� *��z������i�H�t,	p�h�����Q�      h   c  x�%�ۭ�0��b����{���g@+�Q��8k,~��U�;�Z�)j}WQ�sŧd)�"�OW��P��P�Hp�0AW�m9�@�S���>�{
n��%�M*�m��R���V�>�g
fEx��7�Cj�\A帠rBP9I�4�9��q���^�Ԙ���� ��B�]�#�����;�ܥ���@�I%���jz��z�]5�ᮺ�W���s�e�����������ǫ��B��>굉��=�:B�b�X�ǆ��$�2�A��:"�0G@�#�2?sNs.s�H�q�aN��|^s:�9	��A�߄0?���x�O�@�>�*O=�-�������u-      i   �   x�u���0Eg�+2�����&)�hc��J��wR!��Y�q|-xΚة���9IX�a�=+K����!�/����f��(�V:O�K�g�xOJ&DM��{(,IfS;MMt��a2�'��;Y�ȏ~�l�N�no���z�`������BK      E      x�͝]o9���տ�\흻�ߤ���wg������ ,`��N٪�%C����~I汬���I�I�j����&���+"������?��_�o?�?>���_��������������������������_��N����aws��?���^����7����t�ӏ���BL�B\�IN�&�N���/����O�V��J3*Z�h�p5��uxz�����c�ç���>>��quu�/��?�|������������a�tx����/�O��v;<>�?v��\ɗ�[�c���MM�?n�|��["��.7�c����\Nվ��^�T��7�%J�d���	Yr�������e/��/�V�|�n�ܼ�0���*	�}AV���� �du������ї"�vv_��ї��3TB�g_Z���P[�Ke/�bTd�2>����
)�@����"\�ذ���`7q�Y�U�ݖ|���B@S9]N�@S���OX��ps��q��uGǿ?�*`W�0B󴑚Jn���m#%���j#Yt�äm�J�Lu�av���80��o��͙��*'��X�Fm6�)�ja�0�q����R�|�#\afOX�s���;a�� v_��Rl��1����ړ��JK���`^+y)7�ƼV�Rn4Ԙ��M}��uar+M�ײ���+������[�8�l��`z+O ������SZT��9��^|U���;�G�:�؟�*���x�'����]��-/��_����VM�}�_~�t����s��a�.6��=0�>�=mіn��yl��B�7��m�x}�g��ͅ�m�����E�����Å��1�F�)mm��m��_<sI[ �#��km���r�h�m1�ʹ�n��47����ޯ1ͣ��}��V�7�-�~�d_�YNi6kl���y~7�ܘ�V�N`7�m�������M �LnTɍ�(~�i�F�����7]�)�R;��I�_�O�'�b[�L2�+��h�r���mt:j�B2�]�Ǎ���`�ރ�T^��v��Nʴ�[�vj��^b�[�x2UR��P_�i��.'ƀoJ���S��%7�J��vvHGS�߬ぎ��R0�L�PR�ܭW�E)w�KS0��P�y�f���Ċ�p �˗O��_��p����a�.~>��+R
KQ��{���k��?�&�S=���)JK��Z��JL&K�o���;J��M���/_��b�������k����aͣ�uR̽]Nj�W=�����	OQ�%~��������O��?�|�����/�-v?E#���k�RX��,V^r�x1������	W��M����1�n~�yz���L�	݅��*>��=Vքӽ� 9-J�����'}�	���w<��$[{��%��!�z(8
i�Q�+|	������n��O7�w?���ݼC_�����������i���C|��-aR\c�� �V��t8<������/���m�����}߅l�Z�����G.-�� ��SP���")�T+��R�lᄯ�)�[��J
8K��M���ɣ��;��/�w)��ӷ�����\�'�4n�WE�O�����Q�ꏋ���_ҟw?�q���i�:�S��d�Z)�L/���@J��f�)���p��Vb|��f�0,)1�S����c9�u0~�p�p��H���7O��X�g����1)𻵧*�UI	�^�S槤�Ss�����q��p��q|(��ۇ�I�Q�苧�
�u�G�IU�#��k~�
�v�-�3MOUӞ�]q��+���qzZ�d� sJ��`��K]���꺀tO�[Q��� �1}�{��0_c�U��a4��N���7�n���X��)ȶ�u�4�n���m>�yL�7���8��GV���<֔��V���?��o�yl&B�07`�q�՝��c�yl��%���<��5(���_�u�污ם��,�1��X[��Q]j���<6�S�V[��S_��-��$�I[�!�a�-���gLsx��N�l�������m_���sS���+���!���x�Z���<v;�n�z���X�;\_b��1��Yl����\n���@�%��O�x�B�^K�����:cy�E�E��~<��,:�_�֑����<���X��s�x,�G��/�X5m�05W�ǝ����㶳~V��)Ij�j>��E�7��0IkvQ�u5��0y��O�1���t}�m=�aN֬�}T-��:��z��p%[n��P$���k,P
<n��a�1�!��u�֎l>sɨ���X���E}q8�L.��4���@N��r�<V0�mVܼ����n���zx}<V05N�e�.	���;}�J�ǁP�<<V�q��l�+�yL�7���XP����X`�b
f�|7A=�d=�a�^R��P)��w����X�$=��k�<
Z�$=�/�%S�n�^E(��7�z3��
����b��`�^��V3���
���;j��<p�;)�Q`�i�s�8j���Y��ؐ�Iy"�#��BQ0)o��r˨s���1�U����Q0�����d�a��l�|��+��o,�a���bxl"�=
<v-wuyS�D����ҿ��0	oV�:�|w�՗|��c�t�l���)�l7��P��4���������;u��!��Y{Tcys�f����<��~G'|�@L��[��y>|�.'�mx[G�)�%7�ڼ����q|��az���[�$̛K�$��ٚ��I���c9	s�f[�F���Iî4q�
s�f�W�V�t������V0].���u��1̒˧1����\��
L�;�{#م
��%{�R���f�Q���1̵;��sNi��mK�	��0�n�a��I�t�Y�~s7``�������0K.�z��0=n���@��qGo�������)gk��)������.��8Rڣ�cG����)NZG�B]�D�x�WH��a��sUH�K�6�;W���h�!C����|��-�B����9��Pț��o~4��
L��;2r��>7�=0���r��ǅ4:5q�Q��t���S�Bb\�����BB\��o�B"\���@)�ȩ��bV�梽���B�]�w�z!/]ٸ����u��g��<.��E�zq��<.$�)M�#[{9�*d���ه�:y���q�!��t�PPZj���z�J���n�C�fD`#���p����\�Ii���S������P�VJB��H�ۯ���'[��i�4�ݬf�b#� ̮�wE�!d����;�~��7����d�_h@�b�f ��7��_?Ɏ���9��N@S�I���4��-);�HR���e<�K���a�Z��Vk,�	���k�N*�>ņ	Oڰ؆!�w<�[�Ȓ���/�鼊���b}����r*�a|~)J��ǵi)�� �3�j�"�\ڢ}x�%�[��.�()J���7�
J�R�Du��_��-����ss�~��|��iM�&5���zӥ	w�L�z�'��h���t�:!ީK��ټ���	��l�ԻJ�.M�e��ҫv���]��ݔnw'd���%���Aߤ���p<���o��;�C��>�u�/v̮�7 Gn �;^� ��iA��`S���M�k�wR G.w����iB�'_-S�fG�PA�ё(9��ı9�%G�I�#�9B~ �#�T]���w�Fߚ0�dsvTF7�}����?|H����:����@NY�#�f3�]@D�K-	E_���u���a�p�?���ݿ����n�����?z�D���waLbH����j)��g���v��/��˕��(F|b�������+��RR���\Ol�C���ۄg�0xǐyY��ǳ@4�w)���ǵ�Xj��ӊ�mX���t��}��_�x�t���KT������ń�S�!�R&:���|��&r��ӛ�P��l]J[ȼ������W�kј�������o������-h����Lcn>�Y��ՓN�'�R���Y�쨞p�zҙύ��N�B8_�[Olal#H����m�B��y���<�Z[����q������V}����\��_��}�)n\�J�>���71���VL;�BR�r�r�ي�X���{��`EJ�ɚF    �%����)@8�v/���H��%_�˟k��ΨX�4��J��_�r=�N:W5�s���|I"�����8;��=!6|�ٱ�gW4E��l��lT�K���pE�jK�,i�/�a�[�����b=J� A`�yI�YY�m�i�)��Ql��lX��̊?��|��2+�)��U�_18w���������B�|�+�Ε��wxqz���})�V.��e7��W�V2�{�f_�����Jfy�г����Y�F�}�^}��J��a
m���c�CodpY� )���F�����s"��f���Y��^H#Mo�jY
m>��zbn$Z�U?U��V$��f��P!��Ǐ���R(+Rb�����Jca�F
P(�cO���v)���f��p%7� ���H�P�iv�:h��R�T�[�xrBRi1��aHQ��z��HY�U�	�ӵ�*���_}�h$��o>��k�V��@������5#!��z "S+AL�d®�P�N�Zn��yg
�VS�?ni�i�R</DAƚ|��������5y�8|� jM�?���� DS"vw�dY
Ҧ)�tEA��[*´��lf���k"��(��H�,S7f)A�m�y�e���F�]�5 ��g_������R��eF��r[!�1E_l�Ef�{1Z�ݚఔo�k���F�}4L=����cW�@F�����c6�r���q�1���M}�fr0����nw`zg��1J���|�!K&�1�$�yp�1��c�l<�J��8N�L(Jq<����!p��(I����Hɒ˗a!����8�G�v�8hc!�f�q�I���!N��?}�|�Hs�]��n?{���I� Ų�z��+�>?��#v���d�<͌�%�8�����i_�b>� K��~��D��#�׋�����ͧ�>)�?��,����Aξ6�u���32q��=���$j����6�n:�Q�]DLn0U�]0�u9�S�	�/&7��2l�o0O���Vn0r�v����T=����̶��`+�s��1h�"e��Ka��d|)�HM�]�=����WCG��:���ͅ��|m�W�1I���.fj�y{L׷�s�䋇��8�n4��֤Sʡ����Anh93+O�&t<W�	�Q�d���1c-��o�&`��X
m�';a���[��0W%`�y/�N�����>5�W������k)�f�ޟ�
�����
��Ș�
 ��7��N ���J�ǟD�׉a�N�R�|[�,;����ɲSHIJߓe�(��+ԾX��@Q�}+
Մf���vꖔbZ���Q�����|f��4+ C�����9��,�2�����25��[��:��/v�����J��f_,�^B��{^?eo.����ַ[	9>��:[�JH���Ӟ�q�O�(�}�Q+D�̌��8.	G�C7Ĭ*P[��ZU 1�n�/EH,	gu��(V@����U ��U 1�<��������߄��aa������d}5�G|���VU���@{�/�I ��Jn4!����
�׍xk��0Uk�Dį*��v�W��I��9��\GG���r%��R�����Y�^���3(�5l_\��\�����`*W����o�0��������������C��뵥�~?\5/MQ~Xv��aQ��,��8wU��E�`Y����H�ƾ����P�Xt��@�D�'�J'�&8�VX�N��R���(�,KQ΅�R����?\��m�����7Oc�����o�{�˗��ت�}������閝��.�K
C�P����T0{L2��?X�p�(�yM�]fs�ը-��2��%��Yj����$��/��ҩ��N��Ӳ�&�a)Ua�IX6<����;�t�g_,�����̧r��RM�C�-Ӆo�Dl�=�rZY�q�Q˜��Ch�Ю��2S��C�4�ۃ(y��0�z�E�}�䡡�11
j�+�wE4Tqn��2e�b[�e�u�駶%m���N{�4����6���=&i_�̓9��O��8غ��+ɀɗ�\Mw��=��0��%U,�{�?ߝ~�O�J�|<Xf#�Tʈ��>�����m�7Ѓ9�Y3a�	%���a�s����.(��.���N[	�
�����YIك��?ۗBn�l�M���G\S{\�=(ǿ}7a>����s���Tnd��ɟ��)��5F��ր���[��[�ȌVdc��QV 7e*�ݖ�:�
�Lu���Vħ�[[�D@�f+���U)X!݃�����IN@��t�Pۇ�t���-' s�#ݸFmpd�#A��>�?W�����#Hb��Ǉ��]�8���ؐv�H�l�-�u�HbC��m����i��A5��XNB���}���IQ��[�f	陭P�ʯ%��+���gvT����8�6m.4�?L��>a|ɤNB�eš�&�F�K9׎p����x�Q�x+YIc�/HM%+�����s���ᢲی��,�l%�h��ru;�-�v����Ip��ǀ�e�M.� Y��2�������9`e�ӳ���ٗt�>��7��<=�u����Bb�޻xOJ�	KR*U�D�8-Jn�y��b-���#9�)%�s�w�!���F���u�|G����?���"�Pjm{������j���YO[inV�ua�O���@h��'4&�Q���Oh0�D��Y�gQYqh��#J	�hZg0�Ra��TsO�JǮcb�N�$�{��f�n�����Ϡm�w�<�`6���������������L���жoW?�-P����A}�pfIw뎷R���敡<��@:�L$�5��M?�l�t�tF�<lX�4����M�p}�����Q�!o�Y̵t��vK�~������X�"'f�>��]!���YlR�I�,�V8��&ӝ��0�[?�;0�J��T����ْ�MN	`U
��cNؘt�肾CM�p�LB����V�'�g�e0sҋ��J������X��;��QR0^w�������޷�<� 2��P�7��W����^t�WH�7 �.=�<D�쫡,&G5#�!>��ͯt�諹�B��:�M�� P�b}���dR����rǓA�e���C��a�4a��<CE��LyT��.`6*J�5RwQʴEi6�8q�LyҚuH�0��>%ݜ��0�m�z���0��z`3�a��0(�DZ̴~~Ԛ��~�}��\pB����/R+f�8���E&ERt�J�0̣�_�U|��1�|�y������!����'=���z4����������W���wOz�أ$�����ӧ/w7�q}O0��O�E�o�p�p{��p�Dp��O�\�o<��)!|s���p�vJ(m���O�E��Y\J�Ru��n�wן?�;����
�6���Kw�L���6,�,���3�aa��]U�����aG����=�0���[�0�P�u��0Ҹm�z��0��.0Ɯx	�8���$�� ^ʒ�zL+G����� ��T\���kW�}W����N>�<�a���]��黢~S��_���
�1�B�%\�ϓ������6ʼ����r��!����
?>�\_�!L%euဲ��W�uI��~������hS2eJ�z��c�Mf�T��,Ϟ��D���4Z�͔�o��2����r������Tt�w[��Т$I�	d��Ē�����::R���P�"�T�G��;��Ӽ1��^�ni+\.,�ӿ�߿�N���/�\�]�|�s�QWgڳr�J/7u@�m�%���L��R�_�]��n�_\��ͅ�\d�:>��6f	w>���zοz���q����A��k�hJ�����X�*���8�ZKSS�{�w�I��/�{�-�{�93�#�D��/���@��T쫾���_�ټ�ճ>��, ��T�E:�K7[_��_��<����x_�����]�Ϳwқ.z��qV}��翦tzS�V_�������m�^���J�+�m���M[B�/p���1J���qnm��z?t�)��:.��cVR���XY8LN��L���i0Wʒ����٠3H�t[��	���!I�������l �  ��|�MC���XG�mTy�~*I���Q��^�ut�a�$v�{c�k�	.�g�>��4�2��"�}U1j�p�=kv�9{�P�(�
�gsZ�Jg/��ߢb=���0�R��!{�n0�HQ���*`�Eg�
)~����i_jya�0-x������:��.)���lS��y�u�%lQq��'}pE7���_��y����J��o�i*�j��d�׸�r^�Sx�$/Lp���։.a������ԇa�da�,���'���a�8���뼳47�����0�Ii���7N���!���+�&�y�����7������TG�1��������D����~&�7�W�q�=ܗ���WX�����_AHN�!Nh/�O�W"
��W"�Ƚ8z݄|s��ׄ�y}ճ׷�E-%墥0��]m�{Q}<�ש���S/��.Z��۷%�z�y��"+H�sA�U_�$�Ѝ�ow��,L��>�s��(���n�d�CdȆ#��Wy��8��9�鱽m
�h���@ݦ"v��L����Q:�[9ǢH�݉�Rkw�>MP���XV2(���.�z�Ŋ��RE���Bi�K&�����?�˪G��l�eKnz���W����GR�������j�Dԫ���>KSkQ�"C��Q%֧T�]��|RI��>��V�DӴ+��c�iAZ�Ǭ������c�iِӭ�S">=��W�@�e}��֭��s?��5|��(�~�b �R�������퐛o=���֕����̾(J�wR�CM-�0�{�<��VE�Ҏ�`�qIYL��}z6�ZL9)I!�폊)')!�k�0�$��A��1��9&���M
�FQv��Ha�$)���\IR)��b����8� ���he�ڥ0BT �����J\�p�s�M
#DӮ�Ԫ�+�0�U̕$u���ðI�:���R6MRݏ�	d��v��<&P�T�z�%C+"����@lR�@Q����Ha�;�8����R� �	d�9F�PY
Q
�&KQ�l��\19F���yqB&���#ȓF�Տ�ji�t� ��(��!i�.���<"$�,E�֬~DL�	U��u1n�t[��M
���)�������Z�BV�Cb��|��p���������C'	3���M����ĤI�{�ਅQӤ��!1x$�Rƚ��5MZ�R`���[��ִh��x|��t�0����z�j]��ն��!1��0}�jzHE	B[������ì1�Tu���I��*���&j�aL�<�V�j�Cb�$��
����&�qL���7�p��Z:�]?<Z:�J �$�N.W�8s�A4	5�O�&�UL
r+۩s�������o��,
rm�⫑%x)����dV<�.i�$�LI�~�NE�^T��)�:�'EQW8�:�%�	Ϻ�%Ѷ0Ͼ��v@I]�zl-���I��$��I7P����9cdx��(���$�m�ೆ(�)������e�v�Ҕb�LS�ew�S]�}�h̗��l$-#�����w_b!�e@w�3����6dņ(��-�Zk����������#�2�{��8ߞ�>��cNڥ|�^ =C��q�J�љ3�����!�"_</mW�� Z/�(�LL��"h��N����w�����n!~�����BZ&�c��,\����!MQ���l*�,̳����:�����9���3������W=����y���]dͬ��]��+$�(�����&!xl��c!�������&!xB|�,1�Q�g�����<�.Gl~Ԃ��Zm����C��ŏX��!x�F,$��5y�q���3/t���	C𤏄0�_պ<Y�g
�1kR:?�=Of�<fM���Ӡ�5q�q��j��I�d0 G-̚���0x��r��tG�Cb�(�t�0k�K0p(���h}�X�S�8jX���� ��0]mxH1XS�yH1a���M�	�&i�ﮈ	�G+��-Q�&i�|�5I��8�K��#��,�J��l]�$sؘ&����Ɗɗ��Wc=�`����ȩ�jHK7X���gq�(� ��-jH��������H��jEUR�l�V�Xѷ��ݦh���U���Z+��KhI�6��"d��H:$����� 1tD,�ϏB����l�$���/�Ϗ����IQ�l�J��A�G!M�g�y6U�l��v��.I�7�{$�t��$&���d��HxD�nk�͘GZ��F�<���W� �A�)I��/Xa\EcL����)t��0�t.������?�����Z�      j   R   x�]��	�0��a��<����稒b
�`��� ��ث{ѱ*<�FM�P����Kl`�0��GK?J��z{�%�_���=�qt      l      x������ � �      V   �   x����B!гTA8��������u���!� ����s|q��8�H�3��vP<�w=ezO��4���� ���0����.�s���q^��&�M��lb6Mś��F�3��<P�gT=�D�<Ձd�o[�T=�@e_e2y�z�sTM�P;�4�7Ae�B|n~��{��uX���m�L�7Nl������Ġ�[�\4��ιM2�      n   �   x�u�M�0���\`Lg�)�a��@��sK�	��u�����TM���{�
��:+�l�����(Q��%J�R�Ɇ5Tu���D�iO��0V#�9�7��Ĭ,�V���������+ �+�� )�ib��t���흣�ӆÑ��ݑWk������7�}0k}��x��a!�x �_%     