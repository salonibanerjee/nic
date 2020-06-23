PGDMP         
                x            NIC_2206    12.2    12.2 )   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    47428    NIC_2206    DATABASE     �   CREATE DATABASE "NIC_2206" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
    DROP DATABASE "NIC_2206";
                postgres    false            �            1259    47429    mpr_master_table    TABLE     �  CREATE TABLE public.mpr_master_table (
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
       public         heap    postgres    false            �            1259    47434    mpr_scheme_awcc    TABLE     S  CREATE TABLE public.mpr_scheme_awcc (
    no_of_icds_cenetres_devoid_of_own_building numeric(10,0) NOT NULL,
    no_of_new_icds_building_constructed numeric(10,0) NOT NULL,
    no_of_icds_centres_running_in_open_space numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 #   DROP TABLE public.mpr_scheme_awcc;
       public         heap    postgres    false    202            �            1259    47440    AWCC_id_seq    SEQUENCE     v   CREATE SEQUENCE public."AWCC_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public."AWCC_id_seq";
       public          postgres    false    203            �           0    0    AWCC_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."AWCC_id_seq" OWNED BY public.mpr_scheme_awcc.id_pk;
          public          postgres    false    204            �            1259    47442    mpr_scheme_baitarani    TABLE     �   CREATE TABLE public.mpr_scheme_baitarani (
    no_of_burning_ghats_taken_up numeric(10,0) NOT NULL,
    completed_till_date date NOT NULL,
    location_code character varying(8) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 (   DROP TABLE public.mpr_scheme_baitarani;
       public         heap    postgres    false    202            �            1259    47448    BAITARANI_id_seq    SEQUENCE     {   CREATE SEQUENCE public."BAITARANI_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."BAITARANI_id_seq";
       public          postgres    false    205            �           0    0    BAITARANI_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."BAITARANI_id_seq" OWNED BY public.mpr_scheme_baitarani.id_pk;
          public          postgres    false    206            �            1259    47450    mpr_scheme_dog    TABLE     h  CREATE TABLE public.mpr_scheme_dog (
    target_for_distribution_of_goats numeric(10,0) NOT NULL,
    no_of_goats_actually_distributed numeric(10,0) NOT NULL,
    no_of_beneficiaries_selected numeric(10,0) NOT NULL,
    no_of_beneficiaries_approved numeric(10,0) NOT NULL,
    location_code character varying(10) NOT NULL
)
INHERITS (public.mpr_master_table);
 "   DROP TABLE public.mpr_scheme_dog;
       public         heap    postgres    false    202            �            1259    47455 
   DOG_id_seq    SEQUENCE     u   CREATE SEQUENCE public."DOG_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public."DOG_id_seq";
       public          postgres    false    207            �           0    0 
   DOG_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."DOG_id_seq" OWNED BY public.mpr_scheme_dog.id_pk;
          public          postgres    false    208            �            1259    47457    mpr_scheme_doptuhd    TABLE     �   CREATE TABLE public.mpr_scheme_doptuhd (
    no_of_power_tiller_distributed numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 &   DROP TABLE public.mpr_scheme_doptuhd;
       public         heap    postgres    false    202            �            1259    47463    DOPTUHD_id_seq    SEQUENCE     y   CREATE SEQUENCE public."DOPTUHD_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."DOPTUHD_id_seq";
       public          postgres    false    209            �           0    0    DOPTUHD_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."DOPTUHD_id_seq" OWNED BY public.mpr_scheme_doptuhd.id_pk;
          public          postgres    false    210            �            1259    47465    mpr_scheme_enrollment    TABLE     }  CREATE TABLE public.mpr_scheme_enrollment (
    gross_enrolment_ratio_primary numeric(10,0) NOT NULL,
    net_enrolment_ratio_primary numeric(10,0) NOT NULL,
    gross_enrolment_ratio_upper_primary numeric(10,0) NOT NULL,
    net_enrolment_ratio_upper_primary numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 )   DROP TABLE public.mpr_scheme_enrollment;
       public         heap    postgres    false    202            �            1259    47471    ENROLLMENT_id_seq    SEQUENCE     |   CREATE SEQUENCE public."ENROLLMENT_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."ENROLLMENT_id_seq";
       public          postgres    false    211            �           0    0    ENROLLMENT_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."ENROLLMENT_id_seq" OWNED BY public.mpr_scheme_enrollment.id_pk;
          public          postgres    false    212            �            1259    47473    mpr_scheme_foodpro    TABLE     �   CREATE TABLE public.mpr_scheme_foodpro (
    status_of_pocurement numeric(10,0) NOT NULL,
    target_of_pocurement numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 &   DROP TABLE public.mpr_scheme_foodpro;
       public         heap    postgres    false    202            �            1259    47479    FOODPRO_id_seq    SEQUENCE     y   CREATE SEQUENCE public."FOODPRO_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."FOODPRO_id_seq";
       public          postgres    false    213            �           0    0    FOODPRO_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."FOODPRO_id_seq" OWNED BY public.mpr_scheme_foodpro.id_pk;
          public          postgres    false    214            �            1259    47481    mpr_scheme_gitanjali    TABLE     I  CREATE TABLE public.mpr_scheme_gitanjali (
    no_of_case_sanctioned_under_gitanjali numeric(10,0) NOT NULL,
    date_of_inception character varying(15) NOT NULL,
    no_of_houses_constructed_under_gitanjali numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 (   DROP TABLE public.mpr_scheme_gitanjali;
       public         heap    postgres    false    202            �            1259    47487    GITANJALI_id_seq    SEQUENCE     {   CREATE SEQUENCE public."GITANJALI_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."GITANJALI_id_seq";
       public          postgres    false    215            �           0    0    GITANJALI_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."GITANJALI_id_seq" OWNED BY public.mpr_scheme_gitanjali.id_pk;
          public          postgres    false    216            �            1259    47489    mpr_scheme_immunisati    TABLE     �   CREATE TABLE public.mpr_scheme_immunisati (
    per_of_fully_immunised_child numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 )   DROP TABLE public.mpr_scheme_immunisati;
       public         heap    postgres    false    202            �            1259    47495    IMMUNISATION_id_seq    SEQUENCE     ~   CREATE SEQUENCE public."IMMUNISATION_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."IMMUNISATION_id_seq";
       public          postgres    false    217            �           0    0    IMMUNISATION_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."IMMUNISATION_id_seq" OWNED BY public.mpr_scheme_immunisati.id_pk;
          public          postgres    false    218            �            1259    47497    mpr_scheme_infantd    TABLE     �   CREATE TABLE public.mpr_scheme_infantd (
    total_no_of_infant_death numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 &   DROP TABLE public.mpr_scheme_infantd;
       public         heap    postgres    false    202            �            1259    47503    INFANTD_id_seq    SEQUENCE     y   CREATE SEQUENCE public."INFANTD_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."INFANTD_id_seq";
       public          postgres    false    219            �           0    0    INFANTD_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."INFANTD_id_seq" OWNED BY public.mpr_scheme_infantd.id_pk;
          public          postgres    false    220            �            1259    47505    mpr_scheme_inspection    TABLE       CREATE TABLE public.mpr_scheme_inspection (
    no_of_homes_inspected_by_senior_officers numeric(10,0) NOT NULL,
    designation_of_officers character varying(5) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 )   DROP TABLE public.mpr_scheme_inspection;
       public         heap    postgres    false    202            �            1259    47511    INSPECTION_id_seq    SEQUENCE     |   CREATE SEQUENCE public."INSPECTION_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."INSPECTION_id_seq";
       public          postgres    false    221            �           0    0    INSPECTION_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."INSPECTION_id_seq" OWNED BY public.mpr_scheme_inspection.id_pk;
          public          postgres    false    222            �            1259    47513    mpr_scheme_instdel    TABLE     �   CREATE TABLE public.mpr_scheme_instdel (
    per_of_institutional_delivery numeric(52,0) NOT NULL,
    location_code character varying(8) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 &   DROP TABLE public.mpr_scheme_instdel;
       public         heap    postgres    false    202            �            1259    47519    INSTDEL_id_seq    SEQUENCE     y   CREATE SEQUENCE public."INSTDEL_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."INSTDEL_id_seq";
       public          postgres    false    223            �           0    0    INSTDEL_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."INSTDEL_id_seq" OWNED BY public.mpr_scheme_instdel.id_pk;
          public          postgres    false    224            �            1259    47521    mpr_scheme_jaldjalb    TABLE     N  CREATE TABLE public.mpr_scheme_jaldjalb (
    date_of_inspection character varying(15) NOT NULL,
    no_of_ponds_excavated_under_jal_dharo_jal_bharo numeric(10,0) NOT NULL,
    no_of_ponds_fish_production_started numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 '   DROP TABLE public.mpr_scheme_jaldjalb;
       public         heap    postgres    false    202            �            1259    47527    JALDJALB_id_seq    SEQUENCE     z   CREATE SEQUENCE public."JALDJALB_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."JALDJALB_id_seq";
       public          postgres    false    225            �           0    0    JALDJALB_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."JALDJALB_id_seq" OWNED BY public.mpr_scheme_jaldjalb.id_pk;
          public          postgres    false    226            �            1259    47529    mpr_scheme_kanyas    TABLE       CREATE TABLE public.mpr_scheme_kanyas (
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
       public         heap    postgres    false    202            �            1259    47535    KANYAS_id_seq    SEQUENCE     x   CREATE SEQUENCE public."KANYAS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."KANYAS_id_seq";
       public          postgres    false    227            �           0    0    KANYAS_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."KANYAS_id_seq" OWNED BY public.mpr_scheme_kanyas.id_pk;
          public          postgres    false    228            �            1259    47537    mpr_scheme_karmatirth    TABLE     �  CREATE TABLE public.mpr_scheme_karmatirth (
    no_of_karmatirtha_sanctioned numeric(10,0) NOT NULL,
    no_of_karmatirtha_for_which_construction_started numeric(10,0) NOT NULL,
    no_of_karmatirtha_for_which_construction_completed numeric(10,0) NOT NULL,
    no_of_karmatirth_operationalised numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 )   DROP TABLE public.mpr_scheme_karmatirth;
       public         heap    postgres    false    202            �            1259    47543    KARMATIRTHA_id_seq    SEQUENCE     }   CREATE SEQUENCE public."KARMATIRTHA_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."KARMATIRTHA_id_seq";
       public          postgres    false    229            �           0    0    KARMATIRTHA_id_seq    SEQUENCE OWNED BY     X   ALTER SEQUENCE public."KARMATIRTHA_id_seq" OWNED BY public.mpr_scheme_karmatirth.id_pk;
          public          postgres    false    230            �            1259    47545    mpr_scheme_kcc    TABLE     �  CREATE TABLE public.mpr_scheme_kcc (
    no_of_agricultrural_families_in_the_district numeric(10,0) NOT NULL,
    no_of_agricultural_families_covered_by_kcc numeric(10,0) NOT NULL,
    kcc_coverage_percentage numeric(6,3) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL,
    CONSTRAINT percent_check CHECK (((kcc_coverage_percentage >= (0)::numeric) AND (kcc_coverage_percentage <= (100)::numeric)))
)
INHERITS (public.mpr_master_table);
 "   DROP TABLE public.mpr_scheme_kcc;
       public         heap    postgres    false    202            �            1259    47552    KCC_id_pk_seq    SEQUENCE     x   CREATE SEQUENCE public."KCC_id_pk_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."KCC_id_pk_seq";
       public          postgres    false    231            �           0    0    KCC_id_pk_seq    SEQUENCE OWNED BY     L   ALTER SEQUENCE public."KCC_id_pk_seq" OWNED BY public.mpr_scheme_kcc.id_pk;
          public          postgres    false    232            �            1259    47554    mpr_scheme_landpp    TABLE     �   CREATE TABLE public.mpr_scheme_landpp (
    no_of_land_permission_pending numeric(10,0) NOT NULL,
    projects_name character varying(30) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 %   DROP TABLE public.mpr_scheme_landpp;
       public         heap    postgres    false    202            �            1259    47560    LANDPP_id_seq    SEQUENCE     x   CREATE SEQUENCE public."LANDPP_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."LANDPP_id_seq";
       public          postgres    false    233            �           0    0    LANDPP_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."LANDPP_id_seq" OWNED BY public.mpr_scheme_landpp.id_pk;
          public          postgres    false    234            �            1259    47562    mpr_semitrans_login    TABLE       CREATE TABLE public.mpr_semitrans_login (
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
       public         heap    postgres    false            �            1259    47574    Login_id_seq    SEQUENCE     w   CREATE SEQUENCE public."Login_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Login_id_seq";
       public          postgres    false    235            �           0    0    Login_id_seq    SEQUENCE OWNED BY     V   ALTER SEQUENCE public."Login_id_seq" OWNED BY public.mpr_semitrans_login.login_id_pk;
          public          postgres    false    236            �            1259    47576    Login_user_type_id_fk_seq    SEQUENCE     �   CREATE SEQUENCE public."Login_user_type_id_fk_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."Login_user_type_id_fk_seq";
       public          postgres    false    235            �           0    0    Login_user_type_id_fk_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."Login_user_type_id_fk_seq" OWNED BY public.mpr_semitrans_login.user_type_id_fk;
          public          postgres    false    237            �            1259    47578    mpr_scheme_maternald    TABLE     �   CREATE TABLE public.mpr_scheme_maternald (
    total_no_of_maternal_death numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 (   DROP TABLE public.mpr_scheme_maternald;
       public         heap    postgres    false    202            �            1259    47584    MATERNALD_id_seq    SEQUENCE     {   CREATE SEQUENCE public."MATERNALD_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."MATERNALD_id_seq";
       public          postgres    false    238            �           0    0    MATERNALD_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."MATERNALD_id_seq" OWNED BY public.mpr_scheme_maternald.id_pk;
          public          postgres    false    239            �            1259    47586    mpr_scheme_mci    TABLE     Z  CREATE TABLE public.mpr_scheme_mci (
    percentage_of_malnourished_child numeric(6,3) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL,
    CONSTRAINT mci_percent_check CHECK (((percentage_of_malnourished_child >= (0)::numeric) AND (percentage_of_malnourished_child <= (100)::numeric)))
)
INHERITS (public.mpr_master_table);
 "   DROP TABLE public.mpr_scheme_mci;
       public         heap    postgres    false    202            �            1259    47593 
   MCI_id_seq    SEQUENCE     u   CREATE SEQUENCE public."MCI_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public."MCI_id_seq";
       public          postgres    false    240            �           0    0 
   MCI_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."MCI_id_seq" OWNED BY public.mpr_scheme_mci.id_pk;
          public          postgres    false    241            �            1259    47595    mpr_scheme_minoritys    TABLE     n  CREATE TABLE public.mpr_scheme_minoritys (
    target_for_scholarship_distribution_aikyashree numeric(10,0) NOT NULL,
    no_of_students_distributed_scholarship numeric(10,0) NOT NULL,
    no_of_application_uploaded_under_aikyashree_scholarship numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 (   DROP TABLE public.mpr_scheme_minoritys;
       public         heap    postgres    false    202            �            1259    47601    MINORITYS_id_seq    SEQUENCE     {   CREATE SEQUENCE public."MINORITYS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."MINORITYS_id_seq";
       public          postgres    false    242            �           0    0    MINORITYS_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."MINORITYS_id_seq" OWNED BY public.mpr_scheme_minoritys.id_pk;
          public          postgres    false    243            �            1259    47603    mpr_scheme_poe    TABLE     �   CREATE TABLE public.mpr_scheme_poe (
    target numeric(10,0) NOT NULL,
    production numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 "   DROP TABLE public.mpr_scheme_poe;
       public         heap    postgres    false    202            �            1259    47609 
   POE_id_seq    SEQUENCE     u   CREATE SEQUENCE public."POE_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public."POE_id_seq";
       public          postgres    false    244            �           0    0 
   POE_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."POE_id_seq" OWNED BY public.mpr_scheme_poe.id_pk;
          public          postgres    false    245            �            1259    47611    mpr_scheme_saboojshre    TABLE     <  CREATE TABLE public.mpr_scheme_saboojshre (
    no_of_children_born_since_inception_of_the_project_in_the_dist numeric(10,0) NOT NULL,
    no_of_tree_sapling_handed_over_to_the_new_born_children numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 )   DROP TABLE public.mpr_scheme_saboojshre;
       public         heap    postgres    false    202            �            1259    47617    SABOOJSHREE_id_seq    SEQUENCE     }   CREATE SEQUENCE public."SABOOJSHREE_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."SABOOJSHREE_id_seq";
       public          postgres    false    246            �           0    0    SABOOJSHREE_id_seq    SEQUENCE OWNED BY     X   ALTER SEQUENCE public."SABOOJSHREE_id_seq" OWNED BY public.mpr_scheme_saboojshre.id_pk;
          public          postgres    false    247            �            1259    47619    mpr_scheme_saboojs    TABLE        CREATE TABLE public.mpr_scheme_saboojs (
    target_for_distribution_of_cycles numeric(10,0) NOT NULL,
    cycle_distributed_till_date numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 &   DROP TABLE public.mpr_scheme_saboojs;
       public         heap    postgres    false    202            �            1259    47625    SABOOJS_id_seq    SEQUENCE     y   CREATE SEQUENCE public."SABOOJS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."SABOOJS_id_seq";
       public          postgres    false    248            �           0    0    SABOOJS_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."SABOOJS_id_seq" OWNED BY public.mpr_scheme_saboojs.id_pk;
          public          postgres    false    249            �            1259    47627    mpr_scheme_safedsavel    TABLE       CREATE TABLE public.mpr_scheme_safedsavel (
    no_of_accidents numeric(10,0) NOT NULL,
    no_of_death numeric(10,0) NOT NULL,
    no_of_insured_person numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 )   DROP TABLE public.mpr_scheme_safedsavel;
       public         heap    postgres    false    202            �            1259    47633    SAFEDSAVEL_id_seq    SEQUENCE     |   CREATE SEQUENCE public."SAFEDSAVEL_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."SAFEDSAVEL_id_seq";
       public          postgres    false    250            �           0    0    SAFEDSAVEL_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."SAFEDSAVEL_id_seq" OWNED BY public.mpr_scheme_safedsavel.id_pk;
          public          postgres    false    251            �            1259    47635    mpr_scheme_samabythi    TABLE       CREATE TABLE public.mpr_scheme_samabythi (
    no_of_beneficiaries_provided_benefit_till_date numeric(10,0) NOT NULL,
    till_date character varying(15) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 (   DROP TABLE public.mpr_scheme_samabythi;
       public         heap    postgres    false    202            �            1259    47641    SAMABYTHI_id_seq    SEQUENCE     {   CREATE SEQUENCE public."SAMABYTHI_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."SAMABYTHI_id_seq";
       public          postgres    false    252            �           0    0    SAMABYTHI_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."SAMABYTHI_id_seq" OWNED BY public.mpr_scheme_samabythi.id_pk;
          public          postgres    false    253            �            1259    47643    mpr_scheme_sikshas    TABLE     m  CREATE TABLE public.mpr_scheme_sikshas (
    targetted_no_of_sc_st_student_under_sikshashree numeric(10,0) NOT NULL,
    no_of_students_getting_benefit_under_sikshashree numeric(10,0) NOT NULL,
    no_of_applications_uploaded_under_sikshashree numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 &   DROP TABLE public.mpr_scheme_sikshas;
       public         heap    postgres    false    202            �            1259    47649    SIKSHAS_id_seq    SEQUENCE     y   CREATE SEQUENCE public."SIKSHAS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."SIKSHAS_id_seq";
       public          postgres    false    254            �           0    0    SIKSHAS_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."SIKSHAS_id_seq" OWNED BY public.mpr_scheme_sikshas.id_pk;
          public          postgres    false    255                        1259    47651    mpr_scheme_svskp    TABLE     	  CREATE TABLE public.mpr_scheme_svskp (
    no_of_project_sponsored_under_svskp numeric(10,0) NOT NULL,
    no_of_project_sanctioned_under_svskp numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 $   DROP TABLE public.mpr_scheme_svskp;
       public         heap    postgres    false    202                       1259    47657    SVSKP_id_seq    SEQUENCE     w   CREATE SEQUENCE public."SVSKP_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."SVSKP_id_seq";
       public          postgres    false    256            �           0    0    SVSKP_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."SVSKP_id_seq" OWNED BY public.mpr_scheme_svskp.id_pk;
          public          postgres    false    257                       1259    47659    mpr_scheme_yubas    TABLE     /  CREATE TABLE public.mpr_scheme_yubas (
    no_of_unemployed_youth_registered_under_yubashree numeric(10,0) NOT NULL,
    no_of_unemployed_registered_youth_getting_monthly_assistance numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 $   DROP TABLE public.mpr_scheme_yubas;
       public         heap    postgres    false    202                       1259    47665    YUBAS_id_seq    SEQUENCE     w   CREATE SEQUENCE public."YUBAS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."YUBAS_id_seq";
       public          postgres    false    258            �           0    0    YUBAS_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."YUBAS_id_seq" OWNED BY public.mpr_scheme_yubas.id_pk;
          public          postgres    false    259                       1259    47667    mpr_scheme_anand    TABLE       CREATE TABLE public.mpr_scheme_anand (
    total_no_of_shgs_formed_in_the_district numeric(10,0) NOT NULL,
    total_no_of_shgs_got_credit_linkage numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 $   DROP TABLE public.mpr_scheme_anand;
       public         heap    postgres    false    202                       1259    47673    anand_id_seq    SEQUENCE     u   CREATE SEQUENCE public.anand_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.anand_id_seq;
       public          postgres    false    260            �           0    0    anand_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.anand_id_seq OWNED BY public.mpr_scheme_anand.id_pk;
          public          postgres    false    261                       1259    47675    mpr_master_attri_table    TABLE     �   CREATE TABLE public.mpr_master_attri_table (
    attri_id_pk bigint NOT NULL,
    scheme_id_fk bigint DEFAULT 0 NOT NULL,
    attri_name character varying(100) NOT NULL,
    actual_name character varying(100) NOT NULL
);
 *   DROP TABLE public.mpr_master_attri_table;
       public         heap    postgres    false                       1259    47679    att_table_id_seq    SEQUENCE     y   CREATE SEQUENCE public.att_table_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.att_table_id_seq;
       public          postgres    false    262            �           0    0    att_table_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.att_table_id_seq OWNED BY public.mpr_master_attri_table.attri_id_pk;
          public          postgres    false    263                       1259    47681    mpr_trans_audit_log    TABLE     �  CREATE TABLE public.mpr_trans_audit_log (
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
       public         heap    postgres    false            	           1259    47685    audit_log_id_seq    SEQUENCE     y   CREATE SEQUENCE public.audit_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.audit_log_id_seq;
       public          postgres    false    264            �           0    0    audit_log_id_seq    SEQUENCE OWNED BY     X   ALTER SEQUENCE public.audit_log_id_seq OWNED BY public.mpr_trans_audit_log.audit_id_pk;
          public          postgres    false    265            
           1259    47687    mpr_semitrans_check_first_user    TABLE     u  CREATE TABLE public.mpr_semitrans_check_first_user (
    user_id_pk bigint NOT NULL,
    check_if_first_user integer NOT NULL,
    check_profile_updated_once integer NOT NULL,
    CONSTRAINT check_first_user_check CHECK ((check_if_first_user = ANY (ARRAY[0, 1]))),
    CONSTRAINT check_profile_updated_once_check CHECK ((check_profile_updated_once = ANY (ARRAY[0, 1])))
);
 2   DROP TABLE public.mpr_semitrans_check_first_user;
       public         heap    postgres    false                       1259    47692 (   check_First_User_check_if_first_user_seq    SEQUENCE     �   CREATE SEQUENCE public."check_First_User_check_if_first_user_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public."check_First_User_check_if_first_user_seq";
       public          postgres    false    266            �           0    0 (   check_First_User_check_if_first_user_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."check_First_User_check_if_first_user_seq" OWNED BY public.mpr_semitrans_check_first_user.check_if_first_user;
          public          postgres    false    267                       1259    47694    check_First_User_user_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public."check_First_User_user_id_pk_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."check_First_User_user_id_pk_seq";
       public          postgres    false    266            �           0    0    check_First_User_user_id_pk_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public."check_First_User_user_id_pk_seq" OWNED BY public.mpr_semitrans_check_first_user.user_id_pk;
          public          postgres    false    268                       1259    47696 !   mpr_semitrans_dba_financial_range    TABLE     %  CREATE TABLE public.mpr_semitrans_dba_financial_range (
    dba_financial_range_table_id_pk bigint NOT NULL,
    financial_year_range character varying(4) NOT NULL,
    month numeric(2,0) NOT NULL,
    CONSTRAINT dba_month_check CHECK (((month > (0)::numeric) AND (month < (13)::numeric)))
);
 5   DROP TABLE public.mpr_semitrans_dba_financial_range;
       public         heap    postgres    false                       1259    47700 =   dba_financial_range_table_dba_financial_range_table_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.dba_financial_range_table_dba_financial_range_table_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 T   DROP SEQUENCE public.dba_financial_range_table_dba_financial_range_table_id_pk_seq;
       public          postgres    false    269            �           0    0 =   dba_financial_range_table_dba_financial_range_table_id_pk_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.dba_financial_range_table_dba_financial_range_table_id_pk_seq OWNED BY public.mpr_semitrans_dba_financial_range.dba_financial_range_table_id_pk;
          public          postgres    false    270                       1259    47702    mpr_master_designation    TABLE     �   CREATE TABLE public.mpr_master_designation (
    desig_id_pk bigint NOT NULL,
    desig_name character varying(100) NOT NULL,
    dept_id_fk bigint NOT NULL
);
 *   DROP TABLE public.mpr_master_designation;
       public         heap    postgres    false                       1259    47705    designation_desig_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.designation_desig_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.designation_desig_id_pk_seq;
       public          postgres    false    271            �           0    0    designation_desig_id_pk_seq    SEQUENCE OWNED BY     f   ALTER SEQUENCE public.designation_desig_id_pk_seq OWNED BY public.mpr_master_designation.desig_id_pk;
          public          postgres    false    272                       1259    47707    mpr_scheme_doc    TABLE       CREATE TABLE public.mpr_scheme_doc (
    target_for_distribution_of_poultry numeric(10,0) NOT NULL,
    no_of_poultry_actually_distributed numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 "   DROP TABLE public.mpr_scheme_doc;
       public         heap    postgres    false    202                       1259    47713 
   doc_id_seq    SEQUENCE     s   CREATE SEQUENCE public.doc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.doc_id_seq;
       public          postgres    false    273            �           0    0 
   doc_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.doc_id_seq OWNED BY public.mpr_scheme_doc.id_pk;
          public          postgres    false    274                       1259    47715    mpr_master_financial_year    TABLE     �   CREATE TABLE public.mpr_master_financial_year (
    financial_year_master_id_pk bigint NOT NULL,
    year_type character varying(50) NOT NULL
);
 -   DROP TABLE public.mpr_master_financial_year;
       public         heap    postgres    false                       1259    47718 5   financial_year_master_financial_year_master_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.financial_year_master_financial_year_master_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 L   DROP SEQUENCE public.financial_year_master_financial_year_master_id_pk_seq;
       public          postgres    false    275            �           0    0 5   financial_year_master_financial_year_master_id_pk_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.financial_year_master_financial_year_master_id_pk_seq OWNED BY public.mpr_master_financial_year.financial_year_master_id_pk;
          public          postgres    false    276                       1259    47720    mpr_scheme_kishanm    TABLE     ,  CREATE TABLE public.mpr_scheme_kishanm (
    no_of_kishan_mandis_sanctioned numeric(10,0) NOT NULL,
    no_of_kishan_mandis_operational numeric(10,0) NOT NULL,
    operationality numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 &   DROP TABLE public.mpr_scheme_kishanm;
       public         heap    postgres    false    202                       1259    47726    kishanm_id_seq    SEQUENCE     w   CREATE SEQUENCE public.kishanm_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.kishanm_id_seq;
       public          postgres    false    277            �           0    0    kishanm_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.kishanm_id_seq OWNED BY public.mpr_scheme_kishanm.id_pk;
          public          postgres    false    278                       1259    47728    mpr_master_location_data    TABLE     �   CREATE TABLE public.mpr_master_location_data (
    location_area character varying(100) NOT NULL,
    location_code character varying(12) NOT NULL,
    location_id_pk bigint NOT NULL
);
 ,   DROP TABLE public.mpr_master_location_data;
       public         heap    postgres    false                       1259    47731     location_data_location_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.location_data_location_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.location_data_location_id_pk_seq;
       public          postgres    false    279            �           0    0     location_data_location_id_pk_seq    SEQUENCE OWNED BY     p   ALTER SEQUENCE public.location_data_location_id_pk_seq OWNED BY public.mpr_master_location_data.location_id_pk;
          public          postgres    false    280                       1259    47733    mpr_trans_meeting_schedule    TABLE     �   CREATE TABLE public.mpr_trans_meeting_schedule (
    meeting_id_pk bigint NOT NULL,
    start_time character varying(16) NOT NULL,
    end_time character varying(16) NOT NULL
);
 .   DROP TABLE public.mpr_trans_meeting_schedule;
       public         heap    postgres    false                       1259    47736    meeting_schedule_id_seq    SEQUENCE     �   CREATE SEQUENCE public.meeting_schedule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.meeting_schedule_id_seq;
       public          postgres    false    281            �           0    0    meeting_schedule_id_seq    SEQUENCE OWNED BY     h   ALTER SEQUENCE public.meeting_schedule_id_seq OWNED BY public.mpr_trans_meeting_schedule.meeting_id_pk;
          public          postgres    false    282                       1259    47738    mpr_scheme_mgnregs    TABLE     �  CREATE TABLE public.mpr_scheme_mgnregs (
    no_of_person_days_generated_under_mgnregs numeric(10,0) NOT NULL,
    average_no_of_persondays_generated_per_household numeric(10,0) NOT NULL,
    expenditure_of_the_session numeric(10,0) NOT NULL,
    per_of_labour_budget_achieved numeric(10,0) NOT NULL,
    location_code character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 &   DROP TABLE public.mpr_scheme_mgnregs;
       public         heap    postgres    false    202                       1259    47744    mgnres_id_seq    SEQUENCE     v   CREATE SEQUENCE public.mgnres_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.mgnres_id_seq;
       public          postgres    false    283            �           0    0    mgnres_id_seq    SEQUENCE OWNED BY     N   ALTER SEQUENCE public.mgnres_id_seq OWNED BY public.mpr_scheme_mgnregs.id_pk;
          public          postgres    false    284                       1259    47746    mpr_master_block    TABLE     �   CREATE TABLE public.mpr_master_block (
    block_id_pk bigint NOT NULL,
    block_name character varying(50) NOT NULL,
    block_lg_code bigint NOT NULL,
    subdiv_id_fk bigint DEFAULT 0 NOT NULL,
    location_id_fk bigint DEFAULT 0 NOT NULL
);
 $   DROP TABLE public.mpr_master_block;
       public         heap    postgres    false                       1259    47751    mpr_master_dashboard_info    TABLE     �   CREATE TABLE public.mpr_master_dashboard_info (
    dashboard_id_pk bigint NOT NULL,
    sch_tab_name character varying(50) NOT NULL,
    attr_target character varying(100) NOT NULL,
    attri_progress character varying(100) NOT NULL
);
 -   DROP TABLE public.mpr_master_dashboard_info;
       public         heap    postgres    false                       1259    47754    mpr_master_department    TABLE     �   CREATE TABLE public.mpr_master_department (
    dept_id_pk bigint NOT NULL,
    dept_name character varying(100) NOT NULL,
    short_name character varying(15) NOT NULL,
    office_id_fk bigint DEFAULT 0 NOT NULL
);
 )   DROP TABLE public.mpr_master_department;
       public         heap    postgres    false                        1259    47758    mpr_master_district    TABLE     �   CREATE TABLE public.mpr_master_district (
    district_id_pk bigint NOT NULL,
    district_name character varying(50) NOT NULL,
    state_id_fk bigint DEFAULT 0 NOT NULL,
    dist_lg_code bigint NOT NULL,
    location_id_fk bigint DEFAULT 0 NOT NULL
);
 '   DROP TABLE public.mpr_master_district;
       public         heap    postgres    false            !           1259    47763 &   mpr_master_district_district_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.mpr_master_district_district_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.mpr_master_district_district_id_pk_seq;
       public          postgres    false    288            �           0    0 &   mpr_master_district_district_id_pk_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.mpr_master_district_district_id_pk_seq OWNED BY public.mpr_master_district.district_id_pk;
          public          postgres    false    289            "           1259    47765    mpr_master_office    TABLE     }   CREATE TABLE public.mpr_master_office (
    office_id_pk bigint NOT NULL,
    office_name character varying(100) NOT NULL
);
 %   DROP TABLE public.mpr_master_office;
       public         heap    postgres    false            #           1259    47768    mpr_master_scheme_dept    TABLE     �   CREATE TABLE public.mpr_master_scheme_dept (
    scheme_dept_id_pk bigint NOT NULL,
    scheme_id_fk bigint DEFAULT 0 NOT NULL,
    dept_id_fk bigint NOT NULL
);
 *   DROP TABLE public.mpr_master_scheme_dept;
       public         heap    postgres    false            $           1259    47772    mpr_master_scheme_table    TABLE     �   CREATE TABLE public.mpr_master_scheme_table (
    scheme_id_pk bigint NOT NULL,
    short_name character varying(30) NOT NULL,
    name character varying(50) NOT NULL,
    financial_year_id_fk bigint NOT NULL,
    desig_id_fk bigint NOT NULL
);
 +   DROP TABLE public.mpr_master_scheme_table;
       public         heap    postgres    false            %           1259    47775    mpr_master_state    TABLE     y   CREATE TABLE public.mpr_master_state (
    state_id_pk bigint NOT NULL,
    state_name character varying(50) NOT NULL
);
 $   DROP TABLE public.mpr_master_state;
       public         heap    postgres    false            &           1259    47778     mpr_master_state_state_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.mpr_master_state_state_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.mpr_master_state_state_id_pk_seq;
       public          postgres    false    293            �           0    0     mpr_master_state_state_id_pk_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.mpr_master_state_state_id_pk_seq OWNED BY public.mpr_master_state.state_id_pk;
          public          postgres    false    294            '           1259    47780    mpr_master_subdiv    TABLE     �   CREATE TABLE public.mpr_master_subdiv (
    sub_div_id_pk bigint NOT NULL,
    sub_div_name character varying(50) NOT NULL,
    sub_div_lg_code bigint NOT NULL,
    district_id_fk bigint DEFAULT 0 NOT NULL,
    location_id_fk bigint DEFAULT 0 NOT NULL
);
 %   DROP TABLE public.mpr_master_subdiv;
       public         heap    postgres    false            (           1259    47785 #   mpr_master_subdiv_sub_div_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.mpr_master_subdiv_sub_div_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.mpr_master_subdiv_sub_div_id_pk_seq;
       public          postgres    false    295            �           0    0 #   mpr_master_subdiv_sub_div_id_pk_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.mpr_master_subdiv_sub_div_id_pk_seq OWNED BY public.mpr_master_subdiv.sub_div_id_pk;
          public          postgres    false    296            )           1259    47787    mpr_scheme_kcc_backup    TABLE     
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
       public         heap    postgres    false            *           1259    47793    mpr_scheme_kcc_backup_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.mpr_scheme_kcc_backup_id_pk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.mpr_scheme_kcc_backup_id_pk_seq;
       public          postgres    false    297            �           0    0    mpr_scheme_kcc_backup_id_pk_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.mpr_scheme_kcc_backup_id_pk_seq OWNED BY public.mpr_scheme_kcc_backup.id_pk;
          public          postgres    false    298            +           1259    47795    mpr_scheme_kcc_draft    TABLE     	  CREATE TABLE public.mpr_scheme_kcc_draft (
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
       public         heap    postgres    false            ,           1259    47801    mpr_scheme_kcc_draft_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.mpr_scheme_kcc_draft_id_pk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.mpr_scheme_kcc_draft_id_pk_seq;
       public          postgres    false    299            �           0    0    mpr_scheme_kcc_draft_id_pk_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.mpr_scheme_kcc_draft_id_pk_seq OWNED BY public.mpr_scheme_kcc_draft.id_pk;
          public          postgres    false    300            -           1259    47803    mpr_scheme_kishanm_backup    TABLE     �  CREATE TABLE public.mpr_scheme_kishanm_backup (
    id_pk integer NOT NULL,
    login_id_fk bigint NOT NULL,
    ip character varying NOT NULL,
    nodal_check integer NOT NULL,
    session character varying NOT NULL,
    month numeric NOT NULL,
    inserted_at timestamp without time zone NOT NULL,
    no_of_kishan_mandis_sanctioned numeric NOT NULL,
    no_of_kishan_mandis_operational numeric NOT NULL,
    operationality numeric NOT NULL,
    location_code character varying NOT NULL
);
 -   DROP TABLE public.mpr_scheme_kishanm_backup;
       public         heap    postgres    false            .           1259    47809 #   mpr_scheme_kishanm_backup_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.mpr_scheme_kishanm_backup_id_pk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.mpr_scheme_kishanm_backup_id_pk_seq;
       public          postgres    false    301            �           0    0 #   mpr_scheme_kishanm_backup_id_pk_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.mpr_scheme_kishanm_backup_id_pk_seq OWNED BY public.mpr_scheme_kishanm_backup.id_pk;
          public          postgres    false    302            /           1259    47811    mpr_scheme_kishanm_draft    TABLE     �  CREATE TABLE public.mpr_scheme_kishanm_draft (
    id_pk integer NOT NULL,
    login_id_fk bigint NOT NULL,
    ip character varying NOT NULL,
    nodal_check integer NOT NULL,
    session character varying NOT NULL,
    month numeric NOT NULL,
    inserted_at timestamp without time zone NOT NULL,
    no_of_kishan_mandis_sanctioned numeric NOT NULL,
    no_of_kishan_mandis_operational numeric NOT NULL,
    operationality numeric NOT NULL,
    location_code character varying NOT NULL
);
 ,   DROP TABLE public.mpr_scheme_kishanm_draft;
       public         heap    postgres    false            0           1259    47817 "   mpr_scheme_kishanm_draft_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.mpr_scheme_kishanm_draft_id_pk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.mpr_scheme_kishanm_draft_id_pk_seq;
       public          postgres    false    303            �           0    0 "   mpr_scheme_kishanm_draft_id_pk_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.mpr_scheme_kishanm_draft_id_pk_seq OWNED BY public.mpr_scheme_kishanm_draft.id_pk;
          public          postgres    false    304            1           1259    47819    mpr_scheme_mgnregs_backup    TABLE     H  CREATE TABLE public.mpr_scheme_mgnregs_backup (
    id_pk integer NOT NULL,
    login_id_fk bigint NOT NULL,
    ip character varying NOT NULL,
    nodal_check integer NOT NULL,
    session character varying NOT NULL,
    month numeric NOT NULL,
    inserted_at timestamp without time zone NOT NULL,
    no_of_person_days_generated_under_mgnregs numeric NOT NULL,
    average_no_of_persondays_generated_per_household numeric NOT NULL,
    expenditure_of_the_session numeric NOT NULL,
    per_of_labour_budget_achieved numeric NOT NULL,
    location_code character varying NOT NULL
);
 -   DROP TABLE public.mpr_scheme_mgnregs_backup;
       public         heap    postgres    false            2           1259    47825 #   mpr_scheme_mgnregs_backup_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.mpr_scheme_mgnregs_backup_id_pk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.mpr_scheme_mgnregs_backup_id_pk_seq;
       public          postgres    false    305            �           0    0 #   mpr_scheme_mgnregs_backup_id_pk_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.mpr_scheme_mgnregs_backup_id_pk_seq OWNED BY public.mpr_scheme_mgnregs_backup.id_pk;
          public          postgres    false    306            3           1259    47827    mpr_scheme_mgnregs_draft    TABLE     G  CREATE TABLE public.mpr_scheme_mgnregs_draft (
    id_pk integer NOT NULL,
    login_id_fk bigint NOT NULL,
    ip character varying NOT NULL,
    nodal_check integer NOT NULL,
    session character varying NOT NULL,
    month numeric NOT NULL,
    inserted_at timestamp without time zone NOT NULL,
    no_of_person_days_generated_under_mgnregs numeric NOT NULL,
    average_no_of_persondays_generated_per_household numeric NOT NULL,
    expenditure_of_the_session numeric NOT NULL,
    per_of_labour_budget_achieved numeric NOT NULL,
    location_code character varying NOT NULL
);
 ,   DROP TABLE public.mpr_scheme_mgnregs_draft;
       public         heap    postgres    false            4           1259    47833 "   mpr_scheme_mgnregs_draft_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.mpr_scheme_mgnregs_draft_id_pk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.mpr_scheme_mgnregs_draft_id_pk_seq;
       public          postgres    false    307            �           0    0 "   mpr_scheme_mgnregs_draft_id_pk_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.mpr_scheme_mgnregs_draft_id_pk_seq OWNED BY public.mpr_scheme_mgnregs_draft.id_pk;
          public          postgres    false    308            5           1259    47835    mpr_semitrans_location_mapping    TABLE     �   CREATE TABLE public.mpr_semitrans_location_mapping (
    location_mapping_id_pk bigint NOT NULL,
    user_type_id_fk bigint DEFAULT 0 NOT NULL,
    location_id_fk bigint DEFAULT 0 NOT NULL
);
 2   DROP TABLE public.mpr_semitrans_location_mapping;
       public         heap    postgres    false            6           1259    47840 9   mpr_semitrans_location_mapping_location_mapping_id_pk_seq    SEQUENCE       ALTER TABLE public.mpr_semitrans_location_mapping ALTER COLUMN location_mapping_id_pk ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.mpr_semitrans_location_mapping_location_mapping_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    309            7           1259    47842    mpr_semitrans_privilege    TABLE       CREATE TABLE public.mpr_semitrans_privilege (
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
       public         heap    postgres    false            8           1259    47850    mpr_semitrans_profile    TABLE     �  CREATE TABLE public.mpr_semitrans_profile (
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
       public         heap    postgres    false            9           1259    47863    mpr_semitrans_user_privilege    TABLE     X  CREATE TABLE public.mpr_semitrans_user_privilege (
    user_priv_id_pk bigint NOT NULL,
    privilege_id_fk bigint NOT NULL,
    user_type_id_fk bigint NOT NULL,
    active_status integer NOT NULL,
    CONSTRAINT user_privilege_active_check CHECK ((((active_status)::numeric >= (0)::numeric) AND ((active_status)::numeric <= (1)::numeric)))
);
 0   DROP TABLE public.mpr_semitrans_user_privilege;
       public         heap    postgres    false            :           1259    47867    mpr_semitrans_user_type    TABLE       CREATE TABLE public.mpr_semitrans_user_type (
    user_type_id_pk bigint NOT NULL,
    desig character varying(50) NOT NULL,
    active_status numeric NOT NULL,
    CONSTRAINT user_type_active_check CHECK (((active_status >= (0)::numeric) AND (active_status <= (1)::numeric)))
);
 +   DROP TABLE public.mpr_semitrans_user_type;
       public         heap    postgres    false            ;           1259    47874    mpr_trans_fundalloc    TABLE     �  CREATE TABLE public.mpr_trans_fundalloc (
    fundalloc_id_pk bigint NOT NULL,
    location_id_fk bigint NOT NULL,
    scheme_id_fk bigint NOT NULL,
    funds_allocated numeric(15,0) NOT NULL,
    funds_utilised numeric(15,0) NOT NULL,
    threshold numeric(6,2) DEFAULT 50.00 NOT NULL,
    CONSTRAINT threshold_check CHECK (((threshold >= (0)::numeric) AND (threshold <= (100)::numeric)))
);
 '   DROP TABLE public.mpr_trans_fundalloc;
       public         heap    postgres    false            <           1259    47877 '   mpr_trans_fundalloc_fundalloc_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.mpr_trans_fundalloc_fundalloc_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.mpr_trans_fundalloc_fundalloc_id_pk_seq;
       public          postgres    false    315            �           0    0 '   mpr_trans_fundalloc_fundalloc_id_pk_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.mpr_trans_fundalloc_fundalloc_id_pk_seq OWNED BY public.mpr_trans_fundalloc.fundalloc_id_pk;
          public          postgres    false    316            =           1259    47879    mpr_trans_notification    TABLE     �  CREATE TABLE public.mpr_trans_notification (
    audience_id character varying(10) NOT NULL,
    notification_text text NOT NULL,
    notification_id_pk bigint NOT NULL,
    "timestamp" timestamp without time zone NOT NULL,
    notification_head text NOT NULL,
    active_status integer NOT NULL,
    CONSTRAINT notification_active_check CHECK (((active_status >= 0) AND (active_status <= 1)))
);
 *   DROP TABLE public.mpr_trans_notification;
       public         heap    postgres    false            >           1259    47886    notifications_id_seq    SEQUENCE     }   CREATE SEQUENCE public.notifications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.notifications_id_seq;
       public          postgres    false    317            �           0    0    notifications_id_seq    SEQUENCE OWNED BY     f   ALTER SEQUENCE public.notifications_id_seq OWNED BY public.mpr_trans_notification.notification_id_pk;
          public          postgres    false    318            ?           1259    47888    office_dept_office_dept_seq    SEQUENCE     �   CREATE SEQUENCE public.office_dept_office_dept_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.office_dept_office_dept_seq;
       public          postgres    false    287            �           0    0    office_dept_office_dept_seq    SEQUENCE OWNED BY     d   ALTER SEQUENCE public.office_dept_office_dept_seq OWNED BY public.mpr_master_department.dept_id_pk;
          public          postgres    false    319            @           1259    47890    office_office_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.office_office_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.office_office_id_pk_seq;
       public          postgres    false    290            �           0    0    office_office_id_pk_seq    SEQUENCE OWNED BY     ^   ALTER SEQUENCE public.office_office_id_pk_seq OWNED BY public.mpr_master_office.office_id_pk;
          public          postgres    false    320            A           1259    47892    profile_id_pk_seq    SEQUENCE     z   CREATE SEQUENCE public.profile_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.profile_id_pk_seq;
       public          postgres    false    312            �           0    0    profile_id_pk_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.profile_id_pk_seq OWNED BY public.mpr_semitrans_profile.profile_id_pk;
          public          postgres    false    321            B           1259    47894 !   scheme_dept_scheme_dept_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.scheme_dept_scheme_dept_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.scheme_dept_scheme_dept_id_pk_seq;
       public          postgres    false    291            �           0    0 !   scheme_dept_scheme_dept_id_pk_seq    SEQUENCE OWNED BY     r   ALTER SEQUENCE public.scheme_dept_scheme_dept_id_pk_seq OWNED BY public.mpr_master_scheme_dept.scheme_dept_id_pk;
          public          postgres    false    322            C           1259    47896    scheme_table_id_seq    SEQUENCE     |   CREATE SEQUENCE public.scheme_table_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.scheme_table_id_seq;
       public          postgres    false    292            �           0    0    scheme_table_id_seq    SEQUENCE OWNED BY     `   ALTER SEQUENCE public.scheme_table_id_seq OWNED BY public.mpr_master_scheme_table.scheme_id_pk;
          public          postgres    false    323            D           1259    47898    table_id_pk_seq    SEQUENCE     x   CREATE SEQUENCE public.table_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.table_id_pk_seq;
       public          postgres    false    202            �           0    0    table_id_pk_seq    SEQUENCE OWNED BY     N   ALTER SEQUENCE public.table_id_pk_seq OWNED BY public.mpr_master_table.id_pk;
          public          postgres    false    324            E           1259    47900 "   user_privilege_privilege_id_fk_seq    SEQUENCE     �   CREATE SEQUENCE public.user_privilege_privilege_id_fk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.user_privilege_privilege_id_fk_seq;
       public          postgres    false    313            �           0    0 "   user_privilege_privilege_id_fk_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.user_privilege_privilege_id_fk_seq OWNED BY public.mpr_semitrans_user_privilege.privilege_id_fk;
          public          postgres    false    325            F           1259    47902 "   user_privilege_user_type_id_fk_seq    SEQUENCE     �   CREATE SEQUENCE public.user_privilege_user_type_id_fk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.user_privilege_user_type_id_fk_seq;
       public          postgres    false    313            �           0    0 "   user_privilege_user_type_id_fk_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.user_privilege_user_type_id_fk_seq OWNED BY public.mpr_semitrans_user_privilege.user_type_id_fk;
          public          postgres    false    326            x           2604    47904 "   mpr_master_attri_table attri_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_attri_table ALTER COLUMN attri_id_pk SET DEFAULT nextval('public.att_table_id_seq'::regclass);
 Q   ALTER TABLE public.mpr_master_attri_table ALTER COLUMN attri_id_pk DROP DEFAULT;
       public          postgres    false    263    262            �           2604    47905     mpr_master_department dept_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_department ALTER COLUMN dept_id_pk SET DEFAULT nextval('public.office_dept_office_dept_seq'::regclass);
 O   ALTER TABLE public.mpr_master_department ALTER COLUMN dept_id_pk DROP DEFAULT;
       public          postgres    false    319    287            �           2604    47906 "   mpr_master_designation desig_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_designation ALTER COLUMN desig_id_pk SET DEFAULT nextval('public.designation_desig_id_pk_seq'::regclass);
 Q   ALTER TABLE public.mpr_master_designation ALTER COLUMN desig_id_pk DROP DEFAULT;
       public          postgres    false    272    271            �           2604    47907 "   mpr_master_district district_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_district ALTER COLUMN district_id_pk SET DEFAULT nextval('public.mpr_master_district_district_id_pk_seq'::regclass);
 Q   ALTER TABLE public.mpr_master_district ALTER COLUMN district_id_pk DROP DEFAULT;
       public          postgres    false    289    288            �           2604    47908 5   mpr_master_financial_year financial_year_master_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_financial_year ALTER COLUMN financial_year_master_id_pk SET DEFAULT nextval('public.financial_year_master_financial_year_master_id_pk_seq'::regclass);
 d   ALTER TABLE public.mpr_master_financial_year ALTER COLUMN financial_year_master_id_pk DROP DEFAULT;
       public          postgres    false    276    275            �           2604    47909 '   mpr_master_location_data location_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_location_data ALTER COLUMN location_id_pk SET DEFAULT nextval('public.location_data_location_id_pk_seq'::regclass);
 V   ALTER TABLE public.mpr_master_location_data ALTER COLUMN location_id_pk DROP DEFAULT;
       public          postgres    false    280    279            �           2604    47910    mpr_master_office office_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_office ALTER COLUMN office_id_pk SET DEFAULT nextval('public.office_office_id_pk_seq'::regclass);
 M   ALTER TABLE public.mpr_master_office ALTER COLUMN office_id_pk DROP DEFAULT;
       public          postgres    false    320    290            �           2604    47911 (   mpr_master_scheme_dept scheme_dept_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_scheme_dept ALTER COLUMN scheme_dept_id_pk SET DEFAULT nextval('public.scheme_dept_scheme_dept_id_pk_seq'::regclass);
 W   ALTER TABLE public.mpr_master_scheme_dept ALTER COLUMN scheme_dept_id_pk DROP DEFAULT;
       public          postgres    false    322    291            �           2604    47912 $   mpr_master_scheme_table scheme_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_scheme_table ALTER COLUMN scheme_id_pk SET DEFAULT nextval('public.scheme_table_id_seq'::regclass);
 S   ALTER TABLE public.mpr_master_scheme_table ALTER COLUMN scheme_id_pk DROP DEFAULT;
       public          postgres    false    323    292            �           2604    47913    mpr_master_state state_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_state ALTER COLUMN state_id_pk SET DEFAULT nextval('public.mpr_master_state_state_id_pk_seq'::regclass);
 K   ALTER TABLE public.mpr_master_state ALTER COLUMN state_id_pk DROP DEFAULT;
       public          postgres    false    294    293            �           2604    47914    mpr_master_subdiv sub_div_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_subdiv ALTER COLUMN sub_div_id_pk SET DEFAULT nextval('public.mpr_master_subdiv_sub_div_id_pk_seq'::regclass);
 N   ALTER TABLE public.mpr_master_subdiv ALTER COLUMN sub_div_id_pk DROP DEFAULT;
       public          postgres    false    296    295            �           2604    47915    mpr_master_table id_pk    DEFAULT     u   ALTER TABLE ONLY public.mpr_master_table ALTER COLUMN id_pk SET DEFAULT nextval('public.table_id_pk_seq'::regclass);
 E   ALTER TABLE public.mpr_master_table ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    324    202            t           2604    47916    mpr_scheme_anand id_pk    DEFAULT     r   ALTER TABLE ONLY public.mpr_scheme_anand ALTER COLUMN id_pk SET DEFAULT nextval('public.anand_id_seq'::regclass);
 E   ALTER TABLE public.mpr_scheme_anand ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    260    261                        2604    47917    mpr_scheme_awcc id_pk    DEFAULT     r   ALTER TABLE ONLY public.mpr_scheme_awcc ALTER COLUMN id_pk SET DEFAULT nextval('public."AWCC_id_seq"'::regclass);
 D   ALTER TABLE public.mpr_scheme_awcc ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    204    203                       2604    47918    mpr_scheme_baitarani id_pk    DEFAULT     |   ALTER TABLE ONLY public.mpr_scheme_baitarani ALTER COLUMN id_pk SET DEFAULT nextval('public."BAITARANI_id_seq"'::regclass);
 I   ALTER TABLE public.mpr_scheme_baitarani ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    206    205            �           2604    47919    mpr_scheme_doc id_pk    DEFAULT     n   ALTER TABLE ONLY public.mpr_scheme_doc ALTER COLUMN id_pk SET DEFAULT nextval('public.doc_id_seq'::regclass);
 C   ALTER TABLE public.mpr_scheme_doc ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    273    274                       2604    47920    mpr_scheme_dog id_pk    DEFAULT     p   ALTER TABLE ONLY public.mpr_scheme_dog ALTER COLUMN id_pk SET DEFAULT nextval('public."DOG_id_seq"'::regclass);
 C   ALTER TABLE public.mpr_scheme_dog ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    207    208                       2604    47921    mpr_scheme_doptuhd id_pk    DEFAULT     x   ALTER TABLE ONLY public.mpr_scheme_doptuhd ALTER COLUMN id_pk SET DEFAULT nextval('public."DOPTUHD_id_seq"'::regclass);
 G   ALTER TABLE public.mpr_scheme_doptuhd ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    210    209                       2604    47922    mpr_scheme_enrollment id_pk    DEFAULT     ~   ALTER TABLE ONLY public.mpr_scheme_enrollment ALTER COLUMN id_pk SET DEFAULT nextval('public."ENROLLMENT_id_seq"'::regclass);
 J   ALTER TABLE public.mpr_scheme_enrollment ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    212    211                       2604    47923    mpr_scheme_foodpro id_pk    DEFAULT     x   ALTER TABLE ONLY public.mpr_scheme_foodpro ALTER COLUMN id_pk SET DEFAULT nextval('public."FOODPRO_id_seq"'::regclass);
 G   ALTER TABLE public.mpr_scheme_foodpro ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    213    214                       2604    47924    mpr_scheme_gitanjali id_pk    DEFAULT     |   ALTER TABLE ONLY public.mpr_scheme_gitanjali ALTER COLUMN id_pk SET DEFAULT nextval('public."GITANJALI_id_seq"'::regclass);
 I   ALTER TABLE public.mpr_scheme_gitanjali ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    215    216                       2604    47925    mpr_scheme_immunisati id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_scheme_immunisati ALTER COLUMN id_pk SET DEFAULT nextval('public."IMMUNISATION_id_seq"'::regclass);
 J   ALTER TABLE public.mpr_scheme_immunisati ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    217    218                       2604    47926    mpr_scheme_infantd id_pk    DEFAULT     x   ALTER TABLE ONLY public.mpr_scheme_infantd ALTER COLUMN id_pk SET DEFAULT nextval('public."INFANTD_id_seq"'::regclass);
 G   ALTER TABLE public.mpr_scheme_infantd ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    220    219            #           2604    47927    mpr_scheme_inspection id_pk    DEFAULT     ~   ALTER TABLE ONLY public.mpr_scheme_inspection ALTER COLUMN id_pk SET DEFAULT nextval('public."INSPECTION_id_seq"'::regclass);
 J   ALTER TABLE public.mpr_scheme_inspection ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    221    222            '           2604    47928    mpr_scheme_instdel id_pk    DEFAULT     x   ALTER TABLE ONLY public.mpr_scheme_instdel ALTER COLUMN id_pk SET DEFAULT nextval('public."INSTDEL_id_seq"'::regclass);
 G   ALTER TABLE public.mpr_scheme_instdel ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    224    223            +           2604    47929    mpr_scheme_jaldjalb id_pk    DEFAULT     z   ALTER TABLE ONLY public.mpr_scheme_jaldjalb ALTER COLUMN id_pk SET DEFAULT nextval('public."JALDJALB_id_seq"'::regclass);
 H   ALTER TABLE public.mpr_scheme_jaldjalb ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    225    226            /           2604    47930    mpr_scheme_kanyas id_pk    DEFAULT     v   ALTER TABLE ONLY public.mpr_scheme_kanyas ALTER COLUMN id_pk SET DEFAULT nextval('public."KANYAS_id_seq"'::regclass);
 F   ALTER TABLE public.mpr_scheme_kanyas ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    227    228            3           2604    47931    mpr_scheme_karmatirth id_pk    DEFAULT        ALTER TABLE ONLY public.mpr_scheme_karmatirth ALTER COLUMN id_pk SET DEFAULT nextval('public."KARMATIRTHA_id_seq"'::regclass);
 J   ALTER TABLE public.mpr_scheme_karmatirth ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    230    229            7           2604    47932    mpr_scheme_kcc id_pk    DEFAULT     s   ALTER TABLE ONLY public.mpr_scheme_kcc ALTER COLUMN id_pk SET DEFAULT nextval('public."KCC_id_pk_seq"'::regclass);
 C   ALTER TABLE public.mpr_scheme_kcc ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    232    231            �           2604    47933    mpr_scheme_kcc_backup id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_scheme_kcc_backup ALTER COLUMN id_pk SET DEFAULT nextval('public.mpr_scheme_kcc_backup_id_pk_seq'::regclass);
 J   ALTER TABLE public.mpr_scheme_kcc_backup ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    298    297            �           2604    47934    mpr_scheme_kcc_draft id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_scheme_kcc_draft ALTER COLUMN id_pk SET DEFAULT nextval('public.mpr_scheme_kcc_draft_id_pk_seq'::regclass);
 I   ALTER TABLE public.mpr_scheme_kcc_draft ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    300    299            �           2604    47935    mpr_scheme_kishanm id_pk    DEFAULT     v   ALTER TABLE ONLY public.mpr_scheme_kishanm ALTER COLUMN id_pk SET DEFAULT nextval('public.kishanm_id_seq'::regclass);
 G   ALTER TABLE public.mpr_scheme_kishanm ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    277    278            �           2604    47936    mpr_scheme_kishanm_backup id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_scheme_kishanm_backup ALTER COLUMN id_pk SET DEFAULT nextval('public.mpr_scheme_kishanm_backup_id_pk_seq'::regclass);
 N   ALTER TABLE public.mpr_scheme_kishanm_backup ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    302    301            �           2604    47937    mpr_scheme_kishanm_draft id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_scheme_kishanm_draft ALTER COLUMN id_pk SET DEFAULT nextval('public.mpr_scheme_kishanm_draft_id_pk_seq'::regclass);
 M   ALTER TABLE public.mpr_scheme_kishanm_draft ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    304    303            <           2604    47938    mpr_scheme_landpp id_pk    DEFAULT     v   ALTER TABLE ONLY public.mpr_scheme_landpp ALTER COLUMN id_pk SET DEFAULT nextval('public."LANDPP_id_seq"'::regclass);
 F   ALTER TABLE public.mpr_scheme_landpp ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    234    233            G           2604    47939    mpr_scheme_maternald id_pk    DEFAULT     |   ALTER TABLE ONLY public.mpr_scheme_maternald ALTER COLUMN id_pk SET DEFAULT nextval('public."MATERNALD_id_seq"'::regclass);
 I   ALTER TABLE public.mpr_scheme_maternald ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    239    238            K           2604    47940    mpr_scheme_mci id_pk    DEFAULT     p   ALTER TABLE ONLY public.mpr_scheme_mci ALTER COLUMN id_pk SET DEFAULT nextval('public."MCI_id_seq"'::regclass);
 C   ALTER TABLE public.mpr_scheme_mci ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    241    240            �           2604    47941    mpr_scheme_mgnregs id_pk    DEFAULT     u   ALTER TABLE ONLY public.mpr_scheme_mgnregs ALTER COLUMN id_pk SET DEFAULT nextval('public.mgnres_id_seq'::regclass);
 G   ALTER TABLE public.mpr_scheme_mgnregs ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    283    284            �           2604    47942    mpr_scheme_mgnregs_backup id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_scheme_mgnregs_backup ALTER COLUMN id_pk SET DEFAULT nextval('public.mpr_scheme_mgnregs_backup_id_pk_seq'::regclass);
 N   ALTER TABLE public.mpr_scheme_mgnregs_backup ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    306    305            �           2604    47943    mpr_scheme_mgnregs_draft id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_scheme_mgnregs_draft ALTER COLUMN id_pk SET DEFAULT nextval('public.mpr_scheme_mgnregs_draft_id_pk_seq'::regclass);
 M   ALTER TABLE public.mpr_scheme_mgnregs_draft ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    308    307            P           2604    47944    mpr_scheme_minoritys id_pk    DEFAULT     |   ALTER TABLE ONLY public.mpr_scheme_minoritys ALTER COLUMN id_pk SET DEFAULT nextval('public."MINORITYS_id_seq"'::regclass);
 I   ALTER TABLE public.mpr_scheme_minoritys ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    242    243            T           2604    47945    mpr_scheme_poe id_pk    DEFAULT     p   ALTER TABLE ONLY public.mpr_scheme_poe ALTER COLUMN id_pk SET DEFAULT nextval('public."POE_id_seq"'::regclass);
 C   ALTER TABLE public.mpr_scheme_poe ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    245    244            \           2604    47946    mpr_scheme_saboojs id_pk    DEFAULT     x   ALTER TABLE ONLY public.mpr_scheme_saboojs ALTER COLUMN id_pk SET DEFAULT nextval('public."SABOOJS_id_seq"'::regclass);
 G   ALTER TABLE public.mpr_scheme_saboojs ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    249    248            X           2604    47947    mpr_scheme_saboojshre id_pk    DEFAULT        ALTER TABLE ONLY public.mpr_scheme_saboojshre ALTER COLUMN id_pk SET DEFAULT nextval('public."SABOOJSHREE_id_seq"'::regclass);
 J   ALTER TABLE public.mpr_scheme_saboojshre ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    246    247            `           2604    47948    mpr_scheme_safedsavel id_pk    DEFAULT     ~   ALTER TABLE ONLY public.mpr_scheme_safedsavel ALTER COLUMN id_pk SET DEFAULT nextval('public."SAFEDSAVEL_id_seq"'::regclass);
 J   ALTER TABLE public.mpr_scheme_safedsavel ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    251    250            d           2604    47949    mpr_scheme_samabythi id_pk    DEFAULT     |   ALTER TABLE ONLY public.mpr_scheme_samabythi ALTER COLUMN id_pk SET DEFAULT nextval('public."SAMABYTHI_id_seq"'::regclass);
 I   ALTER TABLE public.mpr_scheme_samabythi ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    252    253            h           2604    47950    mpr_scheme_sikshas id_pk    DEFAULT     x   ALTER TABLE ONLY public.mpr_scheme_sikshas ALTER COLUMN id_pk SET DEFAULT nextval('public."SIKSHAS_id_seq"'::regclass);
 G   ALTER TABLE public.mpr_scheme_sikshas ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    254    255            l           2604    47951    mpr_scheme_svskp id_pk    DEFAULT     t   ALTER TABLE ONLY public.mpr_scheme_svskp ALTER COLUMN id_pk SET DEFAULT nextval('public."SVSKP_id_seq"'::regclass);
 E   ALTER TABLE public.mpr_scheme_svskp ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    256    257            p           2604    47952    mpr_scheme_yubas id_pk    DEFAULT     t   ALTER TABLE ONLY public.mpr_scheme_yubas ALTER COLUMN id_pk SET DEFAULT nextval('public."YUBAS_id_seq"'::regclass);
 E   ALTER TABLE public.mpr_scheme_yubas ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    259    258            {           2604    47953 )   mpr_semitrans_check_first_user user_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_semitrans_check_first_user ALTER COLUMN user_id_pk SET DEFAULT nextval('public."check_First_User_user_id_pk_seq"'::regclass);
 X   ALTER TABLE public.mpr_semitrans_check_first_user ALTER COLUMN user_id_pk DROP DEFAULT;
       public          postgres    false    268    266            ~           2604    47954 A   mpr_semitrans_dba_financial_range dba_financial_range_table_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_semitrans_dba_financial_range ALTER COLUMN dba_financial_range_table_id_pk SET DEFAULT nextval('public.dba_financial_range_table_dba_financial_range_table_id_pk_seq'::regclass);
 p   ALTER TABLE public.mpr_semitrans_dba_financial_range ALTER COLUMN dba_financial_range_table_id_pk DROP DEFAULT;
       public          postgres    false    270    269            D           2604    47955    mpr_semitrans_login login_id_pk    DEFAULT     }   ALTER TABLE ONLY public.mpr_semitrans_login ALTER COLUMN login_id_pk SET DEFAULT nextval('public."Login_id_seq"'::regclass);
 N   ALTER TABLE public.mpr_semitrans_login ALTER COLUMN login_id_pk DROP DEFAULT;
       public          postgres    false    236    235            �           2604    47956 #   mpr_semitrans_profile profile_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_semitrans_profile ALTER COLUMN profile_id_pk SET DEFAULT nextval('public.profile_id_pk_seq'::regclass);
 R   ALTER TABLE public.mpr_semitrans_profile ALTER COLUMN profile_id_pk DROP DEFAULT;
       public          postgres    false    321    312            z           2604    47957    mpr_trans_audit_log audit_id_pk    DEFAULT        ALTER TABLE ONLY public.mpr_trans_audit_log ALTER COLUMN audit_id_pk SET DEFAULT nextval('public.audit_log_id_seq'::regclass);
 N   ALTER TABLE public.mpr_trans_audit_log ALTER COLUMN audit_id_pk DROP DEFAULT;
       public          postgres    false    265    264            �           2604    47958 #   mpr_trans_fundalloc fundalloc_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_trans_fundalloc ALTER COLUMN fundalloc_id_pk SET DEFAULT nextval('public.mpr_trans_fundalloc_fundalloc_id_pk_seq'::regclass);
 R   ALTER TABLE public.mpr_trans_fundalloc ALTER COLUMN fundalloc_id_pk DROP DEFAULT;
       public          postgres    false    316    315            �           2604    47959 (   mpr_trans_meeting_schedule meeting_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_trans_meeting_schedule ALTER COLUMN meeting_id_pk SET DEFAULT nextval('public.meeting_schedule_id_seq'::regclass);
 W   ALTER TABLE public.mpr_trans_meeting_schedule ALTER COLUMN meeting_id_pk DROP DEFAULT;
       public          postgres    false    282    281            �           2604    47960 )   mpr_trans_notification notification_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_trans_notification ALTER COLUMN notification_id_pk SET DEFAULT nextval('public.notifications_id_seq'::regclass);
 X   ALTER TABLE public.mpr_trans_notification ALTER COLUMN notification_id_pk DROP DEFAULT;
       public          postgres    false    318    317            k          0    47675    mpr_master_attri_table 
   TABLE DATA           d   COPY public.mpr_master_attri_table (attri_id_pk, scheme_id_fk, attri_name, actual_name) FROM stdin;
    public          postgres    false    262   5
      �          0    47746    mpr_master_block 
   TABLE DATA           p   COPY public.mpr_master_block (block_id_pk, block_name, block_lg_code, subdiv_id_fk, location_id_fk) FROM stdin;
    public          postgres    false    285   �      �          0    47751    mpr_master_dashboard_info 
   TABLE DATA           o   COPY public.mpr_master_dashboard_info (dashboard_id_pk, sch_tab_name, attr_target, attri_progress) FROM stdin;
    public          postgres    false    286   �      �          0    47754    mpr_master_department 
   TABLE DATA           `   COPY public.mpr_master_department (dept_id_pk, dept_name, short_name, office_id_fk) FROM stdin;
    public          postgres    false    287   x      t          0    47702    mpr_master_designation 
   TABLE DATA           U   COPY public.mpr_master_designation (desig_id_pk, desig_name, dept_id_fk) FROM stdin;
    public          postgres    false    271   �      �          0    47758    mpr_master_district 
   TABLE DATA           w   COPY public.mpr_master_district (district_id_pk, district_name, state_id_fk, dist_lg_code, location_id_fk) FROM stdin;
    public          postgres    false    288          x          0    47715    mpr_master_financial_year 
   TABLE DATA           [   COPY public.mpr_master_financial_year (financial_year_master_id_pk, year_type) FROM stdin;
    public          postgres    false    275   P      |          0    47728    mpr_master_location_data 
   TABLE DATA           `   COPY public.mpr_master_location_data (location_area, location_code, location_id_pk) FROM stdin;
    public          postgres    false    279   �      �          0    47765    mpr_master_office 
   TABLE DATA           F   COPY public.mpr_master_office (office_id_pk, office_name) FROM stdin;
    public          postgres    false    290   �      �          0    47768    mpr_master_scheme_dept 
   TABLE DATA           ]   COPY public.mpr_master_scheme_dept (scheme_dept_id_pk, scheme_id_fk, dept_id_fk) FROM stdin;
    public          postgres    false    291   �      �          0    47772    mpr_master_scheme_table 
   TABLE DATA           t   COPY public.mpr_master_scheme_table (scheme_id_pk, short_name, name, financial_year_id_fk, desig_id_fk) FROM stdin;
    public          postgres    false    292   �       �          0    47775    mpr_master_state 
   TABLE DATA           C   COPY public.mpr_master_state (state_id_pk, state_name) FROM stdin;
    public          postgres    false    293   #      �          0    47780    mpr_master_subdiv 
   TABLE DATA           y   COPY public.mpr_master_subdiv (sub_div_id_pk, sub_div_name, sub_div_lg_code, district_id_fk, location_id_fk) FROM stdin;
    public          postgres    false    295   H#      /          0    47429    mpr_master_table 
   TABLE DATA           l   COPY public.mpr_master_table (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at) FROM stdin;
    public          postgres    false    202   �#      i          0    47667    mpr_scheme_anand 
   TABLE DATA           �   COPY public.mpr_scheme_anand (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, total_no_of_shgs_formed_in_the_district, total_no_of_shgs_got_credit_linkage, location_code) FROM stdin;
    public          postgres    false    260   �#      0          0    47434    mpr_scheme_awcc 
   TABLE DATA           �   COPY public.mpr_scheme_awcc (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_icds_cenetres_devoid_of_own_building, no_of_new_icds_building_constructed, no_of_icds_centres_running_in_open_space, location_code) FROM stdin;
    public          postgres    false    203   �#      2          0    47442    mpr_scheme_baitarani 
   TABLE DATA           �   COPY public.mpr_scheme_baitarani (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_burning_ghats_taken_up, completed_till_date, location_code) FROM stdin;
    public          postgres    false    205   �#      v          0    47707    mpr_scheme_doc 
   TABLE DATA           �   COPY public.mpr_scheme_doc (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, target_for_distribution_of_poultry, no_of_poultry_actually_distributed, location_code) FROM stdin;
    public          postgres    false    273   �#      4          0    47450    mpr_scheme_dog 
   TABLE DATA           �   COPY public.mpr_scheme_dog (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, target_for_distribution_of_goats, no_of_goats_actually_distributed, no_of_beneficiaries_selected, no_of_beneficiaries_approved, location_code) FROM stdin;
    public          postgres    false    207   $      6          0    47457    mpr_scheme_doptuhd 
   TABLE DATA           �   COPY public.mpr_scheme_doptuhd (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_power_tiller_distributed, location_code) FROM stdin;
    public          postgres    false    209   7$      8          0    47465    mpr_scheme_enrollment 
   TABLE DATA             COPY public.mpr_scheme_enrollment (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, gross_enrolment_ratio_primary, net_enrolment_ratio_primary, gross_enrolment_ratio_upper_primary, net_enrolment_ratio_upper_primary, location_code) FROM stdin;
    public          postgres    false    211   T$      :          0    47473    mpr_scheme_foodpro 
   TABLE DATA           �   COPY public.mpr_scheme_foodpro (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, status_of_pocurement, target_of_pocurement, location_code) FROM stdin;
    public          postgres    false    213   q$      <          0    47481    mpr_scheme_gitanjali 
   TABLE DATA           �   COPY public.mpr_scheme_gitanjali (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_case_sanctioned_under_gitanjali, date_of_inception, no_of_houses_constructed_under_gitanjali, location_code) FROM stdin;
    public          postgres    false    215   �$      >          0    47489    mpr_scheme_immunisati 
   TABLE DATA           �   COPY public.mpr_scheme_immunisati (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, per_of_fully_immunised_child, location_code) FROM stdin;
    public          postgres    false    217   �$      @          0    47497    mpr_scheme_infantd 
   TABLE DATA           �   COPY public.mpr_scheme_infantd (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, total_no_of_infant_death, location_code) FROM stdin;
    public          postgres    false    219   �$      B          0    47505    mpr_scheme_inspection 
   TABLE DATA           �   COPY public.mpr_scheme_inspection (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_homes_inspected_by_senior_officers, designation_of_officers, location_code) FROM stdin;
    public          postgres    false    221   �$      D          0    47513    mpr_scheme_instdel 
   TABLE DATA           �   COPY public.mpr_scheme_instdel (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, per_of_institutional_delivery, location_code) FROM stdin;
    public          postgres    false    223   %      F          0    47521    mpr_scheme_jaldjalb 
   TABLE DATA           �   COPY public.mpr_scheme_jaldjalb (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, date_of_inspection, no_of_ponds_excavated_under_jal_dharo_jal_bharo, no_of_ponds_fish_production_started, location_code) FROM stdin;
    public          postgres    false    225   %      H          0    47529    mpr_scheme_kanyas 
   TABLE DATA           `  COPY public.mpr_scheme_kanyas (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_k1_cases_application_received, no_of_k1_cases_application_sanctioned, no_of_k1_cases_application_disbursed, no_of_k2_cases_application_received, no_of_k2_cases_application_sanctioned, no_of_k2_cases_application_disbursed, location_code) FROM stdin;
    public          postgres    false    227   <%      J          0    47537    mpr_scheme_karmatirth 
   TABLE DATA           &  COPY public.mpr_scheme_karmatirth (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_karmatirtha_sanctioned, no_of_karmatirtha_for_which_construction_started, no_of_karmatirtha_for_which_construction_completed, no_of_karmatirth_operationalised, location_code) FROM stdin;
    public          postgres    false    229   Y%      L          0    47545    mpr_scheme_kcc 
   TABLE DATA           �   COPY public.mpr_scheme_kcc (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_agricultrural_families_in_the_district, no_of_agricultural_families_covered_by_kcc, kcc_coverage_percentage, location_code) FROM stdin;
    public          postgres    false    231   v%      �          0    47787    mpr_scheme_kcc_backup 
   TABLE DATA           �   COPY public.mpr_scheme_kcc_backup (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_agricultrural_families_in_the_district, no_of_agricultural_families_covered_by_kcc, kcc_coverage_percentage, location_code) FROM stdin;
    public          postgres    false    297   �&      �          0    47795    mpr_scheme_kcc_draft 
   TABLE DATA           �   COPY public.mpr_scheme_kcc_draft (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_agricultrural_families_in_the_district, no_of_agricultural_families_covered_by_kcc, kcc_coverage_percentage, location_code) FROM stdin;
    public          postgres    false    299   0(      z          0    47720    mpr_scheme_kishanm 
   TABLE DATA           �   COPY public.mpr_scheme_kishanm (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_kishan_mandis_sanctioned, no_of_kishan_mandis_operational, operationality, location_code) FROM stdin;
    public          postgres    false    277   M(      �          0    47803    mpr_scheme_kishanm_backup 
   TABLE DATA           �   COPY public.mpr_scheme_kishanm_backup (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_kishan_mandis_sanctioned, no_of_kishan_mandis_operational, operationality, location_code) FROM stdin;
    public          postgres    false    301   L)      �          0    47811    mpr_scheme_kishanm_draft 
   TABLE DATA           �   COPY public.mpr_scheme_kishanm_draft (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_kishan_mandis_sanctioned, no_of_kishan_mandis_operational, operationality, location_code) FROM stdin;
    public          postgres    false    303   O*      N          0    47554    mpr_scheme_landpp 
   TABLE DATA           �   COPY public.mpr_scheme_landpp (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_land_permission_pending, projects_name, location_code) FROM stdin;
    public          postgres    false    233   l*      S          0    47578    mpr_scheme_maternald 
   TABLE DATA           �   COPY public.mpr_scheme_maternald (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, total_no_of_maternal_death, location_code) FROM stdin;
    public          postgres    false    238   �*      U          0    47586    mpr_scheme_mci 
   TABLE DATA           �   COPY public.mpr_scheme_mci (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, percentage_of_malnourished_child, location_code) FROM stdin;
    public          postgres    false    240   �*      �          0    47738    mpr_scheme_mgnregs 
   TABLE DATA             COPY public.mpr_scheme_mgnregs (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_person_days_generated_under_mgnregs, average_no_of_persondays_generated_per_household, expenditure_of_the_session, per_of_labour_budget_achieved, location_code) FROM stdin;
    public          postgres    false    283   �*      �          0    47819    mpr_scheme_mgnregs_backup 
   TABLE DATA             COPY public.mpr_scheme_mgnregs_backup (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_person_days_generated_under_mgnregs, average_no_of_persondays_generated_per_household, expenditure_of_the_session, per_of_labour_budget_achieved, location_code) FROM stdin;
    public          postgres    false    305   �*      �          0    47827    mpr_scheme_mgnregs_draft 
   TABLE DATA             COPY public.mpr_scheme_mgnregs_draft (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_person_days_generated_under_mgnregs, average_no_of_persondays_generated_per_household, expenditure_of_the_session, per_of_labour_budget_achieved, location_code) FROM stdin;
    public          postgres    false    307   �*      W          0    47595    mpr_scheme_minoritys 
   TABLE DATA             COPY public.mpr_scheme_minoritys (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, target_for_scholarship_distribution_aikyashree, no_of_students_distributed_scholarship, no_of_application_uploaded_under_aikyashree_scholarship, location_code) FROM stdin;
    public          postgres    false    242   +      Y          0    47603    mpr_scheme_poe 
   TABLE DATA           �   COPY public.mpr_scheme_poe (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, target, production, location_code) FROM stdin;
    public          postgres    false    244   7+      ]          0    47619    mpr_scheme_saboojs 
   TABLE DATA           �   COPY public.mpr_scheme_saboojs (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, target_for_distribution_of_cycles, cycle_distributed_till_date, location_code) FROM stdin;
    public          postgres    false    248   T+      [          0    47611    mpr_scheme_saboojshre 
   TABLE DATA           �   COPY public.mpr_scheme_saboojshre (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_children_born_since_inception_of_the_project_in_the_dist, no_of_tree_sapling_handed_over_to_the_new_born_children, location_code) FROM stdin;
    public          postgres    false    246   q+      _          0    47627    mpr_scheme_safedsavel 
   TABLE DATA           �   COPY public.mpr_scheme_safedsavel (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_accidents, no_of_death, no_of_insured_person, location_code) FROM stdin;
    public          postgres    false    250   �+      a          0    47635    mpr_scheme_samabythi 
   TABLE DATA           �   COPY public.mpr_scheme_samabythi (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_beneficiaries_provided_benefit_till_date, till_date, location_code) FROM stdin;
    public          postgres    false    252   �+      c          0    47643    mpr_scheme_sikshas 
   TABLE DATA             COPY public.mpr_scheme_sikshas (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, targetted_no_of_sc_st_student_under_sikshashree, no_of_students_getting_benefit_under_sikshashree, no_of_applications_uploaded_under_sikshashree, location_code) FROM stdin;
    public          postgres    false    254   �+      e          0    47651    mpr_scheme_svskp 
   TABLE DATA           �   COPY public.mpr_scheme_svskp (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_project_sponsored_under_svskp, no_of_project_sanctioned_under_svskp, location_code) FROM stdin;
    public          postgres    false    256   �+      g          0    47659    mpr_scheme_yubas 
   TABLE DATA           �   COPY public.mpr_scheme_yubas (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at, no_of_unemployed_youth_registered_under_yubashree, no_of_unemployed_registered_youth_getting_monthly_assistance, location_code) FROM stdin;
    public          postgres    false    258   ,      o          0    47687    mpr_semitrans_check_first_user 
   TABLE DATA           u   COPY public.mpr_semitrans_check_first_user (user_id_pk, check_if_first_user, check_profile_updated_once) FROM stdin;
    public          postgres    false    266   ,      r          0    47696 !   mpr_semitrans_dba_financial_range 
   TABLE DATA           y   COPY public.mpr_semitrans_dba_financial_range (dba_financial_range_table_id_pk, financial_year_range, month) FROM stdin;
    public          postgres    false    269   O,      �          0    47835    mpr_semitrans_location_mapping 
   TABLE DATA           q   COPY public.mpr_semitrans_location_mapping (location_mapping_id_pk, user_type_id_fk, location_id_fk) FROM stdin;
    public          postgres    false    309   u,      P          0    47562    mpr_semitrans_login 
   TABLE DATA           �   COPY public.mpr_semitrans_login (username, password, user_type_id_fk, location_code, login_id_pk, active_status, dept_id_fk, office_id_fk, desig_id_fk) FROM stdin;
    public          postgres    false    235   -      �          0    47842    mpr_semitrans_privilege 
   TABLE DATA           �   COPY public.mpr_semitrans_privilege (privilege_id_pk, parent, link, "order", page_name, active_status, view_sidebar) FROM stdin;
    public          postgres    false    311   �-      �          0    47850    mpr_semitrans_profile 
   TABLE DATA           �   COPY public.mpr_semitrans_profile (username, f_name, m_name, l_name, mobile, email, district, image, profile_id_pk, desig, office, dept) FROM stdin;
    public          postgres    false    312   �/      �          0    47863    mpr_semitrans_user_privilege 
   TABLE DATA           x   COPY public.mpr_semitrans_user_privilege (user_priv_id_pk, privilege_id_fk, user_type_id_fk, active_status) FROM stdin;
    public          postgres    false    313   nl      �          0    47867    mpr_semitrans_user_type 
   TABLE DATA           X   COPY public.mpr_semitrans_user_type (user_type_id_pk, desig, active_status) FROM stdin;
    public          postgres    false    314   �m      m          0    47681    mpr_trans_audit_log 
   TABLE DATA           �   COPY public.mpr_trans_audit_log (section, action, request, comment, ip_addr, audit_id_pk, login_id_fk, "timestamp") FROM stdin;
    public          postgres    false    264   Kn      �          0    47874    mpr_trans_fundalloc 
   TABLE DATA           �   COPY public.mpr_trans_fundalloc (fundalloc_id_pk, location_id_fk, scheme_id_fk, funds_allocated, funds_utilised, threshold) FROM stdin;
    public          postgres    false    315   �{      ~          0    47733    mpr_trans_meeting_schedule 
   TABLE DATA           Y   COPY public.mpr_trans_meeting_schedule (meeting_id_pk, start_time, end_time) FROM stdin;
    public          postgres    false    281   �{      �          0    47879    mpr_trans_notification 
   TABLE DATA           �   COPY public.mpr_trans_notification (audience_id, notification_text, notification_id_pk, "timestamp", notification_head, active_status) FROM stdin;
    public          postgres    false    317   |      �           0    0    AWCC_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."AWCC_id_seq"', 1, false);
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
          public          postgres    false    230            �           0    0    KCC_id_pk_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."KCC_id_pk_seq"', 23, true);
          public          postgres    false    232            �           0    0    LANDPP_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."LANDPP_id_seq"', 1, false);
          public          postgres    false    234            �           0    0    Login_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Login_id_seq"', 6, true);
          public          postgres    false    236                        0    0    Login_user_type_id_fk_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."Login_user_type_id_fk_seq"', 1, false);
          public          postgres    false    237                       0    0    MATERNALD_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."MATERNALD_id_seq"', 1, false);
          public          postgres    false    239                       0    0 
   MCI_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."MCI_id_seq"', 1, false);
          public          postgres    false    241                       0    0    MINORITYS_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."MINORITYS_id_seq"', 1, false);
          public          postgres    false    243                       0    0 
   POE_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."POE_id_seq"', 1, false);
          public          postgres    false    245                       0    0    SABOOJSHREE_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."SABOOJSHREE_id_seq"', 1, false);
          public          postgres    false    247                       0    0    SABOOJS_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."SABOOJS_id_seq"', 1, false);
          public          postgres    false    249                       0    0    SAFEDSAVEL_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."SAFEDSAVEL_id_seq"', 1, false);
          public          postgres    false    251                       0    0    SAMABYTHI_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."SAMABYTHI_id_seq"', 1, false);
          public          postgres    false    253            	           0    0    SIKSHAS_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."SIKSHAS_id_seq"', 1, false);
          public          postgres    false    255            
           0    0    SVSKP_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."SVSKP_id_seq"', 1, false);
          public          postgres    false    257                       0    0    YUBAS_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."YUBAS_id_seq"', 1, false);
          public          postgres    false    259                       0    0    anand_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.anand_id_seq', 1, true);
          public          postgres    false    261                       0    0    att_table_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.att_table_id_seq', 1, false);
          public          postgres    false    263                       0    0    audit_log_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.audit_log_id_seq', 426, true);
          public          postgres    false    265                       0    0 (   check_First_User_check_if_first_user_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public."check_First_User_check_if_first_user_seq"', 1, true);
          public          postgres    false    267                       0    0    check_First_User_user_id_pk_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."check_First_User_user_id_pk_seq"', 1, false);
          public          postgres    false    268                       0    0 =   dba_financial_range_table_dba_financial_range_table_id_pk_seq    SEQUENCE SET     k   SELECT pg_catalog.setval('public.dba_financial_range_table_dba_financial_range_table_id_pk_seq', 1, true);
          public          postgres    false    270                       0    0    designation_desig_id_pk_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.designation_desig_id_pk_seq', 1, false);
          public          postgres    false    272                       0    0 
   doc_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.doc_id_seq', 1, false);
          public          postgres    false    274                       0    0 5   financial_year_master_financial_year_master_id_pk_seq    SEQUENCE SET     d   SELECT pg_catalog.setval('public.financial_year_master_financial_year_master_id_pk_seq', 1, false);
          public          postgres    false    276                       0    0    kishanm_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.kishanm_id_seq', 18, true);
          public          postgres    false    278                       0    0     location_data_location_id_pk_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.location_data_location_id_pk_seq', 1, false);
          public          postgres    false    280                       0    0    meeting_schedule_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.meeting_schedule_id_seq', 2, true);
          public          postgres    false    282                       0    0    mgnres_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.mgnres_id_seq', 1, false);
          public          postgres    false    284                       0    0 &   mpr_master_district_district_id_pk_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.mpr_master_district_district_id_pk_seq', 1, false);
          public          postgres    false    289                       0    0     mpr_master_state_state_id_pk_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.mpr_master_state_state_id_pk_seq', 1, false);
          public          postgres    false    294                       0    0 #   mpr_master_subdiv_sub_div_id_pk_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.mpr_master_subdiv_sub_div_id_pk_seq', 1, false);
          public          postgres    false    296                       0    0    mpr_scheme_kcc_backup_id_pk_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.mpr_scheme_kcc_backup_id_pk_seq', 25, true);
          public          postgres    false    298                       0    0    mpr_scheme_kcc_draft_id_pk_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.mpr_scheme_kcc_draft_id_pk_seq', 20, true);
          public          postgres    false    300                       0    0 #   mpr_scheme_kishanm_backup_id_pk_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.mpr_scheme_kishanm_backup_id_pk_seq', 17, true);
          public          postgres    false    302                       0    0 "   mpr_scheme_kishanm_draft_id_pk_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.mpr_scheme_kishanm_draft_id_pk_seq', 17, true);
          public          postgres    false    304                        0    0 #   mpr_scheme_mgnregs_backup_id_pk_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.mpr_scheme_mgnregs_backup_id_pk_seq', 1, false);
          public          postgres    false    306            !           0    0 "   mpr_scheme_mgnregs_draft_id_pk_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.mpr_scheme_mgnregs_draft_id_pk_seq', 1, false);
          public          postgres    false    308            "           0    0 9   mpr_semitrans_location_mapping_location_mapping_id_pk_seq    SEQUENCE SET     g   SELECT pg_catalog.setval('public.mpr_semitrans_location_mapping_location_mapping_id_pk_seq', 5, true);
          public          postgres    false    310            #           0    0 '   mpr_trans_fundalloc_fundalloc_id_pk_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.mpr_trans_fundalloc_fundalloc_id_pk_seq', 2, true);
          public          postgres    false    316            $           0    0    notifications_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.notifications_id_seq', 11, true);
          public          postgres    false    318            %           0    0    office_dept_office_dept_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.office_dept_office_dept_seq', 1, false);
          public          postgres    false    319            &           0    0    office_office_id_pk_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.office_office_id_pk_seq', 1, false);
          public          postgres    false    320            '           0    0    profile_id_pk_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.profile_id_pk_seq', 7, true);
          public          postgres    false    321            (           0    0 !   scheme_dept_scheme_dept_id_pk_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.scheme_dept_scheme_dept_id_pk_seq', 1, false);
          public          postgres    false    322            )           0    0    scheme_table_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.scheme_table_id_seq', 31, true);
          public          postgres    false    323            *           0    0    table_id_pk_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.table_id_pk_seq', 1, false);
          public          postgres    false    324            +           0    0 "   user_privilege_privilege_id_fk_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.user_privilege_privilege_id_fk_seq', 1, false);
          public          postgres    false    325            ,           0    0 "   user_privilege_user_type_id_fk_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.user_privilege_user_type_id_fk_seq', 1, false);
          public          postgres    false    326            �           2606    47963    mpr_scheme_awcc AWCC_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.mpr_scheme_awcc
    ADD CONSTRAINT "AWCC_pkey" PRIMARY KEY (id_pk);
 E   ALTER TABLE ONLY public.mpr_scheme_awcc DROP CONSTRAINT "AWCC_pkey";
       public            postgres    false    203            �           2606    47965 #   mpr_scheme_baitarani BAITARANI_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.mpr_scheme_baitarani
    ADD CONSTRAINT "BAITARANI_pkey" PRIMARY KEY (id_pk);
 O   ALTER TABLE ONLY public.mpr_scheme_baitarani DROP CONSTRAINT "BAITARANI_pkey";
       public            postgres    false    205            �           2606    47967    mpr_scheme_dog DOG_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.mpr_scheme_dog
    ADD CONSTRAINT "DOG_pkey" PRIMARY KEY (id_pk);
 C   ALTER TABLE ONLY public.mpr_scheme_dog DROP CONSTRAINT "DOG_pkey";
       public            postgres    false    207            �           2606    47969    mpr_scheme_doptuhd DOPTUHD_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.mpr_scheme_doptuhd
    ADD CONSTRAINT "DOPTUHD_pkey" PRIMARY KEY (id_pk);
 K   ALTER TABLE ONLY public.mpr_scheme_doptuhd DROP CONSTRAINT "DOPTUHD_pkey";
       public            postgres    false    209            �           2606    47971 %   mpr_scheme_enrollment ENROLLMENT_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.mpr_scheme_enrollment
    ADD CONSTRAINT "ENROLLMENT_pkey" PRIMARY KEY (id_pk);
 Q   ALTER TABLE ONLY public.mpr_scheme_enrollment DROP CONSTRAINT "ENROLLMENT_pkey";
       public            postgres    false    211            �           2606    47973    mpr_scheme_foodpro FOODPRO_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.mpr_scheme_foodpro
    ADD CONSTRAINT "FOODPRO_pkey" PRIMARY KEY (id_pk);
 K   ALTER TABLE ONLY public.mpr_scheme_foodpro DROP CONSTRAINT "FOODPRO_pkey";
       public            postgres    false    213            �           2606    47975 #   mpr_scheme_gitanjali GITANJALI_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.mpr_scheme_gitanjali
    ADD CONSTRAINT "GITANJALI_pkey" PRIMARY KEY (id_pk);
 O   ALTER TABLE ONLY public.mpr_scheme_gitanjali DROP CONSTRAINT "GITANJALI_pkey";
       public            postgres    false    215            �           2606    47977 '   mpr_scheme_immunisati IMMUNISATION_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.mpr_scheme_immunisati
    ADD CONSTRAINT "IMMUNISATION_pkey" PRIMARY KEY (id_pk);
 S   ALTER TABLE ONLY public.mpr_scheme_immunisati DROP CONSTRAINT "IMMUNISATION_pkey";
       public            postgres    false    217            �           2606    47979    mpr_scheme_infantd INFANTD_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.mpr_scheme_infantd
    ADD CONSTRAINT "INFANTD_pkey" PRIMARY KEY (id_pk);
 K   ALTER TABLE ONLY public.mpr_scheme_infantd DROP CONSTRAINT "INFANTD_pkey";
       public            postgres    false    219            �           2606    47981 %   mpr_scheme_inspection INSPECTION_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.mpr_scheme_inspection
    ADD CONSTRAINT "INSPECTION_pkey" PRIMARY KEY (id_pk);
 Q   ALTER TABLE ONLY public.mpr_scheme_inspection DROP CONSTRAINT "INSPECTION_pkey";
       public            postgres    false    221            �           2606    47983    mpr_scheme_instdel INSTDEL_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.mpr_scheme_instdel
    ADD CONSTRAINT "INSTDEL_pkey" PRIMARY KEY (id_pk);
 K   ALTER TABLE ONLY public.mpr_scheme_instdel DROP CONSTRAINT "INSTDEL_pkey";
       public            postgres    false    223            �           2606    47985 !   mpr_scheme_jaldjalb JALDJALB_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.mpr_scheme_jaldjalb
    ADD CONSTRAINT "JALDJALB_pkey" PRIMARY KEY (id_pk);
 M   ALTER TABLE ONLY public.mpr_scheme_jaldjalb DROP CONSTRAINT "JALDJALB_pkey";
       public            postgres    false    225            �           2606    47987    mpr_scheme_kanyas KANYAS_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.mpr_scheme_kanyas
    ADD CONSTRAINT "KANYAS_pkey" PRIMARY KEY (id_pk);
 I   ALTER TABLE ONLY public.mpr_scheme_kanyas DROP CONSTRAINT "KANYAS_pkey";
       public            postgres    false    227            �           2606    47989 %   mpr_scheme_karmatirth KARMATIRTH_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.mpr_scheme_karmatirth
    ADD CONSTRAINT "KARMATIRTH_pkey" PRIMARY KEY (id_pk);
 Q   ALTER TABLE ONLY public.mpr_scheme_karmatirth DROP CONSTRAINT "KARMATIRTH_pkey";
       public            postgres    false    229            �           2606    47991    mpr_scheme_kcc KCC_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.mpr_scheme_kcc
    ADD CONSTRAINT "KCC_pkey" PRIMARY KEY (id_pk);
 C   ALTER TABLE ONLY public.mpr_scheme_kcc DROP CONSTRAINT "KCC_pkey";
       public            postgres    false    231            �           2606    47993    mpr_scheme_landpp LANDPP_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.mpr_scheme_landpp
    ADD CONSTRAINT "LANDPP_pkey" PRIMARY KEY (id_pk);
 I   ALTER TABLE ONLY public.mpr_scheme_landpp DROP CONSTRAINT "LANDPP_pkey";
       public            postgres    false    233            �           2606    47995    mpr_semitrans_login Login_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.mpr_semitrans_login
    ADD CONSTRAINT "Login_pkey" PRIMARY KEY (login_id_pk);
 J   ALTER TABLE ONLY public.mpr_semitrans_login DROP CONSTRAINT "Login_pkey";
       public            postgres    false    235            �           2606    47997 0   mpr_semitrans_login Login_username_username1_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_login
    ADD CONSTRAINT "Login_username_username1_key" UNIQUE (username) INCLUDE (username);
 \   ALTER TABLE ONLY public.mpr_semitrans_login DROP CONSTRAINT "Login_username_username1_key";
       public            postgres    false    235    235            �           2606    47999 #   mpr_scheme_maternald MATERNALD_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.mpr_scheme_maternald
    ADD CONSTRAINT "MATERNALD_pkey" PRIMARY KEY (id_pk);
 O   ALTER TABLE ONLY public.mpr_scheme_maternald DROP CONSTRAINT "MATERNALD_pkey";
       public            postgres    false    238            �           2606    48001    mpr_scheme_mci MCI_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.mpr_scheme_mci
    ADD CONSTRAINT "MCI_pkey" PRIMARY KEY (id_pk);
 C   ALTER TABLE ONLY public.mpr_scheme_mci DROP CONSTRAINT "MCI_pkey";
       public            postgres    false    240            (           2606    48003    mpr_scheme_mgnregs MGNREGS_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.mpr_scheme_mgnregs
    ADD CONSTRAINT "MGNREGS_pkey" PRIMARY KEY (id_pk);
 K   ALTER TABLE ONLY public.mpr_scheme_mgnregs DROP CONSTRAINT "MGNREGS_pkey";
       public            postgres    false    283            �           2606    48005 #   mpr_scheme_minoritys MINORITYS_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.mpr_scheme_minoritys
    ADD CONSTRAINT "MINORITYS_pkey" PRIMARY KEY (id_pk);
 O   ALTER TABLE ONLY public.mpr_scheme_minoritys DROP CONSTRAINT "MINORITYS_pkey";
       public            postgres    false    242            �           2606    48007    mpr_scheme_poe POE_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.mpr_scheme_poe
    ADD CONSTRAINT "POE_pkey" PRIMARY KEY (id_pk);
 C   ALTER TABLE ONLY public.mpr_scheme_poe DROP CONSTRAINT "POE_pkey";
       public            postgres    false    244            Q           2606    48009 &   mpr_semitrans_privilege Privilege_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.mpr_semitrans_privilege
    ADD CONSTRAINT "Privilege_pkey" PRIMARY KEY (privilege_id_pk);
 R   ALTER TABLE ONLY public.mpr_semitrans_privilege DROP CONSTRAINT "Privilege_pkey";
       public            postgres    false    311            �           2606    48011 %   mpr_scheme_saboojshre SABOOJSHRE_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.mpr_scheme_saboojshre
    ADD CONSTRAINT "SABOOJSHRE_pkey" PRIMARY KEY (id_pk);
 Q   ALTER TABLE ONLY public.mpr_scheme_saboojshre DROP CONSTRAINT "SABOOJSHRE_pkey";
       public            postgres    false    246            �           2606    48013    mpr_scheme_saboojs SABOOJS_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.mpr_scheme_saboojs
    ADD CONSTRAINT "SABOOJS_pkey" PRIMARY KEY (id_pk);
 K   ALTER TABLE ONLY public.mpr_scheme_saboojs DROP CONSTRAINT "SABOOJS_pkey";
       public            postgres    false    248            �           2606    48015 %   mpr_scheme_safedsavel SAFEDSAVEL_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.mpr_scheme_safedsavel
    ADD CONSTRAINT "SAFEDSAVEL_pkey" PRIMARY KEY (id_pk);
 Q   ALTER TABLE ONLY public.mpr_scheme_safedsavel DROP CONSTRAINT "SAFEDSAVEL_pkey";
       public            postgres    false    250                       2606    48017 #   mpr_scheme_samabythi SAMABYTHI_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.mpr_scheme_samabythi
    ADD CONSTRAINT "SAMABYTHI_pkey" PRIMARY KEY (id_pk);
 O   ALTER TABLE ONLY public.mpr_scheme_samabythi DROP CONSTRAINT "SAMABYTHI_pkey";
       public            postgres    false    252                       2606    48019    mpr_scheme_sikshas SIKSHAS_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.mpr_scheme_sikshas
    ADD CONSTRAINT "SIKSHAS_pkey" PRIMARY KEY (id_pk);
 K   ALTER TABLE ONLY public.mpr_scheme_sikshas DROP CONSTRAINT "SIKSHAS_pkey";
       public            postgres    false    254                       2606    48021    mpr_scheme_svskp SVSKP_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.mpr_scheme_svskp
    ADD CONSTRAINT "SVSKP_pkey" PRIMARY KEY (id_pk);
 G   ALTER TABLE ONLY public.mpr_scheme_svskp DROP CONSTRAINT "SVSKP_pkey";
       public            postgres    false    256            
           2606    48023    mpr_scheme_yubas YUBAS_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.mpr_scheme_yubas
    ADD CONSTRAINT "YUBAS_pkey" PRIMARY KEY (id_pk);
 G   ALTER TABLE ONLY public.mpr_scheme_yubas DROP CONSTRAINT "YUBAS_pkey";
       public            postgres    false    258                       2606    48025    mpr_scheme_anand anand_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.mpr_scheme_anand
    ADD CONSTRAINT anand_pkey PRIMARY KEY (id_pk);
 E   ALTER TABLE ONLY public.mpr_scheme_anand DROP CONSTRAINT anand_pkey;
       public            postgres    false    260                       2606    48027 %   mpr_master_attri_table att_table_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.mpr_master_attri_table
    ADD CONSTRAINT att_table_pkey PRIMARY KEY (attri_id_pk);
 O   ALTER TABLE ONLY public.mpr_master_attri_table DROP CONSTRAINT att_table_pkey;
       public            postgres    false    262                       2606    48029 "   mpr_trans_audit_log audit_log_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.mpr_trans_audit_log
    ADD CONSTRAINT audit_log_pkey PRIMARY KEY (audit_id_pk);
 L   ALTER TABLE ONLY public.mpr_trans_audit_log DROP CONSTRAINT audit_log_pkey;
       public            postgres    false    264                       2606    48031 4   mpr_semitrans_check_first_user check_First_User_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.mpr_semitrans_check_first_user
    ADD CONSTRAINT "check_First_User_pkey" PRIMARY KEY (user_id_pk);
 `   ALTER TABLE ONLY public.mpr_semitrans_check_first_user DROP CONSTRAINT "check_First_User_pkey";
       public            postgres    false    266            /           2606    48033 -   mpr_master_dashboard_info dashboard_info_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.mpr_master_dashboard_info
    ADD CONSTRAINT dashboard_info_pkey PRIMARY KEY (dashboard_id_pk);
 W   ALTER TABLE ONLY public.mpr_master_dashboard_info DROP CONSTRAINT dashboard_info_pkey;
       public            postgres    false    286                       2606    48035 @   mpr_semitrans_dba_financial_range dba_financial_range_table_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_dba_financial_range
    ADD CONSTRAINT dba_financial_range_table_pkey PRIMARY KEY (dba_financial_range_table_id_pk);
 j   ALTER TABLE ONLY public.mpr_semitrans_dba_financial_range DROP CONSTRAINT dba_financial_range_table_pkey;
       public            postgres    false    269                       2606    48037 '   mpr_master_designation designation_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.mpr_master_designation
    ADD CONSTRAINT designation_pkey PRIMARY KEY (desig_id_pk);
 Q   ALTER TABLE ONLY public.mpr_master_designation DROP CONSTRAINT designation_pkey;
       public            postgres    false    271                       2606    48039    mpr_scheme_doc doc_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.mpr_scheme_doc
    ADD CONSTRAINT doc_pkey PRIMARY KEY (id_pk);
 A   ALTER TABLE ONLY public.mpr_scheme_doc DROP CONSTRAINT doc_pkey;
       public            postgres    false    273                       2606    48041 4   mpr_master_financial_year financial_year_master_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_financial_year
    ADD CONSTRAINT financial_year_master_pkey PRIMARY KEY (financial_year_master_id_pk);
 ^   ALTER TABLE ONLY public.mpr_master_financial_year DROP CONSTRAINT financial_year_master_pkey;
       public            postgres    false    275                        2606    48043    mpr_scheme_kishanm kishanm_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.mpr_scheme_kishanm
    ADD CONSTRAINT kishanm_pkey PRIMARY KEY (id_pk);
 I   ALTER TABLE ONLY public.mpr_scheme_kishanm DROP CONSTRAINT kishanm_pkey;
       public            postgres    false    277            "           2606    48045 +   mpr_master_location_data location_data_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.mpr_master_location_data
    ADD CONSTRAINT location_data_pkey PRIMARY KEY (location_id_pk);
 U   ALTER TABLE ONLY public.mpr_master_location_data DROP CONSTRAINT location_data_pkey;
       public            postgres    false    279            &           2606    48047 0   mpr_trans_meeting_schedule meeting_schedule_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.mpr_trans_meeting_schedule
    ADD CONSTRAINT meeting_schedule_pkey PRIMARY KEY (meeting_id_pk);
 Z   ALTER TABLE ONLY public.mpr_trans_meeting_schedule DROP CONSTRAINT meeting_schedule_pkey;
       public            postgres    false    281            +           2606    48049 3   mpr_master_block mpr_master_block_block_lg_code_key 
   CONSTRAINT     w   ALTER TABLE ONLY public.mpr_master_block
    ADD CONSTRAINT mpr_master_block_block_lg_code_key UNIQUE (block_lg_code);
 ]   ALTER TABLE ONLY public.mpr_master_block DROP CONSTRAINT mpr_master_block_block_lg_code_key;
       public            postgres    false    285            -           2606    48051 &   mpr_master_block mpr_master_block_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.mpr_master_block
    ADD CONSTRAINT mpr_master_block_pkey PRIMARY KEY (block_id_pk);
 P   ALTER TABLE ONLY public.mpr_master_block DROP CONSTRAINT mpr_master_block_pkey;
       public            postgres    false    285            3           2606    48053 8   mpr_master_district mpr_master_district_dist_lg_code_key 
   CONSTRAINT     {   ALTER TABLE ONLY public.mpr_master_district
    ADD CONSTRAINT mpr_master_district_dist_lg_code_key UNIQUE (dist_lg_code);
 b   ALTER TABLE ONLY public.mpr_master_district DROP CONSTRAINT mpr_master_district_dist_lg_code_key;
       public            postgres    false    288            5           2606    48055 ,   mpr_master_district mpr_master_district_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.mpr_master_district
    ADD CONSTRAINT mpr_master_district_pkey PRIMARY KEY (district_id_pk);
 V   ALTER TABLE ONLY public.mpr_master_district DROP CONSTRAINT mpr_master_district_pkey;
       public            postgres    false    288            $           2606    48057 C   mpr_master_location_data mpr_master_location_data_location_code_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_location_data
    ADD CONSTRAINT mpr_master_location_data_location_code_key UNIQUE (location_code);
 m   ALTER TABLE ONLY public.mpr_master_location_data DROP CONSTRAINT mpr_master_location_data_location_code_key;
       public            postgres    false    279            =           2606    48059 &   mpr_master_state mpr_master_state_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.mpr_master_state
    ADD CONSTRAINT mpr_master_state_pkey PRIMARY KEY (state_id_pk);
 P   ALTER TABLE ONLY public.mpr_master_state DROP CONSTRAINT mpr_master_state_pkey;
       public            postgres    false    293            ?           2606    48061 (   mpr_master_subdiv mpr_master_subdiv_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.mpr_master_subdiv
    ADD CONSTRAINT mpr_master_subdiv_pkey PRIMARY KEY (sub_div_id_pk);
 R   ALTER TABLE ONLY public.mpr_master_subdiv DROP CONSTRAINT mpr_master_subdiv_pkey;
       public            postgres    false    295            A           2606    48063 4   mpr_master_subdiv mpr_master_subdiv_sub_div_code_key 
   CONSTRAINT     z   ALTER TABLE ONLY public.mpr_master_subdiv
    ADD CONSTRAINT mpr_master_subdiv_sub_div_code_key UNIQUE (sub_div_lg_code);
 ^   ALTER TABLE ONLY public.mpr_master_subdiv DROP CONSTRAINT mpr_master_subdiv_sub_div_code_key;
       public            postgres    false    295            O           2606    48065 B   mpr_semitrans_location_mapping mpr_semitrans_location_mapping_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_location_mapping
    ADD CONSTRAINT mpr_semitrans_location_mapping_pkey PRIMARY KEY (location_mapping_id_pk);
 l   ALTER TABLE ONLY public.mpr_semitrans_location_mapping DROP CONSTRAINT mpr_semitrans_location_mapping_pkey;
       public            postgres    false    309            S           2606    48067 8   mpr_semitrans_profile mpr_semitrans_profile_username_key 
   CONSTRAINT     w   ALTER TABLE ONLY public.mpr_semitrans_profile
    ADD CONSTRAINT mpr_semitrans_profile_username_key UNIQUE (username);
 b   ALTER TABLE ONLY public.mpr_semitrans_profile DROP CONSTRAINT mpr_semitrans_profile_username_key;
       public            postgres    false    312            [           2606    48069 ,   mpr_trans_fundalloc mpr_trans_fundalloc_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.mpr_trans_fundalloc
    ADD CONSTRAINT mpr_trans_fundalloc_pkey PRIMARY KEY (fundalloc_id_pk);
 V   ALTER TABLE ONLY public.mpr_trans_fundalloc DROP CONSTRAINT mpr_trans_fundalloc_pkey;
       public            postgres    false    315            ]           2606    48071 )   mpr_trans_notification notifications_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.mpr_trans_notification
    ADD CONSTRAINT notifications_pkey PRIMARY KEY (notification_id_pk);
 S   ALTER TABLE ONLY public.mpr_trans_notification DROP CONSTRAINT notifications_pkey;
       public            postgres    false    317            1           2606    48073 &   mpr_master_department office_dept_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.mpr_master_department
    ADD CONSTRAINT office_dept_pkey PRIMARY KEY (dept_id_pk);
 P   ALTER TABLE ONLY public.mpr_master_department DROP CONSTRAINT office_dept_pkey;
       public            postgres    false    287            7           2606    48075    mpr_master_office office_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.mpr_master_office
    ADD CONSTRAINT office_pkey PRIMARY KEY (office_id_pk);
 G   ALTER TABLE ONLY public.mpr_master_office DROP CONSTRAINT office_pkey;
       public            postgres    false    290            C           2606    48077 .   mpr_scheme_kcc_backup pk_mpr_scheme_kcc_backup 
   CONSTRAINT     o   ALTER TABLE ONLY public.mpr_scheme_kcc_backup
    ADD CONSTRAINT pk_mpr_scheme_kcc_backup PRIMARY KEY (id_pk);
 X   ALTER TABLE ONLY public.mpr_scheme_kcc_backup DROP CONSTRAINT pk_mpr_scheme_kcc_backup;
       public            postgres    false    297            E           2606    48079 ,   mpr_scheme_kcc_draft pk_mpr_scheme_kcc_draft 
   CONSTRAINT     m   ALTER TABLE ONLY public.mpr_scheme_kcc_draft
    ADD CONSTRAINT pk_mpr_scheme_kcc_draft PRIMARY KEY (id_pk);
 V   ALTER TABLE ONLY public.mpr_scheme_kcc_draft DROP CONSTRAINT pk_mpr_scheme_kcc_draft;
       public            postgres    false    299            G           2606    48081 6   mpr_scheme_kishanm_backup pk_mpr_scheme_kishanm_backup 
   CONSTRAINT     w   ALTER TABLE ONLY public.mpr_scheme_kishanm_backup
    ADD CONSTRAINT pk_mpr_scheme_kishanm_backup PRIMARY KEY (id_pk);
 `   ALTER TABLE ONLY public.mpr_scheme_kishanm_backup DROP CONSTRAINT pk_mpr_scheme_kishanm_backup;
       public            postgres    false    301            I           2606    48083 4   mpr_scheme_kishanm_draft pk_mpr_scheme_kishanm_draft 
   CONSTRAINT     u   ALTER TABLE ONLY public.mpr_scheme_kishanm_draft
    ADD CONSTRAINT pk_mpr_scheme_kishanm_draft PRIMARY KEY (id_pk);
 ^   ALTER TABLE ONLY public.mpr_scheme_kishanm_draft DROP CONSTRAINT pk_mpr_scheme_kishanm_draft;
       public            postgres    false    303            K           2606    48085 6   mpr_scheme_mgnregs_backup pk_mpr_scheme_mgnregs_backup 
   CONSTRAINT     w   ALTER TABLE ONLY public.mpr_scheme_mgnregs_backup
    ADD CONSTRAINT pk_mpr_scheme_mgnregs_backup PRIMARY KEY (id_pk);
 `   ALTER TABLE ONLY public.mpr_scheme_mgnregs_backup DROP CONSTRAINT pk_mpr_scheme_mgnregs_backup;
       public            postgres    false    305            M           2606    48087 4   mpr_scheme_mgnregs_draft pk_mpr_scheme_mgnregs_draft 
   CONSTRAINT     u   ALTER TABLE ONLY public.mpr_scheme_mgnregs_draft
    ADD CONSTRAINT pk_mpr_scheme_mgnregs_draft PRIMARY KEY (id_pk);
 ^   ALTER TABLE ONLY public.mpr_scheme_mgnregs_draft DROP CONSTRAINT pk_mpr_scheme_mgnregs_draft;
       public            postgres    false    307            U           2606    48089 "   mpr_semitrans_profile profile_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.mpr_semitrans_profile
    ADD CONSTRAINT profile_pkey PRIMARY KEY (profile_id_pk);
 L   ALTER TABLE ONLY public.mpr_semitrans_profile DROP CONSTRAINT profile_pkey;
       public            postgres    false    312            9           2606    48091 '   mpr_master_scheme_dept scheme_dept_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.mpr_master_scheme_dept
    ADD CONSTRAINT scheme_dept_pkey PRIMARY KEY (scheme_dept_id_pk);
 Q   ALTER TABLE ONLY public.mpr_master_scheme_dept DROP CONSTRAINT scheme_dept_pkey;
       public            postgres    false    291            ;           2606    48093 )   mpr_master_scheme_table scheme_table_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.mpr_master_scheme_table
    ADD CONSTRAINT scheme_table_pkey PRIMARY KEY (scheme_id_pk);
 S   ALTER TABLE ONLY public.mpr_master_scheme_table DROP CONSTRAINT scheme_table_pkey;
       public            postgres    false    292            W           2606    48095 0   mpr_semitrans_user_privilege user_privilege_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY public.mpr_semitrans_user_privilege
    ADD CONSTRAINT user_privilege_pkey PRIMARY KEY (user_priv_id_pk);
 Z   ALTER TABLE ONLY public.mpr_semitrans_user_privilege DROP CONSTRAINT user_privilege_pkey;
       public            postgres    false    313            Y           2606    48097 &   mpr_semitrans_user_type user_type_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.mpr_semitrans_user_type
    ADD CONSTRAINT user_type_pkey PRIMARY KEY (user_type_id_pk);
 P   ALTER TABLE ONLY public.mpr_semitrans_user_type DROP CONSTRAINT user_type_pkey;
       public            postgres    false    314                       1259    48098 	   idx_anand    INDEX     _   CREATE INDEX idx_anand ON public.mpr_scheme_anand USING btree (session, month, location_code);
    DROP INDEX public.idx_anand;
       public            postgres    false    260    260    260            �           1259    48099    idx_awcc    INDEX     ]   CREATE INDEX idx_awcc ON public.mpr_scheme_awcc USING btree (session, month, location_code);
    DROP INDEX public.idx_awcc;
       public            postgres    false    203    203    203            �           1259    48100    idx_baitarani    INDEX     g   CREATE INDEX idx_baitarani ON public.mpr_scheme_baitarani USING btree (session, month, location_code);
 !   DROP INDEX public.idx_baitarani;
       public            postgres    false    205    205    205                       1259    48101    idx_doc    INDEX     [   CREATE INDEX idx_doc ON public.mpr_scheme_doc USING btree (session, month, location_code);
    DROP INDEX public.idx_doc;
       public            postgres    false    273    273    273            �           1259    48102    idx_doptuhd    INDEX     c   CREATE INDEX idx_doptuhd ON public.mpr_scheme_doptuhd USING btree (session, month, location_code);
    DROP INDEX public.idx_doptuhd;
       public            postgres    false    209    209    209            �           1259    48103    idx_enrollment    INDEX     i   CREATE INDEX idx_enrollment ON public.mpr_scheme_enrollment USING btree (session, month, location_code);
 "   DROP INDEX public.idx_enrollment;
       public            postgres    false    211    211    211            �           1259    48104    idx_foodpro    INDEX     c   CREATE INDEX idx_foodpro ON public.mpr_scheme_foodpro USING btree (session, month, location_code);
    DROP INDEX public.idx_foodpro;
       public            postgres    false    213    213    213            �           1259    48105    idx_gitanjali    INDEX     g   CREATE INDEX idx_gitanjali ON public.mpr_scheme_gitanjali USING btree (session, month, location_code);
 !   DROP INDEX public.idx_gitanjali;
       public            postgres    false    215    215    215            �           1259    48106    idx_immunisati    INDEX     i   CREATE INDEX idx_immunisati ON public.mpr_scheme_immunisati USING btree (session, month, location_code);
 "   DROP INDEX public.idx_immunisati;
       public            postgres    false    217    217    217            �           1259    48107    idx_infantd    INDEX     c   CREATE INDEX idx_infantd ON public.mpr_scheme_infantd USING btree (session, month, location_code);
    DROP INDEX public.idx_infantd;
       public            postgres    false    219    219    219            �           1259    48108    idx_inspection    INDEX     i   CREATE INDEX idx_inspection ON public.mpr_scheme_inspection USING btree (session, month, location_code);
 "   DROP INDEX public.idx_inspection;
       public            postgres    false    221    221    221            �           1259    48109    idx_instdel    INDEX     c   CREATE INDEX idx_instdel ON public.mpr_scheme_instdel USING btree (session, month, location_code);
    DROP INDEX public.idx_instdel;
       public            postgres    false    223    223    223            �           1259    48110    idx_jaldjalb    INDEX     e   CREATE INDEX idx_jaldjalb ON public.mpr_scheme_jaldjalb USING btree (session, month, location_code);
     DROP INDEX public.idx_jaldjalb;
       public            postgres    false    225    225    225            �           1259    48111 
   idx_kanyas    INDEX     a   CREATE INDEX idx_kanyas ON public.mpr_scheme_kanyas USING btree (session, month, location_code);
    DROP INDEX public.idx_kanyas;
       public            postgres    false    227    227    227            �           1259    48112    idx_karmatirth    INDEX     i   CREATE INDEX idx_karmatirth ON public.mpr_scheme_karmatirth USING btree (session, month, location_code);
 "   DROP INDEX public.idx_karmatirth;
       public            postgres    false    229    229    229            �           1259    48113    idx_kcc    INDEX     [   CREATE INDEX idx_kcc ON public.mpr_scheme_kcc USING btree (session, month, location_code);
    DROP INDEX public.idx_kcc;
       public            postgres    false    231    231    231                       1259    48114    idx_kishanm    INDEX     c   CREATE INDEX idx_kishanm ON public.mpr_scheme_kishanm USING btree (session, month, location_code);
    DROP INDEX public.idx_kishanm;
       public            postgres    false    277    277    277            �           1259    48115 
   idx_landpp    INDEX     a   CREATE INDEX idx_landpp ON public.mpr_scheme_landpp USING btree (session, month, location_code);
    DROP INDEX public.idx_landpp;
       public            postgres    false    233    233    233            �           1259    48116    idx_maternald    INDEX     g   CREATE INDEX idx_maternald ON public.mpr_scheme_maternald USING btree (session, month, location_code);
 !   DROP INDEX public.idx_maternald;
       public            postgres    false    238    238    238            �           1259    48117    idx_mci    INDEX     [   CREATE INDEX idx_mci ON public.mpr_scheme_mci USING btree (session, month, location_code);
    DROP INDEX public.idx_mci;
       public            postgres    false    240    240    240            )           1259    48118    idx_mgnregs    INDEX     c   CREATE INDEX idx_mgnregs ON public.mpr_scheme_mgnregs USING btree (session, month, location_code);
    DROP INDEX public.idx_mgnregs;
       public            postgres    false    283    283    283            �           1259    48119    idx_minoritys    INDEX     g   CREATE INDEX idx_minoritys ON public.mpr_scheme_minoritys USING btree (session, month, location_code);
 !   DROP INDEX public.idx_minoritys;
       public            postgres    false    242    242    242            �           1259    48120    idx_poe    INDEX     [   CREATE INDEX idx_poe ON public.mpr_scheme_poe USING btree (session, month, location_code);
    DROP INDEX public.idx_poe;
       public            postgres    false    244    244    244            �           1259    48121    idx_saboojs    INDEX     c   CREATE INDEX idx_saboojs ON public.mpr_scheme_saboojs USING btree (session, month, location_code);
    DROP INDEX public.idx_saboojs;
       public            postgres    false    248    248    248            �           1259    48122    idx_saboojshre    INDEX     i   CREATE INDEX idx_saboojshre ON public.mpr_scheme_saboojshre USING btree (session, month, location_code);
 "   DROP INDEX public.idx_saboojshre;
       public            postgres    false    246    246    246            �           1259    48123    idx_safedsavel    INDEX     i   CREATE INDEX idx_safedsavel ON public.mpr_scheme_safedsavel USING btree (session, month, location_code);
 "   DROP INDEX public.idx_safedsavel;
       public            postgres    false    250    250    250                       1259    48124    idx_samabythi    INDEX     g   CREATE INDEX idx_samabythi ON public.mpr_scheme_samabythi USING btree (session, month, location_code);
 !   DROP INDEX public.idx_samabythi;
       public            postgres    false    252    252    252                       1259    48125    idx_sikshas    INDEX     c   CREATE INDEX idx_sikshas ON public.mpr_scheme_sikshas USING btree (session, month, location_code);
    DROP INDEX public.idx_sikshas;
       public            postgres    false    254    254    254                       1259    48126 	   idx_svskp    INDEX     _   CREATE INDEX idx_svskp ON public.mpr_scheme_svskp USING btree (session, month, location_code);
    DROP INDEX public.idx_svskp;
       public            postgres    false    256    256    256                       1259    48127 	   idx_yubas    INDEX     _   CREATE INDEX idx_yubas ON public.mpr_scheme_yubas USING btree (session, month, location_code);
    DROP INDEX public.idx_yubas;
       public            postgres    false    258    258    258            �           2606    48128 '   mpr_scheme_anand ANAND_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_anand
    ADD CONSTRAINT "ANAND_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 S   ALTER TABLE ONLY public.mpr_scheme_anand DROP CONSTRAINT "ANAND_login_id_fk_fkey";
       public          postgres    false    260    235    3304            ^           2606    48133 %   mpr_scheme_awcc AWCC_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_awcc
    ADD CONSTRAINT "AWCC_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 Q   ALTER TABLE ONLY public.mpr_scheme_awcc DROP CONSTRAINT "AWCC_login_id_fk_fkey";
       public          postgres    false    3304    203    235            `           2606    48138 /   mpr_scheme_baitarani BAITARANI_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_baitarani
    ADD CONSTRAINT "BAITARANI_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 [   ALTER TABLE ONLY public.mpr_scheme_baitarani DROP CONSTRAINT "BAITARANI_login_id_fk_fkey";
       public          postgres    false    3304    205    235            �           2606    48143 #   mpr_scheme_doc DOC_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_doc
    ADD CONSTRAINT "DOC_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 O   ALTER TABLE ONLY public.mpr_scheme_doc DROP CONSTRAINT "DOC_login_id_fk_fkey";
       public          postgres    false    273    3304    235            b           2606    48148 #   mpr_scheme_dog DOG_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_dog
    ADD CONSTRAINT "DOG_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 O   ALTER TABLE ONLY public.mpr_scheme_dog DROP CONSTRAINT "DOG_login_id_fk_fkey";
       public          postgres    false    207    3304    235            c           2606    48153 +   mpr_scheme_doptuhd DOPTUHD_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_doptuhd
    ADD CONSTRAINT "DOPTUHD_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 W   ALTER TABLE ONLY public.mpr_scheme_doptuhd DROP CONSTRAINT "DOPTUHD_login_id_fk_fkey";
       public          postgres    false    3304    209    235            e           2606    48158 1   mpr_scheme_enrollment ENROLLMENT_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_enrollment
    ADD CONSTRAINT "ENROLLMENT_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 ]   ALTER TABLE ONLY public.mpr_scheme_enrollment DROP CONSTRAINT "ENROLLMENT_login_id_fk_fkey";
       public          postgres    false    3304    235    211            g           2606    48163 +   mpr_scheme_foodpro FOODPRO_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_foodpro
    ADD CONSTRAINT "FOODPRO_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 W   ALTER TABLE ONLY public.mpr_scheme_foodpro DROP CONSTRAINT "FOODPRO_login_id_fk_fkey";
       public          postgres    false    3304    235    213            i           2606    48168 /   mpr_scheme_gitanjali GITANJALI_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_gitanjali
    ADD CONSTRAINT "GITANJALI_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 [   ALTER TABLE ONLY public.mpr_scheme_gitanjali DROP CONSTRAINT "GITANJALI_login_id_fk_fkey";
       public          postgres    false    215    235    3304            k           2606    48173 1   mpr_scheme_immunisati IMMUNISATI_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_immunisati
    ADD CONSTRAINT "IMMUNISATI_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 ]   ALTER TABLE ONLY public.mpr_scheme_immunisati DROP CONSTRAINT "IMMUNISATI_login_id_fk_fkey";
       public          postgres    false    217    3304    235            m           2606    48178 +   mpr_scheme_infantd INFANTD_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_infantd
    ADD CONSTRAINT "INFANTD_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 W   ALTER TABLE ONLY public.mpr_scheme_infantd DROP CONSTRAINT "INFANTD_login_id_fk_fkey";
       public          postgres    false    235    3304    219            n           2606    48183 1   mpr_scheme_inspection INSPECTION_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_inspection
    ADD CONSTRAINT "INSPECTION_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 ]   ALTER TABLE ONLY public.mpr_scheme_inspection DROP CONSTRAINT "INSPECTION_login_id_fk_fkey";
       public          postgres    false    235    221    3304            p           2606    48188 +   mpr_scheme_instdel INSTDEL_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_instdel
    ADD CONSTRAINT "INSTDEL_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 W   ALTER TABLE ONLY public.mpr_scheme_instdel DROP CONSTRAINT "INSTDEL_login_id_fk_fkey";
       public          postgres    false    3304    223    235            r           2606    48193 -   mpr_scheme_jaldjalb JALDJALB_Login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_jaldjalb
    ADD CONSTRAINT "JALDJALB_Login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 Y   ALTER TABLE ONLY public.mpr_scheme_jaldjalb DROP CONSTRAINT "JALDJALB_Login_id_fk_fkey";
       public          postgres    false    3304    225    235            t           2606    48198 )   mpr_scheme_kanyas KANYAS_Login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_kanyas
    ADD CONSTRAINT "KANYAS_Login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 U   ALTER TABLE ONLY public.mpr_scheme_kanyas DROP CONSTRAINT "KANYAS_Login_id_fk_fkey";
       public          postgres    false    227    235    3304            v           2606    48203 1   mpr_scheme_karmatirth KARMATIRTH_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_karmatirth
    ADD CONSTRAINT "KARMATIRTH_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 ]   ALTER TABLE ONLY public.mpr_scheme_karmatirth DROP CONSTRAINT "KARMATIRTH_login_id_fk_fkey";
       public          postgres    false    235    229    3304            x           2606    48208 #   mpr_scheme_kcc KCC_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_kcc
    ADD CONSTRAINT "KCC_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 O   ALTER TABLE ONLY public.mpr_scheme_kcc DROP CONSTRAINT "KCC_login_id_fk_fkey";
       public          postgres    false    3304    235    231            �           2606    48213 +   mpr_scheme_kishanm KishanM_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_kishanm
    ADD CONSTRAINT "KishanM_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 W   ALTER TABLE ONLY public.mpr_scheme_kishanm DROP CONSTRAINT "KishanM_login_id_fk_fkey";
       public          postgres    false    3304    277    235            z           2606    48218 )   mpr_scheme_landpp LANDPP_Login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_landpp
    ADD CONSTRAINT "LANDPP_Login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 U   ALTER TABLE ONLY public.mpr_scheme_landpp DROP CONSTRAINT "LANDPP_Login_id_fk_fkey";
       public          postgres    false    233    235    3304            |           2606    48223 *   mpr_semitrans_login Login_desig_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_login
    ADD CONSTRAINT "Login_desig_id_fk_fkey" FOREIGN KEY (desig_id_fk) REFERENCES public.mpr_master_designation(desig_id_pk) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 V   ALTER TABLE ONLY public.mpr_semitrans_login DROP CONSTRAINT "Login_desig_id_fk_fkey";
       public          postgres    false    235    3352    271            }           2606    48228 0   mpr_semitrans_login Login_office_dept_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_login
    ADD CONSTRAINT "Login_office_dept_id_fk_fkey" FOREIGN KEY (dept_id_fk) REFERENCES public.mpr_master_department(dept_id_pk) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 \   ALTER TABLE ONLY public.mpr_semitrans_login DROP CONSTRAINT "Login_office_dept_id_fk_fkey";
       public          postgres    false    287    235    3377            ~           2606    48233 +   mpr_semitrans_login Login_office_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_login
    ADD CONSTRAINT "Login_office_id_fk_fkey" FOREIGN KEY (office_id_fk) REFERENCES public.mpr_master_office(office_id_pk) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 W   ALTER TABLE ONLY public.mpr_semitrans_login DROP CONSTRAINT "Login_office_id_fk_fkey";
       public          postgres    false    290    235    3383                       2606    48238 .   mpr_semitrans_login Login_user_type_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_login
    ADD CONSTRAINT "Login_user_type_id_fk_fkey" FOREIGN KEY (user_type_id_fk) REFERENCES public.mpr_semitrans_user_type(user_type_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 Z   ALTER TABLE ONLY public.mpr_semitrans_login DROP CONSTRAINT "Login_user_type_id_fk_fkey";
       public          postgres    false    3417    235    314            �           2606    48243 /   mpr_scheme_maternald MATERNALD_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_maternald
    ADD CONSTRAINT "MATERNALD_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 [   ALTER TABLE ONLY public.mpr_scheme_maternald DROP CONSTRAINT "MATERNALD_login_id_fk_fkey";
       public          postgres    false    3304    238    235            �           2606    48248 #   mpr_scheme_mci MCI_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_mci
    ADD CONSTRAINT "MCI_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 O   ALTER TABLE ONLY public.mpr_scheme_mci DROP CONSTRAINT "MCI_login_id_fk_fkey";
       public          postgres    false    3304    240    235            �           2606    48253 +   mpr_scheme_mgnregs MGNREGS_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_mgnregs
    ADD CONSTRAINT "MGNREGS_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 W   ALTER TABLE ONLY public.mpr_scheme_mgnregs DROP CONSTRAINT "MGNREGS_login_id_fk_fkey";
       public          postgres    false    283    235    3304            �           2606    48258 /   mpr_scheme_minoritys MINORITYS_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_minoritys
    ADD CONSTRAINT "MINORITYS_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 [   ALTER TABLE ONLY public.mpr_scheme_minoritys DROP CONSTRAINT "MINORITYS_login_id_fk_fkey";
       public          postgres    false    242    3304    235            �           2606    48263 #   mpr_scheme_poe POE_Login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_poe
    ADD CONSTRAINT "POE_Login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 O   ALTER TABLE ONLY public.mpr_scheme_poe DROP CONSTRAINT "POE_Login_id_fk_fkey";
       public          postgres    false    235    244    3304            �           2606    48268 1   mpr_scheme_saboojshre SABOOJSHRE_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_saboojshre
    ADD CONSTRAINT "SABOOJSHRE_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 ]   ALTER TABLE ONLY public.mpr_scheme_saboojshre DROP CONSTRAINT "SABOOJSHRE_login_id_fk_fkey";
       public          postgres    false    3304    235    246            �           2606    48273 +   mpr_scheme_saboojs SABOOJS_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_saboojs
    ADD CONSTRAINT "SABOOJS_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 W   ALTER TABLE ONLY public.mpr_scheme_saboojs DROP CONSTRAINT "SABOOJS_login_id_fk_fkey";
       public          postgres    false    235    3304    248            �           2606    48278 1   mpr_scheme_safedsavel SAFEDSAVEL_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_safedsavel
    ADD CONSTRAINT "SAFEDSAVEL_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 ]   ALTER TABLE ONLY public.mpr_scheme_safedsavel DROP CONSTRAINT "SAFEDSAVEL_login_id_fk_fkey";
       public          postgres    false    235    3304    250            �           2606    48283 /   mpr_scheme_samabythi SAMABYTHI_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_samabythi
    ADD CONSTRAINT "SAMABYTHI_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 [   ALTER TABLE ONLY public.mpr_scheme_samabythi DROP CONSTRAINT "SAMABYTHI_login_id_fk_fkey";
       public          postgres    false    235    252    3304            �           2606    48288 +   mpr_scheme_sikshas SIKSHAS_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_sikshas
    ADD CONSTRAINT "SIKSHAS_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 W   ALTER TABLE ONLY public.mpr_scheme_sikshas DROP CONSTRAINT "SIKSHAS_login_id_fk_fkey";
       public          postgres    false    235    254    3304            �           2606    48293 '   mpr_scheme_svskp SVSKP_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_svskp
    ADD CONSTRAINT "SVSKP_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 S   ALTER TABLE ONLY public.mpr_scheme_svskp DROP CONSTRAINT "SVSKP_login_id_fk_fkey";
       public          postgres    false    235    3304    256            �           2606    48298 '   mpr_scheme_yubas YUBAS_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_yubas
    ADD CONSTRAINT "YUBAS_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 S   ALTER TABLE ONLY public.mpr_scheme_yubas DROP CONSTRAINT "YUBAS_login_id_fk_fkey";
       public          postgres    false    258    3304    235            �           2606    48303 .   mpr_trans_audit_log audit_log_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_trans_audit_log
    ADD CONSTRAINT audit_log_login_id_fk_fkey FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 X   ALTER TABLE ONLY public.mpr_trans_audit_log DROP CONSTRAINT audit_log_login_id_fk_fkey;
       public          postgres    false    264    235    3304            �           2606    48308 9   mpr_master_designation designation_office_dept_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_designation
    ADD CONSTRAINT designation_office_dept_id_fk_fkey FOREIGN KEY (dept_id_fk) REFERENCES public.mpr_master_department(dept_id_pk) ON UPDATE CASCADE ON DELETE SET NULL;
 c   ALTER TABLE ONLY public.mpr_master_designation DROP CONSTRAINT designation_office_dept_id_fk_fkey;
       public          postgres    false    271    287    3377            �           2606    48313 ?   mpr_master_attri_table mpr_master_attri_table_scheme_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_attri_table
    ADD CONSTRAINT mpr_master_attri_table_scheme_id_fk_fkey FOREIGN KEY (scheme_id_fk) REFERENCES public.mpr_master_scheme_table(scheme_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 i   ALTER TABLE ONLY public.mpr_master_attri_table DROP CONSTRAINT mpr_master_attri_table_scheme_id_fk_fkey;
       public          postgres    false    292    3387    262            �           2606    48318 5   mpr_master_block mpr_master_block_location_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_block
    ADD CONSTRAINT mpr_master_block_location_id_fk_fkey FOREIGN KEY (location_id_fk) REFERENCES public.mpr_master_location_data(location_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 _   ALTER TABLE ONLY public.mpr_master_block DROP CONSTRAINT mpr_master_block_location_id_fk_fkey;
       public          postgres    false    3362    279    285            �           2606    48323 3   mpr_master_block mpr_master_block_subdiv_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_block
    ADD CONSTRAINT mpr_master_block_subdiv_id_fk_fkey FOREIGN KEY (subdiv_id_fk) REFERENCES public.mpr_master_subdiv(sub_div_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 ]   ALTER TABLE ONLY public.mpr_master_block DROP CONSTRAINT mpr_master_block_subdiv_id_fk_fkey;
       public          postgres    false    3391    285    295            �           2606    48328 8   mpr_master_district mpr_master_district_state_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_district
    ADD CONSTRAINT mpr_master_district_state_id_fk_fkey FOREIGN KEY (state_id_fk) REFERENCES public.mpr_master_state(state_id_pk) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 b   ALTER TABLE ONLY public.mpr_master_district DROP CONSTRAINT mpr_master_district_state_id_fk_fkey;
       public          postgres    false    3389    293    288            �           2606    48333 ?   mpr_master_scheme_dept mpr_master_scheme_dept_scheme_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_scheme_dept
    ADD CONSTRAINT mpr_master_scheme_dept_scheme_id_fk_fkey FOREIGN KEY (scheme_id_fk) REFERENCES public.mpr_master_scheme_table(scheme_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 i   ALTER TABLE ONLY public.mpr_master_scheme_dept DROP CONSTRAINT mpr_master_scheme_dept_scheme_id_fk_fkey;
       public          postgres    false    291    292    3387            �           2606    48338 @   mpr_master_scheme_table mpr_master_scheme_table_desig_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_scheme_table
    ADD CONSTRAINT mpr_master_scheme_table_desig_id_fk_fkey FOREIGN KEY (desig_id_fk) REFERENCES public.mpr_master_designation(desig_id_pk) NOT VALID;
 j   ALTER TABLE ONLY public.mpr_master_scheme_table DROP CONSTRAINT mpr_master_scheme_table_desig_id_fk_fkey;
       public          postgres    false    292    3352    271            �           2606    48343 I   mpr_master_scheme_table mpr_master_scheme_table_financial_year_id_fk_fkey    FK CONSTRAINT       ALTER TABLE ONLY public.mpr_master_scheme_table
    ADD CONSTRAINT mpr_master_scheme_table_financial_year_id_fk_fkey FOREIGN KEY (financial_year_id_fk) REFERENCES public.mpr_master_financial_year(financial_year_master_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 s   ALTER TABLE ONLY public.mpr_master_scheme_table DROP CONSTRAINT mpr_master_scheme_table_financial_year_id_fk_fkey;
       public          postgres    false    275    292    3357            �           2606    48348 3   mpr_master_subdiv mpr_master_subdiv_dist_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_subdiv
    ADD CONSTRAINT mpr_master_subdiv_dist_id_fk_fkey FOREIGN KEY (district_id_fk) REFERENCES public.mpr_master_district(district_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 ]   ALTER TABLE ONLY public.mpr_master_subdiv DROP CONSTRAINT mpr_master_subdiv_dist_id_fk_fkey;
       public          postgres    false    288    3381    295            �           2606    48353 &   mpr_scheme_anand mpr_scheme_anand_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_anand
    ADD CONSTRAINT mpr_scheme_anand_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 P   ALTER TABLE ONLY public.mpr_scheme_anand DROP CONSTRAINT mpr_scheme_anand_lcfk;
       public          postgres    false    3364    260    279            _           2606    48358 $   mpr_scheme_awcc mpr_scheme_awcc_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_awcc
    ADD CONSTRAINT mpr_scheme_awcc_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 N   ALTER TABLE ONLY public.mpr_scheme_awcc DROP CONSTRAINT mpr_scheme_awcc_lcfk;
       public          postgres    false    203    3364    279            a           2606    48363 .   mpr_scheme_baitarani mpr_scheme_baitarani_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_baitarani
    ADD CONSTRAINT mpr_scheme_baitarani_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 X   ALTER TABLE ONLY public.mpr_scheme_baitarani DROP CONSTRAINT mpr_scheme_baitarani_lcfk;
       public          postgres    false    279    205    3364            �           2606    48368 "   mpr_scheme_doc mpr_scheme_doc_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_doc
    ADD CONSTRAINT mpr_scheme_doc_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 L   ALTER TABLE ONLY public.mpr_scheme_doc DROP CONSTRAINT mpr_scheme_doc_lcfk;
       public          postgres    false    279    273    3364            d           2606    48373 *   mpr_scheme_doptuhd mpr_scheme_dopthud_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_doptuhd
    ADD CONSTRAINT mpr_scheme_dopthud_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 T   ALTER TABLE ONLY public.mpr_scheme_doptuhd DROP CONSTRAINT mpr_scheme_dopthud_lcfk;
       public          postgres    false    279    209    3364            f           2606    48378 0   mpr_scheme_enrollment mpr_scheme_enrollment_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_enrollment
    ADD CONSTRAINT mpr_scheme_enrollment_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 Z   ALTER TABLE ONLY public.mpr_scheme_enrollment DROP CONSTRAINT mpr_scheme_enrollment_lcfk;
       public          postgres    false    279    3364    211            h           2606    48383 *   mpr_scheme_foodpro mpr_scheme_foodpro_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_foodpro
    ADD CONSTRAINT mpr_scheme_foodpro_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 T   ALTER TABLE ONLY public.mpr_scheme_foodpro DROP CONSTRAINT mpr_scheme_foodpro_lcfk;
       public          postgres    false    3364    279    213            j           2606    48388 .   mpr_scheme_gitanjali mpr_scheme_gitanjali_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_gitanjali
    ADD CONSTRAINT mpr_scheme_gitanjali_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 X   ALTER TABLE ONLY public.mpr_scheme_gitanjali DROP CONSTRAINT mpr_scheme_gitanjali_lcfk;
       public          postgres    false    215    279    3364            l           2606    48393 0   mpr_scheme_immunisati mpr_scheme_immunisati_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_immunisati
    ADD CONSTRAINT mpr_scheme_immunisati_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 Z   ALTER TABLE ONLY public.mpr_scheme_immunisati DROP CONSTRAINT mpr_scheme_immunisati_lcfk;
       public          postgres    false    217    3364    279            o           2606    48398 0   mpr_scheme_inspection mpr_scheme_inspection_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_inspection
    ADD CONSTRAINT mpr_scheme_inspection_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 Z   ALTER TABLE ONLY public.mpr_scheme_inspection DROP CONSTRAINT mpr_scheme_inspection_lcfk;
       public          postgres    false    3364    221    279            q           2606    48403 *   mpr_scheme_instdel mpr_scheme_instdel_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_instdel
    ADD CONSTRAINT mpr_scheme_instdel_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 T   ALTER TABLE ONLY public.mpr_scheme_instdel DROP CONSTRAINT mpr_scheme_instdel_lcfk;
       public          postgres    false    279    223    3364            s           2606    48408 ,   mpr_scheme_jaldjalb mpr_scheme_jaldjalb_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_jaldjalb
    ADD CONSTRAINT mpr_scheme_jaldjalb_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 V   ALTER TABLE ONLY public.mpr_scheme_jaldjalb DROP CONSTRAINT mpr_scheme_jaldjalb_lcfk;
       public          postgres    false    279    225    3364            u           2606    48413 (   mpr_scheme_kanyas mpr_scheme_kanyas_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_kanyas
    ADD CONSTRAINT mpr_scheme_kanyas_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 R   ALTER TABLE ONLY public.mpr_scheme_kanyas DROP CONSTRAINT mpr_scheme_kanyas_lcfk;
       public          postgres    false    227    3364    279            w           2606    48418 1   mpr_scheme_karmatirth mpr_scheme_karmatirtha_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_karmatirth
    ADD CONSTRAINT mpr_scheme_karmatirtha_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 [   ALTER TABLE ONLY public.mpr_scheme_karmatirth DROP CONSTRAINT mpr_scheme_karmatirtha_lcfk;
       public          postgres    false    229    279    3364            y           2606    48423 "   mpr_scheme_kcc mpr_scheme_kcc_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_kcc
    ADD CONSTRAINT mpr_scheme_kcc_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 L   ALTER TABLE ONLY public.mpr_scheme_kcc DROP CONSTRAINT mpr_scheme_kcc_lcfk;
       public          postgres    false    3364    231    279            �           2606    48428 *   mpr_scheme_kishanm mpr_scheme_kishanm_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_kishanm
    ADD CONSTRAINT mpr_scheme_kishanm_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 T   ALTER TABLE ONLY public.mpr_scheme_kishanm DROP CONSTRAINT mpr_scheme_kishanm_lcfk;
       public          postgres    false    3364    279    277            {           2606    48433 (   mpr_scheme_landpp mpr_scheme_landpp_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_landpp
    ADD CONSTRAINT mpr_scheme_landpp_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 R   ALTER TABLE ONLY public.mpr_scheme_landpp DROP CONSTRAINT mpr_scheme_landpp_lcfk;
       public          postgres    false    233    3364    279            �           2606    48438 .   mpr_scheme_maternald mpr_scheme_maternald_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_maternald
    ADD CONSTRAINT mpr_scheme_maternald_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 X   ALTER TABLE ONLY public.mpr_scheme_maternald DROP CONSTRAINT mpr_scheme_maternald_lcfk;
       public          postgres    false    238    279    3364            �           2606    48443 "   mpr_scheme_mci mpr_scheme_mci_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_mci
    ADD CONSTRAINT mpr_scheme_mci_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 L   ALTER TABLE ONLY public.mpr_scheme_mci DROP CONSTRAINT mpr_scheme_mci_lcfk;
       public          postgres    false    279    240    3364            �           2606    48448 *   mpr_scheme_mgnregs mpr_scheme_mgnregs_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_mgnregs
    ADD CONSTRAINT mpr_scheme_mgnregs_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 T   ALTER TABLE ONLY public.mpr_scheme_mgnregs DROP CONSTRAINT mpr_scheme_mgnregs_lcfk;
       public          postgres    false    3364    279    283            �           2606    48453 .   mpr_scheme_minoritys mpr_scheme_minoritys_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_minoritys
    ADD CONSTRAINT mpr_scheme_minoritys_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 X   ALTER TABLE ONLY public.mpr_scheme_minoritys DROP CONSTRAINT mpr_scheme_minoritys_lcfk;
       public          postgres    false    279    242    3364            �           2606    48458 *   mpr_scheme_saboojs mpr_scheme_saboojs_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_saboojs
    ADD CONSTRAINT mpr_scheme_saboojs_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 T   ALTER TABLE ONLY public.mpr_scheme_saboojs DROP CONSTRAINT mpr_scheme_saboojs_lcfk;
       public          postgres    false    279    3364    248            �           2606    48463 0   mpr_scheme_saboojshre mpr_scheme_saboojshre_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_saboojshre
    ADD CONSTRAINT mpr_scheme_saboojshre_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 Z   ALTER TABLE ONLY public.mpr_scheme_saboojshre DROP CONSTRAINT mpr_scheme_saboojshre_lcfk;
       public          postgres    false    3364    279    246            �           2606    48468 0   mpr_scheme_safedsavel mpr_scheme_safedsavel_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_safedsavel
    ADD CONSTRAINT mpr_scheme_safedsavel_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 Z   ALTER TABLE ONLY public.mpr_scheme_safedsavel DROP CONSTRAINT mpr_scheme_safedsavel_lcfk;
       public          postgres    false    250    279    3364            �           2606    48473 /   mpr_scheme_samabythi mpr_scheme_samaybythi_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_samabythi
    ADD CONSTRAINT mpr_scheme_samaybythi_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 Y   ALTER TABLE ONLY public.mpr_scheme_samabythi DROP CONSTRAINT mpr_scheme_samaybythi_lcfk;
       public          postgres    false    252    279    3364            �           2606    48478 )   mpr_scheme_sikshas mpr_scheme_sikhas_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_sikshas
    ADD CONSTRAINT mpr_scheme_sikhas_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 S   ALTER TABLE ONLY public.mpr_scheme_sikshas DROP CONSTRAINT mpr_scheme_sikhas_lcfk;
       public          postgres    false    254    279    3364            �           2606    48483 &   mpr_scheme_svskp mpr_scheme_svskp_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_svskp
    ADD CONSTRAINT mpr_scheme_svskp_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 P   ALTER TABLE ONLY public.mpr_scheme_svskp DROP CONSTRAINT mpr_scheme_svskp_lcfk;
       public          postgres    false    256    279    3364            �           2606    48488 &   mpr_scheme_yubas mpr_scheme_yubas_lcfk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_yubas
    ADD CONSTRAINT mpr_scheme_yubas_lcfk FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code);
 P   ALTER TABLE ONLY public.mpr_scheme_yubas DROP CONSTRAINT mpr_scheme_yubas_lcfk;
       public          postgres    false    258    279    3364            �           2606    48493 Q   mpr_semitrans_location_mapping mpr_semitrans_location_mapping_location_id_fk_fkey    FK CONSTRAINT       ALTER TABLE ONLY public.mpr_semitrans_location_mapping
    ADD CONSTRAINT mpr_semitrans_location_mapping_location_id_fk_fkey FOREIGN KEY (location_id_fk) REFERENCES public.mpr_master_location_data(location_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 {   ALTER TABLE ONLY public.mpr_semitrans_location_mapping DROP CONSTRAINT mpr_semitrans_location_mapping_location_id_fk_fkey;
       public          postgres    false    3362    279    309            �           2606    48498 R   mpr_semitrans_location_mapping mpr_semitrans_location_mapping_user_type_id_fk_fkey    FK CONSTRAINT     
  ALTER TABLE ONLY public.mpr_semitrans_location_mapping
    ADD CONSTRAINT mpr_semitrans_location_mapping_user_type_id_fk_fkey FOREIGN KEY (user_type_id_fk) REFERENCES public.mpr_semitrans_user_type(user_type_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 |   ALTER TABLE ONLY public.mpr_semitrans_location_mapping DROP CONSTRAINT mpr_semitrans_location_mapping_user_type_id_fk_fkey;
       public          postgres    false    314    309    3417            �           2606    48503 :   mpr_semitrans_login mpr_semitrans_login_location_code_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_login
    ADD CONSTRAINT mpr_semitrans_login_location_code_fkey FOREIGN KEY (location_code) REFERENCES public.mpr_master_location_data(location_code) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 d   ALTER TABLE ONLY public.mpr_semitrans_login DROP CONSTRAINT mpr_semitrans_login_location_code_fkey;
       public          postgres    false    235    279    3364            �           2606    48508 9   mpr_semitrans_profile mpr_semitrans_profile_username_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_profile
    ADD CONSTRAINT mpr_semitrans_profile_username_fkey FOREIGN KEY (username) REFERENCES public.mpr_semitrans_login(username) NOT VALID;
 c   ALTER TABLE ONLY public.mpr_semitrans_profile DROP CONSTRAINT mpr_semitrans_profile_username_fkey;
       public          postgres    false    312    235    3306            �           2606    48513 3   mpr_master_department office_dept_office_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_department
    ADD CONSTRAINT office_dept_office_id_fk_fkey FOREIGN KEY (office_id_fk) REFERENCES public.mpr_master_office(office_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT;
 ]   ALTER TABLE ONLY public.mpr_master_department DROP CONSTRAINT office_dept_office_id_fk_fkey;
       public          postgres    false    287    290    3383            �           2606    48518 ,   mpr_semitrans_user_privilege privilege_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_user_privilege
    ADD CONSTRAINT privilege_id_fk FOREIGN KEY (privilege_id_fk) REFERENCES public.mpr_semitrans_privilege(privilege_id_pk) ON UPDATE CASCADE ON DELETE SET NULL;
 V   ALTER TABLE ONLY public.mpr_semitrans_user_privilege DROP CONSTRAINT privilege_id_fk;
       public          postgres    false    313    311    3409            �           2606    48523 (   mpr_semitrans_profile profile_id_pk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_profile
    ADD CONSTRAINT profile_id_pk_fkey FOREIGN KEY (profile_id_pk) REFERENCES public.mpr_semitrans_login(login_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 R   ALTER TABLE ONLY public.mpr_semitrans_profile DROP CONSTRAINT profile_id_pk_fkey;
       public          postgres    false    312    235    3304            �           2606    48528 9   mpr_master_scheme_dept scheme_dept_office_dept_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_scheme_dept
    ADD CONSTRAINT scheme_dept_office_dept_id_fk_fkey FOREIGN KEY (dept_id_fk) REFERENCES public.mpr_master_department(dept_id_pk);
 c   ALTER TABLE ONLY public.mpr_master_scheme_dept DROP CONSTRAINT scheme_dept_office_dept_id_fk_fkey;
       public          postgres    false    291    287    3377            �           2606    48533 )   mpr_semitrans_check_first_user user_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_check_first_user
    ADD CONSTRAINT user_id_fk FOREIGN KEY (user_id_pk) REFERENCES public.mpr_semitrans_login(login_id_pk);
 S   ALTER TABLE ONLY public.mpr_semitrans_check_first_user DROP CONSTRAINT user_id_fk;
       public          postgres    false    3304    235    266            �           2606    48538 @   mpr_semitrans_user_privilege user_privilege_user_type_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_user_privilege
    ADD CONSTRAINT user_privilege_user_type_id_fk_fkey FOREIGN KEY (user_type_id_fk) REFERENCES public.mpr_semitrans_user_type(user_type_id_pk) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 j   ALTER TABLE ONLY public.mpr_semitrans_user_privilege DROP CONSTRAINT user_privilege_user_type_id_fk_fkey;
       public          postgres    false    313    314    3417            k   �  x��X�o�8~��
��=\/��y�u��6l+��0GI�8v`�����������:�Ǐ�ER�#����Mη�,��m�����d)��e��;���jAޒ�5�7l f�d� ����C�~�X�S�/���-��N���M�tߊ�(�BT-<�3���:��	QB)YWdi����y+�;�CS[��R�x�x�����bm�����3/��gj��#�����f����|��ф$�T]�k~R�VT�7�Uk��mՈ���5�!��H�����篷w�4����W8��|WwJ��rM���휙�+�(3��Q��!&��0s�s�EȈAeE4J@̓J�Wu��n�m΋��pD����1#cNF����n!���n��M�`W����8����w��E�G��n�BV�y)�=F�!`��0��QFf��n	�YoV��>���D4]b!�-�F���h��%�/˓��c�B��� B㈤/y��y�^�Ih��H/��<�M�Ӭ �6������D)
O12'���u~<6��3�NH�����;���@��t! ��#�$��	��e)��ߣ��`�ID�Bk���Wۀ�k�X�5��O�,ײ�Z��7��j �A�2 �C�$�+�d؝jk>t����u`h�\���l��B>H/(kU���cNZ ���dF���:��^V��PB!m!���� �L�tJ���ұ�0����UR��r��"֋�6{3�=~�N���ӔD}��(T�6Á����0�e읕�iF�a��ՆW-h�v7(� TA@g�+�;@mm��s�OV�t��t1��no
�y����8o����n&�k�;��U`V�&Fk/��W����	S�B_[*�e����ti�:@3�� �0���/�"�����0u��)�AY��:;��N1�P�m�Q;y����d�8����=��h���BW��5:��� FS��\�B��%2^z���yT{Gh1l�0�L�]~��i2�ַC/�yАoJ��+��d[���;�A�Q�lwE�2⑙L+�Q�hl�L����޶�UTX�1o�a�� ��(�@Eq�[�i�Xw]TPEŏ�?M�wL�oj��§�<��֏X����'�.έl�R���h�M� 3b��0�������N��D!Y�EC���Gh�9Pf��-��He�jHeSg@E�	�^`��
^T��%��U����R��n��}E���A��Y�N�%�^{����Y��/�s��~bWvS{�]%PROE��kw9�P�O�S��c�����6��9:�F-6�Qw�����ˡ�������9c��=V�ye:�pv��7p+ʦ���á-���cU��b���en��X׵�Dɢ_�S��2�/Y�Uh��
�PlnF��4�s7�n�h�Vu�����n�s�@0M�Rm��3��zu7���`�bo䕸bq4�]œ(}K����G�)���肩�� ����{[����:�z��1��P�����]��ӣ$�|tv��@�a�M�6bl�p��E�����K҉���꼹��H�p�{��6�w��!�����H_�j`���~l��{�oe=2���&�+t�i;J$p�x��h�5��E���0��-�/my�Bw��_�_�
��;c� \.����ض;��[�c.���i!�B$�e�����vka�C�^�5����Qo ?D��;��GV�N�r�A�ԭ����D%��Ӹ���MZ ~A\j ���F$�[yT^� �_�|��yX��ןn�"A��\B��/`�?I��[U?v��y)�R�����ZRw��M3�2C�A�g�H�6�5�S��]A���,�Y�Әi���I��+��#�؃��(�ƿ�?�n��������S�      �   �   x�E�A��0E��)��:M�vi
��4S�)�?v�`��_b�7>0C���E�!yA[8�5q��:a�U���	����9�1,�V���X=�=?�����*�����U5B��tjS����F�,��)�d����r�J[�-��
�����ʞdQ���OE�g.�W.�>�j�Q��鲆�0�&�Cq����:"��F�      �   �  x��V�r�(}���ػ��TQ-`*.�������=��<������q
<
�F���5Ćn*Р���_��B�N���$Iɲɵ�QioeSVд��x��'���)�~�cЛ��ة7n��00V7p�]L!D��~���d"�K%{X�d22Q#e����P������LqK��rAQEN�d��d��A	enG�wu"9Q>J��ٽ��L��^�K�v���Y�Q�ڧ�%�#��M�Ҥ\��� �0?���G��B.�&�����,(�?
X�\��	�S{�w���E�}9{���њS�#ϓ�$Q��$ιi�ԦS� AtJT=�}1�k�����56�B���.�h���ŷ��U�Y���L2'��X�oU�|0i��B�-���TG s����d��j��-^��t
�U��ㄪ��^�{:��J��&p0��+Y��I�l�E-�U�-��~����-��j�Z@�)��/__�g]5��%j��h�$r�ȥ&&J9֛���R��]���c\7ʚ�[ڌ��|(e]5�s�	�N����3�>'b����E�����Iw5�c�.ip��H��&Ȁ15���A��~r?��h���e�{�3h�vI����} �d��ϴ�]�� �q˲L�f�pl8I�P�\a���/��Y<�qX�a�G��w̮�!�Gܛ).w9f��ꬫ��'A wD����0����G���GUsL��å0���'�G$�m�Lf�3��
HW�_+���,�;��Q�0�}��+��c){j��_��x�؝�0�m��v�
'�����̿�N�6*�i�Ĭ"�+	����
72�wp^�OPg���x���� ��h�Y�~ ��A���k���UDA�Twk�C,7���Q>�>q߀*��{��-]��/'��r/+�1e*�s�_j��#�����}��O^m.L��K�دo��� �U`      �   	  x�mT�n�0</��?��<�HJbC�I�uы�m�4)Ҵ@��Kʉ��[�ᒻ;�� 삑�MS�C�*�}H�l�S��ՀA�ߒ-A�F�|��H�ܷ�����hSr�=��
�0Z�K������a�6�~L��;`��a@g:��b�N�#�By���I�H��`;�����)��A�HI�X1� �<w��Ǉ�=���_�q������w�NO����\�]�� 5zn���tz>������ο���?ʮx~�}����TeO���{�v�KN/��A��H�D����:d�Z���8U?Z�#��+�5KhM��̿"Q1���e��ZMi&&HW�UP���p���8L:rl[4!����-4(ot�\Z���m�,��C^߁��2y�A�>l�,��p�Zg���@�Ԑz�8�+���conc���)>�\M��p��D��%��!ׁزjQˠف4�"1�Z� ~A,X��)Q�|>���SC��O]��/�ɃرZ\�G/�}�%PŃ�j���9��=19fG*��֏oG@�A�\D����1ElY���o�C9ba/b�13[�Rx��DÐ�t���!��a�ӗ���+�7y_'"e߱� rA�[�rX|+���qˢ�M9��<���cI�kG3��j�}7�\�78�-a$G9�:�3���x�>b�M�|F��|Y*m���hi�D�aFj�����5e���p���=�)����x�HƼdzMSAg��hMF���,$���D|z��OH�      t     x�uT�r�0<_�c{iŇd����D"5$�T3���((;�:�4#��H	�-kل���%&A���u*kr Q��s�P��0SzuŇ����{���|-�L��|�`�'l��%N��}�����.���pz�\�ي>���4�T}W�"�S@j<�X�|]�.�4x�d��~ـe�b��A��B)�������U댎�2�PO�by���`�(|o��Di ���+���ՠlw,p�n� A�Qv{N�k�/���Aq����ه�<KA�@>q���yc,�&�cF�!��܍cT,��"gբ��}�_07/S���BQ
i��S9Q��G�wf՝������ �:T�Sk���䆘������{/��6*{FZ׵��Mq�?���~�V�b��vߠ�����eZs�#	���Ĭ��e�׏a��kϬc ٢n �bY��g�y���mP��I����P�]��N�%��Q�P�9{ki�%��gԦ�\p�[�AԎ���ݷ)Sz#&�_+\��~�Pǧ;X���� ��	�Z_��D�Q%0
���CɂF�;�#`���_�y����j	;@߃i�(�R�:���觩Nh��<�i��n�t�_����h��]��i�m�Ŀ��PM%,      �       x�34���r��4��464�4����� <4      x   Q   x�3���KNU�%��y\F�n�y�yə�9
���E\ƜΉ9�y)�E�	�wFbQf��o~~^1+�&u��qqq 8��      |   �   x�M�Kn�0D��)z���_N� R*+�b�����Jl	Y�q�CR?~=4�(B�O���BHq��r�o��f,Nf/���d�P��\���YG}b�Ư%83��lqOM�ao��a�8xC#Ϗ���R�T��l/9~���H�W�I��N��t���0�`��槎X��,����8�[3��G��i�I��2�'�?h���gf��P6      �   '  x�]QIn�0<S����~d$�&�Ő�)��w��a;��4�L�K�l��M%V��96�Z�NF��c^��)���0r@�3�4�B�҃|ź�N`z&�Y6�MN������^��.0$/�6).�S���p�iinP����{�f.=�o�A�2G̯l�	KP*+vج��RXE[c�z>�}��=�0�e���G�T:՜���ի�ָM��Lߖ�ͬ�L��k�Qʗ6�O��r��$�XIen%����n1�`)UR����c�Ұ����j[�H\f�~wJ�?:l��      �   �  x�%�э1������k����7XB�(Q�;yOK=�M��ee�}ٲ�۶��}z;�~�Z��0J�a9<4#�<4e�5���T�ۨ��*��c�硑�jz��S#�ӤΦ��j�<�T��(}��*OMUmO�X�k�J��Tq}���O�Z>5�{���:j����2@?r@���^C蜲!� �� �!XmB�[�����7\\�h�6$.���p,\  2��2���2� ���6�wkpw���5��G�yP�$B��A٠'6����,l ���`���� �$6������R��a8� .6w`l �`b(�1�.���Ɇ�G6��P�dC��p A:�$��|@��V'���@�C�N����6p��
��ۡ�vhD��o�F����{;4"��ȷ���vp��n�ہ�Ž�������W      �   ~  x�mT]o� }�_��IS���<�I�ei���6M�TC��`� �ʿ��I���!ܫ�����4�{�e��x(K�_�NIl!�$�p�%�Ӽb���旨�2NU�ܯ�?ܮ
�>��K�0XI��*d-�@L>��K��%Y�v] k�ݳE��G�����xeE8cg���*�uVv�+�<�pj�i����Tw��ц���������Cg$�_�Pv:tN�����<a�)���`k��i�HxN�(!�r/���Cҕ�h����b�s�<I���dӇک~�1剒�4�/����9��DN���d�Bl��T��;�+�i�^� �"F��P�q�č�a3�'<e	6Q��=�Iq��\,�&�'�z���	q}d���S�50�A8�M�+��j�|m�lFy"����?��?g3�%BU�y�j�p�+�%���;�-��oY�nb�s�%B���-~����mK�T�L c�$B)�����!eQX윍h��t�v����.A^�Ij%��CI6C*"2���?�c���צ9��(Ԉ�1�R¦4K�	��	�f��A~�o�٪��Y�K8�y���Ǧm��U����*|�L'�М������_�ʖ���+v{����ϔҿ�o��      �      x�3��wQpr�sw������ 0�2      �   1   x�3�vtq�425021�44�4�2��	ur�t�[����b���� ���      /      x������ � �      i      x������ � �      0      x������ � �      2      x������ � �      v      x������ � �      4      x������ � �      6      x������ � �      8      x������ � �      :      x������ � �      <      x������ � �      >      x������ � �      @      x������ � �      B      x������ � �      D      x������ � �      F      x������ � �      H      x������ � �      J      x������ � �      L   8  x���a�� ��)z�6���Y���X���:ٱI���˃�S%3�?#c���(;�FdHF���#���ND 3HH}c�\�(��uC��՝y�n�h������I����Ej��Jj����k�T�e��-�״����O��/F,q5��<+���n�w�p�HS9�gX����[ҳ�;L�\�j��s�]I���e(ǔ�]��5L922ܪ�F{������p�5��mZ�,py�8L�`Z%�a&���/���ʼ
Z�b�U�Yp�5�b��Z]=��p~w�I�O�?�,��9�"����s �/64�[      �   b  x���Qn� �g8E/�ȿ�|����	I�ui�R�O��  �"lLLA��F��=�45M)�������I�^�V�_*�T�\����PV|�*+%
\�3�5~FX}Dx��g)��o�~`7��ڻ�����f�)���:̝r���͊��Y�p�].�9�U��h?���s)���K��R�爴�EINw���D�	�\K�g�',��I��l����e�����	��չ�%�{M�s\5-�c�|z6U�ic���J�ϸ�{P��϶ȩ]�K��ސ#϶� C�IO��[�gK�P�����2��l��)����5�b}�އ5�	~�G���$V>/#��9`�_{��3r�W      �      x������ � �      z   �   x����mD!�o\E��3�u-鿎��HY�F ��:�l
J�R��P�_z<���q\ �{������ū�M�DjR��1j--k�i��Ui��P<��k�ET/}��z.��,;|w�z��z�g��<OV�ڳy���z_�dNvk���˄f� ���� ��$d6��d(�%fB�s�Yq��	=�S<������̈́�c/u�fm����s�35CpX�qb��/���_쳝W      �   �   x���ۍ1�oS�6�\l졖�_G`b)QfeK~|!�J��.���{�=�?>]̹a.�:r�a�0�A ]�:\z��qþ+�5k�ZK�Zh�t��ƙ7)N��5��v�Vz��zF}�4:�u���u�yͲ�<oV�\�<�jq��R)g��5�zM&�ꡓ�lhw�{�B�JL@D��L$��$�C�돊��$��Q����Qq���c/ugn�I6�A�A���"��x`.|�� ���z      �      x������ � �      N      x������ � �      S      x������ � �      U      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      W      x������ � �      Y      x������ � �      ]      x������ � �      [      x������ � �      _      x������ � �      a      x������ � �      c      x������ � �      e      x������ � �      g      x������ � �      o       x�3�4�4�2��`�L��I30���� d��      r      x�3�4204�4����� %�      �   �   x����E1cQ̞������XH'�Y,���*y��X^a��|�­U��]�gl��۸����\!�6xB�q����qq�#�A�ƋV��M7�rDﺮ�c��5|����xPΐBnV((&g(*g(.g(2gLl��s���?7�(>      P   �   x���1��0��>c�F�?�od�3N �n)r 7Zuovy�ϼ����X8ϝ�E!��8F ����z��O�ӏ��pB&�p~��U@ 5��z@s���܂�������QK�]�Tޜ�'�,q������hi�w/��ܜ�{��S�WC0-A�@k\��sjP>h>�uy߹��C�?C�wZ�R
�a      �   �  x�uR�N�0}n�"_@�u��hb���y��F�*I7��q�u�
^_α�gQ���̎�9[-4Av���O&��KY#�g+��SX��F�U"�JWI�	��	������B:~��@.;6I�+:�$n� I�AD�`S
�9��|�jj�Ŋ����������5��w�<��#���j~Z½c)�3�Va�,��芊׺�'��d�k;|�'�% H͸�5ط� ۲�HG�Oo���g���XvV#�h�t��Oq��x���E���6{!;@/P� ��!n��y4���G�@�t��TǼ�:�,h_�F����/���eLֈN��[�]����څؼyq�����N.e��Ӻ���pK�K3��~�Qڻ���n]4��7<��'t����~U�UӺ��\�q��N�      �      x���Ƕ���-��Ϸ�Z�������_��\{�����UXSf�>z��4���O���W6~��MΤ�������8I<A��I�?���>'��4o�tvD����^�_~>�;��xsL���o{߿Қ����+�{8��RDt�^�0�G����)'Np���N�|~o�g�Ҹ��	T!��~R���}���F`NI�>T"���k$^�>�j�\
����dW�{?��-��B���S�n���x��x��s( ��`�0n�N�^��G��X�aF��pU��O�ݓ��MS�E����3���1Ǚ������6��6�����96�5�![AТ��Wx��-����8�U�d�L�
ʣ7ɜ��ւ)�0����c��ZK��O�����(�#���+J~�T(1����[�t�X�2�3"84b�5 ����#�|P]����aO��ZLs��`�w���t�DLo�FRО����!�O�-�"�ޚ�M/�N�.�U��ጹ��[N��B+�;̵�A|���W3�Rh(Ɍ�ϓ����SA^���?���������C�^9����R�O�Q�n{fLd��&�ct�jW�S�$���`%{]]��J����/l]:�ͳJ�o�Ԥi�h��c����c7�50=��
�#���;>�&)��!�4&4��k��R�yȬ9�B��U�,zOf�թ�Si�d��>᪾�g�F6Q��wBHY^[c	̰�Z)�H5��Mk��E���J^� �9<e��bp3w��li��&R���@R8U_�û\�*Z�)���;��ٮ��/��YA��3�8���\��&R�D�tن&"�^�pw���My�ٜ�=x�E����l3��Y[�c|�m�	�e|f���ZI�`D��pCr��"���ru����af`RS�g���<�%����Ǽ�BI�F����|?�y���΁@�5����M��	ȽI�o�/Ƨ�W�T`"�䆤�_�՟c����wۏ�>��1����ȇn_�'�I:�j���N��6�����2ƹ���
߰	��h*S�s�*�
F��';2n]�q6Jh�	� �|���`���s�-��0�q�v�����Ԫ�#��g5��U�;bWRc8�Ť�F'$A�i&�z�l��~�*a<�$P^ZP���V �����E����|���dƍ,��ڎȱ�E����Gn��)/탦���أc}3���ƪLE�%�0�}�����]9�)_���0�gap[y��e+U�����Zr�8��8>��d�zdA���x㎏*�>|j���Bu����m�#�ٙ�c�lSg;��M%V_&���IJ���RT��#t���/��%��cCaH9����¬��ƫ�bs�c��PbC��|�2�]!��m���)E4��*7$��d^�Lv!q�o����>��X�~�!b�Y�|��� ��A��0�e3��l�3�i���d|�yc�f������#5�g�у�6��-�=��Ra~f��.�^��!� b�ﳳ�lm�2Ŷ���#e?n���1���͔`�Aeq�fV�����S���=����F�?P��@�!ϭ�����N�E�ا�'Ό�lS��I�g".LC"���wp��6G` c���a���b�w�px�uV>*W��Y�ƃxJZ�[� ��p��V�����h�@~��b*���|��/{��f)�Ry�ϊ�L�����﹭���5l2b�V	�c��u�JͨuŁ�4���Ap�B�
���(2!jMAͷކ�{�=���i�w�>��1�� ��K���� ��FiC��c姯�����.s������H4�!�t0�.�SɺҼ@��;_����V��9���Z����h�ǭ���p	��sNT\�+�� �α?�G4ļ&���#���c�sR�X��5"�^ �wOaF6���!�����	��ߘ_ �dI�~�7�
�������u���sy�ir1V��(���s���3��m�Jm�g(��xY��9&=ڰfX��^�z��:}�u=k�I0M�p���
']6<�ű��`���O��71��?���&����'Ie�˘����C��H�
��l�\�їs��*`i��gkr�6�iʤܻ}�������ʔ�h����vV�o5�(\�kT,�0��p'�U�<C �Z�Lr<�R��Dyw�*���ֵ�$j8��^�;��Su�� &�E�P�����+�r[�oY�7�2/��	�m6�|�t��-\�۞h�I���#N/_-�PL�K+:(�J6b���oz=L�ܩ�?/�Q>6~���_70p
[��+�Ò	b@�t����"�g}L2)��^0��eQzpOY������)$�y�c��������;F�?���'bQC��	>���KJ ����/H<��;��S)�n�7N�� �Be$���R����1��H|�_�8Bķ��o�S6�'��d%����Lli���!O$fJ��4T�e�qA�	��1:/�=����Rv~]�JcC�^O�2Cѣ�Z�vy��F~��M��^{�l��(>D�@�5���b�y��x8�!9���Z�#}���-����0u��_=f��q��7x
����1|MPG֨�q����>j�E��^♙�k�������g_C�R?�J���|y�$���7�>6RJ�h�&j@�H��%}>�:����@#���W�4�����������/����W&O�ݡpҭ��ɐ(@DE�M�p눣��?��s������S'B���۝�W�XN�)zB�<�@�a����+�R�.���Y��&@~��Twܭ�E�E�s�(p��aC���5�5B:�oA�B��mE�s3��wص�< r��vdNILa�������%M+,�����+T���*W�K��Y �ښD�c}��T'Mf
���oa�D�8�����[���)EJǆ�۠��\"z�^]���\�0dO�Sk3Qj-v�4C��E/��:��">���׭qSV�K|eR�b�8����/���w�W˥/z^3'r��G��e2w����*�/��Wl
�����B#�okR��D'@���(d��}-����E�ч|��e'ݕw�(v��]��OɰНW%�YʹpA��-`0�ܩ�+%�A�jܺ�U�\��-�]e`=@��t%@����$X�N�nW��x��Q:�DE�2���'u!�a��i���ExF:����"J����ҕ��)�D�8v߬Tp�K	>��!0|-tu)�`iv�����{��#�MaUYD[��k�,ܔ=lϣ%6�{ww�ŇdT�}Sj��<��,
i2j��;��jj:C_�de�?#8�wL���Z����qO�z��ˍ<Q�ɯ!�m�@6:�����2I0,���'��C]{(�D�NA�O/��n��Ra�x4�K]����$?����;m�q;p+��5ۚq�:����ǰt�������p�x�����,�qq��?��m�$L�ǟ�yQB�<I����j?K��YP搵��V�`cP\����$����@���D�!��i_1���w��q8�Ǆ�w�sPYƁ�t�RV�Pv�r�e��oҎF��Tq�!B�7ѭ ,��?�]�.M�-eh������6�>��t����.Y�E����1��2�K䎉���P�|.@a^fq��4[�� ^���x������7ȌG#�$+�����P��c�Oh)���f����}s�N��Jq��s�g�Y{J1A��t��9+��9�K;Y&��m^m���\W����c�N׆s\�$0Ŧ����B��9�?���M(�\!Ea6�"ΊU��bs��Y¶���t"�{����A��ݽ���N�g -�	�_�Y�𞤋߽	Kd�5�S�g������1�j��?+��~��H��z��I'Xd��@�l��ꅎ�b��K��[ÿ���p�w����>�/"�Y���tTi�j�E:��O�|����(C�C�O}M�q���'2f���ggQ�.ԣ��)7ߠH�&�R"��*@u�S���]fk�ߧ��M    ��I�'ΉC�w �t6빱��DD��9��i%��q�G�.L��� �KmfJM�q�/ؙ����F!չ�-�8��_��
�G���U"<�_n��{�2Za�Wo$S�5á��n�LY��(�W�\*�GBB�ѻ��נ}�`tE�$5u���
�:u��$Ʒ��'��E&����ٽz��3c����0��%
�"�+4eW	�0`{)�G�<@#b�֕���w`5n��g���q�ׁL=T���@+���e��o�@��������#�����#}lhO���=����n���鿂I��R�<�J�y��f�M-ʆ�\�,$�D�K�ݞ�ZK��]�L�,��+��]}�C���6%J*��|&�8C޹��,dNdf�&��to�b��p��lz�98�n�����*\�S�8J�o<!�'�Ym��Z�$�".�k�����W��%�]�X[��c4��=����ǎ���}�þk�O٢�(c<���W�?��H:[�^���ga�;����}�ay��E$�0��!����.��~ҙt�&�A��[�-MG�� g�p��Oz��}�cJ\�c.{��0~��q/Dq?m�5����%��cI����<t^S�0�ۇZ�:c�(�}�����
�e�as߼�[������ϋ��� ��ǎ{�{3������*o��22�X��7�Ӧ�+Z�W�&��LUKy��m� ^Z%Ά�����_�$i ?d��ӧ�L��wߛP������Uw��eax���q,�RY燐��oϤ��s�.���+��Kо�f�`<���2L���P�&�ͅ؎~o�W>����U�\�)��P�S>xVS(��cW��;���>��$(j�{�ւ�8�j�+x�!��g�)hVѿ<������ʗ�7�"|�"`�bM�ݧQ�Y2���`�)����M�XL��H�=9e����_��x�8��<ݸ�٩H��F�m�Hy�eT>X�)W�)����4����o���&���~��E��4e������p�v�Qr�N:F2�n��d;%��1:W$T�a�Ɔ�$��e[_�j��4c8�j��n��#���}P�2����}'c� �,��{J��JP�tuI�&	Vib-J�!��ױ�"%���u�I:�pc������Β�6]�A��q�b���~�MC��
�=�����r��Rt3�7D���ꈫ8O2j�$N�Y��G�Ҿ�_)�X��d�2y��'>H�?�L�:���<u;��T~��K>	�@_�A�;�^l�I�%���S))�u�Sze	%Wn����K��x�� ����k���j���jjZ�Ew������^���7�<ڕD(��$��2L�pK����~����g�{̍������eOP��COO�Pg�����]���e{y}�8sf?�
)��2���3����"���]�o�i0�J%�S�%@q�9i���z�Q�T�CAB4 p��L�[*"_o�BF�~j:�+i�o(��g�-�3��=Ck��!�g� ,�=1��:��JJф���6��@�s�ﮖ�t).
��^Ά7Ɔ���v��)��gF}���OW}��d�#��_�-$�4*0t6���i|��9��BpD�W��f��}��q��������E���s{����΄�ڸ�\���
���VqMD9����U�'��(��_6���f�0Oq����t�_i�E�Y��}��_��A���gf�����IO���UC�#�s�O���W�rg���Na�²~t*���oS�T8��b�5��١@=�J�϶Y8^F�;���r�
#fM��u��`]�/�r6��v�\�@&Y���ў	�z}��}�����������+Y�������]���Ę������=O98t�8�}d���o�1"��%}��YR�Ҙ>��i� ͮp�
l�cK�� q�5=�gJ	�D�1��/��ݎ��0���R���K���PT �3���B��SC����H�o dW��C%�j���^�~�Ӕ�-.��6�\d�o��ʋW�����-ZH0�1BB���N������{�OzTTq�
��{V��:�N:�Z<��9
0:���z���Q%�i���6 mL����Y����1�l]���~r���Qi�I�`؁}��M �k4A��eK�[�ʉ�6{隖���^�,�4�L���D���gݯ�U�$ʋ5y�k��� �%��X� �C�q���S�7❹�J ������u��w��}0���ػys��Mɚ�v����6s�~2N���7����������T8��.b�q0��j���`�z��2�w�ŜmTH&����__��� ����/ȇ�#*���2,�)e=,S���*< J��3��(�ߏQ>э?�e����o�_����'U����j.3���F�Nb�T�@��Ⴋ}n]�(��� A��{��>Jh��;�4�t֌��(�య�~/��{]o
z�m�΁����?9!�x�9Ҡ�Ú��!7�ە� ����mz�:�۴�m���"��#)�����_�d�Jg�8Q���أ�i�����Y�p����ɸ����� �*a�ɀ<�.�@?���5���謺�>�0����`C��:}���. $�5��W%�������٫o�B�U*�����_��W����Pwh�W�r-��3סv�F4V4�)q��Y9��ŉN��`2�H�����gd�aFp�]\�4������C>�hq�T��k+�b߿�����aw���k��,��Ok����Ow90�z���	 "��h��9�R�1g+2���?;����I���x�y|�����EQ�1r�<.N����v=:_�N��ʿIL1bDx����pv�O�}��������/���"A���4|���Ϸ���j��yE(�\��Ge����/���d������p��z=�hyw	>�tP�Ͽkh���'˒�ߟ;�4��I��Ӷ��4�7�G�E�+M��E�誗]�4@�q��/�5�v�[6is�U�������Ԝˁ����7~���&:us�ge���'(���� 
{uUUFoX),�Ī��83�t�Ճ��j��Ϫ��K>w_"�B
�؀3� R�	x��o��3 ,�2ގ):(@�?σ�����7�ǯ�>	�ع���s��zE}%�!��s/'#Vh�Y<���~�}�˥e����s!
rNw��m�5=Aq�10�����/{�DS�&�.S��Dfk\i��)��I�@���2�of<!]��r�h�+�p����z���'�Þժ�o�} z=T���7�-s�x$�sߗZ�ζ���T���������Wx��PF^!��bO�=i�0�^'�qQ�+>J̶}G�U��u���lO޻��<��z�N���	(\O<
���9����4>Q��cFau�� ]�z
3LmE�z��R���#��E˾������?5>�(F�#��L�݂4�8 �J~qu-Ҏ��o[��Q�ڹ�+��Ԫ+Y6�^�׃�m��b@�H6bA*�O����-?V)@κ���رp��t�g|S�?A�� ���hk�8ξ�\M�>b���Q^k�=�(S�5r;�n|&���bϦ(ao�=�W~���:�p~�vG(�/���ទ����[s\-�P��wd�ah�]gkg�\L�q�h���f�,����F�_}X2�?}H_��7z� �#�Ѽw8�XY�?�d��O���
b��&`�6ȆP���Wpl�l�7�6�}S�v��R�!�ǡz�'���̖�T�v�^v�U?��ؠ�$�_V ͗@��b�Oo�"r� �����Lm{�%�YԜo�P� �Yغ��L��U�ǣq�ؚE~�v�1@P����Ƈ����ܸ�J>�2���'���`x<0��lm�X���O�1F6ѿG�)3Y2�q��Ip��,T�e"
Z�@f�����ӛNϱ��OXK*����J�C��u��(���le��AI\�"�.���&�|�R*
���O��w��Xn��>���< �    Y�����kR�0��o���^\�=�����q��wEo��#�D�1�?x!8�Ў}��8�U���Y�G��\J蠃8�׭���òc*����M�� ������Hmk���yW���~��x�뱿�dQ�"���>1��X�U�)*#�1m��}��F&�b4�mU��o����"�?��+��5U#��K�"�%E.�sx����
v�Ѥ���%�dp}���뒝�ט��<�g�&#��d, u���b��7��n�)4e����=Q{f8�9z�c�SN��Ce���i�b�|����W�0�5�^X'H�a�3�n��`�y`Q��v�2|�^�.%��Sw���W~��S����U��pw��k�1��}x��:�������>N�9��d�aZ�X���	&�A�ٷ63�&%iT{�E�����ij	,:��,�o7퉔r~2�Ϊ�2{|}6��4y<yN��w�vS]�<hg�X�E�\��G�N"?��P��6	���`�,�A����w]��b�D��+p���Dwe�=���z}5K��1���/ �6������|vs��AkY<`��,6�}2Di���4��u`��������~�t����?��^�9 ryW����k��4P���J:#�9��s�`�{z�p�S���O0
��C}�5AFz[���>'��o�dέ�C�x�cϙ�G��j���{7���fc�}�ɶ��f�{��c��{����mo�>����[�%����|M�L����X�Й�>�|MUPÔ]x��9�0�T�Ǵ��v ���d�@������0\q��i�F0E���	 ']����L;�C����u^����ϗ�sK"`oV���WZrN�+r�V�&)8�0hr?Ϯ7`�.�������ţ��]��7����S�Jg��6M�\�f]������p~i|.Y��)Vu/H�����GX"�Xr����8������(���� ��J�Y���1 ��q9�>�v�}Ew:�Kf���6��~���k�����x��7���H�ΌN��R�+��mvھ��?]��@7Z��ً.��=�
k�2�X��C`ǭ�q�F��\L��-ڐS_ǃrxcapO�������Y������H1�}�}�7����Y3����[K�֟�y9��o�:��EY�������$!�[�3Z��-Z��=s�}~b���g��b]�K,�W o��@0r�Vٽ���=��#�a#��?�[�iŌ���Sa��xiØ��0���3M)� ����>u���Rs?��j�Ɖ�H�����jr�]H����_��GV���^��AA��(���9��:�P�,N�T=]�����Ć��C`�1� ��rC��Ug9����t�b�`�d���(�&��~���ڋT^�y�C���|�P�`1􉪬�6�R�zヺ��|�p5����}����b�n���w��=����a���C���ltR���)	�ZГT6:����r�!R�^��"�d���W���{�X7ŋ̗��p�k)K֑֣Ⱥ�����~q�b���Ƌ���儰��ѧD�\h_����4�]�y��%���2�3�~�x�$��g�[�cP�#�Xd�J���a����=V��Y&ټ���������@/�m3��3���L��z���������3��y>1r�9`+R�?�V��[?��w����t���E44fT���nB��A.��_�+%��T��:
� J�� ���,�h�X�2]����;�c�l��ak���Ƀ`FB_�З�z�����(�n=6Ls����q�8:�){���A�ŊV��ag�D[Rj���fH�	&r�s�-��٣Y6lǹ��PgSW]�����ۖ�䏼S��� x�Pg�3��U�Y�\�3���D�4����`��^7h��cjH<W�Huh��y}
�8��y��a�ߤ�_Jf�n�N��gr,[;b�ş�\��'s̤��(�|�A��M=��h�nS��i�Dϧ����	�rk��ݣ� ]�1(/*���6OfPIW�(y�!GN�f�N���+�}����Cw1TĶ�"�ǜ�p>�G����1�6>n�1?�9i��&=��xS�����9-�m�(�+++>:Y����ԏ����(&�vR��|�R�>��ϙ�T�Q���lt7��U4������0�*aө4�랚�J�:��B�L?�e6Qtde�l�W�W�n7��uz`w���]brf�m�Ȑ�?&b-�q��^9*	b\��� �K;�\2G��X�P��JHH�>%�'8"�^.@@h����CV~1�A;v��M�*;�P���|,�����<�&�*[Hg����R��.�ݳ�����{��%�f�ҳ�EG�:S���i�P�1 W`%G����}��{�k��G�����Q�k���`���kr �\:���Kdq9�:�Ō8��4Y���=�_����EO=��)tT��h��D
�?�搕�s��:s����Qms˳??ֹ5��!�ڣ��C���-��5*��V36� �J�F���xf9a�[�=,�����-�N���Pq�e.�\\����O4�����o[~��9/�I��[����FY�M4Β�+�������-W�K��Y�.���Z�ם�7r�5N�D�q�:�g��Z����7`[��`���W@���}��i���.�H)���+T���[:AKB��1��c��5�2:ü��~�sF`&�O+��{
��OD�[+�>��m�XS�a�����\>�%������:Ӈ�Te��3�}X]ャ��$1�����9���N��(`@"Oq[#y﬜5�Z</�x� WA�B��V���)L�Сծ�h��� �A���Z� ʔE�����ʖ/�5�՜^@�:{圮�K��|������}��D���q��K�]�_sύB�1��{�	O��H���_�6/,��H!��v�;�gȵ閌��ݯ7dpArXu��~��ת��g>��ܬ��~n��6x�a�-�j`�T��Ӏ�vk]��՟_t� ���k��ݞ�������g�e�n��7��2�O���V����$ٛbf��?��'�O���??'uN�h	t��(]�\������$��Yd�����������x+�ܴ�m���3����dhP��d�$?�;��1���ͳ�.���U��Oq�#燦@��v��z�q';�=�_��Q�c���$���5�	�&J����|� �>�̣�W���"���Bf8ЏW}�yH�^��o$��q��|��{�f�h�pb�Qo�;uOi���U�*���3��L��0tEb�ζ�� ��M�LaK�v���E�{�����*�is���Y� i���>T���(Gb@�bZ	�1�F�w��k!��#�_���/F]��?���:��~��Y~w%�"pFs!�Ǭ��U�;b��vC�+zF&9����I�*�¹��-Gd/M��
�9�Ie���z��4�M��.4� 5�q�y�L��6��u� $e���~�$P+P �sH7H�~�ݢ�g�cB�DB.@E�쾀~�o�G�( ����R2���Ҳ��;�X��{#�߹���C��� �H�rȱ�	x�ڂ�P?����T{�3�d��tP��j��n��^���s�g�<���������ja�C��K�/tK�%�}]�K*%N/Gǆ@Š���{�g[��&(���ܿBX<Pߝ�o�ܑ��`�pR5~������\֘�#��ҙջ80��s{��v�g����j���{�Wx�h��x�~3���0�U����`���ީ����f�-�}޸t͚�����x� ?�Ɓq �w���`sE���j�W�Y�痛o��˪;ǜW���ۀ���Sޮ�k�C)���{�"�?��97�}O:�[�T �w;!��M�Ͷz��O?	�%�c��z̀�7"��I�2��}߶��g!	���U�͝za�ʜuq?σ�r��,C��,��ˠ�{_]`i�(1�C�j��4;����K&���uk���<�m�t%�Bˊ[3�(4Wx^�5����)��'E�-�ʴ �  ��`��
�b���!�c7ٙ�����u��1�z�)H�>>�Y0�E�@��+ƫl�q^$% ?]aP��WA�Hjp��[��R- ���	��	�>é��34��lLk�o�1&m�s��~Te��T*��͓�j��l:#|E��p�a\?������P�>��X'!kb)�����C���.7���d8�p�[�T��L�OYC���ߪ���g�t�
ѽ����Ӫ�:�i�KÊ�c�+Zl�yM��-1� ������QtN�ǽ�4�U���~y�s��}A�� Ǖm&�SzQ��6�M�n�����1�ܶ��ia�_��Cs;rY63PF�h<�mm���xÿ��0������D!���$ҿ�nyr��.s��w����q���J�^fx�����闠<���(�щGoQ�n��o�	򰭛|��f������kLaF."?��8����;��悷Ͳ�2�0�?�G�k�N��Z彿9��V�����:=/R]����V��r�#A,��7)ϡ�q�7���oN���x��5
�V2>�_J�c�C�Z�ս�^	(��q����ݤCd0[�q⽦��z�gn+Y�@'7oj�/�3���^��ǔ^�"���}

#;x��@����{ۂ�]�w��h0����RR��W��j�Lj�$���f�'	��L"��l���],;�M�,����Э����xb	�/%&�\��J/L��DSJ���^�WKQ%_�xHN�d۩E��a	��Ƨ�$a�ӆ�~�J�����Zo������qB���kc�l/a�q�6R�`L\ ��&F���Z�A���{���;. ;Gm|�\"+O���c(v!p��l(�Dc���zI�
X�Ǘ���p=�'V!ڀ�z�M�����������u�q�������Q��|X�S������zC���ྮI� ���h��j�G?r|iX��p��;�Q��GJ���~�+��9���w�i2�~д��;��_[ez�cl��}O����8(B��\ y��!i{�l���G;��x����
W���Bs��_�h���~��/�����2ywE����Z���X����.�;
,)H���f)@��ע�d��04�Ȟ���>Հ��h�h"�~v��.��o�I&rSs/�$ɥ(�� �?}?-�U��[����[J딣9z����~/�V��o�c`h�(�Sr=�hfI�F2�Q1b9�ýFlW[�jh8u�� ���T�^��|-e/���ֶ��Hu��	
��R�lC�|o�tN�_������K��1�Ԭ΁Տ@��{��9 �|�d"J(����D�*���|"����/���јCo�;�dm�q�f��(L�
�����!p��G�R��S�Ex>�����׫[��h������K��s�Yh��QY�L���x���3���2���������}�6¥Z�3hF}�d���	�ֿ�s���;��(���S(�7�dOVʵ:W�H)}A�2�DWb9������o��b�k�0HiE���G�G�o]A`87��2��Z�g������&������	1��Z�>,�z��v#�'��f�"{et��&���y�S@��i�H�K���üut�[^%m\�T�5ﯳ��Dz��!�d}����~��#�hd7	�t��rSƀ�����0��W�fY h�^1��t��Q���$ᷞ�撱���wD�y�giG0�7��v�P�&`Gd` ̑=b��U: /���]�z/�#����;J���n�~N�w��1����/e��v�>����	?N*���`��������h���-��-_���l��C��r�a?��	����b0%��,��[������i�J�E���u'bRD�(*
�c�E�dQYR��ObU�5�ѷ9%�/��E�|�"���d�眭���]���q�|c��|:�µ�Še��y��R� �s�BઑX�<�1�'�ʩ3ʵ�ѧ{a���^}TΣ��`��K�M{X���"�����+?�_��qzSw��o���ʥF�+ޒI�G�RY\�P�7c��� ��䱢��WJ$RC��(���.OО��F̪?l�Y$�ʀ��^�fB{G#��$KM��zy.ZmA°<�V,�*�v��:%{|��أ$�v�J��LjW�(i=ߡ�2�n�#�V�z��: W4�*t����?�')�X�}��=���N���7)ICQ�aMё��G�\>���_�f���S6���<e.��Ms�9�����2D;94[jZU�n�`h��~.��
E(��0߰�?ra�S��L���B�\������M��V˻�*'�S��u!�J�e�mT��ȣ�U���L*�����e�g��u��a6�j�䶼n6��Br6��#� D���[�;<hu��j�i:]�-��?�W�$���Df�mJ��F�����_�²�XM�Ƌ�5j�j��`ݓ�>B��z|K�Ь>4 �Iڼ�Z�09�uG��� �\<����Y��Gӹ��CTd
B�0@Žw��$00��;���̏
�G��uUۋ(l�SF���P�*���qkSrI�n�-<�+�g��a_xO^6���bP�4w�}�$��)��c)�f Y�I���8��KvAL#�24��\�G3�zgk�3��;�<��M�䈊��:+h�n��~�S����S��{֋R�n�v�x����*G�NN���0�:�Y�.u���A��|�R:+���&�3 q�U���J�$5O<0�p�򑲒cO�I箆�4��Z�X�~���_[ʍ�P�Z2G�}����T�n@�����e���@ D%�h����P
q�
{�X�G�?�{N��0���~��R*$?'>|����k�S�������e�G��p��ӊf�'�\,���.�HP�`�k��ֻ�6d�Ҍwae���lC&�=�k��Z�ǫ�S��YS]{���)H��Zk{A%$��[�NX���%Ԕ�1s��'į��N��Sb�[��K��K�O�>E���2:���ߴ�5	;�!k� 	��c�#�7�^>Є���L���Өi/0b��|����-�E\��2��L�5�6�aB�F�e|�' ٵ��V�=��&�t.$샰��5��3��\�r�ya�xa�P5q�.Ɏ�j�N�{��SWMtj�ӿA��a��c�̌������}Y���?�z{{�g�      �   2  x�%�ۭ� �I1W��^��:���(k�1������Z�V��\Q�E�/�b��xɿz�oS@���HH`
p�B�͒b��n�A��5;C�h�p��p� �
j���U�[����W���Ynf@��p��9!�tN	:�\M}�|�h#��s4uf@��F�4@����k�+?�^���1䄩���lP�|����B5�C=�����B]����s�c��4��i���m�ߩ���3 ����D��<P_�a�	1{�𵠾b�	������@��*s���|&������}�?��b0      �   �   x�m���0g�)2T��8EM��T���V�%��;}�qщ����z�F����^��C��s�2��#%Ϋ)��XY����#�Wo��e���'�G	�6<���Y���3.I��E��\ڊ�l�
׶�T+��s_�m@B      m   F  x�͝�n�8��;O���s,�t��l�X�	�\-`tڊݓ>�6v��KJ��QUi�D�ـ�3P�J�Wɟ|<�����~��<��ۏ���]���?�>=>��{���ٿ��w~��b��}�_���X����������j�]||��:��^��,eyS��e�i����c��G�:�F�PD#;Q�"��?���7����������z�����j�����S���y��X���屿)��9���C8,�����US�d�0�h��E�}����~y\��p-�D�]�՘������E���&�.A�m��'$�Fy[o�,)���J��DY�|�j�̞%La��K�� �[{뮀��zХ��GHt�K1Z{r]��V��Dv�J��A��j���SU'U��Bv�2��NDT(�j�0 "�h;c��J�����U%o��K�
Meٕ�A�Dw��j��5���r������Ϫj���Q���H��?7��H	RU�IRM�b�HQ����$V��*[M�3r�����Dj*�Fe�m
�Z[F2��lQu*�ɏ�
3[4�7���Vcz;x�\��ƣ4�S�}�L�s[�W�Lj0���d&^k�k�:����1��/$�Ӆɭ4�_�\f�}#�׷�0�Um�Jn]�[5�x�޿�K��r&�z�TU7Rb�~�%�~\%T��+&ׅ�.c��G=�	Zv"��cpu�j�h����v}��~{�������Ԟ��˄��'<�id�z���q\/�.O?u�p���
�.NW�)�
�͙ K|+Lq++���st��KV�k�lA��ڊ�{ӕ���ƺ)���T��F2F���kLs�+h�/$K�f���W�^�Y��7k*�0����ԘLo��j���Q#���QH�Q��i�H������]Rӥ6�.5aD��d��;���ٝ��²�t2�ԕ�d�V#�t���-��7�4jj�&�-h~�jīa�RR��^������H�s��LQ5�/��4���2႗�P�ݙDm���h/]&�Fq4���4 ���D�%SMKE�O�͏ؖ�"JY��낙��Z"6C�N���G��	�O/����������zӏ�ů�~J�P�t�.��&ue*���j�w�*�	T(��+��4��rLf����ǻ��N��q�����Zٌ~y�l��,~��F�aΥ��B%n���Pt��DIZ�,1��/����{w��m��~ؽ<-��(>Z!�����P8`�Xf1��%ƋiL��� ��xAx] YBn��t�q�������y��6��	#+{����Ț1�w �C�TH~���̳:D�up�\��BNm�BRq���� `_�u}���5v����z�<�����W?����7�?�\��M�;6�����gªu���H�2m��m��}J���m|�_�N���T��rC�ei���U�^�l��SP\��")`W�u�K���3�N�Pm��*)`W�-����$F'Oq>B9���R
�}k����]*}v�F}^d}��/7w6���b��x�/��:�4>�S��.ܠ$��Z)aOoЕi�@J|�&��EJ�c9��+1����t˰��Xv+��J�e��/`��a��?ھ��Y}���}��a�~Om�
sUr�t�o�
�SrƩSg\a~J��3aZ3���T��ʿ�L*�҉�Ҥ� o��T�k�����W��t�b�P�T�n���5G���i��pd��N{�z���&��0���"�1��IZD5����`��5F]�q��UAc�j7��=]�����bMc�E�a�3^UИ�V^�S5}�/.��U�_Y���Xs�����<�	_��)��Ԁ1��NW�*������[DI�y�+.P0����w�x<6�ǆ���R�0�Y����<v.�V|W�ǆ3�4��汍�#������dE��0�I���q��O�t<��Y���qu=�z��*lb����9���&x\1�C��qM𸞲X����q������q{/�5�_��L�%�q]aY�E�t��u�JC�~��㺥�M��!m��r���<n��?I�Ǎ$�D�h�#S��y�h*��G�0�ca{�@7�դa�D�"x�+.PO��O���1Ǥv��ACW_\C�֨¿�U|C��I	<��й%�����l�y=Yc���j�;�+��1�p9Yu��P$�{E�(����I�c�!�-���>�d\}Qy���lT�C��c�e��	�l�] K��͔���XA�1�J
z�F]����XAk���Ͻ%�*	���-cC���X�����Z�ߕ�<f��c�y,8s��y,0�E��0t��l��d>��O�E��'���te�+h��q�WA+h���J�QRВwR��-BA/ި�j;+��;��ĎW��A�ɛ�gp�����[��Ao(��k''�͔3g�U���8	7RД'�ad�U(
��F]S�`KR����
���I��+��(��;��4��ch����_,}�9�����F��&r�A�rV'��Ъ'�������<�&�1b��{�@��IW��.���t�d��7�S�lAWT�@�Iߵ��@�x���LR(�����c��U��d��1������TA��q�8̓�rb8/�j=]r���{H(h���+��q'}��I�s�$c7�����$��ø��^�QE��H���L�f�[��n�c��X��]�ET�WO+h�s�t�c�y]r�l�!$O�c�8��R@�����+q*�s�N\M9�n:���<�^���؞sN>WS\&LCO�'�9N
��ƈ���R��N�r��B���u��AWT�@{�Iߵ̳A��(�?�r��<���c�UD�8r�A�fP+���%S+a�s;Q%��#r���;W�1����;W�!��
BH�tF8��j�H	���lps��@��d�?��>��}q+��S	ƹ9��<V�í�<&lt�L��"r� ��]O�guMY��Ǆ!ΝǗ}�0�
�"��'�1ᛳ�Ǆ���pO���#3�	םU��EN�1a��q�����1a�S�1F6�p(E8����Q�:9,�-��/�m[*t�P0�����uYR��W=�%����#��!J��r^LN��ػU懷���*�Zh�el�#���ӯ����f�ӄ��73��
`]|MƌB��z��7[}=4vQR���t�#�yZJ��}��g�%�Ù8�x�żȬ:z��8Ors�k�Ȋ���;��8.��jQ��BMX����؝?��lDq�geTX�aL�\x=/b���&�(ʳ��R�/�i�_�����/1��6-%�+!$A;�xA��1�(cO�k����[\��)J��o���͛7�	�r�      �   %   x�3�4BSNC �g`�e0�4C����� �p      ~   8   x�3�4202�50�54Q04�24E0�2�
���)X ����\1z\\\ �m      �   �   x����
�0D��W�X6�V�G{��%���D������I�e`�y�i�]B>�Q����ǸL�4qJ�Gx��F�p`�{��s�Q�-�^�4z�P�ڷ?)]t�bj��m�Q�2�gfq���M�����0��Ц!����g��Ιu�9S*���*���./ٗEQ<��p>     