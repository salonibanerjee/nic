PGDMP         0                x            NIC    12.2    12.2 �   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    20847    NIC    DATABASE     �   CREATE DATABASE "NIC" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE "NIC";
                postgres    false            �            1259    20848    mpr_master_table    TABLE     ?  CREATE TABLE public.mpr_master_table (
    id_pk bigint NOT NULL,
    login_id_fk bigint DEFAULT 0 NOT NULL,
    ip character varying(20) NOT NULL,
    nodal_check numeric(2,0) NOT NULL,
    session character varying(4) NOT NULL,
    month numeric(2,0) NOT NULL,
    inserted_at timestamp without time zone NOT NULL
);
 $   DROP TABLE public.mpr_master_table;
       public         heap    postgres    false            �            1259    20857    mpr_scheme_awcc    TABLE     Q  CREATE TABLE public.mpr_scheme_awcc (
    "No_of_ICDS_Cenetres_devoid_of_own_building" numeric(10,0) NOT NULL,
    "No_of_new_ICDS_building_constructed" numeric(10,0) NOT NULL,
    "No_of_ICDS_Centres_running_in_open_space" numeric(10,0) NOT NULL,
    schcd character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 #   DROP TABLE public.mpr_scheme_awcc;
       public         heap    postgres    false    202            �            1259    20862    AWCC_id_seq    SEQUENCE     v   CREATE SEQUENCE public."AWCC_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public."AWCC_id_seq";
       public          postgres    false    204            �           0    0    AWCC_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."AWCC_id_seq" OWNED BY public.mpr_scheme_awcc.id_pk;
          public          postgres    false    205            �            1259    20864    mpr_scheme_baitarani    TABLE     �   CREATE TABLE public.mpr_scheme_baitarani (
    "No_of_burning_ghats_taken_up" numeric(10,0) NOT NULL,
    "Completed_till_date" date NOT NULL,
    schcd character varying(8) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 (   DROP TABLE public.mpr_scheme_baitarani;
       public         heap    postgres    false    202            �            1259    20869    BAITARANI_id_seq    SEQUENCE     {   CREATE SEQUENCE public."BAITARANI_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."BAITARANI_id_seq";
       public          postgres    false    206            �           0    0    BAITARANI_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."BAITARANI_id_seq" OWNED BY public.mpr_scheme_baitarani.id_pk;
          public          postgres    false    207            �            1259    20878    mpr_scheme_dog    TABLE     z  CREATE TABLE public.mpr_scheme_dog (
    "Target_for_distribution_of_goats" numeric(10,0) NOT NULL,
    "No_of_goats_actually_distributed" numeric(10,0) NOT NULL,
    "No_of_beneficiaries_selected" numeric(10,0) NOT NULL,
    "No_of_beneficiaries_approved" character varying(10) NOT NULL,
    schcd character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 "   DROP TABLE public.mpr_scheme_dog;
       public         heap    postgres    false    202            �            1259    20883 
   DOG_id_seq    SEQUENCE     u   CREATE SEQUENCE public."DOG_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public."DOG_id_seq";
       public          postgres    false    209            �           0    0 
   DOG_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."DOG_id_seq" OWNED BY public.mpr_scheme_dog.id_pk;
          public          postgres    false    210            �            1259    20885    mpr_scheme_doptuhd    TABLE     �   CREATE TABLE public.mpr_scheme_doptuhd (
    "No_of_Power_tiller_distributed" numeric(10,0) NOT NULL,
    schcd character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 &   DROP TABLE public.mpr_scheme_doptuhd;
       public         heap    postgres    false    202            �            1259    20890    DOPTUHD_id_seq    SEQUENCE     y   CREATE SEQUENCE public."DOPTUHD_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."DOPTUHD_id_seq";
       public          postgres    false    211            �           0    0    DOPTUHD_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."DOPTUHD_id_seq" OWNED BY public.mpr_scheme_doptuhd.id_pk;
          public          postgres    false    212            �            1259    20892    mpr_scheme_enrollment    TABLE     }  CREATE TABLE public.mpr_scheme_enrollment (
    "Gross_Enrolment_Ratio_primary" numeric(10,0) NOT NULL,
    "Net_Enrolment_Ratio_primary" numeric(10,0) NOT NULL,
    "Gross_Enrolment_Ratio_Upper_primary" numeric(10,0) NOT NULL,
    "Net_Enrolment_Ratio_Under_primary" numeric(10,0) NOT NULL,
    schcd character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 )   DROP TABLE public.mpr_scheme_enrollment;
       public         heap    postgres    false    202            �            1259    20897    ENROLLMENT_id_seq    SEQUENCE     |   CREATE SEQUENCE public."ENROLLMENT_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."ENROLLMENT_id_seq";
       public          postgres    false    213            �           0    0    ENROLLMENT_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."ENROLLMENT_id_seq" OWNED BY public.mpr_scheme_enrollment.id_pk;
          public          postgres    false    214            �            1259    20899    mpr_scheme_foodpro    TABLE     �   CREATE TABLE public.mpr_scheme_foodpro (
    "Status_of_pocurement" numeric(10,0) NOT NULL,
    "Target_of_pocurement" numeric(10,0) NOT NULL,
    schcd character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 &   DROP TABLE public.mpr_scheme_foodpro;
       public         heap    postgres    false    202            �            1259    20904    FOODPRO_id_seq    SEQUENCE     y   CREATE SEQUENCE public."FOODPRO_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."FOODPRO_id_seq";
       public          postgres    false    215            �           0    0    FOODPRO_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."FOODPRO_id_seq" OWNED BY public.mpr_scheme_foodpro.id_pk;
          public          postgres    false    216            �            1259    20906    mpr_scheme_gitanjali    TABLE     G  CREATE TABLE public.mpr_scheme_gitanjali (
    "No_of_case_sanctioned_under_Gitanjali" numeric(10,0) NOT NULL,
    "Date_of_Inception" character varying(10) NOT NULL,
    "No_of_houses_constructed_under_Gitanjali" numeric(10,0) NOT NULL,
    schcd character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 (   DROP TABLE public.mpr_scheme_gitanjali;
       public         heap    postgres    false    202            �            1259    20911    GITANJALI_id_seq    SEQUENCE     {   CREATE SEQUENCE public."GITANJALI_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."GITANJALI_id_seq";
       public          postgres    false    217            �           0    0    GITANJALI_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."GITANJALI_id_seq" OWNED BY public.mpr_scheme_gitanjali.id_pk;
          public          postgres    false    218            �            1259    20913    mpr_scheme_immunisati    TABLE     �   CREATE TABLE public.mpr_scheme_immunisati (
    "Per_of_Fully_immunised_child" numeric(52,0) NOT NULL,
    schcd character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 )   DROP TABLE public.mpr_scheme_immunisati;
       public         heap    postgres    false    202            �            1259    20918    IMMUNISATION_id_seq    SEQUENCE     ~   CREATE SEQUENCE public."IMMUNISATION_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."IMMUNISATION_id_seq";
       public          postgres    false    219            �           0    0    IMMUNISATION_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."IMMUNISATION_id_seq" OWNED BY public.mpr_scheme_immunisati.id_pk;
          public          postgres    false    220            �            1259    20920    mpr_scheme_infantd    TABLE     �   CREATE TABLE public.mpr_scheme_infantd (
    "Total_No_of_Infant_Death" numeric(10,0) NOT NULL,
    schcd character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 &   DROP TABLE public.mpr_scheme_infantd;
       public         heap    postgres    false    202            �            1259    20925    INFANTD_id_seq    SEQUENCE     y   CREATE SEQUENCE public."INFANTD_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."INFANTD_id_seq";
       public          postgres    false    221            �           0    0    INFANTD_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."INFANTD_id_seq" OWNED BY public.mpr_scheme_infantd.id_pk;
          public          postgres    false    222            �            1259    20927    mpr_scheme_inspection    TABLE     	  CREATE TABLE public.mpr_scheme_inspection (
    "No_of_homes_inspected_by_Senior_Officers" numeric(10,0) NOT NULL,
    "Designation_of_officers" character varying(5) NOT NULL,
    schcd character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 )   DROP TABLE public.mpr_scheme_inspection;
       public         heap    postgres    false    202            �            1259    20932    INSPECTION_id_seq    SEQUENCE     |   CREATE SEQUENCE public."INSPECTION_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."INSPECTION_id_seq";
       public          postgres    false    223                        0    0    INSPECTION_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."INSPECTION_id_seq" OWNED BY public.mpr_scheme_inspection.id_pk;
          public          postgres    false    224            �            1259    20934    mpr_scheme_instdel    TABLE     �   CREATE TABLE public.mpr_scheme_instdel (
    "Per_of_Institutional_Delivery" numeric(52,0) NOT NULL,
    schcd character varying(8) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 &   DROP TABLE public.mpr_scheme_instdel;
       public         heap    postgres    false    202            �            1259    20939    INSTDEL_id_seq    SEQUENCE     y   CREATE SEQUENCE public."INSTDEL_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."INSTDEL_id_seq";
       public          postgres    false    225                       0    0    INSTDEL_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."INSTDEL_id_seq" OWNED BY public.mpr_scheme_instdel.id_pk;
          public          postgres    false    226            �            1259    20941    mpr_scheme_jaldjalb    TABLE     L  CREATE TABLE public.mpr_scheme_jaldjalb (
    "Date_of_Inspection" character varying(10) NOT NULL,
    "No_of_ponds_excavated_under_Jal_Dharo_Jal_Bharo" numeric(10,0) NOT NULL,
    "No_of_ponds_fish_production_started" numeric(10,0) NOT NULL,
    schcd character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 '   DROP TABLE public.mpr_scheme_jaldjalb;
       public         heap    postgres    false    202            �            1259    20946    JALDJALB_id_seq    SEQUENCE     z   CREATE SEQUENCE public."JALDJALB_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."JALDJALB_id_seq";
       public          postgres    false    227                       0    0    JALDJALB_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."JALDJALB_id_seq" OWNED BY public.mpr_scheme_jaldjalb.id_pk;
          public          postgres    false    228            �            1259    20948    mpr_scheme_kanyas    TABLE       CREATE TABLE public.mpr_scheme_kanyas (
    "No_of_K-1_cases_application_received" numeric(10,0) NOT NULL,
    "No_of_K-1_cases_application_sanctioned" numeric(10,0) NOT NULL,
    "No_of_K-1_cases_application_disbursed" numeric(10,0) NOT NULL,
    "No_of_K-2_cases_application_received" numeric(10,0) NOT NULL,
    "No_of_K-2_cases_application_sanctioned" numeric(10,0) NOT NULL,
    "No_of_K-2_cases_application_disbursed" numeric(10,0) NOT NULL,
    schcd character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 %   DROP TABLE public.mpr_scheme_kanyas;
       public         heap    postgres    false    202            �            1259    20953    KANYAS_id_seq    SEQUENCE     x   CREATE SEQUENCE public."KANYAS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."KANYAS_id_seq";
       public          postgres    false    229                       0    0    KANYAS_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."KANYAS_id_seq" OWNED BY public.mpr_scheme_kanyas.id_pk;
          public          postgres    false    230            �            1259    20955    mpr_scheme_karmatirth    TABLE     �  CREATE TABLE public.mpr_scheme_karmatirth (
    "No_of_Karmatirtha_sanctioned" numeric(10,0) NOT NULL,
    "No_of_Karmatirtha_for_which_construction_started" numeric(10,0) NOT NULL,
    "No_of_Karmatirtha_for_which_construction_completed" numeric(10,0) NOT NULL,
    "No_of_Karmatirth_operationalised" numeric(10,0) NOT NULL,
    schcd character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 )   DROP TABLE public.mpr_scheme_karmatirth;
       public         heap    postgres    false    202            �            1259    20960    KARMATIRTHA_id_seq    SEQUENCE     }   CREATE SEQUENCE public."KARMATIRTHA_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."KARMATIRTHA_id_seq";
       public          postgres    false    231                       0    0    KARMATIRTHA_id_seq    SEQUENCE OWNED BY     X   ALTER SEQUENCE public."KARMATIRTHA_id_seq" OWNED BY public.mpr_scheme_karmatirth.id_pk;
          public          postgres    false    232            *           1259    21784    mpr_scheme_kcc_backup    TABLE       CREATE TABLE public.mpr_scheme_kcc_backup (
    id_pk integer NOT NULL,
    login_id_fk bigint NOT NULL,
    ip character varying NOT NULL,
    nodal_check numeric NOT NULL,
    session character varying NOT NULL,
    month numeric NOT NULL,
    "No_of_agricultrural_families_in_the_district" numeric NOT NULL,
    "No_of_agricultural_families_covered_by_kcc" numeric NOT NULL,
    kcc_coverage_percentage numeric NOT NULL,
    schcd character varying NOT NULL,
    inserted_at timestamp without time zone NOT NULL
);
 )   DROP TABLE public.mpr_scheme_kcc_backup;
       public         heap    postgres    false            )           1259    21782    KCC_backup_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public."KCC_backup_id_pk_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."KCC_backup_id_pk_seq";
       public          postgres    false    298                       0    0    KCC_backup_id_pk_seq    SEQUENCE OWNED BY     Z   ALTER SEQUENCE public."KCC_backup_id_pk_seq" OWNED BY public.mpr_scheme_kcc_backup.id_pk;
          public          postgres    false    297            ,           1259    21795    mpr_scheme_kcc_draft    TABLE       CREATE TABLE public.mpr_scheme_kcc_draft (
    id_pk integer NOT NULL,
    login_id_fk bigint NOT NULL,
    ip character varying NOT NULL,
    nodal_check numeric NOT NULL,
    session character varying NOT NULL,
    month numeric NOT NULL,
    "No_of_agricultrural_families_in_the_district" numeric NOT NULL,
    "No_of_agricultural_families_covered_by_kcc" numeric NOT NULL,
    kcc_coverage_percentage numeric NOT NULL,
    schcd character varying NOT NULL,
    inserted_at timestamp without time zone NOT NULL
);
 (   DROP TABLE public.mpr_scheme_kcc_draft;
       public         heap    postgres    false            +           1259    21793    KCC_draft_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public."KCC_draft_id_pk_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."KCC_draft_id_pk_seq";
       public          postgres    false    300                       0    0    KCC_draft_id_pk_seq    SEQUENCE OWNED BY     X   ALTER SEQUENCE public."KCC_draft_id_pk_seq" OWNED BY public.mpr_scheme_kcc_draft.id_pk;
          public          postgres    false    299            �            1259    20962    mpr_scheme_kcc    TABLE     F  CREATE TABLE public.mpr_scheme_kcc (
    "No_of_agricultrural_families_in_the_district" numeric(10,0) NOT NULL,
    "No_of_agricultural_families_covered_by_kcc" numeric(10,0) NOT NULL,
    kcc_coverage_percentage numeric(52,0) NOT NULL,
    schcd character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 "   DROP TABLE public.mpr_scheme_kcc;
       public         heap    postgres    false    202            �            1259    20967    KCC_id_pk_seq    SEQUENCE     x   CREATE SEQUENCE public."KCC_id_pk_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."KCC_id_pk_seq";
       public          postgres    false    233                       0    0    KCC_id_pk_seq    SEQUENCE OWNED BY     L   ALTER SEQUENCE public."KCC_id_pk_seq" OWNED BY public.mpr_scheme_kcc.id_pk;
          public          postgres    false    234            �            1259    20974    mpr_scheme_landpp    TABLE     �   CREATE TABLE public.mpr_scheme_landpp (
    "No_of_land_permission_pending" numeric(10,0) NOT NULL,
    "PROJECTS_NAME" character varying(12) NOT NULL,
    schcd character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 %   DROP TABLE public.mpr_scheme_landpp;
       public         heap    postgres    false    202            �            1259    20979    LANDPP_id_seq    SEQUENCE     x   CREATE SEQUENCE public."LANDPP_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."LANDPP_id_seq";
       public          postgres    false    236                       0    0    LANDPP_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."LANDPP_id_seq" OWNED BY public.mpr_scheme_landpp.id_pk;
          public          postgres    false    237            �            1259    20981    mpr_semitrans_login    TABLE     ;  CREATE TABLE public.mpr_semitrans_login (
    username character varying(70) NOT NULL,
    password text NOT NULL,
    designation character varying(70) NOT NULL,
    user_type_id_fk bigint NOT NULL,
    schcd character varying(10) NOT NULL,
    "Login_id_pk" bigint NOT NULL,
    active_status numeric NOT NULL
);
 '   DROP TABLE public.mpr_semitrans_login;
       public         heap    postgres    false            �            1259    20987    Login_id_seq    SEQUENCE     w   CREATE SEQUENCE public."Login_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Login_id_seq";
       public          postgres    false    238            	           0    0    Login_id_seq    SEQUENCE OWNED BY     X   ALTER SEQUENCE public."Login_id_seq" OWNED BY public.mpr_semitrans_login."Login_id_pk";
          public          postgres    false    239            �            1259    20989    Login_user_type_id_fk_seq    SEQUENCE     �   CREATE SEQUENCE public."Login_user_type_id_fk_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."Login_user_type_id_fk_seq";
       public          postgres    false    238            
           0    0    Login_user_type_id_fk_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."Login_user_type_id_fk_seq" OWNED BY public.mpr_semitrans_login.user_type_id_fk;
          public          postgres    false    240            �            1259    20991    mpr_scheme_maternald    TABLE     �   CREATE TABLE public.mpr_scheme_maternald (
    "Total_No_of_Maternal_Death" numeric(10,0) NOT NULL,
    schcd character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 (   DROP TABLE public.mpr_scheme_maternald;
       public         heap    postgres    false    202            �            1259    20996    MATERNALD_id_seq    SEQUENCE     {   CREATE SEQUENCE public."MATERNALD_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."MATERNALD_id_seq";
       public          postgres    false    241                       0    0    MATERNALD_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."MATERNALD_id_seq" OWNED BY public.mpr_scheme_maternald.id_pk;
          public          postgres    false    242            �            1259    20998    mpr_scheme_mci    TABLE     �   CREATE TABLE public.mpr_scheme_mci (
    "Percentage_of_malnourished_child" numeric(52,0) NOT NULL,
    schcd character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 "   DROP TABLE public.mpr_scheme_mci;
       public         heap    postgres    false    202            �            1259    21003 
   MCI_id_seq    SEQUENCE     u   CREATE SEQUENCE public."MCI_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public."MCI_id_seq";
       public          postgres    false    243                       0    0 
   MCI_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."MCI_id_seq" OWNED BY public.mpr_scheme_mci.id_pk;
          public          postgres    false    244            �            1259    21010    mpr_scheme_minoritys    TABLE     l  CREATE TABLE public.mpr_scheme_minoritys (
    "Target_for_Scholarship_distribution_Aikyashree" numeric(10,0) NOT NULL,
    "No_of_students_distributed_scholarship" numeric(10,0) NOT NULL,
    "No_of_Aaplication_uploaded_under_Aikyashree_scholarship" numeric(10,0) NOT NULL,
    schcd character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 (   DROP TABLE public.mpr_scheme_minoritys;
       public         heap    postgres    false    202            �            1259    21015    MINORITYS_id_seq    SEQUENCE     {   CREATE SEQUENCE public."MINORITYS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."MINORITYS_id_seq";
       public          postgres    false    246                       0    0    MINORITYS_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."MINORITYS_id_seq" OWNED BY public.mpr_scheme_minoritys.id_pk;
          public          postgres    false    247            �            1259    21017    mpr_scheme_poe    TABLE     �   CREATE TABLE public.mpr_scheme_poe (
    "Target" numeric(10,0) NOT NULL,
    "Production" numeric(10,0) NOT NULL,
    schcd character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 "   DROP TABLE public.mpr_scheme_poe;
       public         heap    postgres    false    202            �            1259    21022 
   POE_id_seq    SEQUENCE     u   CREATE SEQUENCE public."POE_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public."POE_id_seq";
       public          postgres    false    248                       0    0 
   POE_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."POE_id_seq" OWNED BY public.mpr_scheme_poe.id_pk;
          public          postgres    false    249            �            1259    21032    mpr_scheme_saboojshre    TABLE     8  CREATE TABLE public.mpr_scheme_saboojshre (
    "No_of_children_born_since_inception_of_the_project_in_the_dist" numeric(10,0) NOT NULL,
    "No_of_tree_sapling_handed_over_to_the_new_born_children" numeric(10,0) NOT NULL,
    schcd character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 )   DROP TABLE public.mpr_scheme_saboojshre;
       public         heap    postgres    false    202            �            1259    21037    SABOOJSHREE_id_seq    SEQUENCE     }   CREATE SEQUENCE public."SABOOJSHREE_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."SABOOJSHREE_id_seq";
       public          postgres    false    252                       0    0    SABOOJSHREE_id_seq    SEQUENCE OWNED BY     X   ALTER SEQUENCE public."SABOOJSHREE_id_seq" OWNED BY public.mpr_scheme_saboojshre.id_pk;
          public          postgres    false    253            �            1259    21027    mpr_scheme_saboojs    TABLE     �   CREATE TABLE public.mpr_scheme_saboojs (
    "Target_for_distribution_of_cycles" numeric(10,0) NOT NULL,
    "Cycle_distributed_till_date" numeric(10,0) NOT NULL,
    schcd character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 &   DROP TABLE public.mpr_scheme_saboojs;
       public         heap    postgres    false    202            �            1259    21039    SABOOJS_id_seq    SEQUENCE     y   CREATE SEQUENCE public."SABOOJS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."SABOOJS_id_seq";
       public          postgres    false    251                       0    0    SABOOJS_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."SABOOJS_id_seq" OWNED BY public.mpr_scheme_saboojs.id_pk;
          public          postgres    false    254            �            1259    21041    mpr_scheme_safedsavel    TABLE       CREATE TABLE public.mpr_scheme_safedsavel (
    "No_of_accidents" numeric(10,0) NOT NULL,
    "No_of_death" numeric(10,0) NOT NULL,
    "No_of_insured_person" numeric(10,0) NOT NULL,
    schcd character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 )   DROP TABLE public.mpr_scheme_safedsavel;
       public         heap    postgres    false    202                        1259    21046    SAFEDSAVEL_id_seq    SEQUENCE     |   CREATE SEQUENCE public."SAFEDSAVEL_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."SAFEDSAVEL_id_seq";
       public          postgres    false    255                       0    0    SAFEDSAVEL_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."SAFEDSAVEL_id_seq" OWNED BY public.mpr_scheme_safedsavel.id_pk;
          public          postgres    false    256                       1259    21048    mpr_scheme_samabythi    TABLE     �   CREATE TABLE public.mpr_scheme_samabythi (
    "No_of_beneficiaries_provided_benefit_till_date" numeric(10,0) NOT NULL,
    "Till_date" date NOT NULL,
    schcd character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 (   DROP TABLE public.mpr_scheme_samabythi;
       public         heap    postgres    false    202                       1259    21053    SAMABYTHI_id_seq    SEQUENCE     {   CREATE SEQUENCE public."SAMABYTHI_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."SAMABYTHI_id_seq";
       public          postgres    false    257                       0    0    SAMABYTHI_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."SAMABYTHI_id_seq" OWNED BY public.mpr_scheme_samabythi.id_pk;
          public          postgres    false    258                       1259    21055    mpr_scheme_sikshas    TABLE     k  CREATE TABLE public.mpr_scheme_sikshas (
    "Targetted_No_Of_SC/ST_Student_under_Sikshashree" numeric(10,0) NOT NULL,
    "No_of_Students_getting_benefit_under_Sikshashree" numeric(10,0) NOT NULL,
    "No_of_Applications_uploaded_under_Sikshashree" numeric(10,0) NOT NULL,
    schcd character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 &   DROP TABLE public.mpr_scheme_sikshas;
       public         heap    postgres    false    202                       1259    21060    SIKSHAS_id_seq    SEQUENCE     y   CREATE SEQUENCE public."SIKSHAS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."SIKSHAS_id_seq";
       public          postgres    false    259                       0    0    SIKSHAS_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."SIKSHAS_id_seq" OWNED BY public.mpr_scheme_sikshas.id_pk;
          public          postgres    false    260                       1259    21062    mpr_scheme_svskp    TABLE       CREATE TABLE public.mpr_scheme_svskp (
    "No_of_project_Sponsored_under_SVSKP" numeric(10,0) NOT NULL,
    "No_of_project_sanctioned_under_SVSKP" numeric(10,0) NOT NULL,
    schcd character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 $   DROP TABLE public.mpr_scheme_svskp;
       public         heap    postgres    false    202                       1259    21067    SVSKP_id_seq    SEQUENCE     w   CREATE SEQUENCE public."SVSKP_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."SVSKP_id_seq";
       public          postgres    false    261                       0    0    SVSKP_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."SVSKP_id_seq" OWNED BY public.mpr_scheme_svskp.id_pk;
          public          postgres    false    262                       1259    21069    mpr_scheme_yubas    TABLE     +  CREATE TABLE public.mpr_scheme_yubas (
    "No_of_unemployed_Youth_registered_under_Yubashree" numeric(10,0) NOT NULL,
    "No_of_unemployed_registered_Youth_getting_monthly_assistance" numeric(10,0) NOT NULL,
    schcd character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 $   DROP TABLE public.mpr_scheme_yubas;
       public         heap    postgres    false    202                       1259    21074    YUBAS_id_seq    SEQUENCE     w   CREATE SEQUENCE public."YUBAS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."YUBAS_id_seq";
       public          postgres    false    263                       0    0    YUBAS_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."YUBAS_id_seq" OWNED BY public.mpr_scheme_yubas.id_pk;
          public          postgres    false    264            �            1259    20852    mpr_scheme_anand    TABLE       CREATE TABLE public.mpr_scheme_anand (
    "Total_No_of_SHGs_formed_in_the_district" numeric(10,0) NOT NULL,
    "Total_No_of_SHGs_got_credit_linkage" numeric(10,0) NOT NULL,
    schcd character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 $   DROP TABLE public.mpr_scheme_anand;
       public         heap    postgres    false    202            	           1259    21076    anand_id_seq    SEQUENCE     u   CREATE SEQUENCE public.anand_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.anand_id_seq;
       public          postgres    false    203                       0    0    anand_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.anand_id_seq OWNED BY public.mpr_scheme_anand.id_pk;
          public          postgres    false    265            
           1259    21078    mpr_master_attri_table    TABLE     �   CREATE TABLE public.mpr_master_attri_table (
    id bigint NOT NULL,
    id_scheme numeric NOT NULL,
    a_name character varying(100) NOT NULL,
    name character varying(100) NOT NULL
);
 *   DROP TABLE public.mpr_master_attri_table;
       public         heap    postgres    false                       1259    21084    att_table_id_seq    SEQUENCE     y   CREATE SEQUENCE public.att_table_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.att_table_id_seq;
       public          postgres    false    266                       0    0    att_table_id_seq    SEQUENCE OWNED BY     R   ALTER SEQUENCE public.att_table_id_seq OWNED BY public.mpr_master_attri_table.id;
          public          postgres    false    267            '           1259    21545    mpr_trans_audit_log    TABLE     n  CREATE TABLE public.mpr_trans_audit_log (
    "user" character varying(50) NOT NULL,
    section character varying(100) NOT NULL,
    action character varying(50) NOT NULL,
    request character varying(100) NOT NULL,
    stamp character varying(20) NOT NULL,
    comment character varying(200),
    ip_addr character varying(20) NOT NULL,
    id bigint NOT NULL
);
 '   DROP TABLE public.mpr_trans_audit_log;
       public         heap    postgres    false            (           1259    21558    audit_log_id_seq    SEQUENCE     y   CREATE SEQUENCE public.audit_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.audit_log_id_seq;
       public          postgres    false    295                       0    0    audit_log_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.audit_log_id_seq OWNED BY public.mpr_trans_audit_log.id;
          public          postgres    false    296                       1259    21092    mpr_semitrans_check_first_user    TABLE     �   CREATE TABLE public.mpr_semitrans_check_first_user (
    user_id_pk bigint NOT NULL,
    check_if_first_user integer NOT NULL,
    check_profile_updated_once integer
);
 2   DROP TABLE public.mpr_semitrans_check_first_user;
       public         heap    postgres    false                       1259    21095 (   check_First_User_check_if_first_user_seq    SEQUENCE     �   CREATE SEQUENCE public."check_First_User_check_if_first_user_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public."check_First_User_check_if_first_user_seq";
       public          postgres    false    268                       0    0 (   check_First_User_check_if_first_user_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."check_First_User_check_if_first_user_seq" OWNED BY public.mpr_semitrans_check_first_user.check_if_first_user;
          public          postgres    false    269                       1259    21097    check_First_User_user_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public."check_First_User_user_id_pk_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."check_First_User_user_id_pk_seq";
       public          postgres    false    268                       0    0    check_First_User_user_id_pk_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public."check_First_User_user_id_pk_seq" OWNED BY public.mpr_semitrans_check_first_user.user_id_pk;
          public          postgres    false    270                       1259    21102 !   mpr_semitrans_dba_financial_range    TABLE     �   CREATE TABLE public.mpr_semitrans_dba_financial_range (
    dba_financial_range_table_id_pk bigint NOT NULL,
    financial_year_range character varying(4) NOT NULL,
    month numeric(2,0) NOT NULL
);
 5   DROP TABLE public.mpr_semitrans_dba_financial_range;
       public         heap    postgres    false                       1259    21105 =   dba_financial_range_table_dba_financial_range_table_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.dba_financial_range_table_dba_financial_range_table_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 T   DROP SEQUENCE public.dba_financial_range_table_dba_financial_range_table_id_pk_seq;
       public          postgres    false    272                       0    0 =   dba_financial_range_table_dba_financial_range_table_id_pk_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.dba_financial_range_table_dba_financial_range_table_id_pk_seq OWNED BY public.mpr_semitrans_dba_financial_range.dba_financial_range_table_id_pk;
          public          postgres    false    273            3           1259    29374    mpr_master_designation    TABLE     �   CREATE TABLE public.mpr_master_designation (
    desig_id_pk bigint NOT NULL,
    desig_name character varying(100) NOT NULL,
    office_dept_id_fk bigint NOT NULL
);
 *   DROP TABLE public.mpr_master_designation;
       public         heap    postgres    false            4           1259    29377    designation_desig_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.designation_desig_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.designation_desig_id_pk_seq;
       public          postgres    false    307                       0    0    designation_desig_id_pk_seq    SEQUENCE OWNED BY     f   ALTER SEQUENCE public.designation_desig_id_pk_seq OWNED BY public.mpr_master_designation.desig_id_pk;
          public          postgres    false    308            �            1259    20871    mpr_scheme_doc    TABLE     �   CREATE TABLE public.mpr_scheme_doc (
    "Target_for_distribution_of_poultry" numeric(10,0) NOT NULL,
    "No_of_poultry_actually_distributed" numeric(10,0) NOT NULL,
    schcd character varying(12) NOT NULL
)
INHERITS (public.mpr_master_table);
 "   DROP TABLE public.mpr_scheme_doc;
       public         heap    postgres    false    202                       1259    21107 
   doc_id_seq    SEQUENCE     s   CREATE SEQUENCE public.doc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.doc_id_seq;
       public          postgres    false    208                       0    0 
   doc_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.doc_id_seq OWNED BY public.mpr_scheme_doc.id_pk;
          public          postgres    false    274            �            1259    20969    mpr_scheme_kishanm    TABLE     *  CREATE TABLE public.mpr_scheme_kishanm (
    "No_of_Kishan_Mandis_sanctioned" numeric(10,0) NOT NULL,
    "No_of_Kishan_Mandis_operational" numeric(10,0) NOT NULL,
    "Operationality" numeric(10,0) NOT NULL,
    schcd character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 &   DROP TABLE public.mpr_scheme_kishanm;
       public         heap    postgres    false    202                       1259    21109    kishanm_id_seq    SEQUENCE     w   CREATE SEQUENCE public.kishanm_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.kishanm_id_seq;
       public          postgres    false    235                       0    0    kishanm_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.kishanm_id_seq OWNED BY public.mpr_scheme_kishanm.id_pk;
          public          postgres    false    275                       1259    21111    mpr_master_location_data    TABLE     �   CREATE TABLE public.mpr_master_location_data (
    location_area character varying(100) NOT NULL,
    location_schcd character varying(12) NOT NULL,
    location_id_pk bigint NOT NULL
);
 ,   DROP TABLE public.mpr_master_location_data;
       public         heap    postgres    false                       1259    21114     location_data_location_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.location_data_location_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.location_data_location_id_pk_seq;
       public          postgres    false    276                       0    0     location_data_location_id_pk_seq    SEQUENCE OWNED BY     p   ALTER SEQUENCE public.location_data_location_id_pk_seq OWNED BY public.mpr_master_location_data.location_id_pk;
          public          postgres    false    277                       1259    21116    mpr_trans_meeting_schedule    TABLE     �   CREATE TABLE public.mpr_trans_meeting_schedule (
    meeting_id_pk bigint NOT NULL,
    start_time character varying(16),
    end_time character varying(16)
);
 .   DROP TABLE public.mpr_trans_meeting_schedule;
       public         heap    postgres    false                       1259    21119    meeting_schedule_id_seq    SEQUENCE     �   CREATE SEQUENCE public.meeting_schedule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.meeting_schedule_id_seq;
       public          postgres    false    278                        0    0    meeting_schedule_id_seq    SEQUENCE OWNED BY     h   ALTER SEQUENCE public.meeting_schedule_id_seq OWNED BY public.mpr_trans_meeting_schedule.meeting_id_pk;
          public          postgres    false    279            �            1259    21005    mpr_scheme_mgnregs    TABLE     �  CREATE TABLE public.mpr_scheme_mgnregs (
    "No_of_Person_days_generated_under_MGNREGS" numeric(10,0) NOT NULL,
    "Average_No_of_Persondays_generated_per_household" numeric(10,0) NOT NULL,
    "Expenditure_of_the_session" numeric(10,0) NOT NULL,
    per_of_labour_budget_achieved numeric(52,0) NOT NULL,
    schcd character varying(12) DEFAULT 0 NOT NULL
)
INHERITS (public.mpr_master_table);
 &   DROP TABLE public.mpr_scheme_mgnregs;
       public         heap    postgres    false    202                       1259    21121    mgnres_id_seq    SEQUENCE     v   CREATE SEQUENCE public.mgnres_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.mgnres_id_seq;
       public          postgres    false    245            !           0    0    mgnres_id_seq    SEQUENCE OWNED BY     N   ALTER SEQUENCE public.mgnres_id_seq OWNED BY public.mpr_scheme_mgnregs.id_pk;
          public          postgres    false    280                       1259    21099    mpr_master_dashboard_info    TABLE     R  CREATE TABLE public.mpr_master_dashboard_info (
    id bigint NOT NULL,
    s_name character varying(50) NOT NULL,
    name character varying(50) NOT NULL,
    a_target character varying(50) NOT NULL,
    target character varying(50) NOT NULL,
    a_progress character varying(50) NOT NULL,
    progress character varying(50) NOT NULL
);
 -   DROP TABLE public.mpr_master_dashboard_info;
       public         heap    postgres    false            1           1259    29360    mpr_master_department    TABLE     �   CREATE TABLE public.mpr_master_department (
    dept_id_pk bigint NOT NULL,
    dept_name character varying(100) NOT NULL,
    s_name character varying(15),
    office_id_fk bigint DEFAULT 0 NOT NULL
);
 )   DROP TABLE public.mpr_master_department;
       public         heap    postgres    false            /           1259    29352    mpr_master_office    TABLE     }   CREATE TABLE public.mpr_master_office (
    office_id_pk bigint NOT NULL,
    office_name character varying(100) NOT NULL
);
 %   DROP TABLE public.mpr_master_office;
       public         heap    postgres    false            5           1259    29387    mpr_master_scheme_dept    TABLE     �   CREATE TABLE public.mpr_master_scheme_dept (
    scheme_dept_id_pk bigint NOT NULL,
    scheme_id_fk bigint,
    office_dept_id_fk bigint
);
 *   DROP TABLE public.mpr_master_scheme_dept;
       public         heap    postgres    false                       1259    21138    mpr_master_scheme_table    TABLE     �   CREATE TABLE public.mpr_master_scheme_table (
    scheme_id_pk bigint NOT NULL,
    s_name character varying(30) NOT NULL,
    name character varying(50) NOT NULL,
    office_master_id_fk bigint
);
 +   DROP TABLE public.mpr_master_scheme_table;
       public         heap    postgres    false            8           1259    36734    mpr_scheme_anand_backup    TABLE     �  CREATE TABLE public.mpr_scheme_anand_backup (
    id_pk integer NOT NULL,
    login_id_fk bigint NOT NULL,
    ip character varying NOT NULL,
    nodal_check numeric NOT NULL,
    session character varying NOT NULL,
    month numeric NOT NULL,
    "Total_No_of_SHGs_formed_in_the_district" numeric NOT NULL,
    "Total_No_of_SHGs_got_credit_linkage" numeric NOT NULL,
    schcd character varying NOT NULL,
    inserted_at timestamp without time zone NOT NULL
);
 +   DROP TABLE public.mpr_scheme_anand_backup;
       public         heap    postgres    false            7           1259    36732 !   mpr_scheme_anand_backup_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.mpr_scheme_anand_backup_id_pk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.mpr_scheme_anand_backup_id_pk_seq;
       public          postgres    false    312            "           0    0 !   mpr_scheme_anand_backup_id_pk_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.mpr_scheme_anand_backup_id_pk_seq OWNED BY public.mpr_scheme_anand_backup.id_pk;
          public          postgres    false    311            :           1259    36745    mpr_scheme_anand_draft    TABLE     �  CREATE TABLE public.mpr_scheme_anand_draft (
    id_pk integer NOT NULL,
    login_id_fk bigint NOT NULL,
    ip character varying NOT NULL,
    nodal_check numeric NOT NULL,
    session character varying NOT NULL,
    month numeric NOT NULL,
    "Total_No_of_SHGs_formed_in_the_district" numeric NOT NULL,
    "Total_No_of_SHGs_got_credit_linkage" numeric NOT NULL,
    schcd character varying NOT NULL,
    inserted_at timestamp without time zone NOT NULL
);
 *   DROP TABLE public.mpr_scheme_anand_draft;
       public         heap    postgres    false            9           1259    36743     mpr_scheme_anand_draft_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.mpr_scheme_anand_draft_id_pk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.mpr_scheme_anand_draft_id_pk_seq;
       public          postgres    false    314            #           0    0     mpr_scheme_anand_draft_id_pk_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.mpr_scheme_anand_draft_id_pk_seq OWNED BY public.mpr_scheme_anand_draft.id_pk;
          public          postgres    false    313            <           1259    36756    mpr_scheme_safedsavel_backup    TABLE     �  CREATE TABLE public.mpr_scheme_safedsavel_backup (
    id_pk integer NOT NULL,
    login_id_fk bigint NOT NULL,
    ip character varying NOT NULL,
    nodal_check numeric NOT NULL,
    session character varying NOT NULL,
    month numeric NOT NULL,
    "No_of_accidents" numeric NOT NULL,
    "No_of_death" numeric NOT NULL,
    "No_of_insured_person" numeric NOT NULL,
    schcd character varying NOT NULL,
    inserted_at timestamp without time zone NOT NULL
);
 0   DROP TABLE public.mpr_scheme_safedsavel_backup;
       public         heap    postgres    false            ;           1259    36754 &   mpr_scheme_safedsavel_backup_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.mpr_scheme_safedsavel_backup_id_pk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.mpr_scheme_safedsavel_backup_id_pk_seq;
       public          postgres    false    316            $           0    0 &   mpr_scheme_safedsavel_backup_id_pk_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.mpr_scheme_safedsavel_backup_id_pk_seq OWNED BY public.mpr_scheme_safedsavel_backup.id_pk;
          public          postgres    false    315            >           1259    36767    mpr_scheme_safedsavel_draft    TABLE     �  CREATE TABLE public.mpr_scheme_safedsavel_draft (
    id_pk integer NOT NULL,
    login_id_fk bigint NOT NULL,
    ip character varying NOT NULL,
    nodal_check numeric NOT NULL,
    session character varying NOT NULL,
    month numeric NOT NULL,
    "No_of_accidents" numeric NOT NULL,
    "No_of_death" numeric NOT NULL,
    "No_of_insured_person" numeric NOT NULL,
    schcd character varying NOT NULL,
    inserted_at timestamp without time zone NOT NULL
);
 /   DROP TABLE public.mpr_scheme_safedsavel_draft;
       public         heap    postgres    false            =           1259    36765 %   mpr_scheme_safedsavel_draft_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.mpr_scheme_safedsavel_draft_id_pk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.mpr_scheme_safedsavel_draft_id_pk_seq;
       public          postgres    false    318            %           0    0 %   mpr_scheme_safedsavel_draft_id_pk_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.mpr_scheme_safedsavel_draft_id_pk_seq OWNED BY public.mpr_scheme_safedsavel_draft.id_pk;
          public          postgres    false    317            �            1259    21024    mpr_semitrans_privilege    TABLE     -  CREATE TABLE public.mpr_semitrans_privilege (
    privilege_id_pk bigint NOT NULL,
    parent integer NOT NULL,
    link character varying(70) NOT NULL,
    view_sidebar bit(1) NOT NULL,
    "order" integer NOT NULL,
    page_name character varying(70) NOT NULL,
    active_status numeric NOT NULL
);
 +   DROP TABLE public.mpr_semitrans_privilege;
       public         heap    postgres    false            %           1259    21520    mpr_semitrans_profile    TABLE     i  CREATE TABLE public.mpr_semitrans_profile (
    username character varying(50),
    f_name character varying(50),
    m_name character varying(50),
    l_name character varying(50),
    mobile numeric(10,0),
    email character varying(50),
    designation character varying(50),
    district character varying(50),
    image text,
    id_pk bigint NOT NULL
);
 )   DROP TABLE public.mpr_semitrans_profile;
       public         heap    postgres    false            !           1259    21145    mpr_semitrans_user_privilege    TABLE     �   CREATE TABLE public.mpr_semitrans_user_privilege (
    user_priv_id_pk bigint NOT NULL,
    privilege_id_fk bigint NOT NULL,
    user_type_id_fk bigint NOT NULL,
    active_status numeric NOT NULL
);
 0   DROP TABLE public.mpr_semitrans_user_privilege;
       public         heap    postgres    false            $           1259    21152    mpr_semitrans_user_type    TABLE     �   CREATE TABLE public.mpr_semitrans_user_type (
    user_type_id_pk bigint NOT NULL,
    desig character varying(20) NOT NULL,
    active_status numeric NOT NULL
);
 +   DROP TABLE public.mpr_semitrans_user_type;
       public         heap    postgres    false            -           1259    21806    mpr_trans_notification    TABLE     7  CREATE TABLE public.mpr_trans_notification (
    audience_id character varying(5) NOT NULL,
    notification_head character varying(50) NOT NULL,
    notification_text text NOT NULL,
    active_status numeric(1,0) NOT NULL,
    notification_id_pk bigint NOT NULL,
    inserted_at timestamp without time zone
);
 *   DROP TABLE public.mpr_trans_notification;
       public         heap    postgres    false            .           1259    28518 #   notification_notification_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.notification_notification_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.notification_notification_id_pk_seq;
       public          postgres    false    301            &           0    0 #   notification_notification_id_pk_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.notification_notification_id_pk_seq OWNED BY public.mpr_trans_notification.notification_id_pk;
          public          postgres    false    302            2           1259    29364    office_dept_office_dept_seq    SEQUENCE     �   CREATE SEQUENCE public.office_dept_office_dept_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.office_dept_office_dept_seq;
       public          postgres    false    305            '           0    0    office_dept_office_dept_seq    SEQUENCE OWNED BY     d   ALTER SEQUENCE public.office_dept_office_dept_seq OWNED BY public.mpr_master_department.dept_id_pk;
          public          postgres    false    306            0           1259    29355    office_office_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.office_office_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.office_office_id_pk_seq;
       public          postgres    false    303            (           0    0    office_office_id_pk_seq    SEQUENCE OWNED BY     ^   ALTER SEQUENCE public.office_office_id_pk_seq OWNED BY public.mpr_master_office.office_id_pk;
          public          postgres    false    304            &           1259    21528    profile_id_pk_seq    SEQUENCE     z   CREATE SEQUENCE public.profile_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.profile_id_pk_seq;
       public          postgres    false    293            )           0    0    profile_id_pk_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.profile_id_pk_seq OWNED BY public.mpr_semitrans_profile.id_pk;
          public          postgres    false    294                       1259    21123    rp_location_master_block    TABLE     &  CREATE TABLE public.rp_location_master_block (
    district_id_fk integer,
    subdiv_id_fk integer,
    block_name character varying(150),
    schcd character(6),
    clucd character(5),
    block_id_pk bigint NOT NULL,
    block_mun_corp_flag character(2),
    block_kol_flag character(2)
);
 ,   DROP TABLE public.rp_location_master_block;
       public         heap    postgres    false                       1259    21126    rp_location_master_district    TABLE     �   CREATE TABLE public.rp_location_master_district (
    district_id_pk bigint NOT NULL,
    state_id_fk integer,
    district_name character varying(100),
    schcd character(4)
);
 /   DROP TABLE public.rp_location_master_district;
       public         heap    postgres    false                       1259    21129    rp_location_master_gp    TABLE       CREATE TABLE public.rp_location_master_gp (
    schcd character varying(12) NOT NULL,
    schname character varying(100),
    parent_id character varying(12),
    gp_ward_flag character varying(2) NOT NULL,
    block_id_fk integer,
    gp_id_pk bigint NOT NULL
);
 )   DROP TABLE public.rp_location_master_gp;
       public         heap    postgres    false                       1259    21132    rp_location_master_state    TABLE     �   CREATE TABLE public.rp_location_master_state (
    state_id_pk integer NOT NULL,
    state_name character varying(30),
    active_status smallint
);
 ,   DROP TABLE public.rp_location_master_state;
       public         heap    postgres    false                       1259    21135    rp_location_master_subdiv    TABLE     �   CREATE TABLE public.rp_location_master_subdiv (
    district_id_fk integer,
    subdiv_name character(100),
    schcd character(10),
    subdiv_id_pk bigint NOT NULL
);
 -   DROP TABLE public.rp_location_master_subdiv;
       public         heap    postgres    false            6           1259    29390 !   scheme_dept_scheme_dept_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.scheme_dept_scheme_dept_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.scheme_dept_scheme_dept_id_pk_seq;
       public          postgres    false    309            *           0    0 !   scheme_dept_scheme_dept_id_pk_seq    SEQUENCE OWNED BY     r   ALTER SEQUENCE public.scheme_dept_scheme_dept_id_pk_seq OWNED BY public.mpr_master_scheme_dept.scheme_dept_id_pk;
          public          postgres    false    310                       1259    21141    scheme_table_id_seq    SEQUENCE     |   CREATE SEQUENCE public.scheme_table_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.scheme_table_id_seq;
       public          postgres    false    286            +           0    0    scheme_table_id_seq    SEQUENCE OWNED BY     `   ALTER SEQUENCE public.scheme_table_id_seq OWNED BY public.mpr_master_scheme_table.scheme_id_pk;
          public          postgres    false    287                        1259    21143    table_id_pk_seq    SEQUENCE     x   CREATE SEQUENCE public.table_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.table_id_pk_seq;
       public          postgres    false    202            ,           0    0    table_id_pk_seq    SEQUENCE OWNED BY     N   ALTER SEQUENCE public.table_id_pk_seq OWNED BY public.mpr_master_table.id_pk;
          public          postgres    false    288            "           1259    21148 "   user_privilege_privilege_id_fk_seq    SEQUENCE     �   CREATE SEQUENCE public.user_privilege_privilege_id_fk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.user_privilege_privilege_id_fk_seq;
       public          postgres    false    289            -           0    0 "   user_privilege_privilege_id_fk_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.user_privilege_privilege_id_fk_seq OWNED BY public.mpr_semitrans_user_privilege.privilege_id_fk;
          public          postgres    false    290            #           1259    21150 "   user_privilege_user_type_id_fk_seq    SEQUENCE     �   CREATE SEQUENCE public.user_privilege_user_type_id_fk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.user_privilege_user_type_id_fk_seq;
       public          postgres    false    289            .           0    0 "   user_privilege_user_type_id_fk_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE public.user_privilege_user_type_id_fk_seq OWNED BY public.mpr_semitrans_user_privilege.user_type_id_fk;
          public          postgres    false    291            L           2604    21219    mpr_master_attri_table id    DEFAULT     y   ALTER TABLE ONLY public.mpr_master_attri_table ALTER COLUMN id SET DEFAULT nextval('public.att_table_id_seq'::regclass);
 H   ALTER TABLE public.mpr_master_attri_table ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    267    266            [           2604    29366     mpr_master_department dept_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_department ALTER COLUMN dept_id_pk SET DEFAULT nextval('public.office_dept_office_dept_seq'::regclass);
 O   ALTER TABLE public.mpr_master_department ALTER COLUMN dept_id_pk DROP DEFAULT;
       public          postgres    false    306    305            ]           2604    29379 "   mpr_master_designation desig_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_designation ALTER COLUMN desig_id_pk SET DEFAULT nextval('public.designation_desig_id_pk_seq'::regclass);
 Q   ALTER TABLE public.mpr_master_designation ALTER COLUMN desig_id_pk DROP DEFAULT;
       public          postgres    false    308    307            P           2604    21224 '   mpr_master_location_data location_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_location_data ALTER COLUMN location_id_pk SET DEFAULT nextval('public.location_data_location_id_pk_seq'::regclass);
 V   ALTER TABLE public.mpr_master_location_data ALTER COLUMN location_id_pk DROP DEFAULT;
       public          postgres    false    277    276            Z           2604    29357    mpr_master_office office_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_office ALTER COLUMN office_id_pk SET DEFAULT nextval('public.office_office_id_pk_seq'::regclass);
 M   ALTER TABLE public.mpr_master_office ALTER COLUMN office_id_pk DROP DEFAULT;
       public          postgres    false    304    303            ^           2604    29392 (   mpr_master_scheme_dept scheme_dept_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_scheme_dept ALTER COLUMN scheme_dept_id_pk SET DEFAULT nextval('public.scheme_dept_scheme_dept_id_pk_seq'::regclass);
 W   ALTER TABLE public.mpr_master_scheme_dept ALTER COLUMN scheme_dept_id_pk DROP DEFAULT;
       public          postgres    false    310    309            R           2604    21226 $   mpr_master_scheme_table scheme_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_master_scheme_table ALTER COLUMN scheme_id_pk SET DEFAULT nextval('public.scheme_table_id_seq'::regclass);
 S   ALTER TABLE public.mpr_master_scheme_table ALTER COLUMN scheme_id_pk DROP DEFAULT;
       public          postgres    false    287    286            �           2604    21227    mpr_master_table id_pk    DEFAULT     u   ALTER TABLE ONLY public.mpr_master_table ALTER COLUMN id_pk SET DEFAULT nextval('public.table_id_pk_seq'::regclass);
 E   ALTER TABLE public.mpr_master_table ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    288    202            �           2604    21155    mpr_scheme_anand id_pk    DEFAULT     r   ALTER TABLE ONLY public.mpr_scheme_anand ALTER COLUMN id_pk SET DEFAULT nextval('public.anand_id_seq'::regclass);
 E   ALTER TABLE public.mpr_scheme_anand ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    203    265            �           2604    21156    mpr_scheme_anand login_id_fk    DEFAULT     Q   ALTER TABLE ONLY public.mpr_scheme_anand ALTER COLUMN login_id_fk SET DEFAULT 0;
 K   ALTER TABLE public.mpr_scheme_anand ALTER COLUMN login_id_fk DROP DEFAULT;
       public          postgres    false    203            _           2604    36737    mpr_scheme_anand_backup id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_scheme_anand_backup ALTER COLUMN id_pk SET DEFAULT nextval('public.mpr_scheme_anand_backup_id_pk_seq'::regclass);
 L   ALTER TABLE public.mpr_scheme_anand_backup ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    311    312    312            `           2604    36748    mpr_scheme_anand_draft id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_scheme_anand_draft ALTER COLUMN id_pk SET DEFAULT nextval('public.mpr_scheme_anand_draft_id_pk_seq'::regclass);
 K   ALTER TABLE public.mpr_scheme_anand_draft ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    313    314    314            �           2604    21157    mpr_scheme_awcc id_pk    DEFAULT     r   ALTER TABLE ONLY public.mpr_scheme_awcc ALTER COLUMN id_pk SET DEFAULT nextval('public."AWCC_id_seq"'::regclass);
 D   ALTER TABLE public.mpr_scheme_awcc ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    205    204            �           2604    21158    mpr_scheme_awcc login_id_fk    DEFAULT     P   ALTER TABLE ONLY public.mpr_scheme_awcc ALTER COLUMN login_id_fk SET DEFAULT 0;
 J   ALTER TABLE public.mpr_scheme_awcc ALTER COLUMN login_id_fk DROP DEFAULT;
       public          postgres    false    204            �           2604    21159    mpr_scheme_baitarani id_pk    DEFAULT     |   ALTER TABLE ONLY public.mpr_scheme_baitarani ALTER COLUMN id_pk SET DEFAULT nextval('public."BAITARANI_id_seq"'::regclass);
 I   ALTER TABLE public.mpr_scheme_baitarani ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    206    207            �           2604    21160     mpr_scheme_baitarani login_id_fk    DEFAULT     U   ALTER TABLE ONLY public.mpr_scheme_baitarani ALTER COLUMN login_id_fk SET DEFAULT 0;
 O   ALTER TABLE public.mpr_scheme_baitarani ALTER COLUMN login_id_fk DROP DEFAULT;
       public          postgres    false    206            �           2604    21161    mpr_scheme_doc id_pk    DEFAULT     n   ALTER TABLE ONLY public.mpr_scheme_doc ALTER COLUMN id_pk SET DEFAULT nextval('public.doc_id_seq'::regclass);
 C   ALTER TABLE public.mpr_scheme_doc ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    208    274            �           2604    21162    mpr_scheme_doc login_id_fk    DEFAULT     O   ALTER TABLE ONLY public.mpr_scheme_doc ALTER COLUMN login_id_fk SET DEFAULT 0;
 I   ALTER TABLE public.mpr_scheme_doc ALTER COLUMN login_id_fk DROP DEFAULT;
       public          postgres    false    208            �           2604    21163    mpr_scheme_dog id_pk    DEFAULT     p   ALTER TABLE ONLY public.mpr_scheme_dog ALTER COLUMN id_pk SET DEFAULT nextval('public."DOG_id_seq"'::regclass);
 C   ALTER TABLE public.mpr_scheme_dog ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    209    210            �           2604    21164    mpr_scheme_dog login_id_fk    DEFAULT     O   ALTER TABLE ONLY public.mpr_scheme_dog ALTER COLUMN login_id_fk SET DEFAULT 0;
 I   ALTER TABLE public.mpr_scheme_dog ALTER COLUMN login_id_fk DROP DEFAULT;
       public          postgres    false    209            �           2604    21165    mpr_scheme_doptuhd id_pk    DEFAULT     x   ALTER TABLE ONLY public.mpr_scheme_doptuhd ALTER COLUMN id_pk SET DEFAULT nextval('public."DOPTUHD_id_seq"'::regclass);
 G   ALTER TABLE public.mpr_scheme_doptuhd ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    212    211            �           2604    21166    mpr_scheme_doptuhd login_id_fk    DEFAULT     S   ALTER TABLE ONLY public.mpr_scheme_doptuhd ALTER COLUMN login_id_fk SET DEFAULT 0;
 M   ALTER TABLE public.mpr_scheme_doptuhd ALTER COLUMN login_id_fk DROP DEFAULT;
       public          postgres    false    211                        2604    21167    mpr_scheme_enrollment id_pk    DEFAULT     ~   ALTER TABLE ONLY public.mpr_scheme_enrollment ALTER COLUMN id_pk SET DEFAULT nextval('public."ENROLLMENT_id_seq"'::regclass);
 J   ALTER TABLE public.mpr_scheme_enrollment ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    214    213                       2604    21168 !   mpr_scheme_enrollment login_id_fk    DEFAULT     V   ALTER TABLE ONLY public.mpr_scheme_enrollment ALTER COLUMN login_id_fk SET DEFAULT 0;
 P   ALTER TABLE public.mpr_scheme_enrollment ALTER COLUMN login_id_fk DROP DEFAULT;
       public          postgres    false    213                       2604    21169    mpr_scheme_foodpro id_pk    DEFAULT     x   ALTER TABLE ONLY public.mpr_scheme_foodpro ALTER COLUMN id_pk SET DEFAULT nextval('public."FOODPRO_id_seq"'::regclass);
 G   ALTER TABLE public.mpr_scheme_foodpro ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    216    215                       2604    21170    mpr_scheme_foodpro login_id_fk    DEFAULT     S   ALTER TABLE ONLY public.mpr_scheme_foodpro ALTER COLUMN login_id_fk SET DEFAULT 0;
 M   ALTER TABLE public.mpr_scheme_foodpro ALTER COLUMN login_id_fk DROP DEFAULT;
       public          postgres    false    215                       2604    21171    mpr_scheme_gitanjali id_pk    DEFAULT     |   ALTER TABLE ONLY public.mpr_scheme_gitanjali ALTER COLUMN id_pk SET DEFAULT nextval('public."GITANJALI_id_seq"'::regclass);
 I   ALTER TABLE public.mpr_scheme_gitanjali ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    217    218                       2604    21172     mpr_scheme_gitanjali login_id_fk    DEFAULT     U   ALTER TABLE ONLY public.mpr_scheme_gitanjali ALTER COLUMN login_id_fk SET DEFAULT 0;
 O   ALTER TABLE public.mpr_scheme_gitanjali ALTER COLUMN login_id_fk DROP DEFAULT;
       public          postgres    false    217            	           2604    21173    mpr_scheme_immunisati id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_scheme_immunisati ALTER COLUMN id_pk SET DEFAULT nextval('public."IMMUNISATION_id_seq"'::regclass);
 J   ALTER TABLE public.mpr_scheme_immunisati ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    220    219            
           2604    21174 !   mpr_scheme_immunisati login_id_fk    DEFAULT     V   ALTER TABLE ONLY public.mpr_scheme_immunisati ALTER COLUMN login_id_fk SET DEFAULT 0;
 P   ALTER TABLE public.mpr_scheme_immunisati ALTER COLUMN login_id_fk DROP DEFAULT;
       public          postgres    false    219                       2604    21175    mpr_scheme_infantd id_pk    DEFAULT     x   ALTER TABLE ONLY public.mpr_scheme_infantd ALTER COLUMN id_pk SET DEFAULT nextval('public."INFANTD_id_seq"'::regclass);
 G   ALTER TABLE public.mpr_scheme_infantd ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    221    222                       2604    21176    mpr_scheme_infantd login_id_fk    DEFAULT     S   ALTER TABLE ONLY public.mpr_scheme_infantd ALTER COLUMN login_id_fk SET DEFAULT 0;
 M   ALTER TABLE public.mpr_scheme_infantd ALTER COLUMN login_id_fk DROP DEFAULT;
       public          postgres    false    221                       2604    21177    mpr_scheme_inspection id_pk    DEFAULT     ~   ALTER TABLE ONLY public.mpr_scheme_inspection ALTER COLUMN id_pk SET DEFAULT nextval('public."INSPECTION_id_seq"'::regclass);
 J   ALTER TABLE public.mpr_scheme_inspection ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    223    224                       2604    21178 !   mpr_scheme_inspection login_id_fk    DEFAULT     V   ALTER TABLE ONLY public.mpr_scheme_inspection ALTER COLUMN login_id_fk SET DEFAULT 0;
 P   ALTER TABLE public.mpr_scheme_inspection ALTER COLUMN login_id_fk DROP DEFAULT;
       public          postgres    false    223                       2604    21179    mpr_scheme_instdel id_pk    DEFAULT     x   ALTER TABLE ONLY public.mpr_scheme_instdel ALTER COLUMN id_pk SET DEFAULT nextval('public."INSTDEL_id_seq"'::regclass);
 G   ALTER TABLE public.mpr_scheme_instdel ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    225    226                       2604    21180    mpr_scheme_instdel login_id_fk    DEFAULT     S   ALTER TABLE ONLY public.mpr_scheme_instdel ALTER COLUMN login_id_fk SET DEFAULT 0;
 M   ALTER TABLE public.mpr_scheme_instdel ALTER COLUMN login_id_fk DROP DEFAULT;
       public          postgres    false    225                       2604    21181    mpr_scheme_jaldjalb id_pk    DEFAULT     z   ALTER TABLE ONLY public.mpr_scheme_jaldjalb ALTER COLUMN id_pk SET DEFAULT nextval('public."JALDJALB_id_seq"'::regclass);
 H   ALTER TABLE public.mpr_scheme_jaldjalb ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    228    227                       2604    21182    mpr_scheme_jaldjalb login_id_fk    DEFAULT     T   ALTER TABLE ONLY public.mpr_scheme_jaldjalb ALTER COLUMN login_id_fk SET DEFAULT 0;
 N   ALTER TABLE public.mpr_scheme_jaldjalb ALTER COLUMN login_id_fk DROP DEFAULT;
       public          postgres    false    227                       2604    21183    mpr_scheme_kanyas id_pk    DEFAULT     v   ALTER TABLE ONLY public.mpr_scheme_kanyas ALTER COLUMN id_pk SET DEFAULT nextval('public."KANYAS_id_seq"'::regclass);
 F   ALTER TABLE public.mpr_scheme_kanyas ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    229    230                       2604    21184    mpr_scheme_kanyas login_id_fk    DEFAULT     R   ALTER TABLE ONLY public.mpr_scheme_kanyas ALTER COLUMN login_id_fk SET DEFAULT 0;
 L   ALTER TABLE public.mpr_scheme_kanyas ALTER COLUMN login_id_fk DROP DEFAULT;
       public          postgres    false    229                       2604    21185    mpr_scheme_karmatirth id_pk    DEFAULT        ALTER TABLE ONLY public.mpr_scheme_karmatirth ALTER COLUMN id_pk SET DEFAULT nextval('public."KARMATIRTHA_id_seq"'::regclass);
 J   ALTER TABLE public.mpr_scheme_karmatirth ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    231    232                       2604    21186 !   mpr_scheme_karmatirth login_id_fk    DEFAULT     V   ALTER TABLE ONLY public.mpr_scheme_karmatirth ALTER COLUMN login_id_fk SET DEFAULT 0;
 P   ALTER TABLE public.mpr_scheme_karmatirth ALTER COLUMN login_id_fk DROP DEFAULT;
       public          postgres    false    231                       2604    21187    mpr_scheme_kcc id_pk    DEFAULT     s   ALTER TABLE ONLY public.mpr_scheme_kcc ALTER COLUMN id_pk SET DEFAULT nextval('public."KCC_id_pk_seq"'::regclass);
 C   ALTER TABLE public.mpr_scheme_kcc ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    233    234                       2604    21188    mpr_scheme_kcc login_id_fk    DEFAULT     O   ALTER TABLE ONLY public.mpr_scheme_kcc ALTER COLUMN login_id_fk SET DEFAULT 0;
 I   ALTER TABLE public.mpr_scheme_kcc ALTER COLUMN login_id_fk DROP DEFAULT;
       public          postgres    false    233            W           2604    21787    mpr_scheme_kcc_backup id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_scheme_kcc_backup ALTER COLUMN id_pk SET DEFAULT nextval('public."KCC_backup_id_pk_seq"'::regclass);
 J   ALTER TABLE public.mpr_scheme_kcc_backup ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    298    297    298            X           2604    21798    mpr_scheme_kcc_draft id_pk    DEFAULT        ALTER TABLE ONLY public.mpr_scheme_kcc_draft ALTER COLUMN id_pk SET DEFAULT nextval('public."KCC_draft_id_pk_seq"'::regclass);
 I   ALTER TABLE public.mpr_scheme_kcc_draft ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    299    300    300            !           2604    21189    mpr_scheme_kishanm id_pk    DEFAULT     v   ALTER TABLE ONLY public.mpr_scheme_kishanm ALTER COLUMN id_pk SET DEFAULT nextval('public.kishanm_id_seq'::regclass);
 G   ALTER TABLE public.mpr_scheme_kishanm ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    275    235            "           2604    21190    mpr_scheme_kishanm login_id_fk    DEFAULT     S   ALTER TABLE ONLY public.mpr_scheme_kishanm ALTER COLUMN login_id_fk SET DEFAULT 0;
 M   ALTER TABLE public.mpr_scheme_kishanm ALTER COLUMN login_id_fk DROP DEFAULT;
       public          postgres    false    235            $           2604    21191    mpr_scheme_landpp id_pk    DEFAULT     v   ALTER TABLE ONLY public.mpr_scheme_landpp ALTER COLUMN id_pk SET DEFAULT nextval('public."LANDPP_id_seq"'::regclass);
 F   ALTER TABLE public.mpr_scheme_landpp ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    236    237            %           2604    21192    mpr_scheme_landpp login_id_fk    DEFAULT     R   ALTER TABLE ONLY public.mpr_scheme_landpp ALTER COLUMN login_id_fk SET DEFAULT 0;
 L   ALTER TABLE public.mpr_scheme_landpp ALTER COLUMN login_id_fk DROP DEFAULT;
       public          postgres    false    236            )           2604    21195    mpr_scheme_maternald id_pk    DEFAULT     |   ALTER TABLE ONLY public.mpr_scheme_maternald ALTER COLUMN id_pk SET DEFAULT nextval('public."MATERNALD_id_seq"'::regclass);
 I   ALTER TABLE public.mpr_scheme_maternald ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    242    241            *           2604    21196     mpr_scheme_maternald login_id_fk    DEFAULT     U   ALTER TABLE ONLY public.mpr_scheme_maternald ALTER COLUMN login_id_fk SET DEFAULT 0;
 O   ALTER TABLE public.mpr_scheme_maternald ALTER COLUMN login_id_fk DROP DEFAULT;
       public          postgres    false    241            ,           2604    21197    mpr_scheme_mci id_pk    DEFAULT     p   ALTER TABLE ONLY public.mpr_scheme_mci ALTER COLUMN id_pk SET DEFAULT nextval('public."MCI_id_seq"'::regclass);
 C   ALTER TABLE public.mpr_scheme_mci ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    243    244            -           2604    21198    mpr_scheme_mci login_id_fk    DEFAULT     O   ALTER TABLE ONLY public.mpr_scheme_mci ALTER COLUMN login_id_fk SET DEFAULT 0;
 I   ALTER TABLE public.mpr_scheme_mci ALTER COLUMN login_id_fk DROP DEFAULT;
       public          postgres    false    243            /           2604    21199    mpr_scheme_mgnregs id_pk    DEFAULT     u   ALTER TABLE ONLY public.mpr_scheme_mgnregs ALTER COLUMN id_pk SET DEFAULT nextval('public.mgnres_id_seq'::regclass);
 G   ALTER TABLE public.mpr_scheme_mgnregs ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    280    245            0           2604    21200    mpr_scheme_mgnregs login_id_fk    DEFAULT     S   ALTER TABLE ONLY public.mpr_scheme_mgnregs ALTER COLUMN login_id_fk SET DEFAULT 0;
 M   ALTER TABLE public.mpr_scheme_mgnregs ALTER COLUMN login_id_fk DROP DEFAULT;
       public          postgres    false    245            2           2604    21201    mpr_scheme_minoritys id_pk    DEFAULT     |   ALTER TABLE ONLY public.mpr_scheme_minoritys ALTER COLUMN id_pk SET DEFAULT nextval('public."MINORITYS_id_seq"'::regclass);
 I   ALTER TABLE public.mpr_scheme_minoritys ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    247    246            3           2604    21202     mpr_scheme_minoritys login_id_fk    DEFAULT     U   ALTER TABLE ONLY public.mpr_scheme_minoritys ALTER COLUMN login_id_fk SET DEFAULT 0;
 O   ALTER TABLE public.mpr_scheme_minoritys ALTER COLUMN login_id_fk DROP DEFAULT;
       public          postgres    false    246            5           2604    21203    mpr_scheme_poe id_pk    DEFAULT     p   ALTER TABLE ONLY public.mpr_scheme_poe ALTER COLUMN id_pk SET DEFAULT nextval('public."POE_id_seq"'::regclass);
 C   ALTER TABLE public.mpr_scheme_poe ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    248    249            6           2604    21204    mpr_scheme_poe login_id_fk    DEFAULT     O   ALTER TABLE ONLY public.mpr_scheme_poe ALTER COLUMN login_id_fk SET DEFAULT 0;
 I   ALTER TABLE public.mpr_scheme_poe ALTER COLUMN login_id_fk DROP DEFAULT;
       public          postgres    false    248            8           2604    21205    mpr_scheme_saboojs id_pk    DEFAULT     x   ALTER TABLE ONLY public.mpr_scheme_saboojs ALTER COLUMN id_pk SET DEFAULT nextval('public."SABOOJS_id_seq"'::regclass);
 G   ALTER TABLE public.mpr_scheme_saboojs ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    251    254            9           2604    21206    mpr_scheme_saboojs login_id_fk    DEFAULT     S   ALTER TABLE ONLY public.mpr_scheme_saboojs ALTER COLUMN login_id_fk SET DEFAULT 0;
 M   ALTER TABLE public.mpr_scheme_saboojs ALTER COLUMN login_id_fk DROP DEFAULT;
       public          postgres    false    251            ;           2604    21207    mpr_scheme_saboojshre id_pk    DEFAULT        ALTER TABLE ONLY public.mpr_scheme_saboojshre ALTER COLUMN id_pk SET DEFAULT nextval('public."SABOOJSHREE_id_seq"'::regclass);
 J   ALTER TABLE public.mpr_scheme_saboojshre ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    253    252            <           2604    21208 !   mpr_scheme_saboojshre login_id_fk    DEFAULT     V   ALTER TABLE ONLY public.mpr_scheme_saboojshre ALTER COLUMN login_id_fk SET DEFAULT 0;
 P   ALTER TABLE public.mpr_scheme_saboojshre ALTER COLUMN login_id_fk DROP DEFAULT;
       public          postgres    false    252            >           2604    21209    mpr_scheme_safedsavel id_pk    DEFAULT     ~   ALTER TABLE ONLY public.mpr_scheme_safedsavel ALTER COLUMN id_pk SET DEFAULT nextval('public."SAFEDSAVEL_id_seq"'::regclass);
 J   ALTER TABLE public.mpr_scheme_safedsavel ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    256    255            ?           2604    21210 !   mpr_scheme_safedsavel login_id_fk    DEFAULT     V   ALTER TABLE ONLY public.mpr_scheme_safedsavel ALTER COLUMN login_id_fk SET DEFAULT 0;
 P   ALTER TABLE public.mpr_scheme_safedsavel ALTER COLUMN login_id_fk DROP DEFAULT;
       public          postgres    false    255            a           2604    36759 "   mpr_scheme_safedsavel_backup id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_scheme_safedsavel_backup ALTER COLUMN id_pk SET DEFAULT nextval('public.mpr_scheme_safedsavel_backup_id_pk_seq'::regclass);
 Q   ALTER TABLE public.mpr_scheme_safedsavel_backup ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    316    315    316            b           2604    36770 !   mpr_scheme_safedsavel_draft id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_scheme_safedsavel_draft ALTER COLUMN id_pk SET DEFAULT nextval('public.mpr_scheme_safedsavel_draft_id_pk_seq'::regclass);
 P   ALTER TABLE public.mpr_scheme_safedsavel_draft ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    318    317    318            A           2604    21211    mpr_scheme_samabythi id_pk    DEFAULT     |   ALTER TABLE ONLY public.mpr_scheme_samabythi ALTER COLUMN id_pk SET DEFAULT nextval('public."SAMABYTHI_id_seq"'::regclass);
 I   ALTER TABLE public.mpr_scheme_samabythi ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    257    258            B           2604    21212     mpr_scheme_samabythi login_id_fk    DEFAULT     U   ALTER TABLE ONLY public.mpr_scheme_samabythi ALTER COLUMN login_id_fk SET DEFAULT 0;
 O   ALTER TABLE public.mpr_scheme_samabythi ALTER COLUMN login_id_fk DROP DEFAULT;
       public          postgres    false    257            D           2604    21213    mpr_scheme_sikshas id_pk    DEFAULT     x   ALTER TABLE ONLY public.mpr_scheme_sikshas ALTER COLUMN id_pk SET DEFAULT nextval('public."SIKSHAS_id_seq"'::regclass);
 G   ALTER TABLE public.mpr_scheme_sikshas ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    259    260            E           2604    21214    mpr_scheme_sikshas login_id_fk    DEFAULT     S   ALTER TABLE ONLY public.mpr_scheme_sikshas ALTER COLUMN login_id_fk SET DEFAULT 0;
 M   ALTER TABLE public.mpr_scheme_sikshas ALTER COLUMN login_id_fk DROP DEFAULT;
       public          postgres    false    259            G           2604    21215    mpr_scheme_svskp id_pk    DEFAULT     t   ALTER TABLE ONLY public.mpr_scheme_svskp ALTER COLUMN id_pk SET DEFAULT nextval('public."SVSKP_id_seq"'::regclass);
 E   ALTER TABLE public.mpr_scheme_svskp ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    261    262            H           2604    21216    mpr_scheme_svskp login_id_fk    DEFAULT     Q   ALTER TABLE ONLY public.mpr_scheme_svskp ALTER COLUMN login_id_fk SET DEFAULT 0;
 K   ALTER TABLE public.mpr_scheme_svskp ALTER COLUMN login_id_fk DROP DEFAULT;
       public          postgres    false    261            J           2604    21217    mpr_scheme_yubas id_pk    DEFAULT     t   ALTER TABLE ONLY public.mpr_scheme_yubas ALTER COLUMN id_pk SET DEFAULT nextval('public."YUBAS_id_seq"'::regclass);
 E   ALTER TABLE public.mpr_scheme_yubas ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    264    263            K           2604    21218    mpr_scheme_yubas login_id_fk    DEFAULT     Q   ALTER TABLE ONLY public.mpr_scheme_yubas ALTER COLUMN login_id_fk SET DEFAULT 0;
 K   ALTER TABLE public.mpr_scheme_yubas ALTER COLUMN login_id_fk DROP DEFAULT;
       public          postgres    false    263            M           2604    21221 )   mpr_semitrans_check_first_user user_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_semitrans_check_first_user ALTER COLUMN user_id_pk SET DEFAULT nextval('public."check_First_User_user_id_pk_seq"'::regclass);
 X   ALTER TABLE public.mpr_semitrans_check_first_user ALTER COLUMN user_id_pk DROP DEFAULT;
       public          postgres    false    270    268            N           2604    21222 2   mpr_semitrans_check_first_user check_if_first_user    DEFAULT     �   ALTER TABLE ONLY public.mpr_semitrans_check_first_user ALTER COLUMN check_if_first_user SET DEFAULT nextval('public."check_First_User_check_if_first_user_seq"'::regclass);
 a   ALTER TABLE public.mpr_semitrans_check_first_user ALTER COLUMN check_if_first_user DROP DEFAULT;
       public          postgres    false    269    268            O           2604    21223 A   mpr_semitrans_dba_financial_range dba_financial_range_table_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_semitrans_dba_financial_range ALTER COLUMN dba_financial_range_table_id_pk SET DEFAULT nextval('public.dba_financial_range_table_dba_financial_range_table_id_pk_seq'::regclass);
 p   ALTER TABLE public.mpr_semitrans_dba_financial_range ALTER COLUMN dba_financial_range_table_id_pk DROP DEFAULT;
       public          postgres    false    273    272            &           2604    21193 #   mpr_semitrans_login user_type_id_fk    DEFAULT     �   ALTER TABLE ONLY public.mpr_semitrans_login ALTER COLUMN user_type_id_fk SET DEFAULT nextval('public."Login_user_type_id_fk_seq"'::regclass);
 R   ALTER TABLE public.mpr_semitrans_login ALTER COLUMN user_type_id_fk DROP DEFAULT;
       public          postgres    false    240    238            '           2604    21194    mpr_semitrans_login Login_id_pk    DEFAULT        ALTER TABLE ONLY public.mpr_semitrans_login ALTER COLUMN "Login_id_pk" SET DEFAULT nextval('public."Login_id_seq"'::regclass);
 P   ALTER TABLE public.mpr_semitrans_login ALTER COLUMN "Login_id_pk" DROP DEFAULT;
       public          postgres    false    239    238            U           2604    21530    mpr_semitrans_profile id_pk    DEFAULT     |   ALTER TABLE ONLY public.mpr_semitrans_profile ALTER COLUMN id_pk SET DEFAULT nextval('public.profile_id_pk_seq'::regclass);
 J   ALTER TABLE public.mpr_semitrans_profile ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    294    293            S           2604    21228 ,   mpr_semitrans_user_privilege privilege_id_fk    DEFAULT     �   ALTER TABLE ONLY public.mpr_semitrans_user_privilege ALTER COLUMN privilege_id_fk SET DEFAULT nextval('public.user_privilege_privilege_id_fk_seq'::regclass);
 [   ALTER TABLE public.mpr_semitrans_user_privilege ALTER COLUMN privilege_id_fk DROP DEFAULT;
       public          postgres    false    290    289            T           2604    21229 ,   mpr_semitrans_user_privilege user_type_id_fk    DEFAULT     �   ALTER TABLE ONLY public.mpr_semitrans_user_privilege ALTER COLUMN user_type_id_fk SET DEFAULT nextval('public.user_privilege_user_type_id_fk_seq'::regclass);
 [   ALTER TABLE public.mpr_semitrans_user_privilege ALTER COLUMN user_type_id_fk DROP DEFAULT;
       public          postgres    false    291    289            V           2604    21560    mpr_trans_audit_log id    DEFAULT     v   ALTER TABLE ONLY public.mpr_trans_audit_log ALTER COLUMN id SET DEFAULT nextval('public.audit_log_id_seq'::regclass);
 E   ALTER TABLE public.mpr_trans_audit_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    296    295            Q           2604    21225 (   mpr_trans_meeting_schedule meeting_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_trans_meeting_schedule ALTER COLUMN meeting_id_pk SET DEFAULT nextval('public.meeting_schedule_id_seq'::regclass);
 W   ALTER TABLE public.mpr_trans_meeting_schedule ALTER COLUMN meeting_id_pk DROP DEFAULT;
       public          postgres    false    279    278            Y           2604    28520 )   mpr_trans_notification notification_id_pk    DEFAULT     �   ALTER TABLE ONLY public.mpr_trans_notification ALTER COLUMN notification_id_pk SET DEFAULT nextval('public.notification_notification_id_pk_seq'::regclass);
 X   ALTER TABLE public.mpr_trans_notification ALTER COLUMN notification_id_pk DROP DEFAULT;
       public          postgres    false    302    301            �          0    21078    mpr_master_attri_table 
   TABLE DATA           M   COPY public.mpr_master_attri_table (id, id_scheme, a_name, name) FROM stdin;
    public          postgres    false    266   ;�      �          0    21099    mpr_master_dashboard_info 
   TABLE DATA           m   COPY public.mpr_master_dashboard_info (id, s_name, name, a_target, target, a_progress, progress) FROM stdin;
    public          postgres    false    271   ��      �          0    29360    mpr_master_department 
   TABLE DATA           \   COPY public.mpr_master_department (dept_id_pk, dept_name, s_name, office_id_fk) FROM stdin;
    public          postgres    false    305   �      �          0    29374    mpr_master_designation 
   TABLE DATA           \   COPY public.mpr_master_designation (desig_id_pk, desig_name, office_dept_id_fk) FROM stdin;
    public          postgres    false    307   ��      �          0    21111    mpr_master_location_data 
   TABLE DATA           a   COPY public.mpr_master_location_data (location_area, location_schcd, location_id_pk) FROM stdin;
    public          postgres    false    276   3�      �          0    29352    mpr_master_office 
   TABLE DATA           F   COPY public.mpr_master_office (office_id_pk, office_name) FROM stdin;
    public          postgres    false    303   %�      �          0    29387    mpr_master_scheme_dept 
   TABLE DATA           d   COPY public.mpr_master_scheme_dept (scheme_dept_id_pk, scheme_id_fk, office_dept_id_fk) FROM stdin;
    public          postgres    false    309   V�      �          0    21138    mpr_master_scheme_table 
   TABLE DATA           b   COPY public.mpr_master_scheme_table (scheme_id_pk, s_name, name, office_master_id_fk) FROM stdin;
    public          postgres    false    286   �      |          0    20848    mpr_master_table 
   TABLE DATA           l   COPY public.mpr_master_table (id_pk, login_id_fk, ip, nodal_check, session, month, inserted_at) FROM stdin;
    public          postgres    false    202   ;�      }          0    20852    mpr_scheme_anand 
   TABLE DATA           �   COPY public.mpr_scheme_anand (id_pk, login_id_fk, ip, nodal_check, session, month, "Total_No_of_SHGs_formed_in_the_district", "Total_No_of_SHGs_got_credit_linkage", schcd, inserted_at) FROM stdin;
    public          postgres    false    203   X�      �          0    36734    mpr_scheme_anand_backup 
   TABLE DATA           �   COPY public.mpr_scheme_anand_backup (id_pk, login_id_fk, ip, nodal_check, session, month, "Total_No_of_SHGs_formed_in_the_district", "Total_No_of_SHGs_got_credit_linkage", schcd, inserted_at) FROM stdin;
    public          postgres    false    312   u�      �          0    36745    mpr_scheme_anand_draft 
   TABLE DATA           �   COPY public.mpr_scheme_anand_draft (id_pk, login_id_fk, ip, nodal_check, session, month, "Total_No_of_SHGs_formed_in_the_district", "Total_No_of_SHGs_got_credit_linkage", schcd, inserted_at) FROM stdin;
    public          postgres    false    314   ��      ~          0    20857    mpr_scheme_awcc 
   TABLE DATA           �   COPY public.mpr_scheme_awcc (id_pk, login_id_fk, ip, nodal_check, session, month, "No_of_ICDS_Cenetres_devoid_of_own_building", "No_of_new_ICDS_building_constructed", "No_of_ICDS_Centres_running_in_open_space", schcd, inserted_at) FROM stdin;
    public          postgres    false    204   ��      �          0    20864    mpr_scheme_baitarani 
   TABLE DATA           �   COPY public.mpr_scheme_baitarani (id_pk, login_id_fk, ip, nodal_check, session, month, "No_of_burning_ghats_taken_up", "Completed_till_date", schcd, inserted_at) FROM stdin;
    public          postgres    false    206   ̙      �          0    20871    mpr_scheme_doc 
   TABLE DATA           �   COPY public.mpr_scheme_doc (id_pk, login_id_fk, ip, nodal_check, session, month, "Target_for_distribution_of_poultry", "No_of_poultry_actually_distributed", inserted_at, schcd) FROM stdin;
    public          postgres    false    208   �      �          0    20878    mpr_scheme_dog 
   TABLE DATA           �   COPY public.mpr_scheme_dog (id_pk, login_id_fk, ip, nodal_check, session, month, "Target_for_distribution_of_goats", "No_of_goats_actually_distributed", "No_of_beneficiaries_selected", "No_of_beneficiaries_approved", schcd, inserted_at) FROM stdin;
    public          postgres    false    209   �      �          0    20885    mpr_scheme_doptuhd 
   TABLE DATA           �   COPY public.mpr_scheme_doptuhd (id_pk, login_id_fk, ip, nodal_check, session, month, "No_of_Power_tiller_distributed", schcd, inserted_at) FROM stdin;
    public          postgres    false    211   #�      �          0    20892    mpr_scheme_enrollment 
   TABLE DATA             COPY public.mpr_scheme_enrollment (id_pk, login_id_fk, ip, nodal_check, session, month, "Gross_Enrolment_Ratio_primary", "Net_Enrolment_Ratio_primary", "Gross_Enrolment_Ratio_Upper_primary", "Net_Enrolment_Ratio_Under_primary", schcd, inserted_at) FROM stdin;
    public          postgres    false    213   @�      �          0    20899    mpr_scheme_foodpro 
   TABLE DATA           �   COPY public.mpr_scheme_foodpro (id_pk, login_id_fk, ip, nodal_check, session, month, "Status_of_pocurement", "Target_of_pocurement", schcd, inserted_at) FROM stdin;
    public          postgres    false    215   ]�      �          0    20906    mpr_scheme_gitanjali 
   TABLE DATA           �   COPY public.mpr_scheme_gitanjali (id_pk, login_id_fk, ip, nodal_check, session, month, "No_of_case_sanctioned_under_Gitanjali", "Date_of_Inception", "No_of_houses_constructed_under_Gitanjali", schcd, inserted_at) FROM stdin;
    public          postgres    false    217   z�      �          0    20913    mpr_scheme_immunisati 
   TABLE DATA           �   COPY public.mpr_scheme_immunisati (id_pk, login_id_fk, ip, nodal_check, session, month, "Per_of_Fully_immunised_child", schcd, inserted_at) FROM stdin;
    public          postgres    false    219   ��      �          0    20920    mpr_scheme_infantd 
   TABLE DATA           �   COPY public.mpr_scheme_infantd (id_pk, login_id_fk, ip, nodal_check, session, month, "Total_No_of_Infant_Death", schcd, inserted_at) FROM stdin;
    public          postgres    false    221   ��      �          0    20927    mpr_scheme_inspection 
   TABLE DATA           �   COPY public.mpr_scheme_inspection (id_pk, login_id_fk, ip, nodal_check, session, month, "No_of_homes_inspected_by_Senior_Officers", "Designation_of_officers", schcd, inserted_at) FROM stdin;
    public          postgres    false    223   њ      �          0    20934    mpr_scheme_instdel 
   TABLE DATA           �   COPY public.mpr_scheme_instdel (id_pk, login_id_fk, ip, nodal_check, session, month, "Per_of_Institutional_Delivery", schcd, inserted_at) FROM stdin;
    public          postgres    false    225   �      �          0    20941    mpr_scheme_jaldjalb 
   TABLE DATA           �   COPY public.mpr_scheme_jaldjalb (id_pk, login_id_fk, ip, nodal_check, session, month, "Date_of_Inspection", "No_of_ponds_excavated_under_Jal_Dharo_Jal_Bharo", "No_of_ponds_fish_production_started", schcd, inserted_at) FROM stdin;
    public          postgres    false    227   �      �          0    20948    mpr_scheme_kanyas 
   TABLE DATA           j  COPY public.mpr_scheme_kanyas (id_pk, login_id_fk, ip, nodal_check, session, month, "No_of_K-1_cases_application_received", "No_of_K-1_cases_application_sanctioned", "No_of_K-1_cases_application_disbursed", "No_of_K-2_cases_application_received", "No_of_K-2_cases_application_sanctioned", "No_of_K-2_cases_application_disbursed", schcd, inserted_at) FROM stdin;
    public          postgres    false    229   (�      �          0    20955    mpr_scheme_karmatirth 
   TABLE DATA           &  COPY public.mpr_scheme_karmatirth (id_pk, login_id_fk, ip, nodal_check, session, month, "No_of_Karmatirtha_sanctioned", "No_of_Karmatirtha_for_which_construction_started", "No_of_Karmatirtha_for_which_construction_completed", "No_of_Karmatirth_operationalised", schcd, inserted_at) FROM stdin;
    public          postgres    false    231   E�      �          0    20962    mpr_scheme_kcc 
   TABLE DATA           �   COPY public.mpr_scheme_kcc (id_pk, login_id_fk, ip, nodal_check, session, month, "No_of_agricultrural_families_in_the_district", "No_of_agricultural_families_covered_by_kcc", kcc_coverage_percentage, schcd, inserted_at) FROM stdin;
    public          postgres    false    233   b�      �          0    21784    mpr_scheme_kcc_backup 
   TABLE DATA           �   COPY public.mpr_scheme_kcc_backup (id_pk, login_id_fk, ip, nodal_check, session, month, "No_of_agricultrural_families_in_the_district", "No_of_agricultural_families_covered_by_kcc", kcc_coverage_percentage, schcd, inserted_at) FROM stdin;
    public          postgres    false    298   �      �          0    21795    mpr_scheme_kcc_draft 
   TABLE DATA           �   COPY public.mpr_scheme_kcc_draft (id_pk, login_id_fk, ip, nodal_check, session, month, "No_of_agricultrural_families_in_the_district", "No_of_agricultural_families_covered_by_kcc", kcc_coverage_percentage, schcd, inserted_at) FROM stdin;
    public          postgres    false    300   ��      �          0    20969    mpr_scheme_kishanm 
   TABLE DATA           �   COPY public.mpr_scheme_kishanm (id_pk, login_id_fk, ip, nodal_check, session, month, "No_of_Kishan_Mandis_sanctioned", "No_of_Kishan_Mandis_operational", "Operationality", schcd, inserted_at) FROM stdin;
    public          postgres    false    235   ל      �          0    20974    mpr_scheme_landpp 
   TABLE DATA           �   COPY public.mpr_scheme_landpp (id_pk, login_id_fk, ip, nodal_check, session, month, "No_of_land_permission_pending", "PROJECTS_NAME", schcd, inserted_at) FROM stdin;
    public          postgres    false    236   ��      �          0    20991    mpr_scheme_maternald 
   TABLE DATA           �   COPY public.mpr_scheme_maternald (id_pk, login_id_fk, ip, nodal_check, session, month, "Total_No_of_Maternal_Death", schcd, inserted_at) FROM stdin;
    public          postgres    false    241   �      �          0    20998    mpr_scheme_mci 
   TABLE DATA           �   COPY public.mpr_scheme_mci (id_pk, login_id_fk, ip, nodal_check, session, month, "Percentage_of_malnourished_child", schcd, inserted_at) FROM stdin;
    public          postgres    false    243   .�      �          0    21005    mpr_scheme_mgnregs 
   TABLE DATA             COPY public.mpr_scheme_mgnregs (id_pk, login_id_fk, ip, nodal_check, session, month, "No_of_Person_days_generated_under_MGNREGS", "Average_No_of_Persondays_generated_per_household", "Expenditure_of_the_session", per_of_labour_budget_achieved, schcd, inserted_at) FROM stdin;
    public          postgres    false    245   K�      �          0    21010    mpr_scheme_minoritys 
   TABLE DATA             COPY public.mpr_scheme_minoritys (id_pk, login_id_fk, ip, nodal_check, session, month, "Target_for_Scholarship_distribution_Aikyashree", "No_of_students_distributed_scholarship", "No_of_Aaplication_uploaded_under_Aikyashree_scholarship", schcd, inserted_at) FROM stdin;
    public          postgres    false    246   h�      �          0    21017    mpr_scheme_poe 
   TABLE DATA           �   COPY public.mpr_scheme_poe (id_pk, login_id_fk, ip, nodal_check, session, month, "Target", "Production", schcd, inserted_at) FROM stdin;
    public          postgres    false    248   ��      �          0    21027    mpr_scheme_saboojs 
   TABLE DATA           �   COPY public.mpr_scheme_saboojs (id_pk, login_id_fk, ip, nodal_check, session, month, "Target_for_distribution_of_cycles", "Cycle_distributed_till_date", schcd, inserted_at) FROM stdin;
    public          postgres    false    251   ��      �          0    21032    mpr_scheme_saboojshre 
   TABLE DATA           �   COPY public.mpr_scheme_saboojshre (id_pk, login_id_fk, ip, nodal_check, session, month, "No_of_children_born_since_inception_of_the_project_in_the_dist", "No_of_tree_sapling_handed_over_to_the_new_born_children", schcd, inserted_at) FROM stdin;
    public          postgres    false    252   ��      �          0    21041    mpr_scheme_safedsavel 
   TABLE DATA           �   COPY public.mpr_scheme_safedsavel (id_pk, login_id_fk, ip, nodal_check, session, month, "No_of_accidents", "No_of_death", "No_of_insured_person", schcd, inserted_at) FROM stdin;
    public          postgres    false    255   ܝ      �          0    36756    mpr_scheme_safedsavel_backup 
   TABLE DATA           �   COPY public.mpr_scheme_safedsavel_backup (id_pk, login_id_fk, ip, nodal_check, session, month, "No_of_accidents", "No_of_death", "No_of_insured_person", schcd, inserted_at) FROM stdin;
    public          postgres    false    316   ��      �          0    36767    mpr_scheme_safedsavel_draft 
   TABLE DATA           �   COPY public.mpr_scheme_safedsavel_draft (id_pk, login_id_fk, ip, nodal_check, session, month, "No_of_accidents", "No_of_death", "No_of_insured_person", schcd, inserted_at) FROM stdin;
    public          postgres    false    318   �      �          0    21048    mpr_scheme_samabythi 
   TABLE DATA           �   COPY public.mpr_scheme_samabythi (id_pk, login_id_fk, ip, nodal_check, session, month, "No_of_beneficiaries_provided_benefit_till_date", "Till_date", schcd, inserted_at) FROM stdin;
    public          postgres    false    257   3�      �          0    21055    mpr_scheme_sikshas 
   TABLE DATA             COPY public.mpr_scheme_sikshas (id_pk, login_id_fk, ip, nodal_check, session, month, "Targetted_No_Of_SC/ST_Student_under_Sikshashree", "No_of_Students_getting_benefit_under_Sikshashree", "No_of_Applications_uploaded_under_Sikshashree", schcd, inserted_at) FROM stdin;
    public          postgres    false    259   P�      �          0    21062    mpr_scheme_svskp 
   TABLE DATA           �   COPY public.mpr_scheme_svskp (id_pk, login_id_fk, ip, nodal_check, session, month, "No_of_project_Sponsored_under_SVSKP", "No_of_project_sanctioned_under_SVSKP", schcd, inserted_at) FROM stdin;
    public          postgres    false    261   m�      �          0    21069    mpr_scheme_yubas 
   TABLE DATA           �   COPY public.mpr_scheme_yubas (id_pk, login_id_fk, ip, nodal_check, session, month, "No_of_unemployed_Youth_registered_under_Yubashree", "No_of_unemployed_registered_Youth_getting_monthly_assistance", schcd, inserted_at) FROM stdin;
    public          postgres    false    263   ��      �          0    21092    mpr_semitrans_check_first_user 
   TABLE DATA           u   COPY public.mpr_semitrans_check_first_user (user_id_pk, check_if_first_user, check_profile_updated_once) FROM stdin;
    public          postgres    false    268   ��      �          0    21102 !   mpr_semitrans_dba_financial_range 
   TABLE DATA           y   COPY public.mpr_semitrans_dba_financial_range (dba_financial_range_table_id_pk, financial_year_range, month) FROM stdin;
    public          postgres    false    272   Ξ      �          0    20981    mpr_semitrans_login 
   TABLE DATA           �   COPY public.mpr_semitrans_login (username, password, designation, user_type_id_fk, schcd, "Login_id_pk", active_status) FROM stdin;
    public          postgres    false    238   �      �          0    21024    mpr_semitrans_privilege 
   TABLE DATA           �   COPY public.mpr_semitrans_privilege (privilege_id_pk, parent, link, view_sidebar, "order", page_name, active_status) FROM stdin;
    public          postgres    false    250   ��      �          0    21520    mpr_semitrans_profile 
   TABLE DATA           �   COPY public.mpr_semitrans_profile (username, f_name, m_name, l_name, mobile, email, designation, district, image, id_pk) FROM stdin;
    public          postgres    false    293   ��      �          0    21145    mpr_semitrans_user_privilege 
   TABLE DATA           x   COPY public.mpr_semitrans_user_privilege (user_priv_id_pk, privilege_id_fk, user_type_id_fk, active_status) FROM stdin;
    public          postgres    false    289   T      �          0    21152    mpr_semitrans_user_type 
   TABLE DATA           X   COPY public.mpr_semitrans_user_type (user_type_id_pk, desig, active_status) FROM stdin;
    public          postgres    false    292   8      �          0    21545    mpr_trans_audit_log 
   TABLE DATA           l   COPY public.mpr_trans_audit_log ("user", section, action, request, stamp, comment, ip_addr, id) FROM stdin;
    public          postgres    false    295   �      �          0    21116    mpr_trans_meeting_schedule 
   TABLE DATA           Y   COPY public.mpr_trans_meeting_schedule (meeting_id_pk, start_time, end_time) FROM stdin;
    public          postgres    false    278   �.      �          0    21806    mpr_trans_notification 
   TABLE DATA           �   COPY public.mpr_trans_notification (audience_id, notification_head, notification_text, active_status, notification_id_pk, inserted_at) FROM stdin;
    public          postgres    false    301   /      �          0    21123    rp_location_master_block 
   TABLE DATA           �   COPY public.rp_location_master_block (district_id_fk, subdiv_id_fk, block_name, schcd, clucd, block_id_pk, block_mun_corp_flag, block_kol_flag) FROM stdin;
    public          postgres    false    281   �/      �          0    21126    rp_location_master_district 
   TABLE DATA           h   COPY public.rp_location_master_district (district_id_pk, state_id_fk, district_name, schcd) FROM stdin;
    public          postgres    false    282   *G      �          0    21129    rp_location_master_gp 
   TABLE DATA           o   COPY public.rp_location_master_gp (schcd, schname, parent_id, gp_ward_flag, block_id_fk, gp_id_pk) FROM stdin;
    public          postgres    false    283   \H      �          0    21132    rp_location_master_state 
   TABLE DATA           Z   COPY public.rp_location_master_state (state_id_pk, state_name, active_status) FROM stdin;
    public          postgres    false    284   L7      �          0    21135    rp_location_master_subdiv 
   TABLE DATA           e   COPY public.rp_location_master_subdiv (district_id_fk, subdiv_name, schcd, subdiv_id_pk) FROM stdin;
    public          postgres    false    285   z7      /           0    0    AWCC_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."AWCC_id_seq"', 1, false);
          public          postgres    false    205            0           0    0    BAITARANI_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."BAITARANI_id_seq"', 1, false);
          public          postgres    false    207            1           0    0 
   DOG_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."DOG_id_seq"', 1, false);
          public          postgres    false    210            2           0    0    DOPTUHD_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."DOPTUHD_id_seq"', 1, false);
          public          postgres    false    212            3           0    0    ENROLLMENT_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."ENROLLMENT_id_seq"', 1, false);
          public          postgres    false    214            4           0    0    FOODPRO_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."FOODPRO_id_seq"', 1, false);
          public          postgres    false    216            5           0    0    GITANJALI_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."GITANJALI_id_seq"', 1, false);
          public          postgres    false    218            6           0    0    IMMUNISATION_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."IMMUNISATION_id_seq"', 1, false);
          public          postgres    false    220            7           0    0    INFANTD_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."INFANTD_id_seq"', 1, false);
          public          postgres    false    222            8           0    0    INSPECTION_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."INSPECTION_id_seq"', 1, false);
          public          postgres    false    224            9           0    0    INSTDEL_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."INSTDEL_id_seq"', 1, false);
          public          postgres    false    226            :           0    0    JALDJALB_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."JALDJALB_id_seq"', 1, false);
          public          postgres    false    228            ;           0    0    KANYAS_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."KANYAS_id_seq"', 1, false);
          public          postgres    false    230            <           0    0    KARMATIRTHA_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."KARMATIRTHA_id_seq"', 1, false);
          public          postgres    false    232            =           0    0    KCC_backup_id_pk_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."KCC_backup_id_pk_seq"', 13, true);
          public          postgres    false    297            >           0    0    KCC_draft_id_pk_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."KCC_draft_id_pk_seq"', 7, true);
          public          postgres    false    299            ?           0    0    KCC_id_pk_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."KCC_id_pk_seq"', 9, true);
          public          postgres    false    234            @           0    0    LANDPP_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."LANDPP_id_seq"', 1, false);
          public          postgres    false    237            A           0    0    Login_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Login_id_seq"', 1, true);
          public          postgres    false    239            B           0    0    Login_user_type_id_fk_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."Login_user_type_id_fk_seq"', 1, false);
          public          postgres    false    240            C           0    0    MATERNALD_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."MATERNALD_id_seq"', 1, false);
          public          postgres    false    242            D           0    0 
   MCI_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."MCI_id_seq"', 1, false);
          public          postgres    false    244            E           0    0    MINORITYS_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."MINORITYS_id_seq"', 1, false);
          public          postgres    false    247            F           0    0 
   POE_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."POE_id_seq"', 1, false);
          public          postgres    false    249            G           0    0    SABOOJSHREE_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."SABOOJSHREE_id_seq"', 1, false);
          public          postgres    false    253            H           0    0    SABOOJS_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."SABOOJS_id_seq"', 1, false);
          public          postgres    false    254            I           0    0    SAFEDSAVEL_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."SAFEDSAVEL_id_seq"', 1, false);
          public          postgres    false    256            J           0    0    SAMABYTHI_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."SAMABYTHI_id_seq"', 1, false);
          public          postgres    false    258            K           0    0    SIKSHAS_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."SIKSHAS_id_seq"', 1, false);
          public          postgres    false    260            L           0    0    SVSKP_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."SVSKP_id_seq"', 1, false);
          public          postgres    false    262            M           0    0    YUBAS_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."YUBAS_id_seq"', 1, false);
          public          postgres    false    264            N           0    0    anand_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.anand_id_seq', 1, true);
          public          postgres    false    265            O           0    0    att_table_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.att_table_id_seq', 3, true);
          public          postgres    false    267            P           0    0    audit_log_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.audit_log_id_seq', 794, true);
          public          postgres    false    296            Q           0    0 (   check_First_User_check_if_first_user_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public."check_First_User_check_if_first_user_seq"', 1, true);
          public          postgres    false    269            R           0    0    check_First_User_user_id_pk_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."check_First_User_user_id_pk_seq"', 1, false);
          public          postgres    false    270            S           0    0 =   dba_financial_range_table_dba_financial_range_table_id_pk_seq    SEQUENCE SET     l   SELECT pg_catalog.setval('public.dba_financial_range_table_dba_financial_range_table_id_pk_seq', 1, false);
          public          postgres    false    273            T           0    0    designation_desig_id_pk_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.designation_desig_id_pk_seq', 1, false);
          public          postgres    false    308            U           0    0 
   doc_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.doc_id_seq', 1, false);
          public          postgres    false    274            V           0    0    kishanm_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.kishanm_id_seq', 1, false);
          public          postgres    false    275            W           0    0     location_data_location_id_pk_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.location_data_location_id_pk_seq', 1, false);
          public          postgres    false    277            X           0    0    meeting_schedule_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.meeting_schedule_id_seq', 1, true);
          public          postgres    false    279            Y           0    0    mgnres_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.mgnres_id_seq', 1, false);
          public          postgres    false    280            Z           0    0 !   mpr_scheme_anand_backup_id_pk_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.mpr_scheme_anand_backup_id_pk_seq', 1, false);
          public          postgres    false    311            [           0    0     mpr_scheme_anand_draft_id_pk_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.mpr_scheme_anand_draft_id_pk_seq', 1, false);
          public          postgres    false    313            \           0    0 &   mpr_scheme_safedsavel_backup_id_pk_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.mpr_scheme_safedsavel_backup_id_pk_seq', 1, false);
          public          postgres    false    315            ]           0    0 %   mpr_scheme_safedsavel_draft_id_pk_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.mpr_scheme_safedsavel_draft_id_pk_seq', 1, false);
          public          postgres    false    317            ^           0    0 #   notification_notification_id_pk_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.notification_notification_id_pk_seq', 22, true);
          public          postgres    false    302            _           0    0    office_dept_office_dept_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.office_dept_office_dept_seq', 1, false);
          public          postgres    false    306            `           0    0    office_office_id_pk_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.office_office_id_pk_seq', 1, false);
          public          postgres    false    304            a           0    0    profile_id_pk_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.profile_id_pk_seq', 1, true);
          public          postgres    false    294            b           0    0 !   scheme_dept_scheme_dept_id_pk_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.scheme_dept_scheme_dept_id_pk_seq', 1, false);
          public          postgres    false    310            c           0    0    scheme_table_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.scheme_table_id_seq', 31, true);
          public          postgres    false    287            d           0    0    table_id_pk_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.table_id_pk_seq', 1, false);
          public          postgres    false    288            e           0    0 "   user_privilege_privilege_id_fk_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.user_privilege_privilege_id_fk_seq', 1, false);
          public          postgres    false    290            f           0    0 "   user_privilege_user_type_id_fk_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.user_privilege_user_type_id_fk_seq', 1, false);
          public          postgres    false    291            h           2606    21231    mpr_scheme_awcc AWCC_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.mpr_scheme_awcc
    ADD CONSTRAINT "AWCC_pkey" PRIMARY KEY (id_pk);
 E   ALTER TABLE ONLY public.mpr_scheme_awcc DROP CONSTRAINT "AWCC_pkey";
       public            postgres    false    204            j           2606    21233 #   mpr_scheme_baitarani BAITARANI_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.mpr_scheme_baitarani
    ADD CONSTRAINT "BAITARANI_pkey" PRIMARY KEY (id_pk);
 O   ALTER TABLE ONLY public.mpr_scheme_baitarani DROP CONSTRAINT "BAITARANI_pkey";
       public            postgres    false    206            n           2606    21235    mpr_scheme_dog DOG_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.mpr_scheme_dog
    ADD CONSTRAINT "DOG_pkey" PRIMARY KEY (id_pk);
 C   ALTER TABLE ONLY public.mpr_scheme_dog DROP CONSTRAINT "DOG_pkey";
       public            postgres    false    209            p           2606    21237    mpr_scheme_doptuhd DOPTUHD_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.mpr_scheme_doptuhd
    ADD CONSTRAINT "DOPTUHD_pkey" PRIMARY KEY (id_pk);
 K   ALTER TABLE ONLY public.mpr_scheme_doptuhd DROP CONSTRAINT "DOPTUHD_pkey";
       public            postgres    false    211            r           2606    21239 %   mpr_scheme_enrollment ENROLLMENT_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.mpr_scheme_enrollment
    ADD CONSTRAINT "ENROLLMENT_pkey" PRIMARY KEY (id_pk);
 Q   ALTER TABLE ONLY public.mpr_scheme_enrollment DROP CONSTRAINT "ENROLLMENT_pkey";
       public            postgres    false    213            t           2606    21241    mpr_scheme_foodpro FOODPRO_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.mpr_scheme_foodpro
    ADD CONSTRAINT "FOODPRO_pkey" PRIMARY KEY (id_pk);
 K   ALTER TABLE ONLY public.mpr_scheme_foodpro DROP CONSTRAINT "FOODPRO_pkey";
       public            postgres    false    215            v           2606    21243 #   mpr_scheme_gitanjali GITANJALI_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.mpr_scheme_gitanjali
    ADD CONSTRAINT "GITANJALI_pkey" PRIMARY KEY (id_pk);
 O   ALTER TABLE ONLY public.mpr_scheme_gitanjali DROP CONSTRAINT "GITANJALI_pkey";
       public            postgres    false    217            x           2606    21245 '   mpr_scheme_immunisati IMMUNISATION_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.mpr_scheme_immunisati
    ADD CONSTRAINT "IMMUNISATION_pkey" PRIMARY KEY (id_pk);
 S   ALTER TABLE ONLY public.mpr_scheme_immunisati DROP CONSTRAINT "IMMUNISATION_pkey";
       public            postgres    false    219            z           2606    21247    mpr_scheme_infantd INFANTD_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.mpr_scheme_infantd
    ADD CONSTRAINT "INFANTD_pkey" PRIMARY KEY (id_pk);
 K   ALTER TABLE ONLY public.mpr_scheme_infantd DROP CONSTRAINT "INFANTD_pkey";
       public            postgres    false    221            |           2606    21249 %   mpr_scheme_inspection INSPECTION_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.mpr_scheme_inspection
    ADD CONSTRAINT "INSPECTION_pkey" PRIMARY KEY (id_pk);
 Q   ALTER TABLE ONLY public.mpr_scheme_inspection DROP CONSTRAINT "INSPECTION_pkey";
       public            postgres    false    223            ~           2606    21251    mpr_scheme_instdel INSTDEL_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.mpr_scheme_instdel
    ADD CONSTRAINT "INSTDEL_pkey" PRIMARY KEY (id_pk);
 K   ALTER TABLE ONLY public.mpr_scheme_instdel DROP CONSTRAINT "INSTDEL_pkey";
       public            postgres    false    225            �           2606    21253 !   mpr_scheme_jaldjalb JALDJALB_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.mpr_scheme_jaldjalb
    ADD CONSTRAINT "JALDJALB_pkey" PRIMARY KEY (id_pk);
 M   ALTER TABLE ONLY public.mpr_scheme_jaldjalb DROP CONSTRAINT "JALDJALB_pkey";
       public            postgres    false    227            �           2606    21255    mpr_scheme_kanyas KANYAS_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.mpr_scheme_kanyas
    ADD CONSTRAINT "KANYAS_pkey" PRIMARY KEY (id_pk);
 I   ALTER TABLE ONLY public.mpr_scheme_kanyas DROP CONSTRAINT "KANYAS_pkey";
       public            postgres    false    229            �           2606    21257 %   mpr_scheme_karmatirth KARMATIRTH_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.mpr_scheme_karmatirth
    ADD CONSTRAINT "KARMATIRTH_pkey" PRIMARY KEY (id_pk);
 Q   ALTER TABLE ONLY public.mpr_scheme_karmatirth DROP CONSTRAINT "KARMATIRTH_pkey";
       public            postgres    false    231            �           2606    21259    mpr_scheme_kcc KCC_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.mpr_scheme_kcc
    ADD CONSTRAINT "KCC_pkey" PRIMARY KEY (id_pk);
 C   ALTER TABLE ONLY public.mpr_scheme_kcc DROP CONSTRAINT "KCC_pkey";
       public            postgres    false    233            �           2606    21261    mpr_semitrans_login Login_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.mpr_semitrans_login
    ADD CONSTRAINT "Login_pkey" PRIMARY KEY ("Login_id_pk");
 J   ALTER TABLE ONLY public.mpr_semitrans_login DROP CONSTRAINT "Login_pkey";
       public            postgres    false    238            �           2606    21263 0   mpr_semitrans_login Login_username_username1_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_login
    ADD CONSTRAINT "Login_username_username1_key" UNIQUE (username) INCLUDE (username);
 \   ALTER TABLE ONLY public.mpr_semitrans_login DROP CONSTRAINT "Login_username_username1_key";
       public            postgres    false    238    238            �           2606    21265 #   mpr_scheme_maternald MATERNALD_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.mpr_scheme_maternald
    ADD CONSTRAINT "MATERNALD_pkey" PRIMARY KEY (id_pk);
 O   ALTER TABLE ONLY public.mpr_scheme_maternald DROP CONSTRAINT "MATERNALD_pkey";
       public            postgres    false    241            �           2606    21267    mpr_scheme_mci MCI_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.mpr_scheme_mci
    ADD CONSTRAINT "MCI_pkey" PRIMARY KEY (id_pk);
 C   ALTER TABLE ONLY public.mpr_scheme_mci DROP CONSTRAINT "MCI_pkey";
       public            postgres    false    243            �           2606    21269    mpr_scheme_mgnregs MGNREGS_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.mpr_scheme_mgnregs
    ADD CONSTRAINT "MGNREGS_pkey" PRIMARY KEY (id_pk);
 K   ALTER TABLE ONLY public.mpr_scheme_mgnregs DROP CONSTRAINT "MGNREGS_pkey";
       public            postgres    false    245            �           2606    21271 #   mpr_scheme_minoritys MINORITYS_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.mpr_scheme_minoritys
    ADD CONSTRAINT "MINORITYS_pkey" PRIMARY KEY (id_pk);
 O   ALTER TABLE ONLY public.mpr_scheme_minoritys DROP CONSTRAINT "MINORITYS_pkey";
       public            postgres    false    246            �           2606    21273    mpr_scheme_poe POE_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.mpr_scheme_poe
    ADD CONSTRAINT "POE_pkey" PRIMARY KEY (id_pk);
 C   ALTER TABLE ONLY public.mpr_scheme_poe DROP CONSTRAINT "POE_pkey";
       public            postgres    false    248            �           2606    21275 &   mpr_semitrans_privilege Privilege_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.mpr_semitrans_privilege
    ADD CONSTRAINT "Privilege_pkey" PRIMARY KEY (privilege_id_pk);
 R   ALTER TABLE ONLY public.mpr_semitrans_privilege DROP CONSTRAINT "Privilege_pkey";
       public            postgres    false    250            �           2606    21277 %   mpr_scheme_saboojshre SABOOJSHRE_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.mpr_scheme_saboojshre
    ADD CONSTRAINT "SABOOJSHRE_pkey" PRIMARY KEY (id_pk);
 Q   ALTER TABLE ONLY public.mpr_scheme_saboojshre DROP CONSTRAINT "SABOOJSHRE_pkey";
       public            postgres    false    252            �           2606    21279    mpr_scheme_saboojs SABOOJS_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.mpr_scheme_saboojs
    ADD CONSTRAINT "SABOOJS_pkey" PRIMARY KEY (id_pk);
 K   ALTER TABLE ONLY public.mpr_scheme_saboojs DROP CONSTRAINT "SABOOJS_pkey";
       public            postgres    false    251            �           2606    21281 %   mpr_scheme_safedsavel SAFEDSAVEL_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.mpr_scheme_safedsavel
    ADD CONSTRAINT "SAFEDSAVEL_pkey" PRIMARY KEY (id_pk);
 Q   ALTER TABLE ONLY public.mpr_scheme_safedsavel DROP CONSTRAINT "SAFEDSAVEL_pkey";
       public            postgres    false    255            �           2606    21283 #   mpr_scheme_samabythi SAMABYTHI_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.mpr_scheme_samabythi
    ADD CONSTRAINT "SAMABYTHI_pkey" PRIMARY KEY (id_pk);
 O   ALTER TABLE ONLY public.mpr_scheme_samabythi DROP CONSTRAINT "SAMABYTHI_pkey";
       public            postgres    false    257            �           2606    21285    mpr_scheme_sikshas SIKSHAS_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.mpr_scheme_sikshas
    ADD CONSTRAINT "SIKSHAS_pkey" PRIMARY KEY (id_pk);
 K   ALTER TABLE ONLY public.mpr_scheme_sikshas DROP CONSTRAINT "SIKSHAS_pkey";
       public            postgres    false    259            �           2606    21287    mpr_scheme_svskp SVSKP_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.mpr_scheme_svskp
    ADD CONSTRAINT "SVSKP_pkey" PRIMARY KEY (id_pk);
 G   ALTER TABLE ONLY public.mpr_scheme_svskp DROP CONSTRAINT "SVSKP_pkey";
       public            postgres    false    261            �           2606    21289    mpr_scheme_yubas YUBAS_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.mpr_scheme_yubas
    ADD CONSTRAINT "YUBAS_pkey" PRIMARY KEY (id_pk);
 G   ALTER TABLE ONLY public.mpr_scheme_yubas DROP CONSTRAINT "YUBAS_pkey";
       public            postgres    false    263            f           2606    21291    mpr_scheme_anand anand_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.mpr_scheme_anand
    ADD CONSTRAINT anand_pkey PRIMARY KEY (id_pk);
 E   ALTER TABLE ONLY public.mpr_scheme_anand DROP CONSTRAINT anand_pkey;
       public            postgres    false    203            �           2606    21293 %   mpr_master_attri_table att_table_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.mpr_master_attri_table
    ADD CONSTRAINT att_table_pkey PRIMARY KEY (id);
 O   ALTER TABLE ONLY public.mpr_master_attri_table DROP CONSTRAINT att_table_pkey;
       public            postgres    false    266            �           2606    21568 "   mpr_trans_audit_log audit_log_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.mpr_trans_audit_log
    ADD CONSTRAINT audit_log_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.mpr_trans_audit_log DROP CONSTRAINT audit_log_pkey;
       public            postgres    false    295            �           2606    21297 4   mpr_semitrans_check_first_user check_First_User_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.mpr_semitrans_check_first_user
    ADD CONSTRAINT "check_First_User_pkey" PRIMARY KEY (user_id_pk);
 `   ALTER TABLE ONLY public.mpr_semitrans_check_first_user DROP CONSTRAINT "check_First_User_pkey";
       public            postgres    false    268            �           2606    21299 -   mpr_master_dashboard_info dashboard_info_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.mpr_master_dashboard_info
    ADD CONSTRAINT dashboard_info_pkey PRIMARY KEY (id);
 W   ALTER TABLE ONLY public.mpr_master_dashboard_info DROP CONSTRAINT dashboard_info_pkey;
       public            postgres    false    271            �           2606    21301 @   mpr_semitrans_dba_financial_range dba_financial_range_table_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_dba_financial_range
    ADD CONSTRAINT dba_financial_range_table_pkey PRIMARY KEY (dba_financial_range_table_id_pk);
 j   ALTER TABLE ONLY public.mpr_semitrans_dba_financial_range DROP CONSTRAINT dba_financial_range_table_pkey;
       public            postgres    false    272            �           2606    29381 '   mpr_master_designation designation_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.mpr_master_designation
    ADD CONSTRAINT designation_pkey PRIMARY KEY (desig_id_pk);
 Q   ALTER TABLE ONLY public.mpr_master_designation DROP CONSTRAINT designation_pkey;
       public            postgres    false    307            l           2606    21303    mpr_scheme_doc doc_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.mpr_scheme_doc
    ADD CONSTRAINT doc_pkey PRIMARY KEY (id_pk);
 A   ALTER TABLE ONLY public.mpr_scheme_doc DROP CONSTRAINT doc_pkey;
       public            postgres    false    208            �           2606    21305    mpr_scheme_kishanm kishanm_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.mpr_scheme_kishanm
    ADD CONSTRAINT kishanm_pkey PRIMARY KEY (id_pk);
 I   ALTER TABLE ONLY public.mpr_scheme_kishanm DROP CONSTRAINT kishanm_pkey;
       public            postgres    false    235            �           2606    21307 +   mpr_master_location_data location_data_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.mpr_master_location_data
    ADD CONSTRAINT location_data_pkey PRIMARY KEY (location_id_pk);
 U   ALTER TABLE ONLY public.mpr_master_location_data DROP CONSTRAINT location_data_pkey;
       public            postgres    false    276            �           2606    21309 0   mpr_trans_meeting_schedule meeting_schedule_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.mpr_trans_meeting_schedule
    ADD CONSTRAINT meeting_schedule_pkey PRIMARY KEY (meeting_id_pk);
 Z   ALTER TABLE ONLY public.mpr_trans_meeting_schedule DROP CONSTRAINT meeting_schedule_pkey;
       public            postgres    false    278            �           2606    28528 (   mpr_trans_notification notification_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.mpr_trans_notification
    ADD CONSTRAINT notification_pkey PRIMARY KEY (notification_id_pk);
 R   ALTER TABLE ONLY public.mpr_trans_notification DROP CONSTRAINT notification_pkey;
       public            postgres    false    301            �           2606    29368 &   mpr_master_department office_dept_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.mpr_master_department
    ADD CONSTRAINT office_dept_pkey PRIMARY KEY (dept_id_pk);
 P   ALTER TABLE ONLY public.mpr_master_department DROP CONSTRAINT office_dept_pkey;
       public            postgres    false    305            �           2606    29359    mpr_master_office office_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.mpr_master_office
    ADD CONSTRAINT office_pkey PRIMARY KEY (office_id_pk);
 G   ALTER TABLE ONLY public.mpr_master_office DROP CONSTRAINT office_pkey;
       public            postgres    false    303            �           2606    21792 #   mpr_scheme_kcc_backup pk_KCC_backup 
   CONSTRAINT     f   ALTER TABLE ONLY public.mpr_scheme_kcc_backup
    ADD CONSTRAINT "pk_KCC_backup" PRIMARY KEY (id_pk);
 O   ALTER TABLE ONLY public.mpr_scheme_kcc_backup DROP CONSTRAINT "pk_KCC_backup";
       public            postgres    false    298            �           2606    21803 !   mpr_scheme_kcc_draft pk_KCC_draft 
   CONSTRAINT     d   ALTER TABLE ONLY public.mpr_scheme_kcc_draft
    ADD CONSTRAINT "pk_KCC_draft" PRIMARY KEY (id_pk);
 M   ALTER TABLE ONLY public.mpr_scheme_kcc_draft DROP CONSTRAINT "pk_KCC_draft";
       public            postgres    false    300            �           2606    36742 2   mpr_scheme_anand_backup pk_mpr_scheme_anand_backup 
   CONSTRAINT     s   ALTER TABLE ONLY public.mpr_scheme_anand_backup
    ADD CONSTRAINT pk_mpr_scheme_anand_backup PRIMARY KEY (id_pk);
 \   ALTER TABLE ONLY public.mpr_scheme_anand_backup DROP CONSTRAINT pk_mpr_scheme_anand_backup;
       public            postgres    false    312            �           2606    36753 0   mpr_scheme_anand_draft pk_mpr_scheme_anand_draft 
   CONSTRAINT     q   ALTER TABLE ONLY public.mpr_scheme_anand_draft
    ADD CONSTRAINT pk_mpr_scheme_anand_draft PRIMARY KEY (id_pk);
 Z   ALTER TABLE ONLY public.mpr_scheme_anand_draft DROP CONSTRAINT pk_mpr_scheme_anand_draft;
       public            postgres    false    314            �           2606    36764 <   mpr_scheme_safedsavel_backup pk_mpr_scheme_safedsavel_backup 
   CONSTRAINT     }   ALTER TABLE ONLY public.mpr_scheme_safedsavel_backup
    ADD CONSTRAINT pk_mpr_scheme_safedsavel_backup PRIMARY KEY (id_pk);
 f   ALTER TABLE ONLY public.mpr_scheme_safedsavel_backup DROP CONSTRAINT pk_mpr_scheme_safedsavel_backup;
       public            postgres    false    316            �           2606    36775 :   mpr_scheme_safedsavel_draft pk_mpr_scheme_safedsavel_draft 
   CONSTRAINT     {   ALTER TABLE ONLY public.mpr_scheme_safedsavel_draft
    ADD CONSTRAINT pk_mpr_scheme_safedsavel_draft PRIMARY KEY (id_pk);
 d   ALTER TABLE ONLY public.mpr_scheme_safedsavel_draft DROP CONSTRAINT pk_mpr_scheme_safedsavel_draft;
       public            postgres    false    318            �           2606    21538 "   mpr_semitrans_profile profile_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.mpr_semitrans_profile
    ADD CONSTRAINT profile_pkey PRIMARY KEY (id_pk);
 L   ALTER TABLE ONLY public.mpr_semitrans_profile DROP CONSTRAINT profile_pkey;
       public            postgres    false    293            �           2606    21311 6   rp_location_master_state rp_location_master_state_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.rp_location_master_state
    ADD CONSTRAINT rp_location_master_state_pkey PRIMARY KEY (state_id_pk);
 `   ALTER TABLE ONLY public.rp_location_master_state DROP CONSTRAINT rp_location_master_state_pkey;
       public            postgres    false    284            �           2606    29394 '   mpr_master_scheme_dept scheme_dept_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.mpr_master_scheme_dept
    ADD CONSTRAINT scheme_dept_pkey PRIMARY KEY (scheme_dept_id_pk);
 Q   ALTER TABLE ONLY public.mpr_master_scheme_dept DROP CONSTRAINT scheme_dept_pkey;
       public            postgres    false    309            �           2606    21313 )   mpr_master_scheme_table scheme_table_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.mpr_master_scheme_table
    ADD CONSTRAINT scheme_table_pkey PRIMARY KEY (scheme_id_pk);
 S   ALTER TABLE ONLY public.mpr_master_scheme_table DROP CONSTRAINT scheme_table_pkey;
       public            postgres    false    286            d           2606    21315    mpr_master_table table_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.mpr_master_table
    ADD CONSTRAINT table_pkey PRIMARY KEY (id_pk);
 E   ALTER TABLE ONLY public.mpr_master_table DROP CONSTRAINT table_pkey;
       public            postgres    false    202            �           2606    21317 0   mpr_semitrans_user_privilege user_privilege_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY public.mpr_semitrans_user_privilege
    ADD CONSTRAINT user_privilege_pkey PRIMARY KEY (user_priv_id_pk);
 Z   ALTER TABLE ONLY public.mpr_semitrans_user_privilege DROP CONSTRAINT user_privilege_pkey;
       public            postgres    false    289            �           2606    21319 &   mpr_semitrans_user_type user_type_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.mpr_semitrans_user_type
    ADD CONSTRAINT user_type_pkey PRIMARY KEY (user_type_id_pk);
 P   ALTER TABLE ONLY public.mpr_semitrans_user_type DROP CONSTRAINT user_type_pkey;
       public            postgres    false    292            �           2606    21320 '   mpr_scheme_anand ANAND_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_anand
    ADD CONSTRAINT "ANAND_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 S   ALTER TABLE ONLY public.mpr_scheme_anand DROP CONSTRAINT "ANAND_login_id_fk_fkey";
       public          postgres    false    3210    238    203            �           2606    21325 %   mpr_scheme_awcc AWCC_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_awcc
    ADD CONSTRAINT "AWCC_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 Q   ALTER TABLE ONLY public.mpr_scheme_awcc DROP CONSTRAINT "AWCC_login_id_fk_fkey";
       public          postgres    false    204    238    3210            �           2606    21330 /   mpr_scheme_baitarani BAITARANI_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_baitarani
    ADD CONSTRAINT "BAITARANI_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 [   ALTER TABLE ONLY public.mpr_scheme_baitarani DROP CONSTRAINT "BAITARANI_login_id_fk_fkey";
       public          postgres    false    3210    206    238            �           2606    21335 #   mpr_scheme_doc DOC_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_doc
    ADD CONSTRAINT "DOC_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 O   ALTER TABLE ONLY public.mpr_scheme_doc DROP CONSTRAINT "DOC_login_id_fk_fkey";
       public          postgres    false    238    208    3210            �           2606    21340 #   mpr_scheme_dog DOG_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_dog
    ADD CONSTRAINT "DOG_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 O   ALTER TABLE ONLY public.mpr_scheme_dog DROP CONSTRAINT "DOG_login_id_fk_fkey";
       public          postgres    false    209    238    3210            �           2606    21345 +   mpr_scheme_doptuhd DOPTUHD_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_doptuhd
    ADD CONSTRAINT "DOPTUHD_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 W   ALTER TABLE ONLY public.mpr_scheme_doptuhd DROP CONSTRAINT "DOPTUHD_login_id_fk_fkey";
       public          postgres    false    238    211    3210            �           2606    21350 1   mpr_scheme_enrollment ENROLLMENT_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_enrollment
    ADD CONSTRAINT "ENROLLMENT_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 ]   ALTER TABLE ONLY public.mpr_scheme_enrollment DROP CONSTRAINT "ENROLLMENT_login_id_fk_fkey";
       public          postgres    false    213    3210    238            �           2606    21355 +   mpr_scheme_foodpro FOODPRO_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_foodpro
    ADD CONSTRAINT "FOODPRO_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 W   ALTER TABLE ONLY public.mpr_scheme_foodpro DROP CONSTRAINT "FOODPRO_login_id_fk_fkey";
       public          postgres    false    238    3210    215            �           2606    21360 /   mpr_scheme_gitanjali GITANJALI_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_gitanjali
    ADD CONSTRAINT "GITANJALI_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 [   ALTER TABLE ONLY public.mpr_scheme_gitanjali DROP CONSTRAINT "GITANJALI_login_id_fk_fkey";
       public          postgres    false    238    217    3210            �           2606    21365 1   mpr_scheme_immunisati IMMUNISATI_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_immunisati
    ADD CONSTRAINT "IMMUNISATI_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 ]   ALTER TABLE ONLY public.mpr_scheme_immunisati DROP CONSTRAINT "IMMUNISATI_login_id_fk_fkey";
       public          postgres    false    3210    219    238            �           2606    21370 +   mpr_scheme_infantd INFANTD_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_infantd
    ADD CONSTRAINT "INFANTD_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 W   ALTER TABLE ONLY public.mpr_scheme_infantd DROP CONSTRAINT "INFANTD_login_id_fk_fkey";
       public          postgres    false    221    3210    238            �           2606    21375 1   mpr_scheme_inspection INSPECTION_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_inspection
    ADD CONSTRAINT "INSPECTION_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 ]   ALTER TABLE ONLY public.mpr_scheme_inspection DROP CONSTRAINT "INSPECTION_login_id_fk_fkey";
       public          postgres    false    3210    223    238            �           2606    21380 %   mpr_scheme_instdel INSTDEL_id_pk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_instdel
    ADD CONSTRAINT "INSTDEL_id_pk_fkey" FOREIGN KEY (id_pk) REFERENCES public.mpr_semitrans_login("Login_id_pk") NOT VALID;
 Q   ALTER TABLE ONLY public.mpr_scheme_instdel DROP CONSTRAINT "INSTDEL_id_pk_fkey";
       public          postgres    false    225    3210    238            �           2606    21385 -   mpr_scheme_jaldjalb JALDJALB_Login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_jaldjalb
    ADD CONSTRAINT "JALDJALB_Login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 Y   ALTER TABLE ONLY public.mpr_scheme_jaldjalb DROP CONSTRAINT "JALDJALB_Login_id_fk_fkey";
       public          postgres    false    3210    238    227            �           2606    21390 )   mpr_scheme_kanyas KANYAS_Login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_kanyas
    ADD CONSTRAINT "KANYAS_Login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 U   ALTER TABLE ONLY public.mpr_scheme_kanyas DROP CONSTRAINT "KANYAS_Login_id_fk_fkey";
       public          postgres    false    238    229    3210            �           2606    21395 1   mpr_scheme_karmatirth KARMATIRTH_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_karmatirth
    ADD CONSTRAINT "KARMATIRTH_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 ]   ALTER TABLE ONLY public.mpr_scheme_karmatirth DROP CONSTRAINT "KARMATIRTH_login_id_fk_fkey";
       public          postgres    false    231    3210    238            �           2606    21400 #   mpr_scheme_kcc KCC_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_kcc
    ADD CONSTRAINT "KCC_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 O   ALTER TABLE ONLY public.mpr_scheme_kcc DROP CONSTRAINT "KCC_login_id_fk_fkey";
       public          postgres    false    3210    233    238            �           2606    21405 +   mpr_scheme_kishanm KishanM_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_kishanm
    ADD CONSTRAINT "KishanM_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 W   ALTER TABLE ONLY public.mpr_scheme_kishanm DROP CONSTRAINT "KishanM_login_id_fk_fkey";
       public          postgres    false    235    3210    238            �           2606    21410 )   mpr_scheme_landpp LANDPP_Login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_landpp
    ADD CONSTRAINT "LANDPP_Login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 U   ALTER TABLE ONLY public.mpr_scheme_landpp DROP CONSTRAINT "LANDPP_Login_id_fk_fkey";
       public          postgres    false    236    238    3210            �           2606    21415 .   mpr_semitrans_login Login_user_type_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_login
    ADD CONSTRAINT "Login_user_type_id_fk_fkey" FOREIGN KEY (user_type_id_fk) REFERENCES public.mpr_semitrans_user_type(user_type_id_pk) ON UPDATE CASCADE ON DELETE SET NULL;
 Z   ALTER TABLE ONLY public.mpr_semitrans_login DROP CONSTRAINT "Login_user_type_id_fk_fkey";
       public          postgres    false    3258    238    292            �           2606    21420 /   mpr_scheme_maternald MATERNALD_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_maternald
    ADD CONSTRAINT "MATERNALD_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 [   ALTER TABLE ONLY public.mpr_scheme_maternald DROP CONSTRAINT "MATERNALD_login_id_fk_fkey";
       public          postgres    false    241    238    3210            �           2606    21425 #   mpr_scheme_mci MCI_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_mci
    ADD CONSTRAINT "MCI_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 O   ALTER TABLE ONLY public.mpr_scheme_mci DROP CONSTRAINT "MCI_login_id_fk_fkey";
       public          postgres    false    243    3210    238            �           2606    21430 +   mpr_scheme_mgnregs MGNREGS_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_mgnregs
    ADD CONSTRAINT "MGNREGS_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 W   ALTER TABLE ONLY public.mpr_scheme_mgnregs DROP CONSTRAINT "MGNREGS_login_id_fk_fkey";
       public          postgres    false    3210    238    245            �           2606    21435 /   mpr_scheme_minoritys MINORITYS_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_minoritys
    ADD CONSTRAINT "MINORITYS_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 [   ALTER TABLE ONLY public.mpr_scheme_minoritys DROP CONSTRAINT "MINORITYS_login_id_fk_fkey";
       public          postgres    false    246    3210    238            �           2606    21440 #   mpr_scheme_poe POE_Login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_poe
    ADD CONSTRAINT "POE_Login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 O   ALTER TABLE ONLY public.mpr_scheme_poe DROP CONSTRAINT "POE_Login_id_fk_fkey";
       public          postgres    false    238    3210    248            �           2606    21445 1   mpr_scheme_saboojshre SABOOJSHRE_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_saboojshre
    ADD CONSTRAINT "SABOOJSHRE_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 ]   ALTER TABLE ONLY public.mpr_scheme_saboojshre DROP CONSTRAINT "SABOOJSHRE_login_id_fk_fkey";
       public          postgres    false    3210    252    238            �           2606    21450 +   mpr_scheme_saboojs SABOOJS_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_saboojs
    ADD CONSTRAINT "SABOOJS_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 W   ALTER TABLE ONLY public.mpr_scheme_saboojs DROP CONSTRAINT "SABOOJS_login_id_fk_fkey";
       public          postgres    false    251    238    3210            �           2606    21455 1   mpr_scheme_safedsavel SAFEDSAVEL_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_safedsavel
    ADD CONSTRAINT "SAFEDSAVEL_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 ]   ALTER TABLE ONLY public.mpr_scheme_safedsavel DROP CONSTRAINT "SAFEDSAVEL_login_id_fk_fkey";
       public          postgres    false    238    3210    255            �           2606    21460 /   mpr_scheme_samabythi SAMABYTHI_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_samabythi
    ADD CONSTRAINT "SAMABYTHI_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 [   ALTER TABLE ONLY public.mpr_scheme_samabythi DROP CONSTRAINT "SAMABYTHI_login_id_fk_fkey";
       public          postgres    false    257    238    3210            �           2606    21465 +   mpr_scheme_sikshas SIKSHAS_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_sikshas
    ADD CONSTRAINT "SIKSHAS_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 W   ALTER TABLE ONLY public.mpr_scheme_sikshas DROP CONSTRAINT "SIKSHAS_login_id_fk_fkey";
       public          postgres    false    3210    238    259            �           2606    21470 '   mpr_scheme_svskp SVSKP_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_svskp
    ADD CONSTRAINT "SVSKP_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 S   ALTER TABLE ONLY public.mpr_scheme_svskp DROP CONSTRAINT "SVSKP_login_id_fk_fkey";
       public          postgres    false    3210    261    238            �           2606    21475 '   mpr_scheme_yubas YUBAS_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_scheme_yubas
    ADD CONSTRAINT "YUBAS_login_id_fk_fkey" FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT NOT VALID;
 S   ALTER TABLE ONLY public.mpr_scheme_yubas DROP CONSTRAINT "YUBAS_login_id_fk_fkey";
       public          postgres    false    3210    263    238            �           2606    21553 '   mpr_trans_audit_log audit_log_user_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_trans_audit_log
    ADD CONSTRAINT audit_log_user_fkey FOREIGN KEY ("user") REFERENCES public.mpr_semitrans_login(username);
 Q   ALTER TABLE ONLY public.mpr_trans_audit_log DROP CONSTRAINT audit_log_user_fkey;
       public          postgres    false    238    295    3212            �           2606    29382 9   mpr_master_designation designation_office_dept_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_designation
    ADD CONSTRAINT designation_office_dept_id_fk_fkey FOREIGN KEY (office_dept_id_fk) REFERENCES public.mpr_master_department(dept_id_pk) ON UPDATE CASCADE ON DELETE SET NULL;
 c   ALTER TABLE ONLY public.mpr_master_designation DROP CONSTRAINT designation_office_dept_id_fk_fkey;
       public          postgres    false    307    3272    305            �           2606    29369 3   mpr_master_department office_dept_office_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_department
    ADD CONSTRAINT office_dept_office_id_fk_fkey FOREIGN KEY (office_id_fk) REFERENCES public.mpr_master_office(office_id_pk) ON UPDATE CASCADE ON DELETE SET DEFAULT;
 ]   ALTER TABLE ONLY public.mpr_master_department DROP CONSTRAINT office_dept_office_id_fk_fkey;
       public          postgres    false    305    3270    303            �           2606    21485 ,   mpr_semitrans_user_privilege privilege_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_user_privilege
    ADD CONSTRAINT privilege_id_fk FOREIGN KEY (privilege_id_fk) REFERENCES public.mpr_semitrans_privilege(privilege_id_pk) ON UPDATE CASCADE ON DELETE SET NULL;
 V   ALTER TABLE ONLY public.mpr_semitrans_user_privilege DROP CONSTRAINT privilege_id_fk;
       public          postgres    false    289    3224    250            �           2606    29395 9   mpr_master_scheme_dept scheme_dept_office_dept_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_scheme_dept
    ADD CONSTRAINT scheme_dept_office_dept_id_fk_fkey FOREIGN KEY (office_dept_id_fk) REFERENCES public.mpr_master_department(dept_id_pk);
 c   ALTER TABLE ONLY public.mpr_master_scheme_dept DROP CONSTRAINT scheme_dept_office_dept_id_fk_fkey;
       public          postgres    false    309    305    3272            �           2606    29400 4   mpr_master_scheme_dept scheme_dept_scheme_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_scheme_dept
    ADD CONSTRAINT scheme_dept_scheme_id_fk_fkey FOREIGN KEY (scheme_id_fk) REFERENCES public.mpr_master_scheme_table(scheme_id_pk);
 ^   ALTER TABLE ONLY public.mpr_master_scheme_dept DROP CONSTRAINT scheme_dept_scheme_id_fk_fkey;
       public          postgres    false    309    286    3254            �           2606    21490 '   mpr_master_table table_login_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_master_table
    ADD CONSTRAINT table_login_id_fk_fkey FOREIGN KEY (login_id_fk) REFERENCES public.mpr_semitrans_login("Login_id_pk") ON UPDATE CASCADE ON DELETE SET DEFAULT;
 Q   ALTER TABLE ONLY public.mpr_master_table DROP CONSTRAINT table_login_id_fk_fkey;
       public          postgres    false    3210    202    238            �           2606    21495 )   mpr_semitrans_check_first_user user_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_check_first_user
    ADD CONSTRAINT user_id_fk FOREIGN KEY (user_id_pk) REFERENCES public.mpr_semitrans_login("Login_id_pk");
 S   ALTER TABLE ONLY public.mpr_semitrans_check_first_user DROP CONSTRAINT user_id_fk;
       public          postgres    false    268    3210    238            �           2606    21500 ,   mpr_semitrans_user_privilege user_type_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.mpr_semitrans_user_privilege
    ADD CONSTRAINT user_type_id_fk FOREIGN KEY (user_type_id_fk) REFERENCES public.mpr_semitrans_user_type(user_type_id_pk);
 V   ALTER TABLE ONLY public.mpr_semitrans_user_privilege DROP CONSTRAINT user_type_id_fk;
       public          postgres    false    292    3258    289            �   n  x��XKo�8>��b.��f-�}�:�l[�)�`�
���ld�У�����!R���^���7|g��&i���#�J�m�Tm%
�(��P��J�f'�F��C�=0x0(f�$s�U���
�B^d%UjQ8B++�H��q~��x�i2N.��Vrk�Roı�[�	-7���lk�+��W k?(@� � �K34s�� q�M[I�C[S˺ƹ�"b��p"�N�Ir_6��v~�nj�XV{���������67��nˆ��y�B�'\�9!b�b�aX�H�ɽ����y��<����}(鴏BS�B�²4��F�-ES�Fd ,ː�.�p�7�(�c ��=  �e���Q�JT�ص,d(zB�B�M^P�CU�|A�Y6K�n����8��*7mN�>Y�L������QE!��1Xqo��,Y:
-����՚?���(��y��F�F<"�;2C����p�U�5���Mռ>�\:F�����d�i���q9���"�^�l+�x#�N&o `�y�����C�sQۃ)Tn��d.U8$�Ab��[|����`06^�ŉ���V���MF1c�_V����I������UO��8�W=D�z�`�E� �?[
j�o��;��x�:��x7����cU_��,IǞ�#�:l�J��,pG0�����M�I�a��~�Am��z��
���m�ӻ�SY���^�uq;}H�D��w�W�����i7xKx�7���z�<Z�*)�H�0�"<��ɊK%Eٳi���6d��� N��A;�`�2v��CQ���%#1<z���k)(?�|5Y�ΈiE?�(l3��)YY�MT��)��"��:�JBT�N�s�TO�ޱ�IE����Fd����d3����נw��A"=6C���S�L�|}�c)�p~�?u:�?5°���-D�W���7I��㣠rNv��`��	u�֡�lJ�Wx�����`�7�ث�F�ll�ڱ����-0ν�3�Z:�fPd~2?�fº�Ī���W.~�0�Ovv�*���巖����<>Q,"��2x6[�Zy��L��^7�
��e&8��	V|�F4mms,��Sܠ�����'>F���ܜ�l���v}*w�zTl>N�J\�r�%F�����ʺ�׺*B�otO�(t�`F�|J_��)����*����{�yG<�ʶ�a�⍗�:��>�a� �A�Z����AK�k�G�}���X��< ���Y�>�;e�l�9��������ى��"�zb�֧���S�.ܱs��9)��:'\������͐oX��{�:�@���-��(v�����k�û�2�bJ6�;�� A��yk,S�ow��jē���mY!!!&	����ʯ&Έ~,�:�2�"���g��׀��x�,�q�X����{Ӎ0A�����R+<�;O�c��t"�`�p����HcR"%@܀�д��t÷Wi���z(+m��Jjg�1)���҃�4�tzY�x=�H��+zЕNl�)���Z\��gx�*qB_��1�ɾ�}�^ݯ�������/�L	a��^j���op���[g����l9N�]�)ϕ��o(��l9	����-�|3��]�1����2��g�89؇@!�q�aC9C��Iz@�f�C2�2�2��<}K�:�ȟ�����{�yl���u�g��f�Ѳ�4���r�oB[��W]z�u�`�$%���v=�)���|e.p���h{/j��+_ ���������F:u�9����������u��.FӋl��޳]�wM�r�I����ۛ/߮o־�b�p��y�"/V��S�c�w��CבH>�V��!��쬟�o�����n��RCsl9�1�5�����c�_S:�T      �   B  x���Kj�0���)���PRh�4]4��0�%YĖ�$r��aS;.)�ؖ�>˾e��c��%Mh�����lc�ΡSX��ldE4��&�7�`�`Q_��������U�7A!&������%?� ���O*�Mgd@c1�SnL�x/Y�d��ù���(���ܕlz���-yb{S��xy���S��_�`��)�T����ӂ��iQ�S���#i��JTF��ϥ'X�p�ȍ�ֈc`{�Z�l=�V"�?�|���=�E�DT�q�$�@]w�	,?̬&fX*땲v�ρ|�+�
T��|M� ��~n8��{TG#      �   �  x�uT�n�0}��B?�"�s}d$�V+K�$'˰�`���k��Gٹt���:$%��" �`doS� C�
h|Hg��)@�J���ߔMA6FW���H��W����x�Ѧd���足~�j��F�9�C�m���mM��;���`@gZ�����
;�@�.a���!�$�� ��5} �E�H��b��������<���W?�<<�~<<���}��z;�]GLP��������?��:|�_�xx���~�F��� }U��N��%�C�KP&&�8Q�.o����{�)=N�w���x1gb
�����$
&f��l���V��D܁IĂ	�Uq���C,.���I;�U�&DP��l��5��-՘K�1�R��6�W`s�C�|��|h#��TVL��c��b���k�o"�� �|�HW �MBw�� I+�1��ZHf9���%���%�D��	0��A������sf�x�g�#�NiI��1N�$~��]o-�%+��:Q���Z��
��̈́+�����-U��@�x
�bG�u��Q�b����4���,�	+��e�N6��4P?v��m}�y�NA���^���d�J���4����ޠ��>�<����b��U?a��#�p��	_Bk��-�gt��-@y�CW5�	���+�1yQ�Ψ_�� ��D�X� q�/�<��L�NyxF�6"�B���bS���	�v����BQ      �   '  x�uR͒� >����^� ��Qٰk�p����?G��M��كg<H��I��y��t!��)Kr��X�L��,%���~�b`��N5�A���2�v_�0�(�R.]^�(�p��@��z(��*�H�cC!8�#'m�5�q��j=Ot�H橠�8}alM�xʁ
�N����}]���W���|��B)�>P/'r���{���c��3�S�}X�Cű��9�`�)�:H��|Ǹb��N�������_$��P�S��[��h�t�	�4��r�(��1df;
uڐk�o82����$c��{vBs �d)z/�������4�i��bn�wy�r�4B�W�7g��7���3��)N�~q=���o��ԧ<�gg������b�y�<�ѕ�47��D~l��`�����n��c����ʞ�Gɷ:��i�[���q[?�Ų�A��A�r^.c��������t¨V��|_�9������Fsƴ�)8�+ߌ9	ӵǁ"5o���Y��vM��Lxor��Ê���`v�egA1�й��-��5%���K�����      �   �   x�e�M�� F��)z��b�t�Q�%�0#��������B<�gK��X�� �'vۅ@��~�u�7 �ā��+_x��R	Nv���&�Ne��5���ZCz�����(un.��W����e顋*��X�Dz���;�4Z�Xǫ�&U�@�a}V*��@q2x����~ˊ���J0�B���:�LJ�&n�b��EP{�̢j�~�`�q`��.�x|�&X�(��O}�_8      �   !  x�]Q[n�0�VN��h�ާjˉ �
l�[���S$)�'Q�)�-8.5��&b7�XɈ�l�9 v:C�
��\��'����Td̅��"����`{&o"9��oz�P��p�C����+�0Vb�RX�ex�������5�~8�0s�ѭx��9a~������b��N^rĪ��3��f�	��[.�P�8Ѥ�5���rY�j/�߄�P���e	���:������|��d�}B=MCKe�T���PĲ��E��ӡ,�jJs֓�j�;3���4���i� XV�      �   �   x���	D1�G�,��\����X)`2(BI:'�*��Z,�6�y8��%�xD(�9v$��ev[S���4Wq0鯗�(�|�T�TZ�&��b�&�Rƽh|�4���l��^ʚG�[s`����?��!�      �   E  x�m�Qo� ǟɧ�qӤi��n}l�,��VQ=m�T�:l_���*�~i<��!�)����������je'wU�6�Z�<�R��9X��f��X�h+�nWw��U�Ϧ�AvF-X����bt�b9x4����-V;Ћmޠ+>�_�do$�Z#���-���wǅ?,߇�����~hś=��YZ���0hA�wc=V��|!�R�I��Կ��9ύ�Ŏ�T�)i_���6��^K*W����|��e�*���&��ʸq6�"�u�F�zL_�N�C:����)��ł�Z�=D�,�k�^"���H%rv॥��u�&d����˱�C5<R��Jc�����F*Q�Cm,��%�E�ֵ�G>���ݮgůb���D�=�'P�Vc�D	�WЯd?B��l�Cv�H'��ƈ�&�Q�d̊l�I�#��"�5JŹ����a�ICI�Ɠ毺�Ay-+�,@I�J�2-hd�c��Wn�����ix��)��}�n(�:.�Vj���|������|X����G*ג�`}���?~�rGK����WŒђ�6c��D�]|��[wK��?|��f��Ł      |      x������ � �      }      x������ � �      �      x������ � �      �      x������ � �      ~      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   |   x����1�3T�&��Z���2RN �KJB�ɐff�ʉ�ӹ�/� @��vRM�K�V��58�gӾ�vЌ֢RGF�q�Ό��.w�G��ʄ����b�??x>T���4'      �   �   x���Q
!�os����Lb\7g���Q���k)-J��8� �AX�lh���Dj��� Gr�$#:�q��vi{�B��ޡ�VF\+��2��eWu0�О�>��n�*�F� 9Kt���5�xQ<\呼J��ccu���s*�l�=�#�w*9f�Z׵��������k�6:*�d�߈��q6      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x�3�4�4�2��\1z\\\ �      �      x������ � �      �   �   x�M�1�0@�9=L;�7������ĥ-��������,������R�u��y�ϫ,���k�Xt�;V�-S���4+#Cj^�E��*�T"P���("�F���  C�f�?���j�$nS�=�TtP�)�*ĺ3q6(�̍��x>��R�/�0��8&      �   �   x�u��j1F�3O�'p7j�.EA�V
�WB�qn�%f)}��Y�`�wsN曙(�Į�ӷ�R�^�ǈ�
SQ��U��ɵTz>�����b�͙̅i:�\/eAGI/�w��DمF_9`�2p&>)w�^��B���fC�l��|��|s}��z�U��g��M�������a�nMYg<��3�V�K�zO�bL��&t}�+�ȑ9���/m����:��a ?dub      �      x���ǲ�@�%8�ߢ�ݡ����^x�����;�ϽU]=�go�-�_�o��$���.���+���L�(�������	�������>L�Uk5�q�?�jY�*]����������i�o{��I�O�a>v�Vɰ̇[�����EY�w�J���fb��aD�}�����o_�a�����~�����~ۯ���������/v��ێ�N���!�[�_xÂ�&��3�\�ð�翶�w\f�_��F�;��<��������{�w������ɟ��|�͖�Ė�=R��iޯ�p�ϡ��#⿚)�P,�X&~����l��T�K;��b��| ��zÁ0�>6��\�����x8N�}�P�����/�������)��	|�0o��hS<y�.`fo���,��c�R��O(=�#��� ��g�_}?�?c�8���'�4Y����!���"��{����1�Ǝ���ω�Pc+�e��C�dΚ-��-2�o��5��	��,��2\�-�	�i������N�~��$�D���T�ޅ�mjd�06�TZdp^Ь���;�g�ޢ�f؊��X&��{O#�i3�� �|�`���vx9N�M�`��� �^�D���T��W�l,��s0%�c f��V�{� ��ll��'�N��f��k�[��x;a�7�؂1��7�}�BKoo�t%��.г����[�\v�8�qp����2ߕ�~3	?ʠ��^��1;n�N������� �M㵐���,ߠ��� F�{v�
�]�%ā�'�ח����<�B�O��>�X-�ld���n|�u���b!�!�ů�
��`��}ß6�[i�&y�L\��>�;n�����#0�s}8���j������q�Z<���tC�x��N'"�)�ɛ��P?#�C��_�S�{�7)F��M�oV��	,_D� JZc��%�HJE��qr��c���f�����נ�����
E�q>>�:��#�����ځ����zg-�v��������|��?X����J츸◶���1�2���Lڱ�!�L�"��V��F�N���9�dr�ˣ�|����[1�o��z����9 ��w��꿪��9M�`�;KK8<�t��P5%���_�� K���$��E�����Q9(���-�(E:��,��"0�|~���Pa
.�w����.��_G����Ʊ$�x�wk��Κ���}AL���+���5%�c=k�>1-$���/�� L�f��d�j���G1�����|ſ�e�W�y��P�d�.������-f� �a%a:�~��:�d�E?�4K,b��.�X�m�)^�V��v[w���uń��n[T�=Ͼ�%��X�ݢƃ�Az�ѱ�Nw��"dH�y���B'����`����
�C+�nhj#��6x)qģ�O�)2f���i��3z�7o�e @����_����U3D�-L�Ѝ~h��
��C���ز�cݤ���\8:�"�����c���X=�%�\Hg���d$)cH�	��.�-�,��j�������UG�M�!	J�w�����yz�3 P�4Y�0⸝~{�0s<����>P}L�W��k\��`	~���2x�2��������D�CY+�2��<��sۯ���n�q}{Q��{� i`�:S����b�lcm��	g��̽$��"�v~��F�5�p3~h��&U��{�q~q�����=��I��u$�]�d�RZ�C�)�ѷ���ED���m"�
����Oo��E�ȵ��� u�h�q��O��_��7��q�qa�B6�{+�/������.���)y�t'�j���B�ØZڔ��ᆌJk@�蝫f���*9����"�~����*��2 ���a(m�Y��兝�fQ;�}���}��eQ��$?�9�����+I~M"�G0q�ۻ�#v����#���33�,.�D�ks`��>�u5�9��������9�;uJ[��FKz��r�\���۟��;M��(Qׁ1bm6�z���Z⡮i0���zd�KB5���P�r�q��t8�ߢ���Թ[����a�+���!��ˣ�u�Y��57efO��9e]=���[mЯ�|�!��2�?�h�?;z�=���@h������埡�o���f��l�*C�Av��um �Ȩ��r��7�nn�.����ը��%�u:�8��)���P"�c��V�w8Xu�;�����_4����$�ab��q�v��Y�E1JR'>��>ŵ���S�k'�"{ڥ����(ax�[��|������'=�����4����+$�󟜀��M[����v=5W�ݞ��Yfa']s�_��O6��Y�B|�g���������vi�L��?H�������1�^�y�g� ���Zї_�Z_>⹙���5mcP�>z�����A����5�L�<xuE�<�x��׶<��u�鞽�U������#[=�mSO��-0N'N���L@�q�|��O��� z���}~�rO��y�6"2����?^�����	�:���+ k+%w��|�"1������|�W���Bad5> �ܟ�gt���~����vX!E���N�����>H-��l9�a/�Yp��q�ƪ'Ζ~/#�x��p{�G���"޽\�E��?V�X���qҰ֘�z?G���''���@�~�O�AAB�n���%(�p�_��S��1kH4�y��[~��釫!�ظ�dY�q,�P=H�6���7�JHd�5LD� Q�����1#��_�B�Ք��wE|7�r@���^�8/੮,f����X��q~'���I=ΐBT�2�F��t%�Eh)-�3���a�s�/��_x��޹��{��i���Hh� z']t�/���6?<������O$A6�5LDQԓP�oo�ͫ�WAvsN���T;g��{�uMA�9�p�y-)�0��ߪ�BbK�
��)�?�B� ��cW��P��R��oP��u����`/*>^}�8Z��6L"��������/RÐm�7U������̳�$�bT��J9�;Ne2���75�����>$D'XO���������y�g������o/�b�-M��"t�]bW�B�"��n�L)�?{Fy&wn��K��h(K q�Bsj����{�ʧ�@�@�`>o���Ǒ���P {��M�Z\�'�L$i\/=��>ae�����/����f�8O�<:c�f��n'=�ƘS��X3fԷH����B�o��D<o'���6|���Щ�?���Il��ԟ�G��2 �o�;�f��Z}��N���;ݓ:&P�,�ו��^$�{����Ǟ�a���"�ns��ka��)��a7�����v�=��|+P�	?�w'�;]�6���������e�{�rugF�m�vGtx/;�Wx<Pa��VĆV����f���{�}ɦӭ=� D�] M�*0v^hDW����J>��V)�cHV��4ϏQ~b�ga��w<�=yHY&���;(�j��Hd�M�W�w�:��I����B��D�>Rg㨮�6Q[�����Ff?�_�z�������֯���~�d��6���^2Ka�������q#5���n�"ڀ;�~S���ee~�]+*>��x��>-j;�Y�^�gI���-�`~� 3D�̤�Bjs��A�a��h���l�1�=�4G�O��@����ƥ�B�g����0���gӤ��z��H�G�ʊ'�f�~��#'Ň��R�}��!y׊ř����t؃�H�K Ǐv�vZ�x��;�JUo�5�zJ37\M�U�q<$&�<�v����O&�l���H
P��pQ��5�����w�H�e�rV��%3���U[��;��v�~G3��8�i�K��jzK<Ir�u:=Ɖw��~�(G2;�)f�u���P0�B���d��"i���d�<��K��N��'�F�lgw�Ā�	�[�@y�O�r��7i�8(DL(��������".v��v�绂� N 2��2��F    �1�i���?���E�60��alB���M:�ٹ�މl <�ݐ���Q�g"���ul�i�1���}O<��~%g��ͤ!��x4��@H���䆑Qh@�W���B�=�x�W�f�0�*"��@%��d���	�J$a��T�+�����`�i�<��:��Z�	�=��d�%-��Q=�����z|#H�3u��_>xȪ Zv��%'����;�v�yԔ���Ys�8�ot�H�Ø����P��ÎӍH�ә�Ѿ`��M}V���A��-s�آ���0Kccz������\B���k玆Rg����N�P����k�K�gd>����<B	og[�GZVi���!&r�	R���1��j�zBAM���u|�|@�N
z�f��S"l!pj�D�{ZR�z83��-դ �\�Y,3b�I���߹;�;5H�j�0�q�)�2����X�_d�w�\�S��Et�Z�6IB�H1f���G�p�s4�5�e�5���Ѵ�D!q�W���iʺ�o�fk\���K�u.�	�i@��aʣ�a���x�yg�(��)���@����u�2!�����񧝇=��9ǜ�(��k;!�B��Ȉ?m��iy�ij^f�F/�ةq���ָ��L���dJ�����H�Yخ�CcR�q��Ű��X��%x{�GU����C"��i����Qf��E��ͼx����c���G���h��N �*bZ1����4>		<�b�[���\���>��o�i����nR9N��&x1��w���8��W:0���^�K���ks�)���)�-��כ޷��x�TӁt����]d�b���a�%�wԄJK�<����֫;0�3�k6^��I��*!����#����M#qR���o߲�g7jS2��M����~2Sa ���2l�c[��Euh-��΋�s����[�4{pڛ��9Qf�Vi1�U͘#��l�]W��=WU�S��b�8Dp�~�k�[_������6�lV��������L�]"W�#|ް�d��5~'q�����j<�n@�8kp<O��lH���U����-ӂ�{:X~IG��"�x�]-A��F���3���J[���/"�C��p��s�^���Б��/n�C`J�/�F*�7>�c��)>>}�%-�7�]�����v���s���:�u?�|1r����DN�\|\ޢ�����xi�U��{����6Q�d*��2K@p����yiu�IJ/�ʎ���Ϋ������h�^~�%K�%K!b��ai�:�끪2�^�[pb���L(n&��}?2Ȱr��U83�����X�w����/ſ�����!�ǟX��`$7-�Y��8p��|�md��{�U�p�@�!�ӧU�A|�z("P%+�n3�N�NG�5�(,�sL��=�;
VIl��F0�ܟ�q��:�C=���Qzi�R�∱=yPve���%{S�(�`�D\����O>{h
!�a9��x����}U	��d�i�h�ܙ��j�n&z�`+P�ffU�qy_���/�9���[{��c5%np��i�Fd�e)�$=�F�i�����To��]U���a'H."�騚_n�d����hr�bI�_cݲ-��tg�BghG��ё�t�)�������m����4���Nu�!/���+�gdY�����Ț���q�4�!���zz@xZ/���-p�/�`�z���k�+�P�it%i�$zX+- %���׈q�F�~��w�hо�_� P��}*��O�~��ӥ��c�k�-܊[��nc�6�!Z��X}6Ehڸ$	�['�V��6��>%�̏p¯��r)|�s��o#� �ǁB��aJR����S�(��&�]�����m�Ԗޠ]a�`���.����|>b@��^���"~�"�[qO'b#��Q��� ,��>!�H��Jb&��Iv�痐*�n'2swh���Vry5L�a����)�@Ӫ>҃�zG�X륚�2� F�ۮnAX���Lv+�Fy�A�G�L�:fY!�Ȗv���!����zިg`z��{��t��f�B&��!��?�߫!��cW�k�gϨ�laY��k�̨���a����LOs���!Q������n�0�(��Ѱ��3Mq�|%�p��m�E��3H��9bD��f܍�� s��uk,�M�[�@�⚒j�_#z�P&�0��0���XUi�C|9��2�l��&��j�IѬ/�ϔȁ�#��NC�w zA� ���!���4��4 ;��[l�WCA�+��h��Mȸ��}�:d�E��mg�3�KЊ��Z���^2�Wg�_��K@ݯ>��8Xk�wD���`�����k�k�_������Q�u���Kޖ��&�B��r߫c�qx#�|�[C�Ds�&�.��+(�$�L]�þ��^�`:1��J�M/��mh%���K¦9�Pf��#�H5RJ��t�E�DR$�n ܅��;���}��~z�ݲE��j�V2�.lc�5�|�o��S]�<�p����O/hNxj���/ ��t�ɂ�D��F����{��#�iVϤ��ֵe�<�/r�ta�ѣ.�I�77	O���+vHS���R��R��w-.	#�G�q��>�ܣ�1sGB���㵩w��Ū1�F�8["7�D�ٛ���>h��2��o��=��3� �
	��ZQ�����2`���V���oɱD��8�H� F��G��]b֮�Z������k�瓈�E|�#(��CHw�?�e�����˧���ʽ����YP�޽�ԣ^wg懈@˚#
[D�~���pi�i&7O������K2�V!������ՎE�m�ޒ�����+]��?E��=��Rd���e��片�B���
�6/�38���t\�E89ªd���^'k;���}%�W��]M�l��"r��}�B� ��gz���+E��֮p{�8�䭦����׮C��G&��B��.���O����ߍHQ��uh�Ȏ6Y��QEO��%��{�4g�W�#�5���,��]��O��9ԣS,�eS[���NE���o��һ[	2��Ph��*�WCo
�Q}e#����ƍ�zT��O�����(N��K�����u�=`3'��fǂfu��}98��T�Kkk�ro3�#�"�q׼���3�Ds8;&�[�5�8R�ۙ#i5�J��H��i��JB��Q믴a������P?������2��8��w:!����KUB�5�O0�9�9��a]�+�i��W�r�6$���q���ܞZ~|[�!ۘ��㜾J�1�=G�0�(�0�Wt�)��^f�r���ƣ�p!�5{�"�>J�S��}��U'E�c�^�:^ZI��2C�)�C$�Է�wU�𵤒�+�==�j��в'�^����{�b��R�Į��>��	���/l�wx]
$�4f@Z��ߖ��{P�>`��y:���|SEn��{��~D~c�`���9�Dn.@�ET@������V��g@Zd��'�Z�i�a\���l6=c�:-B��_y)���߻����@$g,UYr����A�)������]e���@�H���'���V<N��w���y���hO0��g��s_�襰7
_��qJ,=��I�: ��r��lүή�B�q8�>�Q|���7�cJ�sJvW��I��-�'��g��o�4���+Y��fZNE[Isj��{�� Pu�$uJ�і7�0"/�<kI��v����<�m#z�[?�M��7��ċ�@�>�� b����<l��=]����z��#�����t���W��Mt�4�7�v�%~e�:Ε�I��~ޖ����K��؏�������n`O�U7����
�
Ha�����������lJ<��?�L�쌇�1j����ԋ��>�l����t:7,b�:?[L�[���w�3$1)�q�+���Q�A؟������}I�G_�7��j�|q�sP��O)�Tk�W���p-�*���*�4�8�׵:�-~���م�l�0�F���r �(H    ���.���~��Y븥������ӁǇ����ݴ�	��L�-U��6Zw�3u�Na�. E�,_��1N��g��w(ο*�y.�z�O�Zq�i��p�`h�4�'�U�Y��u�܊�aoTU��.�ėP�-�=?�x�Dm#�WJ?�倈=��o��m�&�Kj��ZP��5T�R;=V�[R*b��b��{^�� jB\����І&���P'pGϯ�G�y�Lb�ܽ1:p7"�ח���ʴ=���bvOd��t=�D�r�E��k>�DA�~�k�Br+`�P[G�An�����2��p!���[k����A�c�Pׁ�:̿;>��mI�W�Q����%�LB�Ж_�]B�Gh��/;9�};�0��(t6&�]ֲ�aU�n``ݠ������'J�}9-���y߁L�������J�+�y�W��4O�a?x,���TH�kY���˻G�[�2we�tK�Z�0���&.��]�+�<��\g+�+���[�.�W��4Ss�E2rH���B:��Rm*�pﾁ�b�e��T����
�*G��w8�Fmq3V/�u�3�p<�����Ɏ��2��	�(�vD�.:�>F�6��`}�!��AIX/�ש݋�^���"a�X>}�<���!"����%��8+�H�#�Y1�SG|����olr���b���ު����Z�<T��4��R�O~C:dXZ��O�14TD��G��M�aL1#��97������ W��śH�8�N0�A�{����&�<&�3js��92��X�>��D,�C�@�����@oڥ�HQ&�6�v�1'����������/�n�.4�c ,���g>x�h��< S]�:��T~�HT��+��SDh� ��1�?y�&CVV�5�e�P�o��\��GZI�p�L=ѥ} �uF�Ob�v�2��x&�Ӆ<
�
�l�8Ԋ*d��Ik�ʑ�"��BQv�ά��j����T�f�MU}���C�ɟ<K���GF�A�!�Y�i�^����z<�N��������p����� y|K�T���0��'�&1b�o�-HKx�75f$i�����tD�efO�0�=zL�9��Ԉ�|�9��͍߭X���gw��|�|��#~�����_�D�{�ª[ JF�r�;B�� st*'!�V}���,���9����LriQܩ�$��_��F�c��D�6֕בS8��_�N��H��4z�,f�c��������K�[/��4@v���k��sD\�`Yu[� z ���N� �
y�g!v}��Bs��� �/���|�p��p&��ƀ�a�I��gN6�q�Vt�Ve*�ኩ�Cp���8<�+8m�z3Z��$���,�ia�W�t���;��C�!D�/ӻ��(6�ޡ�'����I��ph�i��U�������1�A� rlg��'�0а�	�������(?l��dsI�겎����6"�5��H>٤ʞU,��V2��k�0@�i_�ks=!n\է�З�_�t��zY[5y�Wmf� b�Xa\m���AS�i@�����+�sf��ռ�.W�'Q�[K�	S��Z%�^gZp�@�����p�3��;'�k]����y���۾-�ϡ�����헛B0/>FH\%�$:b�B=K:,�w�J��ޖLF��أ��+X�u��$����
�P��w�8�a���:>���	��>3�o��uD��`Ϩ~�����U+�ND����y�	�4��̌>�ȷ[����?nt�`wR0���p�� ���J�5���ZZc����3Jϔ���:]�d���q����C����)�:]��h�I��r����t�=��u���X������U}�>E��%�b���-�$j��)��V+�[8�ƽ`�����>6��G� ��Rmc�=.��4tk,���ào�+�������L�{ 0:P���:�83�[�LR?�B���a�!��:���}��6LE����;q��
�d�����'�}�$�ᮆy^�a�[�����Ԗ��䵂�^��աz�r�cH�@	 ��&�s5��*ˀ��E=w�Gk����%Vi�&���ob�R�!~+�h�m7�"ʬ~���0$y�VJ�Rs��Z�C~}t�RR�Y��H_p��"��n�>ۙ���:#���duq���̿���{��|T@س�y��z�c4p��Z_D��)"��B3�#��N�:��2U:J�p6��3v����l^~-����n:��^׫۴�q�,���%Kf�.��.m� �<�I}[\+~�F��:>�|��إ�� ��Y��S��@Q[�;��~��]sCxց�ko�@C�XC}>y��?��_�G�C��_���}g��,�}YV;߯���,�Z�Z���˄�a`��}���}��e?�<���<84�X��{~NF�&A��M��q?��t.c	�G��'�dY�d��Ub�ȈA�!�����Қ_*������j{\k�,u�]�21��>��}�U��;�� �~�ѓ��;��iL�o��w��b��Q}���q��6άưE&�"�z?�b{-S��`����K���A���~�`.>�?E�L-��Y�_wbA��m[��� ��k���&9�o���
mT����_��=5�S���7�[��by��w�F�q�#y����a�iCF�+�����)�n�^KїR�H��i��?a�]��k��1K9�`���l
�6�g�g��Ak���5z��G?d7�8��L#�X���-�IOk}�DS���y�LzbLx���}uݨ��y5���h4��&�^��� k�μ�ܑ��Y��\_�����/9+��rpD�Y�������^�+[�D��� ��@z���<��z�I�j�
�o-��*C[�~��J�oDM߰n_4=U�>=u��{&茌����S���į���	����U���=]_�ɵß�(�1��	�D�QN�jNZ�M'�χQO$�S�������48G��[����)�ONs}�"6É����sNh�p�f�d̋D�C���"��u@M^���+%ha�Ć�<�&s�a���ǥUXǉz���E�k�%8���Սo%�?}��}Oj�-�ţ�kE����O�7(.��oHF���'-(�)p'�>A[�}?�w��V=���,{��<���lgjP��F������y� 3�F!�C��5TJ��}5_�)˲�:�S����6�y_oKAN���xą��I~��]�TZ�Y8$g�T-�8!''�Kyш�Դ��29V#���4N�ݻ� م��a�Q�b0�{w[�E%^�̟��~*�i�v���yǻ��̍~!a	"�	?&�y�i=B������FGފ��?��#�וH��a��%!4(�4�晄�g�ֽy��Q�eBم;W!�~�wk!�s��T�AJ�Cx���U�V��6u-�m6y?�;�n4,�d6Mcڍr��(�J�ǵ���Rn*�!����"�h2�h���х:;xd�����+ӎ���w���O�����7��u̘�,�_Hz��<Z�j�`:���)�iE
a��a's��;ܲ���x��_ΖT��!��P&o�?��� F3x=��Ģ,se'��'Э,�5�",3�{,F#�x�ڍ����C��c�������}��	�U3l_�Eh��$a[�c����}I���*�u�����}K<���fP�y�:��q�]��2';RcD�UPA�� dB[Г{2<
�I
�u���A�(2�il�iGD1l3��/?�I3��-�*ewXצ�ߠ<�����m��t���U���,����}g_%� �dH�8You�]^�������:?�,�|��ħ���ThI���!ih��
Bx�MoS����p��
gUO����bI� ���Q��P�T77��6_�/ &GV��� �����Y�l��p�=*~IUf?��M��#��)V��}��G�3������?W���Mp#�3�髰�Ww͕�LYղ����C�,O�K>*�	��d��0��G��`�*�D�^~�?�U_�qy��<�魭�C7�������    ط�@0ţ.bVNpj�9OF�~���C�B�#�#���H��|`�e�q�'_}J>�j�c{���	��B�5�DT�R�"�qL��
g^�'�*1��`i��c���ޛ6�Sg:#�k^#^�o>���:��[#Ed_s��'bۆ`ܐ�*>�:e� Ha�ߏN�a��K}
v��v���|>�ve��iA��@S�IxQ9���}�c�)g#�UKܮ��`��Cܖ�V֬Hhz<��v[!{f���/�_�}�lj�C�ٛgAM�U[f��@�]N �1($ApL���腌6qWD�y�Q^����A���U_7�C5Թ ��a���vB-� �t�d�璠5j�MÅ�W�!���)��������8�����9�A�}@&�{�qD��1|����1*E�B��Z`B3Zk!>PO��$�qq��k >�[���}�$�w����KFgk�E�j���t��g1u��x`�#/��ˁ�����Y[Ҟ�	I�����N�5��_zLm9F�g�8���2�?a&a� J�lc��?X�~G���n�n��*�3S{�Tnz97�Q�_j;x�}�aOWƗ�d��d����kC�s}�:G�=ZP`�����)F̏'�iiwҕ�n1Mߓ�ӫ7��G`XU�*0p�㍠/^8s5}�������뢬����K0��N�Z˪���l(4�wU�������&��\�i��}����\Ԙ%O�b���Y��<����''^��yT�H;'�d�S��j��h�0�$����-��m�Ih���jo&.�����O��*�׉�>A9d�O�� �$�H;Y�*��<�W��Y]��(�	����Ҙ�����)O�Y��#����9���y>a��o���g?��S�~��`gV�E�ik6�	�b�n չ��RV�f�9#�m�����Kܳ�j����y��ҽ�5˙�bYIjsk`����~s���o� �"�WfkMzXǧ3#= K���A�o���b�z�W �H���p�Ii������I��6�EaY�u`�dp;���)
���R*�-�^��"�� RR&�t��l�~[�i�w�^��»��v��������c�C�N?�[���$
���ne��7����n�����`
�8o>�>{h �b1�%�`�G���Uys��F�Xܔ��[d5��J�(��2T02�J\T�<1��\���Ϛ_�� �-�&I	��DK�{t[�"�|��+j�-5�K��d_r�"o}#�Nn9F�ԇ�������0� 7�����rc���ݹ�)���;T��ޮ�U�XPm��1ފ��N�ǎ�������~��Zo�)�b���������Z�*σ]{=v�#!�����S�K�0M�K�G���2���?T}ǒ�L��������{��'��&b���ʼ��c�>���fm� �.��d�����u��*%�����M �w��4����~�9VL̓�
��wҍ����pѝ�wE�|D��I��_D�T���s3�X���m�BADzx%j���.&U4!zA0U��ޢ=�e�p�����~�f�2�߁_�W�>z:�7��h�6�SY*���z0��dE��*1���\�R������y!�Ɂ�#�'�%�-���<�珢O����[�{�°̯n� �r�f�X`��(�&5|����Åܾ\B(1����})-�l�L���B��o��8qh�_-Vx&�{͍ݛS{�<d������Yܽ*�4{9~4�aA��	j�R�.�0�'We��{a&����~��P�@�ݎ���/�S��tA�wl�<U��z���z��x�����"gj��j�P��O�6�O`�m����ŏ_p�;U�o�b���/��f�&�J�2����9< �8m� =j�;W!gh4ݖ��i�8G�d:R��Xm%��a�n���������/�>��B�[:0�|���X��Q�&���꾢���@r�b��/)�N��py<�*��W�=2��U.�-��T��J��H=/�h���>GXV�0�"�X�Z�q,)��I�oS��_�C�w�>�e�}T�IyB6O��Հ�V����03?�����*����,i��gɧ�-�]��6�Ih�^�F=L��*�= ����7s��� ����T5��͇�MuK��:��5�FPi�n�>D.��{y�a��tTᤝ	ġxί�`YLn�)��1���}����ޫ�}��DM:���������d��������ǔ�|�}a�1�Vբ
�zD�� ��oMuR�>`5z���Z�B<�SP<b{���uML|M%yc�j��<��T
I	Ծ��?����nU�ej���q�U�l�+���v�򜓁��Y}�x6?΂��ȱ�59���"d1�f���u9�o�>�@�:�l��ў�a��]��*���{!���~
�[��.p�a�����e��3�(���S0��%�a ���j
Op��w8����l���=�S�cy#�C�����{?�D'̕tD�Q4f�Q���cTp�E�]�Iq��'B��
�Z%�J��X(�J�|�-�D,_(4[,7y,�]���y�"b����j����򅰄�5��3���w�Q�N�� eBE�h��(�_k�k����.�/6�>�-�i���e�K�/����1�G��كq-Y
��*�9ת���`h��5P���_A���E���"gk;^��G40>��b��޼ ����iG*O+AOf�Q$I�}�7w�7֮�>ԙ3jn�z�}�7����F���/��p�K�D��A��J��]ë�ռ+Jː�h��7>�i�(iL�u����(��]���-adۘ�N=ݓ���;ι�օ�F!7�e�B���H��;?�����P _��	\ (�{���1�r��P��%cb�V��wHX�b�ugw�Z��Ç���;�4�:pT��7Pc�ƞRH?T�e���ޣ��"���9:��o�OUs�OK�>Y��C�E1>�J�������_�H��f4l3ec��J5����_in�E�B`���yDܓ]��I�{OU@8�V]��?ŋ�Z�) h�*��kȸ�H� ��	�!�mJ{r6�-��J�ab��	��G��'�tJ$ ��Պ��N1�@�/���I=[G���[����!k��P�.L�l��G4�+V�L���cs~���Z��X}�鑃�Tw�Z�-	�g�%���.��vB~�}��!#~_�R#� ��(���6�
�ЊU�I?_�"V���O{+�8q.�~��2I���3���澷^"]�w_�R$���m����\�3ic���� �%���K2�~�osg`�[�h|]����J��t�Z���F��]�1�����f��b �U��)qp��tb�	�`�
�Tڃ�lt\A6��*��O1}��s�����f���<�3"z�nk��cX��Puo�,�ooM����dj�\�A��i:���.����TZ���l��)�}�)s�wtҏR�W��1$'�U�͉t�RR>��N>YT�\������0�o��y�T�C��K��5]��]`nYf��C7ȳ"+��~#����3�F\,	��oX.���sÒ~�#�v 0.eM��,�.�=��t�+Y��#�<��p��? �&��~E(2��QZ$��y������$X�^�O�z�.U�s���������׊���}6� >�_���.J���&3�5��f�D��o���������=��V�GGs�y�y/��[�z�����T.����!|{uٴ4��է��oz�.b�����d�4����_O*� �v.>6Lv
HN�3i�f	�D���8<� "T�.m�d!�`���j.��R^*]��2�WB�`c�����:2��M.�A|���P}>���Q���Ɔ�(�Ro']}�}�YaG�̇d��rң*qu6Ա��}�^|�ߺ~������h�\��|�o�Q7S�B!g1�nyTܵ"ի�����_b���H_� hAe�� �[6�O�~t��^�-�T�̝���*.�"�� Ӆ�,%|1ya�Ou~@�i%I    �.f�΂�@k>�]�J��0�)����2?�&��s,7�c��+����`�F� ǭ�Wk�bE�70�~^��X�p����l��� %�(�N������\�� q ?'Ղ4�R��w�K\�N�1p�U��*e�ǜ�I�jN�����g��$L���죻�d.�d8��� �aҟ���2��"�>�툁z�ғ�@+9-/��\_�	2Y�}��f�F�@��="�i\�=i���4����Ȯ��eI���S�{0Ɨ����>�5�f��1�����]�6�<�Z}T�Ȏ�K�U_�G�O�"��%�6�?�+})`��;��OA �F�z��7��,|�K;�h�E$\Z��p��cJt9<��y,�O'�i��h�� oy��'����'������4�%\$|��CL2�^�]R ��̚�ӇJ��-8����7C�d�-e�c
��-A�`�6�Į�l�3�]V|��b�u+�I��X�6��/!��I30�$���kn@��?t}$~@�(A4�j�!5>��ɬ9�#��rK��7S�1��(�������\��{�	b���j#g��3�p2M�熽�<{�;b?�{n�G��uL�p�Ξ`ͨk�m�$~3�Ťq�=1�֩�?�IE1X1:%�`��4ItD���ϋ+i�a�QM��R����k�'
D-c0��f1���Z��P��ɲB]#�	���Üg%�"�����z�v ���&c��~_�'R~N(:\NP?�l�l�����M����i�
h�:�-�!��n`��FN~��b1����V#P����q�Ҷ�"�x�A��?�)Gp�hK���T,QE��bہ�{3�{;�{S?�Bb9b`�Ty]-ݦ�nr���!�TB�.�V��z;�>�0�t}g(�N��X���E���"�u�#~��ơ�'j�mS �a��k5X�jx��\&0`���6��4�N�n����O?�g7�>��I����\M��]�CqH�í/�58n��\9�btĥ��e��P��4H����U��h����~�5����$��'�DpAt2T�ӝ\���=��M�\��������p5�{�P��o�y����� ��U|]^�
ͼ%�Ie
�RN|�H �}|zP�Ai*q�~�(�$�S_��m�3����Z�����5�NhUUw*5�uLk��(�g���h̢��5�Q��{-�	&����������!y$v���<�z�+���S���@y5���jn�r���ߘ�]�1��g 2UQOH�Bx,d�Is,%��q�����:j��C|Xg˅�ˈ��rj5�Y���
P�e�T��G���w����vU����j��t8��}�� [�����9�0��\͔���pڹ�m����:�~���Ѩ]��[D��{W,Z"W�� �.�ߒ���~���dE7~>8�R@v�v�Cl��/��������\�{5�6_Sa�#����KЧ���6�OMwva�#4_�/riI��V�:��Y������7W_5RPy2����!�eG�gW}4�;E����m���k`8��;���±�Z�/���+�N���c� �7mj-�={�}������MT��$���	bW�D�ʤ�AƘ0��C�N�\�}<_���aΉC�ֻ�.�1-[X+k�Ӆ,W=�!w${��7R\R��<v#Z��p���^{c|-��K���g����;�����A�#�IM��#N�Su�dv�!�:mr�ޒh���!WM�;N����%vb�l�En���M:9C�3h_6�u�D��o
ӊhK!� �Ë�njɾI�E[�����~3?�O�Cp�E�\�Z<J<$n�AlB4S�Z<����
��Æ��չ���Ak=���fӯ:;�G������*:�%�(�h���kEz%�t4��p��wԈ���`Iif;�?Qu�`���oy��V'��D@�6r��`�Jk�Ytдjμ� ��3��3v���)�r}6VM9[R�A�?ǒ[#�Wk�7�����uҌ��\`����[���L��~��jF�}�6i�G�U���(e+�W�tKj9z脅?M,LƠ��dA�;}�ꗒ��k��&��&ҩ`��͎>�|���9[�#�Ȏ�D���D����
���M�K�J�F����]�y$��9+s�7�\�D�)�G>.qo�T�tC^�Z��E(uS�&h!C��x��Ւ�&i�������	,�úV�U���	���k��&#5#5��M�?"�$��}����Zn��iv.�2�G�|T5��f����8ߞ�1���t_a�*ZR_��W%�1�v�`x��:jL� gy�z����̊�����(uAK���td0��a�Di	Q�7фd8�I�a�}���r�M���y�=
ǓY�>̣a�4�:6��ǹ�(��(�jE�jӍi`2k]��:�S��C��	+���d���1��4��[XW��|���f3wix]N�F^�\x�;w�L=�S�"~�g�ʛ"Wѧ�y�ߣ!��G*s�G�����@�\��3�x�&�,Lp��Z+a
�\�C�	���,0���:H�m����2��@�5���߿/i�����k�:�7�5V?�joey�ՙ�h��+Nl��ͷ��g��T��
Ҍ��@�H�lJ�Y5����Wb�U�B :�w��>D�&��aQ��_�(Gx��h��2`5����3+K��x�-���{�"(;i��o*��>�-�`�Q��^1S�q��0Ч�4�S�v�fI�Vl�ez@���-�T�!������;+^������
��� v��q^i��%��Z�I�۬��h1Z�� tF�h����}��U��ƣ+�d=i���ӣ���� 2���O�M�XM��E���e&����8���4�	�fӈ��	�sD��2�
�B��H<��Gt�s���5005_0��[ĵi��_6P����C%�o��Z{��A���j��3\��΅ώ���������j[��[\���}10����ߝ49�	zC�Q,I%�gJ]�p�k�s�޵5�[������
�X�TҨ�L�?�t�#���2�KFb�w�p~%d!-�Gօ���O�i���D�������]F��wb��f�DMU�+�j�(�㿫~�Ux��m�� ^d ��ؗ"�r�#Dj�����>�бr` :2;���d����ؗ�ߝ��L.���W*�hT����/tӞ�:�E��b5!�\�Pw��'���E�̆�Dr���3
�*��"j'�LBc�d:��H�H��*:���3��=B\1AA�ƞʨ��
R/���tg=����B8����\B;G�~��])�;@B���,E�ݦօ�]t�CF�����Xr��n!�����M��=q���R�/U����19�{f�t�=�;�c���cD�^�!j-�o�(���ĵ����Mz`���"]}������/O{8TDI��%⤿M�#Mĝ
87F� �,� z`�������ԉy���)� ��E���Ն�l������ M]v|DY�i�tsf���*s�q1f��4�<�<u�c�d R��dr�b��kAH$,�?N���pߞ|�,��I'*z��IE�-�\����X�TZ(�ݡ�f�>c�ǅ9������wu�rڇ��eSRih���8���Ǵ��!���aY����gQY/��UK^���)�_���'\�o�����/�F���|/��r~q�m~	[�칙�}�ԏ�C��`*��׊���甮jN�ַ�������B�˺�0���죘O�̻yi���w�5'�-������G|����i_��	H��{��0�o}}^�{_�ʽ�C��0�UI���s]�܊�>��n���Liz ��f�hz��]D��:h���0���S٫%��cJ���Y{�R���4;���_
�RqI+C>��m,�Eq�
"��M��^P��;��N���Oں����E�'�>��b���+�Z��\��@�+�XxD�l|���!���x�k|t���    M���A%!����*����I6DY�c�����xo?nd��2�+�:�gZ�^T.=՛]�������#M�d�_�I�&�Ì�)9��A:1��	��!N���B[ �d�h��G�c`�w'=����a@�y�X�����������/	(���ųp��70�1A�����CZ2u�=�-��?|�~YR�?��χ�V���K3F`�a����"їh$и;���HQ��/��y&m��%Mĩ�o[�x�!,���ZM����Ĩ[A��;d���.��X����Ʀ�&��)��:�v~m��;.�c>	"�1�G�G4ʂ�{�?�=��oΈ���g{�Z�"`@M�H��`Z罋�X��z���^�<!�XY��=6���,��mߗc}D�S
���ђ���'�m���(6��#F�q�3�BM}v��Qz��a�4s�F����iwqGgK���I2��b��� E��=�;J������i^3��Si	�_�6$vH!Yu&Z����8.�[���T�W���`�����`�[[��#���*���vβ
z�'�k�w^��7�xs߯�����#=��5B�5�Hǀ�QL�CN�<֒��,����/��_nNRL������4�+E��R�#������E&Z�M�.Cіު� �w�����2W0t(0!-��Ƶ������y�i���>��r�"���D�zs�������]���g5���c�aW#�E'�X՛\�#�j��?�g�x�lԄf~t�(>��tL������Y��YP���)�3L�����aC��a���@�-`�wH�k���~0���ɤ�w�x��%�1��Ƹ�C�
��>S��xqk1��'�@₃��X����7?��FWe_k#��������c�W�[FM�J�g.lB� �A���� oj���G�[���0 Z�]�8��ҧD�{��8���T�A�#�qy�"���$��7�\�GÍ����k�����+�oR���Y�װ;[N*y�֠��M��s�!I%H����m�Ġ9��%�D�rh��|4V?#%��R��>�AO���b���[�(���9_��m�M5+��y�r`���~WB�Dt�7?_`0�Z�"�8�."��`\����KrE'�+G��xu|Fj(��G
��c! �[~|G���V#����l� �A�k䰐>�2�3�Y�{���ښ�[f��J��o����,HQ��BN�U���m[�;�@6\�l�pF�؎��t���	5'���9���"��\j9��ٟ��|�p"�٢tG!��lC����=���U����O�wJ�.{&295�p1H2p�t��ʏs�� ����w���~ZЯuA��mdzI�p�e�������~3����H���6�ԙ���OV���(���j��39��2V���b�´,pW"F�,((�D��H�![a��f<q�7�  X%�7m�>[�� �Y��h���eh�󑾟�c����{-��=;�������H.Wi (J���<����`����V�ciߏK_'���[{M��\
��ׇa߿4Ur��-7�\ߟ�)|M�s�.3�c�n��|���$�՗��s~rk���J��u!|4?�*]8�÷�����d�<r�(߃��A7_�-�N���4��Qo� a�1^:t����톄� �Zs˃�8@*-����r�+SG��͜�Pi �ݜ�3�A�I?���xS2��� �q{�r89Dp��q���(!)�WP�Q!���\�Ƀ8�����>�p��0?�~����6L�6����H�'���Rxӗ�[��;V�A~�-�ҩc-{��꒬�B��A׎����Ħ/J<�<6���q)���2wz(���RഇSs*�s�2��sߺtףa���ݚ^���,����i3Oe|����R./`��RT��jջG�_�Sx!+W�}	4^7U��΀��~{㦥�#d�(�x��Я��
,�Q�h���˘�7d��7�>_�T�>j�(�aE�+?�;� ��}sI]�8���Bzͳ�#c�,��F�M��sn�m5�l�����Dz>5���������B��h��#��-��EF�! �+]J
�	~{-:M׏|��w�(�LRA�O����kR��{��W�շ���,5/��;'���i�#�&��}{� �@���ŗ�x@��*!k��R,�&kLqKu�s8�҄V?7���`7䘥�4������P�B7�,��)��)p_v����]����>�߱]�Sq�����6�F�߽��f�<��ɯkN�Q01�.�nG�Rhj�,����$G�ݖ�Ft3�nC4LtG�l �dS>����ܶ�Ҟ�I�� �i�=_͚Q��>)�@D_S�#�~��>����x:�;�s�7+�2�z�e!�wk�k���"~��s�l{}�Q����΀~�Gp{������r(v�\��>;���*����Eܞ`��m��V�B߽Hp���/�����9���rB��3Ww�1E�M�!y<�8q����� D}q�=B�݃�Ʃqʬ��5��sL[�`SWp$Ν'p��u���iQh�p��u�t�a+a�K� :�ѵm���&�ɎF��B&���/����~Ͳ�*�c�5gܰ���XN�!���aw����{� ���)娣��n=$�^�@�,vo� �o�h�#X���	g�j��i�)𦠔>иd�L�+m�(�|"�����e�y:F��6���:ݿޒ�����䉶a�ђ���#w�c�_�Ă�r��a�p	7�%89#��ӗ25���,��-�����v��}�ʄ��a�t��)׋
š��.�C�a{�h�q�Rh9ѧܜZ�����S���c��F�؄��sUe�k�}+���z�/���Y���^��Y�ט�	P���	G�H�n�Վ�2y3O/YN����]@޳�;��ɛ���rN:�BĉJY�@9j-Al/���D�x���eH,3���Qu�_�:�����S�n6�hC�-�X�w�D���u�d�)����:���qg��V�弟6r�d���K�.7�����i�����^g$c���)\�t�u�l1g��E� ��H_Q1��8g1����� l/EK$ ���Sz�h��ZT�eO��y�B�(�jk��x�d�p�K�N
r���h�B�; ��	&V6F	H<�VW��d�Ӌ�R��7���*U���IW��cmnq��2����րEt�ߨǪ������h��v8�cWEs;�o��nM��z�G��#�8��{}-vvu�ӟQ
�}�j-3��.�zW�v��2tݱ��4��k�����Q���W��8ڭ�,)wIp����U���%���k�ۗ�CN�#�9����nx����Y�;Ή�^�����<��y���=�m��t��VL��-�,Z��Az��G☟���f%r�t[�����
��慼w����so[���N[�	ܲ+�)=�cӥ�w8Cw�4`�����v�s�^�:�D�~�93��%��m�c�N��x�,��с�	e��a,u�V�=B�������`Z����7�����ZȖh�&�8og繽�� k	��s�;oOG+�fm�pۊ�l*]�����@)�8�$�s��D���}���l�3�ߋG���Z���OQ��r�^��||Yh�rpcd�m�l��ň�`uN������yV��d�A7���j��?��[[	5F��T�(����nQh��-G=}��d��a���>?5����:���0�C���_A�#�EK
]�s��{�.�ypC�NJ���h@��j�RαhD%��x� q��Ri@����O�i)�������^lDZa�� r~���A^h� Nd���+F�k��"��C`j���O������/��p��h����RN�S���y���{|��e�ؼ�Mq^]s�w�s7�jޗ����!����ʹ?o��Fa���]��r��+ڤac��,�9�e �٬D�ZW�mQ�U��n[n�޶Xؠ����b|��¨5�p^L�y��a�ޅ    g8u���r���CSQF������M�d�/�kY��ׯ�`Fѹk%��5[U���G�z����p �o�qɽ����ٖ}sZ�Kz�ʨ�C3A���:�]>�\B������辽T����Y�0.jF�s[�N�7�[�{��l6�l�R���x�.ބ�W��A.��p�3���������ų�`w��MH�L@dI��2?u� �g��s��J�lw���ы���I/�<պ���M{�[����8?��Q!�Y�;̚*p��R�{)7�\M�!��0���z��	��lk>���{]��ޅ��IW#&l��X�T�b�6ݗ��;sOrΓ@)�[VGY��7+���^)�n���2��B-���O��k���K�2�2�yӍ����b������������8�Sk��h�t[�Z=�}�O	��r������Wܼ���nR}}m>�y����o?cP�xf��7Hڐ�[Mun���6�1�gj��8�\_t�{��)8�����Z���k����m�&�.�0�,^l^Vys.��^�GaD���S�f�z�C���M�T����j~j����o�├�����m ̂=2��[�p�֥zF1�S82o��A������vm�[��u�=S^�j�8%�r���
�}���^�b�S��KfFN����R��gP��;��_,��ߧ�MR��S1<DEe�P�ݯ]�F�M�)�L6&(5��㮏��%��Ƽ��<+e�6�~M�oK���|�F�Xp$�ڠ�b�(^�dߔ���Bo���;�k��YHÞ�7�į�AuWR���+@G𸐱�x�v��z!�"b1E����A��#w��_6�y�p���T���f��8�щ�S��J��f��>�;�k B��kkq9�i�h�3�ŋ Ǒf!w97v����:�~������1�V�����3=� k?J=���jyG�|F�I��V���Ds�^�sƾj����:�?��  ���I�rw���[��QZ�ԫ���ƼM�ق5J��1p�h���@�z�m���]���&��"��[	���j���8����V����,F"�=v��MY�n7lF�|�ȑR����]�x�O��蕘a��_v� �>kiU��[���w��H':�5�s��߫�z�qd��~1���֑I����ʦ~��
�?�%h*9G�����hF�-0g�V�M�x4��6ѵ8���5��d�u"2�lX��y�$��o��8�(3���jl,py���	��==h�ԍ�pHb�$�jx��w�c�n�\R���RD���>eY���1�ۚp�l�M�*�ԑ�ReI�!X��?Y��헣�r�	�7h�/:?T������˂X��]O���b��UF���;Tع��C!M�k�7�,t��o�5]E@�*�����qQ7zE�QKp�:z�����6b��#�,�1P� ���M_E�&�.'��i{��"vQ�_.�vr03֤�^���:~'ѸiO� ����pt�&����p�������<���j�N����8X��à�V����Q��*�|����<�>���;�vn�M��ۅ�cAALL
ڥ̧��j���q0Ě@���2�hv��P�NRQKW�(��zA�b5%	��s��i�߱4���GH�W�	��M�������{ܘ��7�E��e۹n��x���Q�s$��/d�Z�����6��na��=����6��"�+P�|���#_(�!G�R�P譋X�b�3�걍P"�>������chA��<�&��J�+��!�/$0`bs�\3�t)r�����Հ��-�I:����7�����li�2����|n^��v��ؿ�5�&��S�a����g)W[��k"���T�X-z4-8�z_���Ξdڑ�n�S�w����gn�I��3?����	l��=�qG�vp��1�D=�uѺ�[~A�FU����������ׯ�64o��'#�_����m����q�Gֻ�T��)T$y>ժ��^	��`~�r8�^�/R[̯��S��1� �+h�!�I�\�^痻{��q�B���EdI� \��qԬ��/��X��v�~��I5�k��2'Sj����7�o�hK�	�rJ�@6/4�ZL��6���p��y�h��L���j�|��yKW���PkL�W=Qi���(��E�3�A�E(BcO��:<sU}�5����;�i��p�-B�\����a�5��Z�ri�.��c&�ʞ��á�Q/v@�,��U�B �c�^�4�G�8'X)��Zy�ot,X����2������f�u�?���xK�a~���J'I��5&6�e��o����剠	����Rǥ�����m���{���H˿�E��χc?�'|?�9��/k�}>5Ws_��<��Z�Ӏ�=Q�r���J߭7�Ֆq��+��5m���H�S�?�k�%/7.�����iT�v��?�B1u�,�3B�{}땧�����Xn�[��1 �D3��9���gpˮ�.���Z�%�/��g*�x�| ��	褊�Bv�AԦ����|gr�)3oM��Z_�n�h�ܙ�Hھ*|>��eBv�)\�Z��t6C.�x�b���2G����8��<}`�\ %�f_\g��/Ú�Ko������G@@;M}l��!ڡ�ւ�g�̷�Vθ��Lf�[x�<��L�����#�~����t��7�EZ�~�3�ƾ���A���(��c`�$Ln�����j)b�-uyc��%_��ǶG�Gۄ�8�#����p�B�%�8¨�G�O�|:m$捵��K-Y�*O�Q��\�("��H�Ú�(U MS3V������-�f���T��5	���A� P�.��7����	k����S�����,+�U�r��}vH+U���p"X�V@bV �i�\(��<��e\Fv��<�ՒE��[P�s�A�G����>[>�����y�(���"����:V�`CN�)"�^�,~�^9�w�����4��Z�V;�LO����%���#���d�F(6�5���̟�Y�߭x�z���-]�	C��n����~ݯw����7Ho<�f�T}��y�s�?�i��F�ϲ�t��?�(-�>{�m-�xY7�yP1˛�
�����x3��u3��Ⱥ�#u&�*�a��:�آ}�իX";S4\�}��L�t��$���B7�Q��P�X����A���_X_�Dm?�3����d�%5�4�������F�z��#� ��p7؄�4Ҡ{4|���� ?��G��(aŮ+籞rj'�Z�xm�IYϒ4��ډ��[���÷#�[zܝG��%���tT����Ag����D
1��o_�M"\����;�"�׎�%j��p8c%?�I����\sM% Qϼ����C��d#Ke�a6�$�D#�@{3R"�V'�VD4}�=�W"�oH�g�C�N�?�
�v��RޮQ2�_`]1�bD����僱�x:�!���o �;v��W�;��>|>�J{��,/N��>��H�>��Էb�e�ڶpmF��!$�i���,>Z����G���������99W�F���	�D�q|`��\��Wx ������td'!.�Zg�����6.!��]1��I$"ӝ3n��_;&�ﱔ�'Q�X��=���[�V)/�E��@>�C�G��у>�����L�{���1KvWk_��T����dn$eK�(��y7�A���b�c{S�٢C�H��\��p�q'f���d�ð����c0��m�C"t'{�2���ٚ/#)�Z�c4ae$��yթ�{�Lׁxc���[w�!����Ȇ<�?�r:9_}Ri�-7(���@�v���I�d���u)Z���M1ҌX�$'�DE遍LL5/����yֲ.vV�23i�B`_P��ڬ��s��J;O��g�>[�A���i��_;�!�B>��<XLY�e��}y[SY&�$p<?3�A�v����.����v]%�uw_��%Oe?���a��
ǊxMG�҉�w�]�ȯ0O���G���    ��A�\)#<�;Y{��2	��.
xWo���.���|MU�1u%��nXr��h�	\'K-L��w��v�R�s�6�? �ʷz'�|������	�*�	��9����-}�/j�����H�w( ��mZ���]n�6���L�t}P�Y�	�C|�ͬ{ )�6)�/E��:̐T9��A1׷����dHմ��8\8m^ h�+���J��ې�^h��e� L����<�y\+�2!s�^[˨L�r~��[��T�*���-�&��pw�BU�w�4���;�?�:L){�'uD�U���v�;���x̌��wtG�V�}��*^CJ���л���~y^�s��Z1�9,��>v:sy���P�~`�*�[�"B���?����` iY�*�ľ�L�9���Φ7/d@9O���WK-$�^�2��f��w���% ��rS_峉�H$E�'�"X�~{iB� �g�T��_���-�uo�R*���Wc>���H�a+��*�t�O�U:�� ���-�|�,
�!�CRW	�>��3��LO�s�,����9������U��Κo��'�y�!�7�6`=&�*�	��{��h'e�,nڽ��Dp�H��*Vɬ�ڙ��R9��3��oqp���W��94_���ڠ���ˏ@�1Y��}k1�-"U�E�X�����O(��	Wp\�_\����-Q�7���7U�����n��{���困�������f���|6&�7���U����纅�)�|�U!m�g�4�Z�Y�4u�߮���	��<S�v�1R#��]�b1MN1�R5�|ba%X�s�7�.fK3\�s75�[���G��(r�8�#HM����_��m�kG�>
�1�� 9h�ݲ{��}4�{�g��Q����J�x��\�9��k��-��o�}���,v��g�30�P���r��(�f[o�@bеY�������#�3����Y��}ؖ�y��պ!�!��f�/ݹ~=���F�Q���M�x3'~'�Z#i��G�4%{�A&��<�����z2��y�T���~��p�F�V�	X93�<�|2�Ę��Hz�l�S�
�V�W�+B<el�s� �r=��_͵��~d8� ���:Sm��<>\R}��a�J���Pd�HS���M����\��I+^��ش-W�0BC�C�|�d/H����#� �4��v��!�,d�A^.&�b�K˽��{)��"j.���?��1�%W������,�Au�C/�5xy��<W�u��:It#��j�M,��N�D�:@��9-�X�1lg��*ԄHG���iϩV�R")��C.h;�N��L�o��.b��[k�X�"��"]��1�C�9��ǽ���S�9���T@qk;�z�7~Ԅ��,�}�Nq?qWȈ��Or��T����˩G�c����Zθ���-�N��'�qHm���c�����F�4,/��m^�o�tG� ��kk� "�󴀻]��D��r�u��{Mqw�yH�)�"�K����FvN���t�	Le���	�UE��b�����Zh�Z�svbik��
b�P7V6I'�S��W��b�����c^Y=�ɛ�ÔW)a|��(��Y(�~�$�^�}���ƃ�n_ f�>?����v�(~��(&���ϼS���N�*�{���uGB���6쥳���;��c=��3�"���T�#��!�v��Ek���FE0/���5gA��^ݑe���^0��ɞ���\X��ys�=.�v��E?~�w!��LNm�C�k&)w9�{�)
p�����U��5jjKќ�Iֈ���̵�Z�,��$X���5�]��</#��S�p�Hm�Ā�S��U�/|}C�2v ��~*���U�[�Q�2�Т
��h�>��`o~]����s��L�7��Ġ�&����=i�a��҆'�0\�;' �/�U�S-����J�I ��<C��v�r����Gv����w��*j�B�����ɇ	
���޴�����p\�)�B����-�2�Sf���V�G���"�T���}omcJ�rCM��� }�~.��%�,��;oC%�HTc�*�P�����]���x^�!G�e|݆,��:}Be����dY�lM�ŝ��л�)�ܟyRKs�(!�8�s�He�]��x�������p�ֱ��\��o���Jտ=L�GSly��C��m�o) k�ps^_{>&��/&ZW)�o�1��N�M-�'U�B����Lo�	�s2E�Z������@�\�V�nm��Zُ�۾������Lа������Jv-N~X��y�ҳy�#j����dvK\�*��"�S|<��b۬�	"�]�g�$_���H���?������
��q.,�6��)����W؎�������b?c���N����y�>�?���(���C�6�B�Ok�ҽYS�}����8f��V�k�.���I�� �6�:�g>�P ���M���0��n+$b/}�3z�X�_|����o�o���&����b:9�t��3�9��:�GT/�g��9{����oƄ5}�o����c9��D*�i���9��ygt߭ilW�W���tƵ��ż�T��P��C\\�|���G�J���Mp�L<N"EZc���@41�1���.� �EI)O��??u���T_����b�4f_#�#5χ�m�����#[��Z|�q#U>$ef	& �^�����&7��ې�7��e� ͯ52�{������k��3⿹!�*Jj}|�j~ĄR)7��fk��:���7/���f0�{ɲ��o���G3ԛ��.F�;��SY�Hr�@ͻP���Y����M��#�bP���P鷿�N��ɶ>[ݍ�!ۄ˺d 'o6��\��s���i�\0pKe��m����$��|��"�X�I��IYxe"��F2�~8�9�s��aW}
 ��ә�O5�P��n:M�}�IY�.���1b�5!�҆�~޿�Q����[���=��s�}w{�n~�O��Ҿ��c�4�w���;T�����;cV����N8����KAhu���(w.����_�{����AӤ7�TK�<}^Ҭ5|-鳺|�����G�}Em=�q�x]bX}�d	o�;��<#a����m{z�0��/P����<?�2��߿�2]��|R�Q@:�UG�d����>w�����NS�k&�{�㧊a���nV������T��\�a���4�TM#�z��-���<B)@�a���j,ld�"/��|��}c�X���$���bC��M��L�YΩK������,��F��о۫o��t�E��FO��w�T�+�,�.%���L ���pX������|�]h�h���=!�y�8����!�k璽Kd(q$~wL�r6�Q��V��#"^�<J�z�Ɏ>�m��Lb�^�E�-9��	�G����u�HQ�9���� ;���)F	5<���Y���J�-��4�7�O!�H͞��n��N>�j��{�:����r"NR���]?8��o}S�����\ׇ�.�,7�_-� O��ԗh-cU�͐~���}?ݺ�>ݦ�$��=/�(�.C�4[�:?3�2.��c��Z�ߛ��V_�.�l��t6���,�C"1��������*��Fٲ����y�<A>Xj�j��o!�[����y�\?����i�������Γ�m���)*���ޛM뫳�)��ÿ��o�إlq��B��+��O�Z/�}����iQl7X������>���m�&��K�3��o�U'�����Л���*�l��<ěʼ(>���2�]f�%W�%(�J=WCa�L(�� ��{]����(�h�݆_���OI��q�P�_��Ϊ9H�����jVg����E������D�����F⑅:_O��\O;*�ƴ�y)�۩9u�僇D� м8�Hv�c�a��[�������"IA��^,J����~{�k�׼����y�]b���^��bL��5i����OpގT�V3��yQ�!�9#"�5��V�����q������j?�Ǻ~%u�M&�JE�²'��H�T�<%�ɮ��Nl�m{,r��}g`ZU�r+    �-.n�����cߋE�\��2}�D�]����	� 	 u?��1��NC}��Ö(i�@M��,��K9�9?���8!�7��{�7v��h���B��pG>I���)�!`��D?��N/�SQz�GT#i���kF����+a����ˍ��M�x��Z.�����Z�/Њ�D��1�R�	2֗H�C�."����2Э$��J�{M�79�e�~Y:[�p=-Ou��h�Q�P�3���q5s
���?Z��t��ь)�md�s�Ũ"0����b�������V���j�6)gY��[e\3��پ���&��|Yb����A�;}W�N��>˳�*��m�DK�w���1�i�`��l���|��j�g֧���g����V0�΄y�Zƽ)}U�=F�&f��(i��ʧ�7�E/�J�4��!�]ʶ��E�r��z�@��J�����EŕQ�0�w*XTS�1���g��9U�w��6\�I�('jp]����$�6�<��rS�8tU$�Lp� %F���A{\�*�DJ�Z����]v��bF�E�
�U�W�hU����PƔP\�}�f�3P8�QZ-�B;���o(��M���D��|.G�2_��};����A�_ݠ=���x�}�%��QS~��o���N�k_�L�~�5���cqé�Z���8�:5��Sdi
��a��`�1-vu�UXeUh�b��(�|�'�鳟�:�g_�	�6 M^wI������i�k	�n���-�˞&%2vg��=�Ѹܴ�Ɏ1�*�*�>p��Ҕr0���� �Z��\��������WC"�/_���Q��۲#o4	��W^���[���
������+�Y>oE!_�1Z�x���7����-����
!����c	OG�[��bԯL����u]� %�/'^ ���W@��j����!!����bW1�G�gjD��Ahv_�E
�!3;h�	��`pz1��|T�8@l�qamQ���W�H�����5Rl[
;���@u��}8�[5 ���M��I���{ƿ�)��� ���1 '�;^����U*��=��斱:��l�s�(&o��1�������*v��Y�`�Y��ϑ�Wǩ!}L�-�����	W�wF3v�'�=���=xc# Ⱦ�U?������q��3����,�޲�ĭ�ܴ4�t�.�������r���s2S�y0�f�W�T�.ӌj�vl� ">D�ג��>���|ԂnKA�Ry��b��"���\/�"��ML�B�'-+��I���[�mGH���܅|iW3:f�U���m����Z�!B�ll�m	�" #��Q�?m�+��~�gԝ�hwܧR���ȃO$��oY�
��U�z�����bޢ�&�S��I���>����>�������)S�t���xEە�5������^�脝E�Ŭ�4�]�,��Mx�E @u������w3I�Е�]oB��V�`uTV�C����i���r�j��,k�@�7�k]��ĹN�bh����y�����,��A��3"�Sֻv	/$|��}��Qp��'���̸���3�����Kř���d�jJfow�RͰ-KX�i�|5�[1�[��O�}3E֙��(��M�����������&|{F<Zy�ۚ����:RJC5�����y�Zç�P�6 ��;��@�˩��/G��Zж#��O�7��./wN�s>Լ;AU��î��	����1��ꯦ���y��k�he��$�ŝ#;;�S��5�1�E��[+��J��S+SAʼ�'��j�f�uM�hΫ�x"Д�x'�Q����^�$�M����"�ʀ���G̵{�`9?T�U��]��U���8F_��F�Ցbt�M��[��+; �mgՓxd�^���&>6 �LV^jo��ö{m�jk�C^��*[V%�*�
U�n"���=�aC��W����Q���������˸�7_��Xv�sVANVl�E�]:_%A�W��}}R�4ߖ606�x�8�[ٽ��7�ѳ�J-�W��b��㫈���;'|A>W��,�V��i�(�C�!�z�!\�k��<3Q"��/+�j�:��KW���UtV��I d��{l��=4�*��C�r�������*��YJ�1E�Z!e�p��ߦ���ߩ'����T�u[�R_���؋3�w����S���vg��UǴ��7kwjl.T쾨�n���+:\U\�R,��@ٗ�=�o���$l.�4b���NQy��u/���,0�`����rS�\R�V��k�/N*��`�Z��>e?�4��vAH�^�`?��}-�=cѬ)��5ހ���Ӆ�},�%(?�l]���J�T�����ȑ�du�f���W�ۅ�h&�5\�(�U$D.�@�Th`ؕCn�x*��I1�Se�ځ���~����d��4���}��s8Ǽ��奶o�d�*J��L�!�o&}`���,���c2�U����M��f�5?x4�<�j�|�� ��]"�M��h��kW����k�2�h�&4F��x �ڞ&�1�֛$gA+�]�cѿ/�*#Ll�����y��[���p��r31�R8?�Zxn��"��5;%��"��n���TL�xÖ�%�(�7.��o���Ďɔ�1�D���JB�k[�+�kM�((�K�3;�o4�2G4��+O������
ն��)�=W1�g��7�Y	]�~��Yh�����`m�А-:��E}�~d�� ��oKE��
,h��li��aã��6C[úo�������j'����A��mr��o΍ 8F<Sn?abP'��	��������Z�<��S���Hn[�m��-��/]NpkO��{L� lq��Ō� :����E�E"J5��4�=�Cf�߶�h�c�9q8?���"连��Η�!�1��s�L�[{��h +��}%��%Xw���4�_��D�ҭU��6ԴUE�	��{H���f����s=���M�g>��G(��F��kH��BX��UyZ���Wܐ;��l�i�0�x(�c*�kFN���S<Q������egZ^��qI�/um-)�0a�����S��$���t��2����s���?�}��llH����W+J�rt�Sw_
�b.�����2��"u�比�dY!�U]���n}��k���A���s��8�Y�+k�����i»u��B(]�k�`�Mہs���@��Z1x�>�2��}(2Z�SV������l����'=���+{e��`ϲ�c�Z"�L�]�o�S�f���j����E��bg���:��J	KV^���Z��&y�)j-*���Tl]r� ��-�sW�]�Kd�>
j""�f'_}/��e]��2Ω�pv|��'�[V��T��34���z���M[+�^N�q�Ŋ�D������ȕ���'��B�o�s��y�D�x�DJ�a�TF��j� �Xȥv�E?gj�$�y�̀f'��fuxn5�;Ns���fgx�~6t&y���p~��c�����i�	�z�~��K�Eƍ6$���<]��,>NыT^v��>q���)���q�֔�E��8�ZF��_��o���Fs[�	�ܪ��m9%2tp��2����q�͑�cBC���L?�H<z���ݠ�����9���)��"c�d��[Pn�RXn���4"�� ���h���~��D6#A�Pզc���/�Gt�8-˲��i��XR�{�-�7x�w8�95�:�<��+��+���Y���l�Q?\��-T�ZU��A�QM�ŗ_����ռ'�-���RѢ���#��:�+����;������������t�(ܯ��ץ�f�� �0��[A�]�4��:���Nv��*���j�zm|�]���U�F7���$���&&��h*�J������1!{�e}�,�"��m7�JQ�Sȩj���Xܢ�o�
�H��o�ˏAhM�v��n���Z��}��^k����O��p��@v��$r�
U!����s`|c��^��ٗnQ��Im��eN�j��w��|y�t#�:
#Jl�+x�S
���?F�+[u��^��X*Vk^Q    �DXFG���D��k�r �^8�GT~��˙�^&P2t�u��+M��
Sj�P�d�7,��P/�m¢$�N�6T�]���?��E�E�L���
k�Iw���zC�#�; ������^��]A��;1������ӕ��O��!�,G<�~I��Ze�~v�yk�ΟW-LιgS����:�a���А=�k�k�C^�شM��X���:)����D7�ݜwyÑ�w�D$��o�ċ�*!Dz����<��l�m\�V�bӌ䓯�FitӲ�yp휭���9�bs�AV�rr�2�-�IM�5��_��ɔr[کӵ�t�؞�p�p �!MaGf^��\=b��\�I��O�w#�S��cU[���Fב��t���L]m�D�f�w{#����/S�\���ӘX����z��BKA7���u�8��C๺�����h��9[��F!�G�`de��X"�z�w[RJG����ur�ן~D[�qf$�f���W>��]��7~���X��! i��6���x�2�w&b+7R"Sn��+��� �}�� �]��	` �&���x��m�llO�RlLr����H�L%���z��o�J��,��K��&�.E�>k}�3��U�������w�M�{�$�E���m�X�L
?|��� ���%J$)��X@eKve;�\�ts���.g(��͚�d\p��f[.B+`~n.̀e'x~ex/�7��鷝�����ކ�Pkv֊z<���j8�m�vB��{�}HR�aB.�a�[��{��1
^Q�^xh��RX��V_ ��Q��vF�����~���V_�ϸ��l~�;)�5TE��"R❋�pag�cvY���4(��U2,@x$07��N�Q� �z����heh)�ƊJ|�b�Ea�����U@UA�I�վ�9-��`q�İ�+����C+���R·tE�%9���}I��>�N5�\���Kw��8��h�U������<m�x�� ��(wB�f��x5�3���L]V�Y��8����\jf�L�=֣����ZB�<�O��%��{s��XD��P�	�n�k���lsH�1��AF���W;o����Zst���0#@����Q�uD���?�Ѕ�0.@IhY� z��o����FK��<��o'���(g�C'6���̃@F�Z��:�1h�������kV��f����j�S����xz�+,a-���b���N���p�nl�r���Vx����q&�3,Qu�w�#vL%��������*˩�.���je��~(���GwL=��l���c:&�U��'-�l�^�;��Qob��+b�B�կU�@�R-�FY�2��������T���#ע�`�W�Uہ�%�+� ��;H`q�r�Sb�=U��ť
���b������`X^e�KR�uRx51�J�E,�G�*+��� ����Wq���dc�ԧ<��v��^L1�ܰ��Q�Ω�7�����T��g��wa^��	֍!e�ر��1ې����7.���� `҇�\�{#�:�̤(�[��U׉=���d��9i���Nŵ��1ҵ���)I�`�s�y<�;3�1~��A_��@��oi��]��+���XPߨ�M>�<?�uOB�C���4�r� ;w�aB5��۱�ho����F���(�Tk��.�dOD���Ꜥ�3���}]U�ߔ��~;��K	l�7�m�9.-���{.�!<T`f��C��k���a�Em�)Q��Յݮ�PZxgM81��He�zS��t3�u�B/�N�9�.d�e����$����o�M�CW�#�m��Q��bv���hH��5nV�T0����%uݾօ[�����^~4�w���z���[�E�kg=�A�)mv$`'��v���������:@�Z�7�FIWV��^S莡:���X+���������I5��k��ث8�G!�i��'㶳k��G�2l=��u�N*Ln8��(|�����D�-�ڤ��Y0S{��	�(�#Fv��AFܩ)ʦּ��<���w�wjw��2�VN���E��)7樞@�J�{�Y�����6#�\uUi��S�2�k���y��p;�t�y"��J�J��2$���9������{ȿb�GS���bj������ݯ�
���� _����󳦐��8��٥b^_P��Buh�lO���C9�Ψ����@ASmN�:IT��	����M-Z�'��`�4���!S1�J�4�;�P8��;!�'^�S���}�k�t*�r �oѶ�0�;���0���;o5��=����k�J'��r��o�X�އ�hJt�/x2	o�f��@�æ�cnR	O�{���6�̎���{j4��S���d�D�B\�K����O��	�� y�qǯY�����Z��܁U��֒�N����s�~���ӳ��n��ۿB�����S,>YK�Ǜ;�F��$����55@�2�aXͰ�=L��M�Mk	��X�ؒ��|��ˊ��^Cݥ�4h6�	��_)�Ť���M;�T���s�n>a���ͮ&�2�2B�'"���`�ˢ�x+IM��i��`�U$M/��[s����^�tm�����G�[�1P(�ey�e���v{-d#?��Q�b���h�&1�T������7hPr>K���oH�o������w���*X���t��]���6*�~��\�
o���|jDr�ȶL�ez�R�iٽm9Y?�j���"�;ռTuk�j��ۨ��B�Bq��1��^�[�C�����VY$�yV����z�k!:NQ}���'_��/�x�z9�� ����%�r�!%=d�*�|�ݿ=Q�h#og%�sj�B����UupF��d->�Z^ח����z�gh���:�=@t;��U|b^�0��ȷ
A5���m�#;N���O�n�� "ۤ���3U%����Թ)�l;�Z�D�߶]y,fP�*�[Ļ0�Y��קJ�E�bE;1~������I�ז��E��s/	9��U�u���"���Gū��Wh=�S��|X���Q2��s�Ģ<�b�&׏ӷ�F�!Ǥ�DR�hb���w���ˍ�� �oe%�4�ZI�H���Xj�xA��ZzF�\��x]���;�rL~��~v�V�����(������}�m�G~�V!�G�!��O���t7�W����!$�qz�yj��ä�j}��^wNs|��]�=o�D������V<D�J��������lTI0� ���ޑ`���1j�l"��B�2�R�v����bJY��T��20p\u�n�0(߬��WͰg|�U�n���<���(�A,��,Ɉ�ӎ��	��CϬ��˸O�� �y�<pq��m���}����K7n/����%WD��̵��n���(z���_��m{��O�� �m�$Q0r��rc�{�s�' 蟞���E_�7f�&'�o���+q�MO�y6�;{p�)��~�4�{�j�ٖN���H���@+_4�(*�����>���t���$��`��Y�9I�`.2�)N�>x(�ϼ:S��<��pw�bVk�PNYl�_�U�(!�)�ݷ:�j�G�T��mS<E"'bޙ�iݮ��+@�Ĵ�*�-��2��s�4q�m5�������(A��̓�#uA?��`��J��o�	��F��#Z����o9�fG?��-D������ϔ.+�K��R$�k�<A�CS?_K�A�V��cp�ԯ���d����O�Xڶ�����r��6�eG�D��rIr6��o͘��k����ԿP��\��(�÷����N�*>��O����;�!�U�a�	�?�n�ʀ*j��O�݆��py��4~+�ݪk�����U:^I�T:��#ב]c�ȱ�d��:����
�}[�n��(��O]��Ӕ�J�qm��ካ��h��vg�~m�:m��$$�Dp�K���Ͼ��NNn�^~ǞaŌ� ��VC�p��n�� �ht>z}/Ǜ(Z�>��&�(�]��W�^�-���rt�ھ�>y���������)�џ��,eh}~��3���>�-��t����j��,Cf�̵�q�Bl�N�'I��{ؘ�,7�    �{r��(�b�O}�]��S�;��cX�K��T��Ӽ������b�+�~�O),�*���bA%��/~�H�E㶕_�¢~h�����Ä,����o`�mR��wuV�0�EgJ~�s[��Bg4�%׃s����J�v��:gzn��������U������*0C�3ԿM��@Ӑ^'����E=~��������X�UF7��)��B�����MK��d�����c�����_J]%o���~��iy����N��v3ӡ9�;�T[u��Ł�,Q�R"���#RE�G�C%�ND!éo*�&�НI��*��T�[�ݹ7U��Zπ}v ��8��#܎Vm��l]� fHd��t%��e�o�TL�M:ظ͜���&���I@k��=>t`��`���)ϕ���90J����%J������@hR����#��Y5��K?ثv�����l�7��9��Ǉ�1t�,�q���\&t� �,w�����ωB��] '[ ���Ćêޥo�.|���Q�g�8Iy��o�W]zN@���,<'�"H���w�s=�q/|g�'o�#`^�Je��yL���m��M�H�j�#	�/0��p��ƞ`�U���GSf>���ӌ����~�oeQ ���C���՜0ר��?�!���S2���*�Y��Gŷ'��_�v�T��N:��:1�#�}t�y!K0h%u�ƿ�nu�!�~n�b�G����ָ�Ε�fo ��������b��\� ,�d���#)<�ϷM���=�3��o��sjIY!	?W��<v���d����Z��ep�)�~�Z��p �4�5q�{�~S\U__�A8lF�v�V��%��[��0�H	�.��HH���}�7���Pa�'�Lđ�l$�+ɸ�*��u��$*ڸx�Ϗ?���_F�sl\��10v����}��:�$����~oc.@:𗀐z����!���+�~��]5�?���/0ߞ���4���D�L2z�Oئ��к�~���
��`:�W�����מ԰�Oُ�grAAƉ�L�|8�o�(��wt��͉o�p:
�P��*��f{�LЈ��P5n�qޣo�o;��[g�t�[Ct�|�@�*S�-�q�K�!��k�*h�3Ի�\i�>U���
8�)��}��p{*��rȨ�\Q�����×-]����fc���ٹ�:/��3Q:�\<DN'LN!��V�']M�K	�8�������ٷvW�����
��fM7�C7��۶��)�D�~�i^�f�i�'�]aTL�l���Uv�T�sQ��ژb���;��ͥ����t�B'+'}�j�eQ�&�RI�����i��2��r�;Z����X?��,bl�<fm�ՙ���(ًR���A��eߞ=h�˷tC��;���3Y��2��z�,B��d2>���M�n4E�{��~3U<��%�؟��ѕM���u�w������u��_�.tl��Qm��11�;�}s�����֍�y�+�x3X���n��B�{XX\��f����G�J����c�����{ߌ\�R�j����&��ޡ�2����a[�Sc�<a2%Gú���!a�����t۸�s` ��T��
V��e��
�i��i96��6�Vewg�7$�g�WD������:�Q���Ǹ��p�����ȣ�[���p�]t���.M��μ��_\�p*�U��J~��x��{o8���M��20<����p[�r�u����o�܀l$��tN�S�tK�{'��\���i�G/�/�;(Ips�H���cJ ��r»�u�t��}u��w9m/�.�l����"b��?(�)�G�2��:a�*D�q�w�[��G�<�1ν4�$���[o`�p���%�o���	Z�e�ס��������뙂�֌�.�A��s���&��s��wǕ�6T�F����ݢ��5��0���1�s2O�pǜ`��@=(�{�ݬ��|XoG�b:��3������g��a�<��O��0�?|�b�_�ݝ��B������vƆ�ń�h.�3��bmR$�~����=��5�������7|;�ۈ���m��~�k��g'�dn>�z=���V�)������D���=?@���n��{ۦH�$�%�΍��3�Zh�AK��|E9��mb}�uW�ntk6\޹���8&��JT��,~Z�b�w��m�9��rޞ���7���	���1�S���i�em���m�������{�xD���t�3]�W�6�:�K�˕�E��/Ҋ�L�-[�:a�ȃ�/ o0�-��0�u�����8"��Y4c�U]�	����[��x]8YI�F��M�ޚ�)�}٠�S�b���Nʌ=�W�͖�e��T=�k�bI��mf���셭>�}��E���p�w�߷6m}[�
ԛ�|�.�2�θD���i�ig=ypx�6��	�C�F�b5�(|��O����8�Ez�+uWN�ke��3���F�s!D�D�����{nj�m�[�g�]]���4y��#ǭh>
����pa�:ҌR(�G������r;�0#bK�D��ii��e���M��٥��~|��G�V�O�ZB�`�f��5B��b>�Yh�˽>����V��]+�7��mf���=�V
�8����">�C1�ë�6z��&)���	O��Q�cV�nQp�S@(��й��U{%*�5|���ۯ�m<�Jnl����.4��t���9�t:` �h�=@�/Ks�0����M�ί=칝���ǟE��>��D!��X�F�B���{J=F��s8)�G��F���X[�[`K����G�~��������C�nM�m��dp��~��D�����P]֚Lr=S��Rm�!��'L�=K���8
=��,�m�Kڵ�n@Dz`�s2^s4O�ć �٪��C!e��1v0ԍ�U�� ������i�ᦝ3Z�wqd��|�o���`^(D8
��r�&B��b���:��;o}��*�h��`��{ue��Xޭ�/�4�^�Kx��T��K����>ם!�%�2��lw�M�]���cs\4�H��∾�̸�/ �\L�E�V�n\|�|�;�$�j�bQ��}�
�o�GӪ*�㺆-B��&������OƎ>ߙR?1�k���ɑ�/���.��>�#ڽ�[����^Lm�_j���s��bC��9�r]d�;�3�>��S��M_R�˶j��%�\�A��C�a���J  �LM�-�-��2���@������K(ɋ?7gz��T?@������b{e��HF���Uy���Qeڔ���.��>>�D��ɜ
���F�0?���(x��<ʡ���X�����N��R_*@k��s�m�UW��W�4$T�H����ݝ-ĕ�ٶF4��ԇ;���!s�\kb�4�=r��o��������e;��-",>��L� ���)..������[��.���@��ǎJMI*�T��[�ڗ
�[��*� h���|���6����1%�WlNK�NT��x&;
0�q��n6���"*+8�"�+)�k�d����!{���[ �F?�����7������|[(C^�5�� �|��^O�S�������3Z��]4�IE�������}*�>r9A��c���P�[���eu�f²���n��"�i��eV�i��	��5��kX�e�\*b�g��.��:�T�Od��lZN�p�GG5:'J|4��R���\ή�9���Wc�i��i��ԑT�\�$����d�L��Hw�"̄ �����1E�z��M��'��[���R��ظȋx���
�[u��0���'j7��9y�",1���FP����i��K�=��+�'^>}�ɞ�&�f�#���ps�������f��gЋyo)B�Wx��Ht�!���z��6�
�ew��O���LX}ʧw~NN�a�g^>U�1}��T��"i�R��\�X�g�����4ЈE��n3.$����k��>�.u/@�
u~��y-�=V�m{i�P����FZ���w��dq��O�    "�_O�Ի�u?+&��������ꤐ9���bl\-�29���#�#�?8 zZ芳�k\��[�I������Q摻�ί|m���9Ł�eLϼ�Mr��r�KFr�5=3�H���I^[�\`��ڝO}\Qun�̭��FK*�!�&f�nNZ�W����
R<��%�4��f+zd7��m�:�>�N�r����N��0���s'�	gZI-� ��"�l���c�����"����W�އ��9
�9�$y�t�~��+�#t��ڿ+v;'a���T�aJ�e�TX���hal 57׽m��mb��m�s1;�D	�HF��`��p�T{��߭�nrA�����=����H�VL
�m6D�GA#7=�L�8�!{'��A7J�����ZVl�L7�^��Ʃ}��`i�h�3��\Yy�<�')U����_|>[�6�����*�|-U��([��<f��B��L�<䷽�.�O�S%�L}}�����u�{4D�S.��m��k�����WB��{w�\�䬄(�P�}�rm��ۘ�q��+p���!�j懤/=�
z)�V:_�f|���bq�<��#a��e}46Ա���1�f=�yO��t�p�\�;�Fk�q_uxq��q=�./|�^�O����b<cV�h�:z��F!j.�sxy�߳Q�%ue��:YP����0���)`�"U�o ��&���+@1��생�tŇ���_p�!�M�&*={p�������$ϙ�W�����x7��"�]���}0��è3��Ht���T{J�g����0̙\E��B��[����M�C&���7?�^y�v�N� ��M�"�,(�XoKIc�;����VT���2d�jWCRKq'D�a����`���E�C\�1�����ͶT�-�/�{^
��u5�oI���ti�4}���@Fm&��,�U���wC��@jϱ��e�[d!���6�N,W ��$�Z>��0]h�����Ӓp-���z�Q���<m��9ݙt��I�M��;_t}�%�|c��[� 	��s��j�8J��m�9��}�)���p��7`EvX��(c�{�xb�"wK�D�����i��wv�1��ܧ̔mt&����P)��t��~Gn�����iA�� >��=<�Z\��Fq����jضAx��kޭoN,�u�qŚ��R��׺�S�t�D�$����rR'��B���� ��������p��D�4�虫T)�Nx����)fS����'�����*�T���V(��=����d�DZ~�F���J�Mysn�6�<�N�ic]>���vZ�����s")��r�]b�&��&;}!��P J<��Dr)s�)��zw΁!�fi�7w}B=�$9�7��2Q�er��d��-����+�J�tq]�\L�ɿ�z���CT(�px���-�[C��#J��1��{��5��ݠ���U2��������*P�)3�l�>.�IB�Dt�`�6��U�Okqi:-l���$kْ-3�=��=�Qŭ~���F5[��^�^a7Lc^p����u\�8����r�a�}���zzϵz�q,ߟ�IH`�
W+��\f~�R �2lqZ1���x����m`�K��5�6�co-��ӽ|�h/:�y6�V�Jd��h��u��G�G��F�S���gĭ���Tp����筆�d�{s8w�YV�;���qQU��֞.�^ip���d��_�&=�`� H�R�ٳ��؊󷾅ŧZ'�a�� V�c�&-k�d��%}0C��R�O�bg�r̼ە��eB�apC��� �=Zb"'��|��#GE��hK�;�%D�`ut�3r���u��ܲ��|*ڊ�2Gb#�) ��[�I��t���@o��O�~�[�x?�-���ގ�K]E���bU`P�T�qQC������ �	��G&ۊ�+�GN�F	.����8�S�u�Q���z��p��	�Fr����w�i���g��;^����{����|��a� $�U��n@o���9t�xNi|�[�0�9Rt^��e�u&[�O����߲�]b�:%����)rE6[�۠ɱ���lC��t������&�ӯ
��Gs����LV�����0Ҽ��|!F�е��!�׈N��뜔��XI���������!���l#f{�Z�ɵ6b����֔!�;�pح�#4ZK��0h�ʉ��?\�<:��ǲ�E�Q�Ue�}�Px���b:����҉W�H�vjP�s�����ڷ��$�7���N�)\((�
���;��E��@ejj�CԜ�b�r�%�{�,�>�,�X��8�8=֧�\��ԟK�M��c6�� w��
jB�ҷ��r{i!��]$(��<�X�ۻ����u�k��{Cz��(������m�R�yγ�n��)贐��`v/1����~�Ѹ}\�n[�2?��y]���ݎ��%�$o<�t&)牳g�7h@���S��w�!	*�.%�	*>�K
fTc2�_�c�&�����:�X����!+��I����'F��j��B�0��~4��W}w�$:Sǈn�NHR�FMZv%�U�C��;[Z����5>�I	O$9�$�y�L@W�d����MnoŅ��EW�>!_��z��ke{<)]r���<�w�u�����Ը�������)�n=:�zi���"����8(��{����To��]�v8��Bc���T��r$����k�žds���Aל �Ҧ�	�ó(�f���M`8B�����Yb�<�K�vJJ)�D���������'po�BH�h�nћ�^:h�:~&y�)��J���S�Yu��w�^�k�
�^U%g�<I��f"&|�x�"G~3u�¶��>��?(���J�����B�L��9z@���q	��L\��'��lֵ��s��%%���ڵc._\�tfG�cܼ�qX��^nlK��m�ׄ-��]L�B)�Q�qP-�
ē*�
Gq�H b������V� �f�oz�nO������84�1�d�����Jhmlb7.Ow�r�U���P��n�ӑ����
4�ե��֑t�E'!޹t�[�1�[OZs�c�ሸuC{+����%E��n۲@�_�Tg4
Vh���?�)�\V����v�$/{�E$�F*������ʼ�|�S'Or3$��!.�0q�0�{ՙk�oV�����B4'g<>�r�Л��7�a��!_e ��"��[qx\�'��%B'6h�6�w�
����%k޾V�i6>�Vo�����)��x%�,�nr	C�,�3�TGtj�0{v_�.B�^���?j!�m��$!��^�QXwC�tB��'xf8�eV��a�LA�2��2��]BeI�������8^^���Wf5w(ثn�{�N�<��T({w�Y=|3з�o��ŭ��-1vBJ�.A�[����e���f	-����,���y��>�,g��@Å)�"Gxb��ۆ{�%�z@⎛U����B
κ��d���[8B�;�y���K�����)6L�����'��u]Mw�<��M��QE����B�o�� ���z��)L��y�������v�9*�")��$�z8���n>)�O/��)�@KJ�E;k�4�����5���a��B�%m��=5�R.̠C{�.���r]ho�������{y)�2?m�/�~����T����x�+�ba|��f�������N+ϴ.��K������:PBj��qc�����qC�Łxk֩��q��ΨqDlЭ�xh���/ޫ�})���ɣ1��
�Y���߱���1���f�-����~f��ۗ����G�u����G ��Z�����C�`�߈i��q!���x�F��Yj�������}�h�R�'՞r����{���d����?�֙����Z��������C����	[�N�K[���(�.�����[����F���3�F����|�#uG�۝N�1�(( ��!9\�>��=C��ODQＭ>�'��ܙ���A.��oB�''���a}����L^�s�Lon�:�c|�����6]��UL
eSz�W V��n+�ͥ�`le��896��q\Xi9U�    \���J��ܛ��`Q�������H&5m~?�]��_�at�Dol���O�u�\? �0ȴ���9=x��?������.H�[�.u���Ԅ߼�[�sйmʣ:y�YG�
4w+��y�A��)��k~#�U�q���>U�dQr@�ҵ���i~ູ_��!>�tw-���QE��ۥ-��^,�8�%��E����K�s�\�y�͜�����+��\��Uϗ���>v(���l.r,\�`���\�߷��=C׍j�O���J���-�T�O�l`ە$��l2�۔H�A�z�����h)e��̂���WT.�^�Ъ�.��9�m�S�eA2C�}�i�G��~�e���My�����)ӂ� Z@��(���h�zp|��E6�6}8�3e���W���߿�).�t)��ki���&Udkj��A���g��t�ur9Oq����q�������*Gyd��Yn���=�0��ǼՒ$ܿ{��8�`�+\�jiNP��@������
��`s�T��q^@ͣni�Fa
���/�\>2]bY�ئE�8K��	4�m��1vG�B�l�M�M�iB+>5輿���o�o_�����ȼ�{��[8�*�=��oδ�*�7��{�Y����X��k���>.�V�m��6�,�y��S]T�-���h���F/��R�&}���m(Yfp⤜�Ͻu#Շ�?=��X��]��B"q�f/φ)��x㈝��L�U�z"�~�#Lo3�^-��f	X���7:4 �k3��u���q�b�������6�74&K;�NHXrn�/}?l�9ʷ�࿚R��b���/�謪h����(����R����~���",߇>��,�����a���'��/���_�}^*�w�f��&�8�b�Ad���`^椾�é6Wy�]$�m)�Әmf�l㓄����R�3���r����Gi�r�[g�E6���b�B����R�h�~�L������u_0�o�E1��+?�� U���{|H:ȶ�>��O����o��E|����6�
�A�����f'A�Lf�$�_�MX�ы�8����]���)F[�J~z!�\�X�Ie�,���\���,ݚ����l��y��m�u+m>�3W��ȱK	��r�Q����vs{���nZ�������Z�i��qM#�A��9%�m�.��9��ϲM���[�����Kk��h�sLř�i�c�lp81�zaP�D0�
�-Z;R��!�i�-6��n��x���c��2N��V���9��<|�l���}?���k!+N>�>���'j�f�
��y0����gL@�u{�iIc���Uً��І��m\خ�ă	�1HA��lv�x'[��k��=ڣ� C�$G;�)��p"�UO����.:��ޒ!�/����mUܦCh�
�:��W���#�����쀱��~`�8"sJ���2l
!���
bd��V`��j�:>�>�̾��U�&+�+����K�����z�"�����_�Xx�|͖�|�ދI�n�T�E3�N��7V�q��F��	���7�o�{1|��_�j_�jܐ*���߹��[��;��o���R�u9�44���yp�4�:�U�p!��awi:�g�q��B�T��z���h�{����{Dq2��}��{���퓺t?о�G��5CM��L���ݚ���ʮ&����]�D�h+�X��.����Y/٩���~��\��-���f��6D�^�Ǒ���ߚ���&9���1耈�~��U9'}��_��%1A�,����p�F�[E@
]���@����S㚏�U���x�{���߉|�w	�-�t%���c�P�Z^�p#��O�/��Ĳ�[$�"�U�#�,��<�E#A�x,���Lp6g��pg�`Xw/\��XNZ-�fL������l�'v��za��9����G���b�?��uP{���U�J�������l�3E�'"���eÒ�	S���6���fĿ�P/�ѕNk��rc-����;ޭ4ɛ>�zL���Q���jU��};�m̹mc��y���	Y�8{��P=��V�q9]��Kw��2;���D��]���m2&�7{}�T-S���V��}z�y���H�`,a�����L���"z��μ1aͳ����~2�ԌΜ����vֻEA~1f1����y�6c�3���Nwݔ��~������=��}>>Sǌi<��h�Z8�ُ3���|���r��{y��x%�Uy�7��{t�2|�]+�,P�Ӫxz��W*��|#n5�� �c��yyW�q>�&�b�f�7��8�������[�k��c��`��H&a�L��'wӟM�K6'����J�&ɲ�T;���+���$�%��Z�e��G���������sǉ	��'ި�e�ڶ�E�nNj���C+{%X�{CZ)����5[�ב��(��L�:#gV�`&����ָ�Q�M�Kc	�gE�K��*ؤtz�B�'{s�|.���J�!���3�5AP����i�EA��P��s��|���sS�OVH��bgՀ�1��%�%����� �[�3u|>�^K��o΂c�t�)��ya"�r"�5��)At۠�J�w$���k�*`�0�'���&��O;��o�-#I�&F��/�O�z1�E��H���7���G���]��E��[
>�9?f�5g@x�?�R�d�&��M���CS�����������Cm�b���ʺ~���"?���d^������X&�F$ke�Ťx'�B�E����o��8Ցo�~��/i���c�v/�%~�#�PYZ�^O���߮܍,��
+�E�W��:48�*嗼�Ƴ�Yt�I���3�S��?��c���mHx�Gީ��\As�Y���,,���IՕ�=�����4�v+�X��2'�`=Q5��#X�q,K!ˣa��˚^��C����$�����y�\�\�HU��]��V_�V0���I�U�.^�K9.�%z��%_,!(_ٙ��s� ��P~ax	�������ҙS�ur6W�_�
jw��`T4fы+�j��t��j��^}K�z��/Ln�\,ƞ��ZЮ�E'�A��!���S��/I�M�W�c����W~����Վ>y#e���
�۷_�.fϏ��}ŭcpUe�6�{�T:��tQ�j� a�^-��5��~v��>�W*?�G�E�ž�c�D�{��[�����~����
�m���/�*|����7JT�p���-�,MSX(�;�>=�ł���s�͍�ŧC��*UO�g0� ��3�۫4&�"w')���*VA����P��Th�Q0�Z���S���B ~/B�2|h�_�
��8�(����"]�uhVsidv2�TG���&9t�n�w_�-�������JA�$�~�%]��2)q,�'��E�� ��8?�ԕoE3�ġH�gm��!J����}�VMl���4�- ���^nw@�f���u���M^;0ȇm�[��m_��,������u}��xCԯ�� ��9R+h?�<�Б% �vRq����X� �n���屮�^��Gs�ۉ��K2$�5k�u���o�1n��E@��0I}�؎��gY�ρ�07�O 
�Z�L��_b:�.
����&̆&�7������!#�0�ȓ����'<M�C�Y��F̀�
�!:�����F��ۃ�t+Sa�<�(d�8�i.�,]�c6	�nVn�����9��C4�(���6�Z|R��]P�w�'��:2:�mW%_>�	��-|�־��F���'3��� הbۏ>Д�j���W��[~AR<����|}��D{Zz��L��:�Y��H�{��Y�=�O/1�O�d�>�I@�v'�3�4+�R��u���i!1�	ui?�p��5jqtĩ�����1���u�����V\��54���&_��������͒B����߻�.ku/?1OC���B3��2l���.��ʞ��<��9��r�����ÿ��  O��;�G��(�\ft�S��b�;l��d>	U�DR��;,����h:��6�5�>����D�N�.    ��ӟ�9�v�9��m-A��̿���`絻�I~���zb�a�m�h�Ru�I/����#�#��v}�8r}��C[��WBns����T6mi���@!P�L����~��Ux���(�a<*/$�[^-%��ߏ����˼��i<:�TAVwXXJ�EjS��M~m�����Y��1���Z>��J����F'a$�0H5	~ �!�qlb}1��%?�Afsx�Ty2��,����3v{��o���<��o���X�iexi2�,`�OHp��r���/����5����Oi&w�Y�P�a&q!��t�D0[�O���c���rє�א���h�uMg�����h��S�w7������ޅ��#�GRo�%Zև���dwM��F>=������rbc4��ъo�F��!�$c�S�qf���.�o��y�m�nw�{��k4�Fy��(>��7��G���w7�˰����Va�0��:'r���	k��}�����o�A��ަ,�y"7}&��R�`���(���E����L���a��!k��N)�fi�6����C�� 	��9�漵��90���N�Օ��9����Zc4�>�8� �M:���`~2etEN:B�2li��x^�o"�3;N!6�dkv�`��"�	�ڳ����B�~EU�H�0^����m��pf�5����8�T��D���o,�~�g�bLS�	;��j�����.Ú �9�]�/�El'L!�b��6��'�P�YK"��5-׹]}{A2
��q*�L����Fj�D��=įڃ-�P��<�Ɍx$�a��R�����`.�L:">^pq+�>��L�������;6�H<�(GZl]�w�=�9�?��N��!SF1Ἕ7w���/�0���a�� �`1���J?Q��u��4�p�	Ô�rL�[�����0���񝯑?WHyIwߙys�D���i0[v����C�l����_� c��[i���t�X���(*Xj6���1�F�����:>kd����x��BM�3M�3j���U�_Zs��dF����<ٮ.;�;��t6LA��i�BZ^����<��M�`����O"I�����SM30jr�ӏ�"���%�+�"ǌy<6������5Q�~@��6_>��"�yv�"�8�[K�D�R���j+!��/�sN��Ǫ�wQ&�T"���T���廰�ܣ��d	A�qO�;�j���K襇MX� ߘ��r�!rC�(�{ǝ��K=�2-��Vfv<�['���G>��{���~$�qORG5N>�A��m7N�h�i�!�VDu��V�=�_<� �C�����4�C#30Q\0�6�fx;�T���z��?j���p:�H�;a�&Fsϋ9�7���t��Xe��+� �b}݆O �6�1+�P�*����a�܍���]tze����pŻ��:qo��!"}7�بpp+�����8f1���̛�cV��3w�_�N#����|��-2��'�L5�z�j�OO�8CO��U��I�S��Ul(`6�B�x�/�l8�kv������T�FЫ�ɯ�jC�	;?��Ú�z�S�Hk���մ6L�@!����>�gWK�h��(�d�記8��N�?jH�ȫ�Z�x�绕р���$Y;ug�p7�3u�����'���25�|,��4�!�����!�&����!�U3�xv���8\N�ƫ���#Hg�F(����e��$(�sQi�s;nO �ckf�O�(�������o�7j.��0���8���͙)R#�3z:ac��[:�xN�	eV�TG�h���IJ�az�t�,3�B�U�Z���.]�V�W�z������14�Z�3�Z���W��OxGX.c�@����٦�8h �m�l4���|���m���j,�Qx�X����<�WZ��V��u��,$�%G��
��+8vB�|��n���y�]?Y��(\	4sD\,\�p�m�U@Z�72�Su�$�����ɨ��B��K�}��1s?��p]M����V ���6��	JS�01o}���[��F`횵��J0�E1�~n�FN��̽�#4��.��C��K������#S`5�@e�i�|ó��Q�*˘3�n��p�:���^��a�W>�I`��Έ%���u��W�[m�~�2?����{�����h��\��C+�l�Ya���f�v�1�Ґ����F+s*l��8���&j�H�����|�c[�Ж�K��J��؉����*|U��������@����U�9)6�#���R�N�=��*isZ>! �h�cN�к�0|R��7����#�����ވ����90shJ|(>
M}K�*��]jE�\�\܁�=21��ǯ�&3T�\�j��Q��ӟy�U�����]835� ��v�����e˕:�c���T�%�z��s���l�z�8]��eNCZ�����z+�(e�6�(�Az�֦,L��W����2��Q�M!��С�nҩ���&��P�x@2��6���m�b e��E{1|�$쨷#2�QT|�6�r�/L���q�~��UO�sf2�p���]Z]���;Io)�?�^����pQ�'���H�9:��<���VBlNW��J���jY��ue��IC���6�EL��2��|ZRA��&m5���$��zJ�n������\�#+|
�S�Ý�cP�D�����n�AIz�o�f��G��2}xw�|:'ӧ��a,�u^1��C�B�Ql�L��{�j�s�"F���x��
0�fb�ٗߪX�<7���[�%<�z����u�n�3��Ov���T��1�g���HvXV-���p[�5��:�3Nh֗E&/.﷊p��d'���$�K{xq����r5ޓ_I���Y>��&hs'�����*����n�wcG�݆�M���ڭU4L����l�>�.� XK������W��1 ڌm�v%���_�{�P��Y��^�1���L�Ԭ��7��8g�����mg���V$aw��$jh���嬮W:Խ������0l_�uh����ao<y�
��x��6�oXndw���������'��:���������|�xK���PJ�g��-f�T�М�gV	�R�mK� q���	g�zOm����@�R�Ӆ>�E�S�*��$d���j�Ӫc3�����l�����X�T�x���YV�X<�Tܰ�
�͊�M�כN�JEj���_xWڿ;K��t��壋 �[#�����F������wx�b�*���^FJt$ ����=�3ft�yo��>xI�t�>���<2�X�� �heY����Vΰ��wX&�E�q������޼�{��\���ke�����]�X�Cd$�ȓM�*/��g/�m�3�nsr��ٔ��JG*�sG�
58�W㳀X���2&�);Y��s�5t�b�K�Xv���u����,{m>��Ǳ����MQb�H��Tn�\y�����"�\�a��-~���l jN���׿�/�$GQ��I���1?Esd�:���B�}dDP<ռ0j�h����6|�b��D8D }]���Z�L��P��Z�����
���Y��P�O0�4�[F�(�8<���߂�٪���'���}4�y��}���TMV.c��{��b��h�3���J�2R��(sZ e�
�ɉ#~������n���zˋjv��=j6��Q��P����`�7\#F���@b��P�1EdX"_�5�$���ܞQp�{r+A��mA�R�EW�p��v�b]���M�(�Q��mU�H���X�CMp��Jq~T�GO)uq�a��v�m�q�Q���B#9��ֻƏ�I����k0��-]{����7<sĲ�Y�t��;ɝ۫j+�  ��>-��7��O��&��fz+�j����/�N���F�"�=����G�ܙra�{��q�¡������t��20���w�K���$��ˇx�&��{�����]�8��(��v�*�" �-�����:)���5�mR�T+��ъ�|H=a6s�/��9����Y6J( �#��u�5��I4q�Z�
Q1�W    ��]Od��=��w�)Տ*��TMHN{����L��g�
�i������A˗�	�CQ��^R4�y��gY~�$���!4!�K՛yE[�G�hI,۱f�l�a��4˴�4Y\�����1f�Ab���D�(^�?
�|=�g�1����3��`TE�pCR��ʇ<?�C�(��L�` '�;�����=u��Z�
����H�q��i|��J�2��ʋٿ�Y���(�j�Z��l�� 
N��jXL bf_7Io%���_��5��pӨ��U;�ж~�L>�|��@]�:��ı&ő{�O�4}�D���`��JP�1�r�*D�q��⪁&qEK'�Q�#���)��4-=�'ʈ ���0������ʸ��j^�e�-=����Y-�Դ�����\�)7�ϒ�.k}7�C�L���V*�uܪ�j���um-�F�V^�h��u�<U�|jtƿ&Y�@�"ޝv4�|I�F�[���Uk���y�t+������kj"�*��:l�a����_6�l��ćmb��倦�`�qI��i�9��@�xWw�������n�(ٻ��8�p��~G�~��/��	pQ�|D����K>=�p]I�ژ�F��L1k�{9uQ[�W�<���� Q����)o(vFV�1��i�nG��T����H��XZ�2m������/�i�oO8M;�&^t-P봴�v����A�^d��[��{�,#ǁ��j4�$�i�_[$i��E�WG[�ZKNy��6��O�vXEx?�N�2���HiuU��p%W�
����7����4SE�>��"�\���x����G���~�|�A�R�������!�JY��r=RY��|��JJG0��e"-Y�5��54���"�T�嵋}��5�p���l���<ZC�a�S&%���0Մ#��I%sk1Q'Y>���Ci&�tM�h�Ý��>*��DA����g�� qD'�ii��w~d����_]�J_)�[�eM��{��?5.����Z2ʛ��j���Sx�>���0�`�}(����P�Ԉ{q<`�:��T��d�qG��-�./t>���s�E�M!I��w�
���8��d$9c��<�&��0�2J�o�C��z�h�/e���[߯�@V��!aN4�=������bo3�6�_g��Q�=�����xf|MP��H������sPKv��I���X+yD���a=к�En�(7��ً���I�Q����u�d/���v_�~��Q�h�j��u?����`��Z�Ū�m}�J
K:}0�9h%n\�)n>k�	����؝�a�8By�6 �f��h^��X�֩�4�+`�&��w���}&�T��yw%�}X�#���庡E�P�fHSB/��r�k[p^���|d�ZS}��ـ���J��jjw��p���l7m^Vw|
ߴ)��z����̓���j��z��@NP`�)��N�;rA��H!����;�8{}��pm�Ck��^ݑ&�U�%�:%�V��9jv��rOs�d��J�!�X]���h/5om���"Xj��Tr��:�8T�u9|!����O��HI��y�z× ?�<ƈA�J�&EMu#M���V0D�t3�XíM�m�ɀ�OTo��ix$w}������V���a~
O�R� ��<���[�g&��Д7k�
F��j7	JA�2r֞(��C׾���(��0�#�=m�:J�2�l�Ƭ���q��
N�
	�"{5����Ι�%��@�*�(c�}��3V�����S@��]Mr�1+n4T�8i�B}��b�g�9X�*�k�^ ���W��v�Aoe�@��-�I���K/��8R�f���#ܴ�*�Y�?�C����_%d��\u�d��Z�x�������?���Z��o�����N�����u��)�>�?��u��^�_��3��4��!·�i&O�SfA:`���9����GĨ*&ϊ���*Ux8~��?/�ȇ����($��&yi�a�����q�L$���^G"J���'�O�&��%Co}Hhsu:lC}�f��a��o����B�s�$��YU���C� 
�`�Ҧ��6����́cM�n�����.jhܝ`��3����o$�n8Z�X	LsT�A��~&�z(��PKvp�@�N�[�=�e�N-|<�����ѽ4z=�"f\�9(�[��R���9���c8�|�Z���\q�,Z�Y�̀��Ϊ��,���5�!�I<����Α�(�t�x�(��R���0�-����d9��0L�3�*���������z}֍����o�����o��Ca���� m��.��`���V�rj(Y��@��=a}��@�h�l(��Q���O;�kyE����;��v�5�D3�W��VZ&hf!fqȁ�������iC���~(i=�'�q��)t�
�5�WH��{n0^�p��[=;�� ��3�^,�9c�����^���������-n�'�k��10�l�$�1^��s 7q���;��AI���7H��K�Fo��V#��Z��u��GpDm�ddW��>;D7�]g]�D�r.˵L��� iMM��9�B¶doU#}�a��<��&���ƜXr>�_�3�!����9��.��� )��C�q<���@���	N�B·�<{��>�A4��Xhſs����W~ޒ`_�ƥ��j�Q�Qw{2 �;�P�W,��o:-�m)ڀ��*N�h�Q��O�\��dݾ������r퓛m�Ɗ�a�G�t��p\+'ò���R���\]���M�`�������H�S��	���C��/��"���I���5�hh��/�^��*ez���'!�a�=�;�_jx7(�T7 �4~
>`ܵg5�;�!y�;xK�����4c�2qq�yI����?�Y���B6ȩs������/��Y������Y�7C��f���v F7~�
���H_L�w�,Z�����̑oa6�ð������J��U��-�}W}��<%>s�����I|���k�.�{]�����J���$"�s�N�A6�\&{��&���SV���:��P�?*�ux^H2�}#1��s@�{�+���Ν�E6��J��@�l���ܶ*��XSp�����������9�t��7������SF�;�+�v�1|P{�8��$������t�|���~�ko�Yn�}�O)7���K�����+_D�ݮ7���0p�'l��5�2���0>���g1�z�#Y7"TKw�/��D^bg'W���F���������#�kx6�<&x^J2	�+��.��=�m�it���t��c�~	"ρ����\�P�ޣU���l��M�j�D\���Vm��\�G�ju��H7
�D�b i�VBL<4�i�b��S3*���X?7������������'9�p�`�hJ��}\w:����jN�x@��r�<�������y�̢C���A�G�A:@�\$>���=P����C*���.�X'��P��q��i�-��^���l�d -(YoN�sI�`П�Xj������棼-�ßW!j��+����e���*�-�lձ��W_7H݆~����H
V��|�7����*:�՞�`f-�,9(%ް���[) n�emjYq���y�v�%��/���/+Đ���Z�F;� �(���qk�3r�um+�3	���m!�-��B~/�[p�*Q"^!�����QT�}�Y�����Z��Q��c� =��	���%�����ż��Н�͚��Cd��K?,U�İa�t툛T���E��/���0
|�0M��������SD�~����s�4��0N3��662ƃT"�hDj�<��1��v]�`�>+��1����,�Wb�Ҝ��z���+z�8������K� �7�T!�$�bQ_�%i\=3��w^?)H��kIys�Y�V�\0�������mf�Xޟf��|=H���N
���_�h�Ȫ4����6'�Ւ�6�xw�W*�n((_���&,��<�
R�y�:��A'��ɴ�����    �L7�3�C���vL?
s��	ݐ{�R�k�1~��'�Z��`�},��i�R��������b����`�U�_����Mq(vli�Q���>�D�T��w~��N���(�W�<��������Y��(�a���X\��AF���8� ����Kv���~�m�	�0�]����t{h�'�V�pa�n��).���9� �C�Z�~�K`i�?�����<���;����N�Y��뽰!�W��.��.g�� ��w�X+Z�u۰� ���f|� �*~�#3���~��V]ˆWkT��T�K�?m��-�>x;��g(	o0��5NEǐ����k���IL�1*Q"��q���߸����3 �@Uz��)�*�I�K8�7�.�0g�W;���� ���K�gx�b8M���y�zg�6��{��{�P�9�7���<�a��qA�(5D�z��}���Ds��8��Z������7Au�y���ƺ�oC	��Cw��<��9j��`�=��SпA۱��F��جË�ȎeP��ߪZ3m������d����Z>C�9�g#bR��촖��u a�)��>�V��U(�R�,�2*"�C:��~!�E��ؘ$��K�P\J2��j�<�#�&�>��S��6�v�\���#�� �?�������m���( v�ū���F�^�WD����9��UZ�.�5J󋹆o�d����x6`Kd6�=q�^���u���"��J�<����>j}���ɿ-z��F޲?��.��K�Z.��d�2�]p��o}�@M�����Ɵ��_q��*��*��i<TK�xS��7�v������E͈��7ts�#|U�X����|*b��̢�z*�2�Y^v����,��E�T3��? �."���]+�Af��������0q�v�б��pMN�s����<5l0�V��>��[��{���>]x��J�Ӓ>��U�@���`)��M!�Z�;o�Y��k���1���^�b��hE�|a�{�D��4�_63��jX����A����ns�zI�"�3B��Z��5�n��ō�z�B�^^��nβ��G��1����++����C� s�*�9�N� ��2O������;��(��4�x�SP� �3�K-ķ��0���~�����q۟YIn�`����k(NV>��>�+fzx�	�3F���̡���li;����_���_��"�@6a�u3��?�A���~���-����T;�8x6F]*��=zV�����_��+v080)x��`���":+r����*�|�w��/(��Q�Y\�c��=����=R�9=�?���N1P��< ���pK��|O��M�/��Ԅ}K�K�>�3�O(pٸ�^�sc��>0�ƈ��a�_�V����e��L���(�
��g����*���������rY߳�Ǽ� }���v.�X'Z��k(�wV�d�4��x��e�������Yw�1�W�xsQd%�5ߣ�ܥ>vN���Ǹ֏��� �0?')�C�A��`I~����]�8_$���� ��C�b|�c�]$��E���L=�蛇VX^��'=��׫eD�&�xr̨8�;�o\�\�T��e<R7o�:̣��e-�h�폴�r��k�������=L���A8��X1��ͦcAO�QV?e٘��	��4i�n2 ��мb.K&��3��4>t{�{ן	0����[L��I��J�n3�h�	��s�y&H���U�N����]R��9��n���:��p��
��H����U)�aKg��.�p����}l�^�_q�a8W�v���S��E��)A���ꭊ�:bI�O!���w�%��ȿ	q���O�ե�� ��P����	bO( .�q�Ӑ0'�W,���6�����h�_ �.ñ�tn0��h8�/���J�I�k^���#��`
��Tm0����˂��� Ru�Th�kV���o�;+̰h�>v�\\q��������/�Tl2�_��:�b����6`>��k���:�\P`{�͕E���a�z-�G
��H�ti��f���ܗ�	<j��}(��N�c���w�rsՅ���}xg�������1��d�ʪ̘�Y"���8����'��Xץ�sއ�f�:��� (͏O�rE��K��T�(\;�>���t�����zpuD�����@�a\y%%�jXW�6q(�P6`��ȧ��`9����]+��q�.�ȇ����㟨�Q(�W�l�#���A/���["9�h�D֚��>�Ӵ�E��h�����؎x�f��*Ӆ�����g�� "%�pPE����w�طuc�4?��i�y��}z�U
TB٧Q���6M�e
�� c*��y�oq���9�l/�~4`(�SB7�Q���1�!��w���K+C��m�T;�f�M��=t��}�gn�`�u>W��I���Cܫ�H���`�2���|)�o�Q��O�٣@
s]�P�gr@��K��=��Y�{�6>%��w�mh��u��
N���e��"�O�@ի��ߊy���
ꜗ'�#eC�����9��ɍ����^<$.?L?�$x�_�b��d<��[�Y�4����_��	�'Y��L��=J8��¦�@�|�� C�5�;s�Ȍ\�x�3Wք=�+?��+�u`�y��rd9l�&��������s�;����w9�>
�,��U_�h�7/E�xh1ћ^��0�/Y؟�x�^BZ\oy�ŗ��,�F��	Y̎XV��lxF�/�{���j��\�����{o��Ib�8��!ԡ1A4�x܄	�a	(���/0Y1��\���ٗu�Zo���*M�,���_c����j  �, d)b/A�\m��.�E�����(���}��oYW�	�#�9G�"��﯋�j���h��gYc��`+�\*��]ʋ.��bD�}��K�ܸ�3L�Zpi�b�zA�6Uъ���Zd˥��$���rh�3j�=7cx�29 v�MfU|�I�#ް�*��I�`d�($�2�˒�-&�zLC�q�%�G�9]�=}���e2dExo��&�Z�00�i���<\��;;Q8Lg�fDU#���M�2����U�7�ޚ�Pq�-�h�CC&��� �ҏ1�� Nƅ�{;nx�Zנn)c_ȾZooU1����5�O�~'ڲ���-����`�(ƙņ:�J�q�,2X4�R����v�����[��{6���Q�N�A�?����pa(�wø�5`���@�%<��Ih<�mK������T��'�z���F���.����`����z�Q�I����')h�	��`���a��F �qzO؅��<�L$�o��ׇT3�(r	T�.V{ �t�#L���\�ϸ�P�C|��4�/����ߠZ]"�r��Ϝ���jj�����6���N�	�x�lC�]st�]T�eV��\��x��R|�r��զ���k�Y���C<�����������* �`�2#�Z�(Ҝ��\i��`�[.�d4d¨}����v	���lx#�B�!�/e
e��a%�I{�������z��[P�/f��̖[������2U� <��	���/�Y6gkQN��Z��A ��G����Br��}2q���ŵ 0�氎r�="�gF{�͡�6ɾ��ck���Wx��HC(��NgW�ď<Z���S�w��/3�ځ�Z����?��$H�`
�@�SZ��))T�th>m~l2a�p��>�O:iS�c�Y��A���+aR�l�q���� xŁ`�;ѧ�F�C��|Śn0�r�c<��|X/�W�Yh�d |�:ҩ1"��>!g'�"���-X��=�N�>*��!k�h2}�9����IlS� ������6̥0:�U=4������sE�KD����@���u^�Z��)ޟ�%�L1W-_C��`��ob�hY����~t[�{�A��L�'s��LՖ�����|��޾,7�^�}q�I,Ǐv��E����o /�<�Ɉw�vq�ҿ`���<r�8�4�\�jQ����:x�    q��ݿG-
����p
�%����) �� �KPi:{��cls�nc>7���urs�ϻU�� }������Š�Q+��"'�F��+�����'�p-X� �+����8�1�t����g-�U]���	��C����;۪:���W0x�u�$�c����x+�v�Uxj�"l�zE����d
K�=�9��~iQ���2��%���z3W=|[K�v`T5�b�.�v�J`�-��t�Y�303��\��N>��澰c�~t[�I��b�EQ+���k�Î�������懊�}t�O%&��pP_4Rr��4pb;�(��Pˍ���4��+aϐ=���;�ٺ�@#�ѣ�[���h'?�����a�~�E���(*��,��0<��/ͼO����6�>����W��������!���@�X��fQ�t-#|3V��PU߹�l�,�:[Wm�.o�<�l�~)�����.�CK>wow��#y�������Fp��-�v�lì��ċP>]�K�'�>�}�l"}��4��E�9d��r]��6��_7� �oc؂o�S���Wس�	���8��&s�a��K�F��{/���U���VY��_�W{Ҩ.��������Np)�c˰4����U��Y5I5���K��O%Ոc� ����b#�o���EU+�yT�8��&�s��_7X�&A/�m/`m�{'ó�"���ΚGk��{ O�4����"sj[�Y	����O��)���x{���5T�-��'�����zvN���y�M���6����\� m�^���I�Q\� �Y؀�Jwu&��&�`���Α��q�j1���� ��V8}� ��r2���`q�_ܮ�/(�ya���S��
1X�¨�q/jJ�9|��^���qt	��P=L�%9�̎&��=�v����!�"Ϗ�;ͯ���ϐ�O��dY�2��z���6�E����mkDhշo�y�_�������/��[��������DjV���bÝ6+��͑Cڃ�F����z���'� ��������J~!� q�٭F�)tŚ\M��/�r�B_�7�5����]��>M��{��~�V�9�9ԃ�a��h�i����]H��ֹL#퍋���~)�HD�|��xz��9���v�sB)ּ���U_bߌ��R�U+}��z���#�f�]�7y��д4d��ɯ�M;������sS�j��G���H����ť���F�?��x�-��^����x���|y�Zb��^�eAQ�ҙ�T������uz�-XF��̿�_�F�X]�\�y�M�,L���{��N,*4\�0��2t�����7e6�*��7v|�t�z�Σ�����{Ǥ�!(5�ę��7R���+u}~w�~Z�(UC�*Zk31ޟ��წ6�&�m��$�%Ӑ{��j����~Q��ܧ�'��Y��E�C$���h���G�VV��;����W����}�@�D���f�9)�9����P-�,���z�9��2C��\̠jiV=��,�އ1�h)݀#�WR\{o���Z���wMr�����i@���H�
+���.�4MT�C�kAb�)mr�[�� �/%�-_�H=�K
���,�#�����$c���������xl��E)]Ai&x_����KȂtWO^�^��G_ :���t|�?����ܮ����)r���=oۥ�m�;{[��F�Na���@�2ɝ��};.�ݟ��P"����@�MO��l���R�7��?�Ch�W��"���2[����	WP�+���%o�۰�_�H3��P��%�cxe�l�ty��W�d����M�
&�}q���Hw�{[�bN{��:b�s��({ʥdqXj��.�s4?QI�|
����]�[?~�h���?�3D��۱�v|�Z�K^�oԫ7�ya��,��yfb���FxF�{��j�!Y�D���� ~�X<�l�\���uߋ�c6���ú��J�_c�f�]�Q}Ձn�i�����D�{<;���L��R^�U���Ktk�R�m���5���7-�6D|���������A�|�.�E�1Ju�vm��mB����D�����uj:�"����G�y��ΪL�����#|�>оȴ�fC� ��H�۟�/U��-i'�5G>�xy�4�nkl�W�zg����s���;X����NOָ7��m�����S��n]��� �.�? �%ϱ�ऀq��M�p'[���{@C��ܐzD
^�v��DëB��UN)��R}��*���[y��`B�^�-�t��x?a4�nY�6H�֬�g�J��k���;��%��Y��{��B���K���bj�}��gK��̔�9���(�b�.V�Ih5f�k�N=�ԝ)��!�͆N��`_i+ќn+��a��x�"�R��.�Xg:�guC^��}���ٵ�b�q�No9E_LKJ���_yy�K���-C/������	�\�$r=��ɴ8|������ur�~��RI:��ZZ�=}+��G..p.�?�6>C��ʾ��*j��L���4�L�ku����e����H[i7�[tojF�G���l:��w.���Uź�Shױ���H�lZ�E�<Zu�X�MŞ���="@���FJ�Y�?�i��vx��;�����e~Z�}�%��PI����-��¾��	�~藩6���8��a�\�2?'��O��l�+���\ښ��ͷQwx(a�I��7 ��Z��V�Ս���F����#����´fZzA`>�{<z���Ց�Ȱ9���0-�I?�mjna�1���el�]���ƆI��Ak��A-!������Z4C4�6P��r�ֵ��a{*����
;[>^+�wm���f�����&��(g<U�K�.�P�g_}��f��^�蚒 ��b��3M��\3Z�*d.�q�k0��<�P~o��Rd�t|���0�m�� ��f�׶Z[������z�xp��T��%�7�x�U<�h����<G�8�uw���,�d��(ے$��cՙ��
̆��q&>�9�e��]i��x���j�/��;h���NF�J��l=��j��wKӤB��	�� 1�"���#���k���$m Q��i+������᭰�$W;t�q�s��������*������ؔ�S�����nJ�F���T�d*E2)�")�/J����/�݂��}����"~`��� �'.��o���L$,9�d���`ye�H�y��K��߲�A�m��T���=����U�ԅ#�r��y`����"�l-
1�>z���kz��3 umK��eVV��o6������#> ��t�v�[m-w�*����0���S�XvSײ]c�\�/_��90�A{]�vM�!>�j��KP��ה�%�q�T���]�7��8�=�HoB<�[�G+����$3����ӇP7zf�������Za�؀ .�}�CD;�����Qݙ�$tGzO���?��Uaʘp�嵉1
��hs���V�?_�66�{�1T����}MKd&VI�d`$�I��1�L��7"*&��nt�۰��d�/��ά����� :����ڒ�S���M܍�k��W�|E՞�� �<��-��E?c�LvGYݰҷ�C�A���6ȗK^�jg:��u ��[3+�4:�{|e"'�I$~��<�k��Խ2j��Z��>��|0���nT�b75����W�o����.�\G��2���p3���Շ�!4�y��&�!��r�75܅��H���Eӛ�xgE�!)������K�;B���tc/5�p��Gf4u[a
�q �ϝY֞Y�N��P�����%�>־��o�r.~��d�pFQ�U5�!���Q�I��?��]���}.����LԈ���MkW��+�}��bEV>����޺��=����P���ꬣ4��z�#��ז�����l�77��fFa�"y���t�e߁��S�؎�WZ$9A#%Z^Ȍ�E!��[���RUF��ߤ�    Z��Vϣ���ƪ4�W��ЍZwE��M�.v�(��!ly��y��N�o�աU��gI���{5yvW�&֨}�a����k6��#,׉0Mܯ	�[z���b]�Q+�E�P��$�9ĺ���W1đ|��{ 9���5�l!3u����x�)W�����y|��/�vQ	��(k1W�ED�[o�qv���dO+���{Y&�c�eFc(�ܣ�� :p5���/�F�}>�>y����{`�/tL���2_��E��֤�'U�^�0�ŋoo[�Z�+ො��dq�(���1=�i��k��a��`���W��[���1��v�����=���,CBCCݣ� w\�%z��VOY�B�V��^ð�Z61E���(�6�|!�$+�49n~�pN��:ED�sN������@��^!pQ��t��W<_�eK��{�a�.l���oA���v~~c�!�3�4P��{�1��G�?js5$�t]ʤdV��S8�,Ň�=�)���?<v���|���И�c�+���Y���z%�������O(��r:̓!��ɧ�Wg�y/�����jodx'�#��^�jTi;���SB���:���\ء�#�]��y�|�N�|��>AU�����vh���z�6E`�!����3	,�1vl�L]k팦�-DKW���˧��H;J�ggqou����q6m��F�O�^���eW�ȴ������K�5�����]�#�C}�)�1����}#A���i�5+s�K��o��M�-�������"-i_��} �z�PM��:�I�f�;Q�Ov�W�o�R��Ö��	^N-�w c ��g�F���Le���8�, �����%��1���@�_�Yx=�A��
�+괹nm�9m��k�c4�2�d�	����k0��9�,���@����~k[R�>�v��������H��FG,���K;�!���>���xX ��'6B������o7Ʃ�U5�go)���/5�� 0OBC:����vI4���WO��`���ob��!�D;�2z�,�m֮���`J�.���k���"�~��W�ޠ+7�| Wu%Z��W�?s� �Rj�>�?�W��9p�[�^ڜv�7�̡�hE�]�ba�Hku����D�9��Ŗn����O��|3+U>V�i��|�͠�-�C���H,Ʊ���qox��3�#���������=�q��;W.Qc�2l��@%�ٖ�5Z�2Q:����,��/LB�k��S��b�Y�2���:��G��|��$e�\Ј�Tqo?g6�`�����*�r ��lf�ۑ��Zm��5n�)_O�G�Z����jä ��V��)`��/cӷB�13��fQ�[c��&-��!8����*�-dq�w0x8�F	.d�����ؖ]��"�C�C�Y& ����Z�=���`��Cp�m -��?���� ʆdn{�,Ό��Wţ���9�f�b?`�����Kȑ��i�4.�S	nK@�\ م�z�WN��m|�������V�3Y��q�������ԙ>���s\���8�F��j,p���#��o?��!�3�.N����GFn�*��6h�
�i�C�F ��ͷ�3&��N��ZE�㑷�],�ˏm��J�q��1��o�t3�w9V���y����Im�����Ʉ
��b��o�F'ް$6���Dd�O�Ǎ���dW��藇2�y[>������R�N�芲�3l���Φ��W�lJ��;d���p�M���v����Ū�.a�_�gI#�+�D��=�(a�S���e���������"4 &�v	[?��_p�߳�fY򆦭�!��c>/3�(�~V��;���o��*�ծ��$���
D�oM~�u�Z�r9}J�goq�Vx�+ݘ�E"BfqܣN�F���;.ֿ2�Q|ȶC�d5��[�����)�ę?X��.q����Q�FZqwJ�vė?']�,�{��~uG]�'���˜#Q4�& �+c�'U�25�@d;��������5՞���.:�5����z-�q�
�.J5�A�G?����u*�#�-�����)S|��)E�<"���4%i�⥌�OÐ��,�O��Eܵ���0�!��L���%H� �j�܏�s!\ERӐ4K��ޙ=x���|�Û$���و4�x�?�)D�[87�����6�l5
nת��Vm�E��|�m3fM �Z�_)�������V)����Z��P��0zz�QS�Ǜ����	P��|��H�_P(�>*A��'�(��H���ҭ5}�Y�5+'K;a^��/*nv�����rj\���f�td�|���S���a���!Z+�ۅ�_�8���[�&��_5�7�Rh�{�׫vڂ��A�����"�<�޶FK��R1�C���p�N��i=j����Ҳ����� CV"��4[�_�h�uR�~ ����7�+/���^s����L�#m�#�:��[ǂWNN���=��Rjo�[ˆ�.@_�vn�L��Խ�Zi.�P��iyͳ��旦_�蕤SZc�Ɂ�~=�Z*{��Lz��� �h��|ß�0�h��o2����\�4�4�ryS��%�r�о	��wė�qc����=Z��u�BLo�2�&+2��9��ǚ�p>Ly1��%� �9�|��P?�UƵ#��7u���҉��M����9\�e1�{�ɴ؁:���]���B''��C8X�q��-��nX��Bi���M��f�J�<�Tr��S�N�V��2�n<񳒑�z�輣{{KY��+�?W�E�v�r���<5)��ͫ�dcm6��3;��{�=bC�i�q�?���h t�[����~Ca�M{�����ƅ��֕[, ��[�@]W�hT�K�]���>{�nW���$F��ۺy��ޏ������GZP�-ڞ�"��I|�N�4���x����c'.�y�%�k1�����P�
2��H~��yn��*�^Қ��j��A�fR2�O�C|W�d��O$1��.O~�M��$ ����*8�|T戮�Zu:����?7?�lx���p����_�y~PsP8Űv��:����'�f�H�'�#���8P�A�j�Z�-tl������ϩh/�D2D��Y\;;��dn�5��c}������zL����0aPE��+f���J�9�J裿`u�3��~�'/`�i�|��_�v�$&�þ�V�-��f.�d\��J�n�	�|������2~�D�s�ځ�d:���'E�W�iG4��~����3���T��r�����p�ĤX�̬-u�ߣWf��+�g���a�*s���}=�V�<�&�_��r�����#@�觨� ���D���1�H�1_�JoHB�(ؿfy(D�U��M����Ǐ~î��c9ؾ��Z�\XI���Y�ja��2��ط�c����,F��)H�5�?ۼ��.ڥj}YӰ�	�HU���GZ�I��VM�����l��[5�&��}�[�*��j'�h��j$�T�� ���+�`��٬�q�ZG/v���t ��e?ߙ�]�N7R���N̵v�+DS���u���~5��)��Oa�wt��q�P�w?�7���lE���S��R�ء�`�2��-wi����Y����mH�z^��Gp�]eIJ� �f���t�9�}�ߟX>K8�M9��jVg!g�Y|o>�v*��ʃ7D;�[8EҨ�l��ӟ
aI�
�ۿ��g\Z3G,o��`��Y�u ��>�Ud�~M�~���F������L�e�!�.�J<�/���P[��%�e(1jХ]'�[�Z�1"G!i`Gg�q����QB��29(��ېs�컏���ڶH`Z�P����n�")��u����*J�&�5�K���`n����l4as�!k�j��S7E��ތ�1��g�h�k]�Y���i�'Np�7�͘Y�ƭ�)�}:�־�S�C��:$��ݣ�i��N��IÅn'�9k�l@2/&⏠����gX����xƤԫ�v��e��#g%�XMvD5�-���<�b՗4�Ȃ�5��&m����6���i��2M�    �JȮ�����PʄN�Ū��YrO�J_�C8��:��*��}x��=`�
�l�;!5x�f��+�\H���01���:��([�X��\�}����$���1-�g�df�Ҕ�:��K��H��^�i���s�W��8V��{�]�G��5V��p\y�*2Se�r�\���>�z_����,��#� ?�����<�^���)�b�yҶP��S�d;u���v�����DӁ��A��.C/�������c���7���������󧈴�#�ϗ�7!}���(�W�墹^CH8�/�=Z��	}�K	����m`y�a�t���76���|R�?�#ׄ��e�wUF&�u��$�b���}ؖ(�-.�t0���[��X�BT������VM�;�0�Lu�s_���H�p�6];2o�cs�mO��y�������\ƒ_��O��t��C�6�'�g� �󾀞<\ΰ�{�&3G���Ai�?V�v?�~pzT��0(��G^���Q
F���>�@K{���z���<Y��c�ĝ3͝ 1�*,�%�B�fc�%.��m��YvB=�H5^���!���1?W�Yf�z�&�c�lt��`S��W�Y}�_e#��lJ���n�+?LT����n;�&�K�6|�3�P ��A~w*���gE�.㒵h�lH���#=i}�G�b⁧�ls�yÆċ�3hN��ӯ`�I͂ )b�n/AZ`��đW���!h$��K�~��Y�iB' �u��p�?��O�׼�'׫~c�I��񓅟��Zx�d|e�=9 �"�RjQ�
^���� �0�!��.��$�����+%��C&e����ܺ$amP~���	Lq��rW#o���̣fB�>}�����YGq,=E��]}�uD <�MRlZ�$/�&�ԅ��"���Tr�/��A�G��Pu�^��mσ0�^-��{�;�2�����(��h�ΰ�S;*�k��:�R+)Y���(k���
���;��^+�2{F����SW����B�G���#t���E/�,�5����B�;,�
���Qv&�����]E���b�Ϛ�L�|��U��Q�qr��F��>����'x+|�l�#_��k�m4J�̰��"=E� ���̏�N�=TQn����5,l�ǥ�W�ᝧ1��}�������*���:��l��/
�t!nt9����Ї+ɾ/2>��oְ������d���+<=��ऒ�/��sB�kJt#�ַD�A��uk �W�D�k�O��I5����S��=M�>�����!{t��O���b�>��R�o|�a�6���ʯ�>�,7��\sd�L&�rP�r\��"F�%�L5<MT>7��sF6x��#	@}�s�YP�b�Dm��Z�0gh��"��Ƚ=�*����g"��R��6��rO�O�M�h�o��Q�^-x�E��!��ﭴ�I�Ts+�R-�%��vV��y�N��@c�������H}QG���+��_B��R��=�y'K�A���C��q���9ǳtwh�9"f�k�2z	�v������n�w�*�>U���� ^b��qɕV��ǄZokz(����@��H��ě�r�$h�5?i�V��s���ʵQ��y�5n���;=س��9�JL�FLy7E_�Ajn��s�����O*����*��_�ĳ�X�I���ԽFݱ\��a�ux-[
I�M�������T^��*�w$|PR�[�钗��l?�lAl%
`~U�i�D���س��T�$�=����^YI��I�]�=h��S���{�UW�嬙�g�e/�����������tl7T`�ꛦٮ�(}ݕL�䟞�u�%(�TH3�_x;��D.AC��y�Xh�������\'�}�D<&:[ϯ|U�83��v
�����#��B�~������O��ɧ��R�r�ImC� Y���GUDڇ���!l"��<�	}�R�YҩZ�H�0e�oM������ �����´D3;���ԸA�]�(�.j�Y�8�y�I�T��=OƟ�*�uX�M��C�0x8/����U}�]��y��k~˹|�}/�^N~cv�}�<uW$�L!���8]���]{Z`u�T����6� ���o�8�.�� ��*3ډ�����lT*�*���v�_G�)�q\�����q�}��X2"�,�Ѿ:�'�laN1�B�}�/!U�0��Qk�WJZ<#^g=V��()ۨշ�9�r�\z̷0<�pG�M��.����]�"V����BF�<ʆ�̃�6	�{�:���P�kᭂ$�V�"G���K'#���*|�Xf�>@Zi?`� $��6 �fp�Kg�. �z� (��#OsP-r�9|�����h5n��v��'l��)gq�ϖ�2�v<� �V79=L_��/יɵ����_hS� �����f���_�(�q�u߸������@S�hoo���K}<��I)�NcL��6�&�����a{�x/r�'���D�v\yT"��ifkj�Ã�YE�D�eR��:��[�D�Q��.��H�d��-�ڸ���fy�h"�qT���	-v��]�x����:|7V`���7G�d#�v]����L�@��ap�65�[e�JH��GY�y��&$ O���}�l�}��Ivik)_��1��.�e�>�������K3	�c�>N%�_�"��,c��G�{Og���=*Kk��[�nf*r R��W9O˄����(I8��v�1����)G3��I�$�g�p�*��ַl�w��~�N
��寓�<|m��v�϶Rn�(j��h���9�����m��B�Š>KYР�P���%������)���8�"qH�7��GkF��/N.:�R�k�О%^�M�2DW�y���"NcF3�7cy�R���W���T����+?��&�}��ُ�F^ fY�r��3�J-�สf�(�Kd-е�5���s�g�h/;G
q�����m�R� 
o�5�S绯_Р5^�#_q�x�b;`��[&����2H�9jG�>${ƅ�I¨��$=PM^�t�
���o�N�_�c�Vܼߙ�uiH'���+3�~�����I��Q���o{�x�B��:������a���hqN��Nv����q�^^�o]��b4��r12�5���`��ǡ�6u��h:.q����E�͘�t�~��!�Q��>+�CBً%��ҙrj!�����`q�ۚ/��+���;Z�\�҈�=Yk=T�(ُ�5D�4PO�=�by���0۽�j��#3G�����Y5��K��P�_���w\
T����R�lg�rv��q�9���_����Y�%3q�;/iD뇳��/� x�%_�c�H_��?s�C��]��Dv�5�N~� ����a�X�G�/(|�3t4X>�bH'QQfCZ�rx��I����v�����7=�6�֍��
�ԝ��TV��u3H�G7x"*)X�2���5qX���H�$�Rq������ɒ�����鍌�ʧ<SF7�f\vr��N�i��
�2���r��R"�y�u�m2�W?�~ct��j>�$�5�v��)̸�q�9�c�{!�"]�#��0�QV�V��5����ERr���$��qE%h&��y�~��i.O�OɏL1��GZ��\CAQH��;V�b1*�nd!!@��Z��<So��0��V!8݀�����BiW?.��d{3��^���o;ۈƎ9]��)�wR!nؙP��1����G�W��ݿ�o�UY�{�D����u���_�*j�m$�|,*�?�<KG�>ϸ���-*���L�`y���5�Ι�%� ��MLZɜ^�r�x/K���� #�>��1?�$�׶�s��Q�Y	%S�C���X�a�A�K��)�,�2*��$�'R'wV�t̺���z@>���9��\�x��������m�PP�6����@:x�w�mp XXg�L)��*�<6sB!�6��,EV0����:�<-��x=���̚���j��dx�0ka$̯��~ɮ��t6��H�r�Ⳅgb���]�es�]�� �?��~	���tDg�mR����8�6©    2��v1>#f���,�� s�'�̀ٴaKE����^�!��!m^?b�=V(�A�[C7]z�5��JF0�[��/�j7�n����}2	*�a�'`Rֳ�D����F�+�2{�t�!h����^�r�%����K ��Կ�{~M ���V@�+xƃp���w��@#�i�0maZcf u*q-�4Z�snq(��05�H��&lt]���
J/�)tO�}[��r�9�pڎ��{�AQŬRnz�����$\3����T��b1�e�1�ChrǨ��i�P�x�rH˾������qڭc.T﫜%6�f
�ͻ2D��*��ߏ��f}��e�Fvj�d��E��m�h�}�7��/L���ARod4*={C�[<z�D��b���s^<��r�5t�����\<���9�x'�!u�FՆF'Ɂ�doT)�K������ry�sJ�~|�����=<-��@˒�����E��:�Pb��)����i�����fb3�����#�3����h��w�]'Y^����xctxM�D7�!�z|1�a#�G90=�ϖ;��r@�K{
�6��bØ�d�fo7+���_L��.}��l��Րl�-�����S���x��u}�?uK�,��u���<��u�>Lvf���:jA���hu���4����f��B68w8"�Q�BN>�ܻ?�;���ł.������̑<���B_'�CvO�����c��o�(ipw�����-m��I��3o� K`��a�Q�|�H&�1~	_���6�O�ʸJQ��i��%ۅ6/��Y�R���F���\C��c��0���T)�}s*ִ��N�Ysig��q�2���-�]!	Y��T��)��b�� �=�7tN� ���ظ������L�D���[�=p��<���M�0���r�?�<P�����T?Oo��ZGy��{J�|m\i�;��
�����v�e�+3p�c����ԡ����G&'��ه-J�x������cˣ�^�0XT;SD�A�6�6�Y9Z���8uߋ�
$��t9R<t��4��s�ܺ�ZV��b��uI��z�[r�%=��dbhh�نt9Z9=x�`��1�p�_q�á�y�L��#c�i_�l{�W�ʞ��q���T����/?�z��'$�O/����Bm�$�AJ���6S��I�~��=S'l�7q?�V��Q�elO�~R����t�W��CĠ{�ə2[iD�b~o��f�x����U</��$�Y��gu��p���~���b4��Ov�C�@e�7s�G�;��LE�2C���O)�x���`�<��K8{��$���:囱iY�-���[v�'%K5���M�����k�6�6����q�T�~�*_����b�E;��jf�$M����#/�NR0���o� e=�OZ�x�"?NGur�*}�6a��.��֪�ɯLt��i��4��;��I���~ȇ�����A�>�N�8�mWX�� @��)�{8L*'̡��\�'ގ�չ����U+������ۃ�m��|�)��}��kg�>���2�3D�����Þ��Z=�cug�|���W�p��:������JVc�c&J�w�}�R_O������(����ŕF�i<{��:D�Z�|�������\J3j`���"�/1�&[�
*�qtknA~ "�#9���F"gxz��͟�^�tW�%�,���ʵ����Rp�J4��*�YqC��|�v�o���)U�p]���`]*�����?�P�t�M���vBymN��Wt�j��2�U��y�*ʭ})⠄\��'�\�1���#*ҋcV�V!̒g���� �	�E��s��gA��m% �T)�}�~�E�<��J�<:�1��r6�މi]$�j��o��R��Y&�Do��Qj��վ��E��ݙ�����ٳ��G�>nWńM�)O���P#��k�W�&�~b���^�z{�ǽ'�^�2���s���s�>Y]����/-�*�'3U�B�X�i�d[���2c(�v󆻴CD�D�-{UI������_h;�0"�V��s��h�4CBތg>?��9�K �p(V׈Q�Y����Ң�e�!�}П���ZA��?O�5)��5�/�Q��Î�Ť�£%�M7��+0�I;+��6Q�{ѭ��?v�ʛ��˛��Mr� �.�=�©��>뜗0�#�rK�J��-�-ӻ�kN��TAW:V�wُ[�o�+���4����ׂ9�Ц�\�*21�_i�B�Wƻ�v��3k�/�Wq�:�������Ût�+Z(�KYO���įV�Ӣc�a[ꢨ�����!����+�Q�fÉ��H����h�\\i���4�h
y{���k��7D�J�v:S��9�^���z�O�d�E4��i�*)��%g�g��iB*�-�1Ar3��;�;��ow/chg�.�}�x���C��JM��V�ءc^�0s���W�}Z>6yZ����I���	%�$b��[@=�uc��v�Ļ���'�k��w̝IA]����]ջ���n��T;�/�f]::`w�xg�}�����O�9�� �}�����vS��c���_�2�����)|�~����I;Q��T^ا.:��:-~��u�>��^J��郟����D2CkX��̒����.�hU�S�=֗����°}� �0i�͘���/��dy�ޅ�}�.P��&7���n����T\[}H���.�=��T�>�1�*s�v�#B,{ۈ���l�A2ܝ3�x���QO!G=*G���@�!^s���/�ƵNƎe�J���ΌQf�L'��J�{�-�&�
�p��a�r�t2e�Q~����,�� �b��l��0��N_%w�yutFiC4n৺�İt%��}8��[��3����\;�vo�X�"�A3c+{�4�~DĮ�fV܇^�_Qmu�͉x�v��7�$jᵼA���>�R���	}�"	3���؆5��TȕũYҖ����գ�s)������O�"B_%��7��]�n�����0

�c8=�w�MD�ެ�h:�4�z�mo�L�]l���cA��~S�T�D�?^�1#O������CM*2��~�^�A��b��'�s�w��W�,*8O>�B�Ʋ��Y�ٹO�"b|Fڞ�̥FUD{/�3ANgV�z
�Al�]6;�.�!ը��W���V5A�7BM���@[aFyʻ5���JJD����{96�R��V�~������+^��qOclbъI��*$��x��?�����]��앺�uo�bV���u���֞nk�@�d���-�2f��3C�_����׿N2�r�3<��&��J���� �D^���$ɼ~���Dr�z�*^��D�I�&���AWw���[�����(�|\R0˳~�%<�4^����;��*�\,C��b}�fm�OE��0]Q��2:�������*k�;�P�cs�H5��7�������,Cx�	:�����!U��w��ox��]~O^P2ْ&;�+Y�b�= 2�5'bV`*��+*3�7���f�wV���e�'6�Zf57A�3$��h�p+PYG�ΣD�0�ѽ!����e-+u=�,�do�H A�{�nhR5�\'gV�k/�#����'�	�^�̭�qe��".�#���C\�-��Z�<-�v�ߡ�{��e���e_j�S!�{M�Ly�4Υ݊����%�@�+t��Cl�!�*��Bݠ���[�+"X��H�|�P�d_�>�9������!�S=s��'���`R+�S�%�����|Y���L�.n��v��r�NT-�l�Q�	-��	{�-!�ܮ^������Ѹ�{�����u���⋎ϩ�������W#�[)m��#�W>z�έ�E���J��	���?_a����7)g�q�V�֢
+���kG����y��65���_~�uUa�>(��&j���gոZ JV����;��V�5��2A����z�x!W忁|�N%D�m�v���� �}-7�����N��x����~i^!n�lL��|�W�=�;j-��}V�]z�|��y����̮t�ax�c���nȈ�Y����    z��>���K0�^6%&1Ӝ��������U��LZ����P��&M$��ZW�H�Z�-�3��/Xw�#�r!�LUes�o�.��*���∖��z�g��C�W�䑏�;ɥ_���ˏ)�Տʬ S�W)��Y�RW©�"k��{'�;��6��Y&OX�7���$L�5#W=�J��n$�JT��pP��{Ӭ��hA���8]�߾�]������o��L�ʩM� ��w�N�/OJȶ@) 妙������a��>� ��P�Q���M�R_�0�x+F�T�����[���s7��eB��El�n겎@�4Y0/q'��[߹!��u�d,��/��N�76���迭�E�m���Ф��˃�g�������J�XĞ`V�p�~�r�%�_${F�{�������4W+�VP�Ɵ�q�ǰ*3�E�����}�3GS�u	�zJ��&6 c��ܜj��kP3�4_�l�7z��9�X��ؼ���7U�wB���9>�8˥�)�hwL('QI�΋B�&ަ�]�������c�tu�3���"e�\�͆bװ�Z������K���<~t~��A��u�e�4^q e�z�D�؁���=�q����~s��W�Hi�S�ձ�w��<���0��0s����z\&��1�/!U+�FE�F; ����rb՝2���/}*�jar�K��/�F,�h�Gw�\^*�׺"L���]�h���Y����"�˳�0w�O�>������j�ˡ��{&;�H��
���m�85��Ș`D��7za^��$�#�ikǌ����yH���T(�Q�gzs7����*aS�y�0������ ��O�Kk��M� t5�}���k�Z)K��5ʍҳ6F�5�L�Ϝ���O,�?ʙ~-,���L�#��b^|gC\��dM]�� �c�1�������ysY[�N�r�X��FZ�^���~;Uf�RNCסr�F&5�8gg���Q^ݛAj3E�D\��f�)r ��h(�0쐰�ɚo(g/T�o�g���)��� �/~H^�M���M�ŧ`8U̧:��6~�?��9o4=��>(�֓�������,����.��:w�oI���7ڂ��z��>]G�]u��=�qwkf���E��8>��:e�}LD!�e�W��,m��W<vx��=4�9�#$v����oQ��0�Vn���NI��j}�݅�}; �~�v-Mˠ&�L��K�ú'm&Βc{|�Ѵ	���-�#��`s<+���NR��(~w����0������ߖ��@��2�@���o����U �=~\f+�0�A-�?�q���Z-yts�.vx�@���>U/���s�>fܮ����+0�|�ՙ���8�����]��-n^Q��Ou)��OVNl�HC�a+x�:�1��#-	_��7�Xj��i�¶�]�{��O�\�BR�ڱ�t5#<�5j���&�%�3~�[�}��#��_[����)����#k�O�����u�"[vi���c�3�?��o�Y���[�3�K_����Ec���(�.y�vwد��H�]a�80��D�'dsP����p�eZP�AܷD�K�Z=�ȳ���&��6����x(7��o_豈��ղ pyB�0��[�k���U�%�]��,�&&�9Ji�@kB�57�1|
��#�W��1sK�h������qH�Ҡ��-��4=�8����J=�� 5��f��XWB}χ���a����\߯"�sK�b|o�T�Zѻ�+�J��D��� G���JZВ�o�b¢0��q�6���Gd��:g"��wqvʹ�}�� ��hl��}?2�ɀQ{s��(K��2e�n�x�Qs��	-�������8|~〘d��&"��X�C�%x���&zy��l���N�!�b�;6�5ۓg_�]&��ʾ7K_ϊ#ٞ}xKV?������:�����ia�J1���LL��%�ʪ6ޯ��MU�~DW�����`��H���9��E�k*i6�
`C^
`W�Df�j}e��o��x��~�*`�EO�f-A_/T"Ec�We�m�oFz�0>����of�O�s�ч{3 �{��)˹�ϣ����~ۺ��,��G����Q�3�?o%B�~�/����7�_��x�iC(� ���966Xe��_���C�껵��b��{���k���:���XB0r���d���
�P���
��v�t��q���\uƯ�u�f�Ӫ�|�0�"zx��lj+}��RC[��4]���}?4�^�2���s�
���tb�����qny��i�jO?��������\G�V��@?���~���!����R�n����E37�XH��ܯ�^���O���rC���T�sV}�AQu���r
��H���l+:a�-���D˵���EèvY�e���w��WP^޷.�~Mփ�����I��;��`d����1lFJ�r��@�HS�1;b?����߶�-�g�g��.��蜣o�Y��범(�|Z��i��a����NL�`�F;ŉz�y���p����t�}#�=�#՘Q����^����l�����7F�"�#j����f!���u��g��x'�0x�S�}�W%�.~ب���y�)�����EV��cx}g��}Wks�b�`w�BBl���,��R*��(D��ț��S:ͮ��n��X{ИV�m�o���c@3fN1���d(/d~���n�E]�^���?} H������X쬲��/i@���p�� ���#=%�܁a�1�u2�s�꫗��2���ɗ���d8d##^�d�)kv�Ԕ�����^���雍�
f����G�-�����ـV��Go@$_���]�NH|h9��Z��>�]1�&zD�k��ލ�0߸?�]Ȑ�ny�ה}xU@#n�\_��=n���!���������`ٞˢu���p�B���K�Ү�����-�I�ˤ���e�٘.���x=�ef��]�p���CP��ϟ2#�d�M_CZ�9_�ך�+���mj�8h�eYp�5V�N���Z��)k��*�N��n/*�Y+Z�i6D�/%~��B����a�v�GD*�u����pݴxGi��͸nE�_�@�\���m�i}hz��~e��a�������VS��=+b8BI�mhr�������������~��.[�<u3/�M\=Η� +�<K\ĠP��L= n	��'�ś�{&�^��|j6��x->'�,�mSN?�"�L�mM
��ʚia��E�VÝ	��p���Sƛȱh�3y�8	���E����Ui=�Ie�]�b}4+q�G��	QQ|�`�Y(�29�Ce��B�,�u�^E9(gs�s��-��h �s��9e_V��S���	� ���w��@���vo�/FH��f�Z� �c��o���V��|�x�yc�^'&�:�vD�h��z/���o���vz��ُ�ƺ������g6��Tv�l���#_3�Y��Cc�.lRl��V7O��`�V���ÛU��jZ��#u:��Be�棫��>4�g�В����v�.Ѩux�bGY4�FP������/�2q饻E�R�'����h�_�)�'�����{�!�A��>5�kY��i_�z�/u�[��N���0�$v^�ۥ��o]5�e�����_��B�¾h�E�E��Au�I�7Z��T��dW���0Z^&h�s��q���Xu}�B���y�|ԫ)0�Ak�x1!E��?Z�Z�PҗQ�:m��ck����6Z7^Q�@"�*�S)���\U-����Zo44b�Uµ�5�Z��l/�UsY)�x�>��aY��8�����z���������5s�;T�Ԃ�=�H�WM⽎������B�<��U`X��aJ�lռJ���Ւ<�q�WN����[�O������ �Ԃ#���Ӯ���7���<��Η�\�aƩ��և�cӔm�\ϴh�z��0��QƜg5*y����5���>�׌#`B��3��l �R-V%5W���#��㼋-�LKb~	�E36���d�d�i#�-�LϸG�󙽹*+�ݛ    ~W_�tQaW���7�����͑���MVk�·9<a���_Τ�4����
(���V�ֵ�0��\ņ>��B1����:ED�9 �-D4:�yXP�_Z����H�"ޅ�<��C�G/S�Y8�p��v������iU &jc��]��n�ύ�Y 7�/�z+7|�
�&o�P����%u*1t�+?s���?�H�d�7������x��(�׭��I��!v� Hg�>�:�����飋�"Xg�0�O^��1��0R��!�o���9�+���������}�2����/�͆�biUTrl�� y��j�i��	A���Q6��J�ɿ9��	p�V}�������4��r�Ҋ�GW��U���n� ����ό7�}:�a3�YK�t�g��dyӚ�θ"�����S3�Z�%QF6 �G���z/����_-~�gt�������\��X�R��|A�� Ĕ�e������F��hP-I���Q��\ztT=�b$��!��Ȳ�c2>�JS3.��Zt���x��Q��8h�E5#�_����3�G���5�#n�he�?';�bD%7���D4�s������b�z��G%<���k��%�+���ʡ�)��Ӿ%6���t�`��{gUڜ����
�)�����9� ��y�1�oG�ୡ̓I���#��{4_؞�m�0���^��Ъ�F���U{���xU٭�����T0�ռC�B����[,�F�A��S7���'7^���p�5���p��� �dV��^�ƫ���\V'.�|�7�J�,�����n�� �n�m%���8�v��8�n��Jƺ2M�=C�e����<i���ۙ�#��x�B~�6�!��X��n�N]^��|�nݹ�y$�$bV��9��L��Jv~�Y�ѐ�_�kd�ww��0�&!;H�`i6^��<��\���T�����M��O?OJ��C6����w�#�;�-��|�8�C9t�pC�+�L�@���R��^s����^Қ���Z������;"�o&�(�'��h�7�u%�����C���>�W��q��	���*��1�&��q~,�>��3�N����Fg���`=Ă�����oL���ؽ�2���W�5n�rMC��뚳�X�Ψɲ{ƍ�,�UGBm��yڤLvHP�]���^��U.��
�H}�k�^�*�}�!���O�N�=�7]d��������4�H�N}obK�a�3C����d~���c���
����4>��w<�4��|)}-s�<v��b6��4>j3i_/�Q�'�bu1
��zr���Brt�pt�f�߳��v	�x�9�k���ާ���1Z5�t�CB���	���r���b�{�F��O�hg�M0Y  6u/������nV�k��e��I2��W��Ŀ'�`���E�Y4ޙ���]mR� �~hQ�L�h@��������#�~�n~��?���u����iD� ���郶�t��1�����X��ע���b3�o�#�Tö8Cx/0��$�N�BH�(�����&dy9���af~���7��$�!D�Af���E ]��<a1O�G��Dq5dzߪ��g0ELK�Z�6���'�4�xK��jD����9}�U�ql�i�$,�U�eX� �H�Иؑ�.�n��I�jOAV�zt���87���Uf����j&�wyŎZ�E�]��t��oδ��L�Dap=^x��4�z_ص�\�I_���ծ�p��-�M�ڣ�3Y���u!0|�>^4����Pz���x��Ӳ��RG�� 9׹-|�)��'��~�'<l�L�O�b���w,�-�����<��q
�³F�o� u0\3��֗��1#\��/�U�"�-�Z�	{Cf�\o�R @���=5�幰�)�3Ї����X�Ҕ�]����R����_1ܫ����Y�*�w�RLiU�Pl`�t��k�_���4�?�4�����M�>� 4
q�]U�Q��
�U�i=T�C���7R�b�' [�o���2Z��qQ����k6װ|��j��Ύy;.�5}�����0B��[��bx�g�2�v���6��b;�6c��	m�pm���T�[<�i�Q�%�;c��:3]ȵr����_����=}�6�0l�h�����G��p���	3՘x�+n��[�F�@$O(�O#"�g�k/�r]=*x>������u��3G8԰J'�:�Y�EHڢޞ�,�>� J���Q��]\���f�τm�%"�z�l�
V93ڜ�_:���pŏ�Gls#�&gf�c$�1t��Z�$�\4Y��Y�J������	.��؊o6O9G�E�	� /(��:�f���_�X�.CHl*�:Q��^��Z��qw3�V�>��l�*���g�Ue���������D��@��o:�?���^�lxA3R�|5�X͍<�nū;|�aP���o�=�N��2���9���FX���__����Xݾb���ե��=�Zފ��πL�o����"]����tMY3́	��%���Ecr�3�����f%\�ۡ�!/�~�ٌ\��p��nݙ�.�E0�i!@��+c�f�3ˤ�Pf�������4������<3G}��m�z�H7���xCR��h�2[6m8�Vi!YnU�PpgaV�$�/�#нD�= tr�O�D;�8��|/x�ӠA<���v�"+�'��*���nnՇ�W��X�f���a�4Mnj�*$��Yb��>Q]��}�����r�6[?���h�'�ڌ�{�l�#�8�:�sD*Vv�р���I�w.0�}{�D�d������e�3�cR�^I1��p��9�Z�QP�w��=w�I��$1�6���]�2�/�#�𧏃����N*y0�)Qܔ����fU���yR��.�����d���3�z�)]3�̉��S�3��f�v����c�^C2m\T^_*���㟟����纆3�q�+��&x^�'~5�:��׵�ԃ1�Б8�Q��6�C�^`.n���
E��v�
i�<UVn�o&���(r�1I�#��2�Y$RN�ҭ��2}h���{�ze�7��p*�N�k��AiZ���
S!o���p_^��j��w#�鲄V$�O6�	��98�c���uX�8���֫;�C ���;�Q!�cL,58�d�ߞ��d1�i�����{���h�e�ڼ�O���y��;�	i���j����^��nb>�;�O��`�Y�>��}N�G�;׃�
�<�w���e����:��I#��ad]E�s7�L�.�t��tJ��h�
+� �����-3Ѥ���?��ŬPSo6Z}�}ț~p�\��6ֹu0"t,��I�o�j%j
��K!���mMK���	z»�_�o�݋<�@�I�:����M?�0�i��@����'`��06T���5^��Cq偼i�� �y=��w�����Z��z���2�"M��\��8Ò�k�=�{S}�{q�*�b�6�Q���Lr"Њ|f{�^��a|��Y&��r�}>����x�qo�Ȓe9.~ԇl�֚i^��F�4ޔ�5�.6)�ZZU����	y��@n�Sߋw��A8-s�kQ���O�_�����*�%9mP�&��P'����˅�\����q鯉�޵s�>�dX�
�v�N�$��F�siYV���L���;��}.!�vG��j����X�"�|hI��v&9���1�f'�sN%��|����x���!F���?F���rRV�����:1���c$��Q�S��G]�k�{>S�;�;��Y��0�+�}]��Z��k�r"�aJ��F��pټ梦�?��w�L�Ċh��cQsף6�0��o_��0G��蛿�U�Y"�g�޸K�]�:��f=(¦(%uř�V�Gӂ����j��uG4B>lF=K�G�sh^���o�/�V���i�*�~{4g�%�[�!�c�ⲻN9<z������7|y�:$��ig����>�<���tT�3������ �h0A��v�8�<�Nԥ͓:E0\0%�X�L���h�+I����e �,O�Y�?�	qܳ����Ʉ���af�3u+:�����k�    D���XrG��W�ҠdW'ꬳ���f���ǁT�m��K}��a�aM]i��=m/��nX6e��������[�9:���R���R���cz�e*C��vSf@�s��M�ᗏ�m45�j��EZ%��&��4ݳ�e��o��~�#~��
g�c�^T�R�?�ۧ=��b��p�6���N�-���ٵ�&���ėL>�}���� 4uJ�ȏ?�x���Ô%�7�����)�6�J�z�np�~�Q����U�,�������j3���j��L )G^Ѿ�Mо�4=K�I��,n|�/ʾ�����+�P��xU����'�)9�����h��A$2K�)Q�C�j���ti���:X���� J���Q����r¢[ǃ����DYt@]��g�Ź+^�ZЕ�u��Ե��c>3ٙU�����=����.)���~��}�[���8�9�#�����G�=l�̵T�p�S�|����=?���6����fd���Ĉ��|}(��ײƥ�^�Ϛ�g�y(�u�O�Q9*�_�<f�ߡyc�{y/ȝ�����U��֏�0����"��.����B&�D�J���~��q�U�����+�ߴC��ӻң-�X�K�g6��U��;'��W��[��K{&Kg/�or��E4O���?��/�W�t��~l���=.��d!x���hц	��C�s�s�LV���[�{yhW����x9�j�!�D�z{m�����Y���J�	���v���dʙ~F�f�":����P�f����u��;�1Q+��?��o�1�%/J�������ivi�S6�?A*o �}���05��]Z�֭th�����0AFF_9�β ϯ�F<������t��X��W���h�.��?�W�%҅�8|j��m��g�.]���:}��3�vm{~�N�:l���<ɶ%'ʪ��7b��	���ZN��������̎r����cumԩUm�	s^4���72����T ,��r�3#/�:�x�x���?_M�� �J����۴�~3Op��7�y�."�8��X{&L������5@a����<���^3Piׁ1I[��2I���z)@u\ʟi_���7u�Ś���-V�r���y���<�%!�w���쫴���~Ls����-�.3��O�s6�X�S����By�-b��ߙ�l bK��n�Ői�|���FN����Sj��t)g*6�?Oh4�����w�*��+jյ�F����2
�IWZ!CL	�E��b����-���#(�e�����P����).@z�M8q��F��@�$�qS�?2�RGDq*��P�͖l��4z�8
ѓ`�sM��K
&Bϧ�U��*�mHìQ�T�)}�>���r��>��}f�Ϡd�	mi��69���`��F�b�9�w�Mw�C��nK�:.��BR�c�%�i�v�1O�ј
T��(�Q�=n` f���d�I�h��	����M�$5M��0�%y��]M�H����|x��n��"�70��i�++�~��:=���e�������P&�jr �Z]�x�|u��5�� 
��p]fO���ꂶ(N?HLݤ�@�ȚS�e!��E��|p�6�N������ҏ����ފ���o�Q=3������M �A�o�rɚ�<�չLV��ڮɌ���)��RTK����W��j�v1���(��/'�":�zT�U}:��`������_�+*��w�}�Z��6�O6�Ϥ$����Ǫin���9��/����s�F=�d����vjr�c#�5.`�Z����w,�g!zuDX�<�-��_�g�W������B��T�ܗ+�cֹc���1��W����1FD�
�K/p^qO*˺;��z"�}���7A�S���7�/�tg�t���ݘ볘���������vPf'Uo��E�jU�e��b᧑�팺��h+Q��0cm��T�i�{�4!7�u�oG��O!;�{����B�J���R��Q�V��H������X��%V?�}2��rd��C�g�9�Q��I����L����P+$M��"#ko]��a�H�`�g�*!��[�m�͋/PB*�g�i!=���:Y��q��2�7M�����n�U��h��z߽���9���������*q��i�����
���%���(N:�<�F�d����d5Go�G��������b)�m��T��zE�cȜ�x)�j�<=܂)���r�y�u���έ�?�1S���-��Vl��%4��z������!D>|}]�_'�=c�s/��������������� �O�֋V�I3Wǧ`�������1�J5� �|gg@Ε ����2�>:r?7 "���3e]zS�`�ɨ�Q?i���噦<_-ޑ���S2	#%e�n���9�3ꫲ�Y�^;��������>F�ߢ�Qw暵�^U��Q��$?��-������MD!uYQ����G���1�v�K�v�+%/e��׿��[�A����[a�QP� �7bA���꽟k5�ey�si��t�1�pܜ��+,�ب�s�M��se#!�z��p=�[�l���뿃^��;����`��ޟ�1A��go���bv�<���z�,yZc t�S�5|&c�����{���/�>�bV�;k�b���)�W����Lc�Ѡ�=[_[�m��*��-K��	n�$2�8M{n����z��c6���aj1�����Z0�C��a�׮)_-���!��2��"҃Q-3w���U��E�LT�dNhH�L�T�t�Ŝq�.b��.��c���ݥϣ�����c��m@�0#5Q�o�+^�!_��ZTJ���L�p��I�Q�Eқ���,��k~���`Н��a��ڊ���h��ؾك�Fd�/�	U�-&�}��)ɹU�%&�,ބ�@��{J��?�L�z?���������_�`��&�¸����ޕy�cN���g�	O.z.�ixGJ#�&�	�-β�~#>8�iQq�N��Zz+3���z���q��*󎸘G�^2���w��X,A�_��fG�G�!c�${�-�/��G=N��(<Zq2����F�a����o�n�I�
��(-�:w1b�*&�Jhl%�H�G���E�>g���&�~e֔��V�����D�%��\������po�+�Z��	�Y?6���eڅ-͠����,�Lۚ�0ʷY����C����N�B��!"�iH�TB��?�9:�V��p{&��@mG4��ok��H���h��2�Z����]��j����Tv���Ҝ<�n��,��k?�·i�ӳ L������hǫ�$�m���l*���LԆ��&6��)D{������ä�Ey��Qk@B��
�{����Wz!7?�=��x��1D�h��4�h;[�ڕ]mTP�����k�rY�>$+;E�p��D�&)U�^�VŖpE�QFgQ�#fs����s��Em�u��4��,4B�&ds�Űm�f����}h-����rѸ�ǀqI�Lr����ٻ�E�N�K�.��B̬�p��w�c��9�<�EdF��M��<����'���ڀ�҈�Z8oo�����#`�H5�d6���7V����ڽ�9b���:��M�����Z3�s�Px��ڇd�4^���k�� �*��#��cۣI��d��>�b�]��3�T�Z�|��N��hQ9N/6���4��Ln��F�{��s?��"�
��s��Y��;�!|��_?c��W��ގ7o���K�5�{I��6 ��8D��pZ��˜\˵�0�̫TJ��z�m�]�p.���`�k��|�'k���y"���+K:1�;
��!$�9?,��N��[z�I�([�3��)��K��D�D�r4:��8x~1e�6��gS��cl`W�*m�P�Y4�k��u��~���d�
��؄
̏����/W��J�oڎ������|$�"�n��5%�z�Y����VL8�ȳ�O�s�wCXQZ���lA-���6�7Xwpa{K��d���F�G`� %�ѵ� E  ��^�Q��{'�vsÛ��Q!rĶ�kNB�6E�}�ù�7���A$r�l���v��������o �)DT/�k.]��v��zn:8�^���Q��G���%�M;��j���ݲ��&�<N��|w���!�y�~KBI%��QU���`�X��4	�s����ׇ�$>�~���T�W��f$�l�	��{��Xو�fKJI��rP��|��($V�<C�"�9OC����I�м駗�:��O:�tg3���_ȗV����qk�Y���[���:���=���Y,�8>o��vymR���id1�Z���7��K+#cf����6���l�ܺ?�ln���г�#F�u3i=l�M��ͬ�὏ebK����R-v�<���_�eg���2�Q�r^� &����Ŝw3�Yؓ������^RX|l����Э��V��F���D�W�Q���&�S���v�⾈���ӧN~	z���/����yQ��?�HQ������ǈh��O拏����l� ����C�^Z�2O:�Q��j�����e)��8�K���86ypu5:�yIu2�̆�R�`%��i3�6�:�"�4�|!U֫";X�����)�j�;x�T�"�8閤϶�N�ۄ�+����n��+�#Z�&�w;%��E�V�a�҇�D�B���	��|,{.2F\��~�j��RB���LkEw�Q��4�����'�9,3ջA�Hg���uk�"��כ��x#�f�j34s?�Usr�ߟ����\�Q�^���椕=Vb�@�}SQz��=�G���B���H����@������_�?���?���?�>0�      �   �   x�%��D!�I1+�����_�z�z������\���T�R�e%ղ-}҃Kz���v�k
(X�P�0l H�J@��*n���
��x|�0=�N4����z	�- Џ�@��|�RsT�w�<O0V)F	�d+�O��OZ�7^O�s��3�j�H.L��V�'�0aҒ	����g'�����Yꟳ R�!b+ r+!�� ��3�\?�      �   E   x�3�t��4�2�v�Ҧ�N`ڌ���?��2���,0�	�2�t�2��)�������qqq ���      �      x�ŝ[��6����_QO��X�M�yO����4�3ЀQ��c���Jz~��dI{�ctm��zIб��E-���w?���_>ܽ���7�><{������察�����ӗ���?|���Ƿ�����w�_�ǧ_���t�����ӳ���?��r����ݗ�����t�{ѹ��醓���>����ө�?�;�l۟l��mte������_��q�������{���?���������p������7����ç7?��r���ͻ���%��S�Gf	'kp��湔te��{�{��������em��O�Hf�N�[X&>KX��;��N�ޜ�����$m��&Hue��},3����+�������ﾆ���	@�2`�׎?��L���Ɵ��E�& �2sw�q�F)Cw͖O�?�H��zB�s��{����8�N�_�f�,m^�tB9[�9�q��v[��}_ۈ��[gw�f����zl3�\�a��9W��n�!��c�\5�\�f��e����-9�� ]&{�<A���	f�>¬�k���a��E��č0��L��f���#����0�*37���}�Yk�17ø�+�}�G�e�ƿ�o�Z89q#��͒w��k���'�����p�b~(�"��D�&!�m	C���~9n�,�:q�q�ߟ�Υoj0H��Yk�+��Y;�eH��z��ӥȬ�����t4}]�2��K���-������.�s��k^S=ua�C�0��"L�<u�gmjg��VP���#�Π���0����\S{�YG��'�0��}�F&��OI����%L}�x{ϯ$!w�K���#k��O��S���P�'�x�
��o	S��QA�N��<��-Xv�ZX�ꃷ�=*H��[�0g"
�������lޟ:)��V�Gv��~��>k+ZkA�����pj���2|�Gj7��
�T��[?��$�)�sj��qO��5x�]�!N�Nn�Y�n�fo���ȩ>{+^�����vC��>���5�g��gT����{ACN�~�]}G�ߙF�t��2� �����{ߑw���P&n�9��&�6�)#w������Z����?�ӭ��������;R��K�s�a��6Yo�&=�5�ku������:�?�����M��ik5��_]#(]�{�~��k�R�r�c��nk]����?y�Ň�Y.]�������ha[�LQ�.����Z�����!���ֶ_<�e����Y��8v䛡ձ��b?�N�����U�/q�Gf.z�fUW��V�&�^�UՖ�\Q�ԁ��+��Z�jKۋ�(�V������y�$oՐ�i܀iw�"n������q�7��Ó8��J��HZ����;�v�^�=�߻�̹��G�<.�r�#���:S]�S�+��l��e:<�A�)U�bw2�^R�Y�Dc'��#�I�Q��^��Lڃ�;ꤞ&`�_�*նڸ#Hr���TU�O��T�i|A�;Nj���F��LBR�y��RM\Q�o�SZh���@Tڴ�t���4Gv@��l ����u�4#����Z�̝E8ĩ�F��1Qސ=��Cv�JiU�h<�j����^+"5����z��T�/�X�ЪG��"`����@j1{��Q��E;avz3�R�	8 h� ���c jH�5{�=�E�D�w�n�Hu4s'B��FJ4��A4Б�h,.)��L�0o�NR�A��'JI���!g�L�M�f�JO��Ŧ��!�I�h�Yi���LN�������F��R-l�$jK�f:u2�"zK,c7��hl�ӯ䥭S�(� �4��Ku4=����LS�}@�ؗC4�V�� *L�h�Al�HL�4�'�L+�S�N�;���m��Fw'�L�h�Y�4�,��bC��Vh��,.i�Y�������%������B��b�)���v�agq���zT;�8�v�,6Z�jgv`U�=\�\�`�q�4�~Z�kxR�,v=lo1�[���]�h�4$b�\񢮅F�bC��+������Zhd�4��k��
9x�������(��Zh�|�*Z�ar�hU�=h�nȝ����xWx<�Bg3�����x�W����0�+�|���ޢ�WLx ��m�?˛���2��[]-��{(����� 57Ǥ�J_�x�BӃ�k�2^Sa��[���J��i��*4�>l��V���p�B��&�?�s�4��'^ȕhl�Wu�={��?Vu������Z�>W޽Ղf��n�N�^Q�������p���qןs=�DO��%�5��sۃFe��ۘ���~�{�4P7� ��VH/��%��zocy��zo�[19���n�Y��v���2�|���;�Kv{|���[E�|���ұ?c,�nӞU�3PҰ?��"W��4�	�*w�F>�\���e��q��D� \�.��lW��4�Nq��j�Saٕ��ex��Y�id��x_�5j��/a�k�M��X�k�]�P�����ŉFNb7\�.�Hs��)�n�u�i�n�Y��õ�x��		�u�i�vc��]���r��)�(Y�u�h$��w��,���fHK��2���%Zv>^�.4��w���,�e�h��Z�e���;E��xÉ�]�qpm�%Zv�����ݦ] �P�Aw�'���-4�qWh̥����������6�9`���ϖ��÷��g�ʈ���/ ۾.#��Z�pֶ�'hqDm����&�5��j��E���v#J�NQ���4DmH�� Kt�V��k4�,���fq�*�FKt�Vh��,�4ҟ�:h{�Hk���i�Y�����h=�=h����k4�,.i�Y@5�D�m��)0�׶�ȗ��]�agq(��{D��
Qm�F����D�m���agqI��⒆��.�ou[hdC�%�n�h�Y\Ұ�x���h�]�agqI��b<�m��Fҏh�]��g1Ґ�8��,4�,>�!g�9�{g�X����H�m�k4�,�i`N��2�G,[�-o+�l"*g�h�Y<�lQ9[h`7
Q9�F��₆��-40�NT�9�����F�p�rv�����Q9[h�IT�V�j��k4�,��KT�V�1!*g�h�Y<a���F�SD��?����Ŧñ&Q9[idn����4�'*g�h�Yl��EGT��<���k4�,>�!g�A��q�v�ef���]а�x�EWA��ag� �9��vA��⒆�Ÿ:��]��z:�����G��@N�U�?c�+��p��#^ߖi�WN뚽�{�{������1Nh�	���/w��R�����=���m:��n������3���^[Jg�iͷ��m����i�z��f�s3�t�4sPK��h�%��+Z)�'z���]h��4G4ݮ�M�LcptG4�2���~Nk����F��vZӭ9M��7Nk�U|	��v�9��V[z<W�_k�m/�t7�L��6��nO��';��n�Mf[J�_�8��|к`�ށ���.�ͫ�W��}�'��ӈ�K���Έ~����?}���1-�4*i�Z/l���6��|�x^X��|N�վݶ�l�y`+��yp<l�12����V�'�x�UZ����h��=�}X��i\�=��ؗ����!�l�aa���2n�0[�����*9�#���I��A\��.�� �s��Ґs8�How��<(ǧ9�v����i4���t��LZ�m]$�h���4�x�hL�4x��*_�iPtZ�k��v8u=EN�~���L#o�V�jN㰿�U�������Ws�7hկh�L�hկ�4o���4��U�Z��.�kկ�4=n�Ҫ_;����V�ځFnwZ��9���>���|˵��4r��Ӫ_�ilъ�YWߠn�Y��=MN�~�@[@��Wk���=��U7�q�`��պ.|11�U�v�A�iU��4�d$_���4��A�z�A#o�V�ځ�K�J�z�A�9{����BC�^����Z�k٬㵪�42൪�4h�Y�w嵪WscK�U���	B��b�z� F	  ���4Z1;�'�=�Z�k�൪�4���Zի-M�C	�X�z�A#�F�z�@�%���Wk�8_c���řZ��Ԇ�%��N�ٛi��Ǔ�i~��Xs����Úӌ�j���4�]Ҋd;�@�S+�5��M�^+����5]�����VL�'�b�h֜��J�׊f�iz�&�kE�h�;�͚���^+��LC��j'��쵢��4�,.T0��v�!g�;�G8��k��}i���	�����Z��q'�R�kMC�⨶�|W��4�/֪s;��L�V�ۃ�9����1�U����kU��4x�תt;��8\���A#�7Z��9͈s�Z�nu����Mx�K��S�,�g�;�q7���t{���"g��@��Z��9M�s�Z�n�ku��5�1�|�N��\�(F,\.�ȱ�^���A#i�����I�F(\.��L��)�	�z\��pt_�ϵ���F\o.��;���.h�ٛh,<)j�fh����4��zs��9��h�Y|F��b��zs4�,F~�ur���%�'���f�b>����A��JO����k3������E@��‣~�7�id�^��5��z'���.h�Y<�ף��agqI��⒆����s=�Dc�bg���G7��P�4����2� 4�,>�!gq<��9��h�Y� rGh7�,>�!g�L#���GwA��b<%0p=�L3	;�-���]��w���Ż�`5p=�Lu��b2�e�zt;Ӱ���\z�zu�fv{8�9p��v��W�h��p��v��#p��Dc�����ag��:�W�i�n�Y�Vq�zu4�,�$������\\�.N��!�^]��,�zuQ�ƾ׫K4��,p���g�׫K4������&���ف��%[r=�D#gB�G�idl���2�|��]��P7��4P7�����8h=��|��U�n,JWfm��X�U�`��H�V�k�D�5�����Js�a�S��\k�TˠU����x_k̵��������D��5�	�H�c�.��2��\k��/he��0xU{кr�a�ӠU�Z�X=n�x�Mq�G �<�i�\��5�v�9��T�����M�>]�>�3cvHu ûky��Qz8�#hE��U��F��5��sZO�u�8܂����^�)]�%���VŔ��&������V�P�Jq�a��0��3L؃V�k#F�q�a�;��Z��Y�A�õ��Es��F<����Z�l3Z�5� 7���F䳠U������քk3���"\{��\m&�r-#C��VU��]��˰�������mycI�zmM{��A�3h������T�)�zl���x`v_�Znf�[{��Z{��k��`$,����H>���F��?+ӧ-%�jZ]Ì=@8�(hU�-�8�,jڃV8���C: �I�P\hd9h�-�?�RJ��Fa*��2
7����V��G8�x��`��2���B�uWh��ۡfF�QFa�`����]�&ؖ�d��g6h}���$��$
�~Wm�w+Z����Kcs��\�iF�$Z��5�C�w��\;�xxO�y�4�2L/0�<���xo��\͟��6hm�hd�s��\��l��2W��vSZ��q����嫠u�v��a��՜��0B�r�~P�h����SZ��54hE��f���A+r�����79&~Њ\{�ȓҊ\;�l�%x� $O���۠յ�� �tل2h����m�����j�TZ9�����۟���_����Ӡ��T���W��})��Ӏ��)���#��&��VS�H�p�V�j㋚Q�l{��*[�a�Akl���e�A+lm���'�a�|�jYuߟ\:T�q�\z\��������'1�������eZ� �mU]���A�WU���D�A�SŇ���ӟid�����";��c�H��|�A�P���W�@����S��.
H�����ax�����#Z-J��K���� ��T��c����N�Z�J3��wZhl1�����Gd+U�Z��Wh`C�=�@��ռ����Z/�5��p�R���������߯���/<��4y�42@�ZR�[��p�SkI��I�$�&?�I-�{��9h5���~��^Tu�#��"T����#ͥǕ��ҪNJ�u&��t�N>���˛w��_��͛���g럽�C�m�~�Vy:����&Ԗ�u*��Vx�n9��Z��,��z*g���A-oU�>Զ�c��9��T�rl1�zN�<���D��Z���=3�~C�uX=¶�ܩ\�gD�)jݩ#j(1P�a�#�������>�}|������	;�����9�����헻?�},��KN��_�y����� ��      �   '   x�3�4202�50�50Q02�20@�*X�b���� �      �   �   x�ŏM� F�x�9��]�e7�X'13P��/И���]�b>��%�B
unO E;��p�d`D�<(�8b�=2	)d#�*S�)E���b*; }�c���N;�bo�ү���_�����WӐ��5�#=\-�m���	�pak7٦9RϴBC�ɣ��u��ѭ��]Hjn��<@S��z���5�S�u�y�eOC+�      �      x�}\�r�ʑ]�}���BԀiY�H� � �V�v��otV���o�m�0NeM9g�TS5�:/�����ײ^����e�Ԡ�Z񏪴���V��RMuu���X���1�_��M���c�C[Y�TuW��/]��ڟ��c�G�Z�������4cW��X��>�ZY�TC�E�U3Tgwq����/)ek�ѕ�kD���N���Ni��9��c���n�h�mE�����i��ѯF��l�U��TE��ur��ͳ;.�ᙸ�?�z!>T�'�gw;�zV�um��Ε&h3�H_���7u�?���n�BX]O��=n��]>G��z�,ƪ��u+�c���tM?n�- f"��c�n��A�Ɉ&"�0/��Q��gD���d�!��#q�"]�X�8�Hc�SB�N7vs��AC7�ihS hbw� �e�@�I�2��;",�L`���P4��)j��=�M���e���V���c=:����tn����gl�d=ٻ#��g����m��Z���H�z��m���!�hϧ��!ة�s��q;]�y/^�_��Q�x��D6,��ǅ.y9�����\\�k�e������n��Ϭ�#3�k��n��DA�"���4�4�� �9�V��ue��&���H����O�lu�����g��8@�}�˸���룛۳l|\@������TPB�����0N]3�j�ICփ�k
	�n�G p&�&ζ� �ڻ�gd�T�m�B�j<�����X{YjT@|���#1�
�����܎�n/������n��g�XӼ�E�kTNd?:/$-���,	:��=���R=>��%���/�4�u��͌�z��+Ad7�0DRZHoPX�����	޹i����vGG&���\q�c��7��c|����:M !���\m�.�F#��]o F��;�b��6f"����ػߙT�o�%�噦 �N���dF�ӖԦ��@�!�	�`�7���A8���k�-�@~��q�$u��{���L��q"MX��2Q3����a"��Vȯ��x���r�Ht��	���	E�G��}�Y�E$�CRk���ٻ�A>�.�Nyu4�I��Od]=%��d�M	�q��J��E)V���ҿ�]�9yF-w�K/�<,��~@G���"�D�9�IB~��4�US`�i�A���c7-_�)6�Α;��KK�BSy77���4�N|�Axm� S���^~���(��)���dv֑����ء� �K|	c��<�^�������+���D#�<L�,��5n��L�E4�-���go�K׌��N�����O�zu�?.�?��?�;G�yK��/�u!F�Tm]� �8d�]"�
�Već���ۋ���A��V�/.#O��=�X%�] o��E��r<���:��@0���V�p��ĉz�k�9;�or���&Pl��U�B���Ĵ���˩��# Z��YX_�Tc�z�������ƀ>�� 2l�q}3�����x���c�^�ɒ�~H]�-E�>��F� �"�Px`r�7ݾ��#��@������'��������y^�t�/�Tqz��;�(�3<E'�����%h�i�4~w =E���P�]��J ��V��"4(�'�w���� ���	T�0����!v�q���pS�����A�����׽S�1]�/�"������Յ��J)�!��L���Y�MA
`�ᱱyc���7�WZT���^an �Wy���d�e�{�L��XVd���m1!���|`i������1y'o
���Oql�j㨶Xr�Xr���|9������=��w�H��N�c�8�/�Ў��o�0q��vy���0J��p������F�䘲��9�ַ�i������7d�C�S�	�7��qHyj�3��A����i�����ww���bydu�`q\7���!�<��ϟ9����:��<n������y>:���*^�$���� q����A��~=x�uk���b"��~��9 �c��=ė􋎺#�KH�c�k�ضK�����qH��i�����(�<�� ��-���˛0�է?�˃ܽ�و��u](�ļr�	���'�ے
\�K���w��!��'.�o��7���}�<$ �6��n,����N`��!Q�띠p���9�<{�@r�q�P�]�h��A�'�Y�ݚ"��g�=�Ʀ���D��bC�(��mE{)r�p[�Ac܁�KD�t�B 
����r��nr�
�R#��-m���ߘ������H� �C��zM���]d䔮y���4�N��������|=�ATdI�t4��m�;NWK�~�C�d��F�i��������-&"�=��c���"������!A��o(�=IZd芔��+g�F8mb���l�Ko�]mGڀ�E�v#:��jhȐ�����j�-?`��'�3HNx+N����^D~ފ�{�P����~�قs,�#~������U���`�zB	�u65ݵ��D�d�3�gM��"kQ'�/N[�h�C�| ��V���+Ð�&S�;1گ#8� �n�&qs�|?�2R�s̊�����38���2��勂�Æ�Fj��3R5��FY������Ba��Q�������嬡s9�O�vhg�x��b���0҂���u/";
�L���kd��jfᆎ���Pd��6C�A�1!����S���:�[��m������~��n��R��tD����a񨽏W7}W�<�+��1"�qL_�������q�P��V�3lLӅA*O�q�-eͤ�Df������e�5���)Ĭ4��5�мQfn�kn���M��m�`l�["-h͐(�D��q���]�ZI��4����Ij9�(�,fQ���E�Mi�:H�Mx3�ǷOÿ�&�g���}[���8����~0�A���:J�Q���4Rv޻Ww�F��4�WhlŔ5�͑�#ʌe(DH�5V��4% p���O�iǇ�X��l% \�R�	\��݅ҊT��fV�nK�S9�ff���K=%�x'jO��r;��E�F���'�����5P��0,䋽�[�V���"��<5�Ҟ�=5� �*-5���Ims��W�"lN�&�dy�P���'�4[k�Z�k�jq8��)���a�d2�R��@��>�T�eFc��k��a��ݚ��k�{����ٮb�Y,1o� ��lrr��Ɣ�Ċ��S �I�.&D�fp��_�ô��.��B��G{�`����p�h��t�I�`OD�4���r�F5�,�{A&��fiw@1��)jF&�4ƹ�mg��<\�I Z�8���[�)�̳<�A�#o@�sPO=:Z�x�Y��3DȝɿI^N���wyD�TR<+��˝�Fq�R�{t�㇢ӈZUN��!�袶�87����|�K����eH�F��=��MI ���:�$"�g@�	p �+�^�C�(�iS�*�'�F�6sG�m�`�ȱ�}��Z��+ۑ�Y.�R�.D�_�"(3w��襇�na2{ ���aɭ@h�H��U�O��ˍD��Dv��)o&}5 ��� Y��SJ_����E'Q�Q��>M�~W�E�u���Pn#����]��y�؁@P�P�q��IGF���4��
Pn�A_G'���w˷2��v˪�7(��	L��͒GȆ҉������Awne��g� �T��(L0>�NC�M�$���f(�����;ΰn�u�����{a�+ࠣu���p�{f��E;��(O%D`p<�]�� �G��d�x��|oF���/)���ρ_�-ǵ�ȫ����}��J�J�������ۻaI�[�-�8B-Y9U�O�x���Z[��-��:����/iX�v����B*�	��oc$2<���e������ ����ذW�r�>�Έ��z] 2��,����M��QL}�k�Է#ޟ��� �E}L"4�ruw_��= $���P,� #s&V�#�`�Ύ\ӓ�O������R��]�H��]�Ƀ�����@4 ȃ- $b�NqR"Z ���   �9���փ�g�'��uu%z�LNr�F�����
�_эC颅b{_�Y��%Ļ�h������z�
��������[[@|T&�U��m����k��
5��Fz�I/*<�6�E}����t�X�s��`_�* W��W_��N����O[�N�{T8�JC\o ylg��`i��}���;AF������_Y&�*:�%R��oc؁)�e&ʍ�s����ђq٧^MpRW"�^M!�mu��d�s����)P�]6bJ!�"���,���0�[��P��&Qb�E��������,�])Q���!n:>�C+�F��X�/���]y�WLm�f�3�{���ҙ�b��� a]1|a���z�[Ÿ�)}�I�����.[ob�������=\ ��mT����D����Ҙ��JK�>J����J�X�Qś)y��iH����ELzC����,����γ�9��c�4�Q A��4�L�e�s% �${�%E�0�,�- ��0�#�~�� �D�t�T�̈r��Iv9��u���l�b��M^W!��廦����֍TI���ma���y��#�i�mB�VM:q�h�t ��oՕ�B�#"%�v*9C5���v�N��t���D�E/�b������8��+�#�-�
�]��M2[y�s��L2%F@����o����d#�S��WeYz�N���T^��ŦU�}��������嫴{`E6�^PC�>�$��
 � ���N�of����Td��X�a�����B�|�yh$[�9p󭒡-F��-LքdT�b�p�������֖�3�N9t#���?voa��)�29K��w�K����׈(I����bn)H��%Ŀz���%�S�rح��ŝ�2|s>�	 ��xYW&pe-8��o�h���`� ���=Cd��e���/M�\\P�M1 5ǈ��۷8	D�go��4��Má��{��Wha�b��n��
	Y� �GG�;B�Vn�MJ��j��S��101"*1�@���b�G AƠ�$(�؈";{Z~�_� н�Ab�(��}��ϡk��g���3�o�����t�YZJ ����e���t�^;�h�E��.�2����[]h��D��
��8�������*�D 	[�60X���B�v��IHi)��Ҫ����)�g���ݙ��K���2���ޅ4�ںpٓ_o� ��u������8mp���l�/f��WT�z�sN�lڶ��Z.���d6md���ҳr%�M��	�����������҇ZB��lB+�eE�7f�(ld_f# l�-]��u�r�mS~�wapvzWX@�=�]���(d���X�|�_e��b����1�Ă/yĐ�դT�7\���:�t��f�~Z��w3�J�nF�挺���q�q�^,����C
���CmW�r��#dX�Q�#w��qxp�CV�� W��,cJ��{��c���<�����8I�E3G,�}-����Rwu��J��՘��D��1�*5vs�d�;�� ��E��V@i�?Za*͊�B���{�>�����'P�N�\8�:.�c�p3(IE�٦���a�l��T9�
�n�Si@���&D�k�� Y:O[	]U�(+BK�VW ��%�M�P�U�lߩ�����ޗڬ,?��O<�9H񟛨}�,����v��zy�ݻ��p��׃�!]�n���c|�~?�ܡg�=�x�e��T���˫����`�nr`o�յ��f�)��)��"���&��_ᬒ o�%}���F��Ѐ�����_�=��      �   "  x�e�Mn�0���Sp�
����!#	
D�H��9jgԪ�.���١�V��%'wñ&h����Tx=rR�B+��vZޔ:Qv����=�Z�$N��w��\�l�0
lK�5 ��ÖS!�&�!ٻgA-`�BW�CB�W����l������Qs���&g��n�P({��\ ��E��UFށ4�&���aQ�<�[��iI��P���?q2���A����oJ-�k�BL�����ȁO��@��1��@M`�g*7����O%�J���>ޕ൴�����|7!|} �7�mp      �      x�|�]��8��}�o�@vH��t)�]�l�^!K�{e����#@�i2;�����SH� ���Tc��p���~Z��C�sh���?�?�����3.M9����s���<��c�hA��p��˧���UJ���8��_�C����{,��5���������C�����\x�k�щ��t���Ё�;��@��1�ߦ�0���϶���c|��q>���-���?m�>��؞��v��%PA��۶=�}�?��vYL�����zۖ�0 ��2.���F,�u�O�������?�����kAu�����^����y,����+@?��:��hLFT�ۙj������P����r.F�"Y��k�7��y������5����ï��~|�dђ�j�hʁ��v�?X���.�
����z����-�̰!`��Ŀ�iz�����_��;���xޖo��U�X�~\M����4~�aXN?�ާ��@����ƙ>�ȃ��S>����Õ�+�5c,}�Cy��G��y��'�� m�Awh�����tY�S�G{k=`[�:���������m_�	���<9�&�#$����#��y���6�����Q ZZ>��Z�4Ԥ=�~���/���/߀h�����#���c�����X�]^�g|TD:,?6Y���(��q�W�O��~ifL��p��m�����A��u�u��,D���2�@��ş/��(��O�u���1x%?�h!%��6Q������r>F������}�=��e�=���?w�sT�G���C���~)x���^��ϭ�s�>����b�tC���iZ��g�?�Ȱ#ߌtA�y������oD����oM�NDE�zZ�������y=j�8 �O��o"���X?b^�y�"����P��^z���=����j�^��>��y�:f�~�*����)O�K��Jr[^M�@8�@��_?V.�z���e�p~?�^�С	d ���C8Q�	f��+8�T�נ�]#e\�˹��^k��ƚ�0�7��^���Q�MT�}���3@����g����!z��&T�����?ۜ6$��9����>����֬!0���f��h���Cu��5 cz0~��������_ ��Y�[ ���<@��{3A�{|������y<��2 /5�Q�~���ߟۺ^��;@�����8���&d,7^*dؽ�G\ai����"��0@f �Ҋ�$k6+#�)ЦB�x�z-�g��ϧq)0��3x���~?q��=���+8���|�$sx�, �ӽu��o0��6G��1��}���"o��:�@�3�o �Y�P}�N��Σ��ƞ*��S�;L�yۓ���v��T�h���S�U�<�����m�?5� ����'�"�9П����wʁ�)U`0w {��v)���i��F�@H鏕/SR������9JDݳ�_���d����.�x�9���޽J��h��&�����H@���ޏ%j��qh�;��˚��9ǾI�i�ő��������p�.�
P7xA��`��h��O�_�H^�&
���8��1~�k�Ͱ�3�E���P0�&�o���y�ٙ����v_�o�b����C�:��������l@F�4�\T�7��ܼ�ؼ�J�d@��%�A�_�)aCf���'Z062%$�'���=�X�ǶބSa�Xϱ�;E��<�g\D���eM���V��i�J8���q��1is��oy��/_���'��č������6KRz����1�(9���'�V{���p<��{��M#��� # )9���$l �%��ከ��P^�u%����_�~�D*iJfِd����o��q�7���g ,KJ��a����4����Q-��f�wͧ�`
�"z�#��F�g�#�M�4 ��������Y�_K�d�/�rt�6�/�� ���6��XAe�tXk��"E����CXm��>_���������V��G�p����]\x�����dU�p���܁8F:�@����F�h�*����}sk�����G:<�����0������+���8
�3N��کG(n[���biE����ӎ��{^���[�.l8�ʨ�W:ߏ��Ty��jv�O�u�Mp]�_X��9P�	+A,��2E)&����:P�p/����G����q9����8�.��>iv(8��C�ڐ -2?��U�"J� =��D��A]��!ޯ���I^�������+��nR&�E�-�
߄A�yZ��L�Tp��k��@���W��,�����\J}a�i����\��c-0�٧*������A�oH$�����q�c�'l������?~6�di~cX�����?c"��s�h�̗���Q�TJ�ݝ̾��������S{����0J#"N+G>�4����"J�&-��5��ë������I�6��+��d4�2��jE���&�En����q`�a��lhL���y$#�������p�1�ǆ���)VpJ��z���T+�S�Z���~�{�z���Nh�����0�񯣀��v~:)P�`I:�^��G��W���I�����3;�ǟ��c1�`�ˮE3���;�jx��
����Q@���&[� D��+<�7�u	 ��n�O�re���8|�T24��o��������`%'���O�/3�= "&��4�C�A�l;h�!c���	��i���zL� (�������A�*1,ʠҖdw��(�m���/mu���*�(������q.:��R�C�.x
�A��ڡ����"�1�'�kR��48M[�d����J���5cD�������[�!��5
�i�s^HA^��Z���+� -��mŮhN�xT��Y�-c��	����@[��1T>�*�'X�I�7s�|7ũ��*9~�%ᓺ����GXB9PΛ�b�d��r�1D�BZ	����hE�����^y d�*ިk�ъ�3~�b�t-ZǗ�X6�@���zW�^y��&C[�W)�r��T��������7�K	��������Q��yF�,cz0��m.�!~m�=�����	ѱ�=���ճ��;}�D�\ * ���s��=�k~+�9NskA	c�PzE��a1;Β�b~��Ӝ��9�'����xޢV͠�ڡ��A���g�l��������3E�K�x���<O��N���s��� tޱ�{,c4�ӆ�([1h���Y�)S����c��e���#x��0����������^�S� Z�r��8��Q@	;���i?�η��M����zS�i�Q���O㹠({X��c��Ldnx��a����`�1`1�hK ;'?�_���|�g���v��Y��|n�Y3�E�|�:%cz0�<o$�[�V2l f)1x��ɣ�m���?c�����?�y<�,,Hҏ�iפ|h�����֒�AH�|]��=KgC�ZY@$՗_w�ğ������]�	��QvOF��`he�U��t����8����u�N�d/�_#hF�1�WѶj��_~Q�Dz�r���(�|"ɠ�e�j`֋�q[�)�@�'��y����(y�ňI(J'T�u�(�N��l�$C{| �{��}4 �J��׫֔n@iJ�9�:Ș������涎��km�n�٣�C�H3���3��[�������/���^�i�r���k<n�,X	l'�rxz{����ZkPHe������/�O3n G��LK�1�}�*т�D�W1釞���IH�R�52H��pHNP��\���Oe�I��oj޵FB9P��`��D�$H��	H�GH��,1�UYB�zJ�qh�kK��F����\�p��=�î�UQ@z?>�����p� \��2��,��1u�<���IFG��:@�_�����P��i��	4 �ż�Y_��1N�HX����j��@X��LC( }ؤ|����aؐb%'��i�L	b���ۈ:!ZT׭: $��|�ǧ��}6J�m=4 ��8��cJu(J    {�v͕B- �����K!�)��Y(>T:A���xs����;��R�$�6�r�V�.XC�����ڱa�`%���!��.��Ӂ�.�6�m��;e�{�Ei5����z�~����څ��_�8O��Z@}��O�2
%�s?��)�������N��wƹ���5��N��:�@%�]����P<x��Ptފ��;m=�M��B'�����0-��^^�^�-��"���H<�(�
!����ޡ�2�(p�8�aA��C�[v��V{��K��;�&)�`nfT*��ښ*�����LӀ�����dQ�	&�%,=��UTKX	\�!Ȋ[	�'�4 txTd	c����Ҍb�~l�3&h�6�#�S�����9i����8�^qV���uW�⳶6��}IM�eڌ�5
 a�H�#���Wm��ܸ<�K�B��~[�Y=o(n%9{-��u�e m?gw��D����L�V�k��.�������M�oښ���Ƞʹ��6����]�
���=kmi ��r��,cR��k[�Y�u[�,MƉA��-%Ձ��)N���b�VH|�`����?�G�������ὸ��J´`tJ��m��(�h���+�����W�E�; �7BV	&��|��庽��t��zq� �y�Q�'�ho�;O���Ć����1��r ���5PM�.%l��ڰ�mьR��>8�K@�����Swc@��*�(z�{�sE�&J�E�� z�&�\8h��������O����] ��*����st";2�ES�F��1
��}�f�Ù���_j`S&��8m:nKf�D���>�١�
�N#�v=2���2�֛����p@��@9�ɝh'����IT'�7bz�
�Q�����^"�S����B�R7>�I�"��Đ�x���r�I�g�W�C��Hh�s�Z>�ʧ��U�c�(�����R�S��_7j��g	G�6e^p��%��߫}g�����2�=O�y��HذI%�b�_{���jM0�YN�i�A�M�w�aM��:~�m^ט�WW���S�D�=��s���@���)��(�H2]apWZS@u�f�1�9���<$���F��ҝQ��ˉ7?*O���P����y}��Gx]�h��`�cm���{�h{#���� [r�A�$� ��B?�Ӑ�rJ%Y 14�Z@����M�R~�B��ŷ���q���֚1 ��}�NpS��=����H�Ψ���V~{�t����sZ���]�H��/�pM���~��syܰ"Ơ��gJ���m�3��ؒm~�����ċ��M ۖӚb�"�%^��1 ��]$\�!e��Ƨ$���iY�#*Ĳ�>�L�h�t�����f@O%���'l+cY�q�iь�Q��R���
��B�ͺ+��1`l(�0>k�E��3�Bz����
ҁ��5]RH�4�����-������L��i�@ GQ+�#�R���h[«��s߮��N�F�}I���ɨ�c
�J����'�19[�q��`�~�0�,(�P%怅s��3��s|��>�6�XɅ�P-���J�B[�)��F-�Ղr|�����
�W���a��w7^�� >����G�2ʀ���\�c� ?�M��"��q`�ȔP�G�1�q�3O�-L�$�����)3��<�WܿKqTW!x/�*ӂ��I��\}%�-S��3J�:����=$��1�J?��_mC������3a,���d~�{�RF:���8�Bu�(ػޒL���B���LL������=H*�7}�⬶=���Z�B�p��9k		�߂p�#kK���<���\F��<+b���ӆ�\���l�R~&�q�80�1��{1)#b�]�bm��<���X�_",�U�P3��R"|>�;�'o��Hc�Z>f����3��C[�4��� ����r���C��}�'���$K�����鱯�	� �_��0Q�#;=��8a nv��y�^�ĵl9��������!R�{�O�(�8�_����������s�)`~���9M�i?w���&oZ���f����c;A,:��7�RƁ��i�$�:P]��6������͵�0�U<U����R��[\�r���:�<�^6��W��E�VNpx%��a
X�L��{ns��(��s/��d�	55sր�t���*�d�B�̺�I�qQ-��Z>��`_Z?V�w�s����{����ǅ�SA� ��;��6��^�<S&��K��E; 䇗H��N�y��4(P=��YKB̚���L�XN����,o�-E�+a����q@��r���v7HL�ñ7ڡ�S�7C)~���8��s�&�v������{���j���&�0:K�����B�7	�u׶)#2W!��/"�s!������,8߿��vv���U�R(:�C�C�Qϧ`�Nv�z�ȕ+���� ����\p.0�e�勎��%�����^�DˌR��7�~8J]�%�@Ki�P����a@�2�V�c)c�p��'n�g�đ�m,��I�3�a��\cDδ�G�O��E����t�*Z
S�[���$ѫ�Q`�v|_�q�<PDM�8�T�5c���<���*�D���P܉�.��B[V{LTz�-�G���/>M���A���߾��hS�b�*^�zE~P�Ȁf�#�]fN
����$UP���2-N:������s{N�����=�R8�����c;{Ϩ ,� X��!Ȑf�f�ȹe��Mw�ǲ;���۠�!��
M&�vƌ͔2(�s�j}�<ʴ`�(�/WZ()����������ڍ�]3ʀ#��6c���ɿ�
F�5�~C]�^�aΏf����X|V>�<�y`s���q�A�X��*�����ߴ����&y���8����y[�Ji�!Ƅ�`��^�T1��B��Z�I�Y`&�JN$�5�����?�Va���d;0�5qy�@���;ʘ����5�"�BV��Tr-(Z-��;��	�+ƈ�E?ҜAK�۲wY@����`1!�)I��3�:q:��,�e�IC��/p�3�B����	 �@^��<��^�5�@�=|���ޙ�ΗQ,�+�ZP:�JL#�xM>=a4r%�(s��������, ��B� �3JD�xI|Mo!BL۵��@p�4�����SI ��9��R
C#X��\�W%P�o� �@��Y��E�@�˂#b�Pvn��S��� �i�����B���u���k�ʐ�"�>�-�(6]�@yΏ��'>'o����ȹ�t����ʇe�������3�4(��~��X��⦟[���w�$�DДK�f�;�C�I;������L���:|ՙ����̄���C5!Z\l�k�A
�ۡ�Ҡ��,KS�8w1�N��ȱ������+2������Iw��ʓ ��$��4��GM���ZC�n�4�y��'����֯����t8N1�ef� ��W��@�)~Y6>�[R"q+Q��e���K4�6^���&W�}B��i9� =�p|���
L�����d�j@����ea2�ȧ/�$�8��.�
,H�#O#%��	*�P}FE��, ^���\iȁ��8�A�!�	���eH����D%����0�+�n�8 %ӂ�yKe��ČQ�%�*X�Iq�A��WZ�4_d��a=��0L�r�Zu�u��~�˨���/� ���g�ѐ�2(�P%:�+��0Bq�Sl�����)�'��� �Õ��)  ��.e�4��  �U��v*ߴ���15(�z@�y�� ���N/�짐���Lc���X�;����%:��N���6�@e}���V"��:����ƅJ(���a�������^gl��ec��x�潾ƣ�g,����ey���".��~���
i�A�Rqil��`�5]�V�U����J�>3g/e5��.nߊ=x���7���r>V�����WFI8 ��cL�I���_�Cz8���    ��DJX7�!��z�ћ"�i83�,������/�!�����[8+&��4(��IZ�<+,C�pi]�`/#}D�����D��`��`�Mu��zq�IR3��h���C6i$ʗ�>�O�}�.f$�4��>���T�6�Z�pH8�/����aQ�!k�-@��X�$��ݰM�Uc}�+�ՃpB�H��=�TW?߫O�¡��,��
Jֹ�r��G�������ʧ�#_��*P�L�k|��0 ��ĺL�җP�ʊ{A��Pn�꽲W�t`,�w��U{�`Ǳ�)1���`~�L߈�������Ԓp�Vj5�p,u.�l߳L�� t~�.�D�t����'R;�w�F��;S��Oш��7/��_�7-��xǥ��{�'o4 �H9ݷ��)�F)�9�{����Gl���M������4���|���C*�F7�MU(
�s��*c�>9�I�>� *st���H����9�?�O`���;ψ����,��RH�\� �I����*�C"_���L�����U`9�+{��A�p��H��Z���A"�A��5��Ab�z�ԄRP��d�u��4ǚ�Q��`]�UE :�+J�=C�����AߢŒ0
D�6�}|�?��^���s����ɓv�
��8vGQ�8 =���m�!͇bO�$�h�F�k����ٿ����Tr}�_���Z�C��j�%� �%d`I��¥{����jz�l�!T�~T�b��F���?�Zb�xc�r�T$FI0YC!�x�fP���;;|����Ń��ǉeB��W,����þQ��1b�O��	����o�.Q��Ћ���4Ӹn�(��|��CO�!�ܿ��"�@��*D%^"gy<(Wd��C_FW����?K�D.�X��Q������(\����=�3=���]�OI�R�C��"����r�����)т�3F�	�3sي� (�y���> ך����������_� O��W�B@����p7P��ϻ�RU
��c��m?��R�ݞi%/%˳�L��\�RٔƷ���BQֽ7�~�KH��{����+E��ɢ�l��$<B����ў~U��鷴&U���H��!�M4 "�IRAR����*O��y��F��ޝH!�B	
��ڵ	��pX<U;�z�cF�t.�� �`�,ȚK	���+�q��P�#e�R�A�'�䶦� ��[���8����P��O/���X�#��Vӣ�#*:��%�1����ƀ��l���MND)��G*��T� �*�TG9[�舦� �g3U4�g�4_8A���&��QQ���u�B�&@�s�&t�Q�4e��������*)�E��n���N�|-�C�گ���3��x���*H��`�Ұ��$Zw��i��A��1.���8����$�kq�=T!��o�DMɃ��:��MH��y� ���'Q�9eA�+��&�� @�\�j%�^@�u�Q��������3�����V�8 �Þ�y�V���E~f�W�Ec��.�b����{VND�k�f�g{�bWQ�&�6�#"s2�_�?��y�H1�q`��P��|�j���˰��u�_�|^Dt�՟�Ϡ�J��q�GA���7b9����ր�]�BW</�(�P%f�q��$����9��O�������aUϑHv�k�6�鹦8rw3Ȉ�C�Ȟ����<��Vk�G���7� �k���xh=�4��U�!�(
���m<��)�=a-���-P���j�0�s�Cs�@�'��tN�M)���	79� ��'���T�j�-zA�E�̖�A'���-c�DJ� ���'p3�+@��7�?��/D�@�ڡ�rx\G�m�J;�^���(�ܘ��7�ք@R���f�k����Dδ`T���  �˩�(�ڤ�2r�f�j���@ i>�8O��t�N�� �p��:ZK��[��7���L�%R��8���GtH�q�0֣SZ�]>�O����^�X���\�f\	*�G�dGpsR�t�.��'� :��-�#
���gW-�ԑ�KªmA哆]�u�n۹��]�>mp�ފW�s���:ov(�R�X���|���R[��m�Y�5�.�؋�C�)�m��Qi4�u���"͡,�f�uVpq�%/�&e������Mڊ�R9��	Ї��,��Z{|ϧw�$�xBF�h��1.f;�@ 
D�s��k������X���Xi��9�͉��2�i��?2��Ёr!�.���G��}�4 �!���ՠ�����>lzN%��}�W��s>]�2��)5VZ�48�G�_�)d�}a���M�u
Y@_�d_�f��x]�P>�y�㺅M�/X�!�d��X�aOj��X3W1�b�/�R�=�3m��[-~��|^k�6c�( ����MB��8�+S���#��-��c�X T_�ԍ��d�|:�7��C�BG�J�Zޥ�+��і9p��s��ic�R�'�Ȥ&P޲���V[�nX|\IL��i�ZR���e�2O�I�?V�*�)g��Z�h�������C7���94F����E_J/�]�A�]-�b	Y¤��*�����/j@ct����*<ަ�6����D�_>wD�خ2�E�m���
�v��A�f��
�-��~�Ѩ=ׂ��~���)��9&��3=�F4����!�/0�%��t��>vR..�6b��ySk5�T��H)D���JH����㖏Py9��JKc !�({8�CB�aAH��I��0��{�+��(�v��r��y��ˋ�
�����}��{���#@���*tc���drϻ=���?�`r<�T�b�
9�A�Pa��;�(GW�-�� ���W��1V��׎�	5||��Ic�v���N��!'w^'�3zi_����;�}(�1�H�^᮷r#�"��5�UW��_��ޒ[JD�p�{ك�9&�jS�TlZ��n � 	6�m�j����l�n\����PI�r�
rڨ�V�%T��B��Z��!��&F}J�xm)��(�B] ["Q�a�e��\�@�|������25�|�L�d�I�(l�v\�A�T����NQҴ�*/$2�Pt(��{s]X&h����RI��,����y���H���y%��Mէj4��<z��V�:+�I�`�ĕ8e����b9�/����7������G[�{� ��T�e����ޱ!Z�C�T�����`�	&�0�ԋ:�$Z��-��ʔh���ޘ�#Mycd8K�za_���5��:@-m@�Q>�9�:��=h�<�l�O�R!�t��sW�;�6#L��~��;X8@Â�)@����w�o��Mq�2��h�(9΄�'����_��~`�?��B:�KF�a;��1�у�4��Ǳs ����r��	�6�L�U�\����$ǿ�4)y~��)!�P�1^3�Q2�,A��ͣݷ�1�%X�s�Z�A�B %$c��`��u$'B�K��t��s+w�i�D��6�Ҁ%�-o��dJP1�i+�)�&d�й��_{�������
�Μ�RO������t��*�_�S	V�:p�.�ǒ�AP�e��{�Vn��N¼����%�qfL�;|�v��Oʧ���t mP��%+�ީ���z���c�ti��/HD߄0|2�2ʁ2{}�/�����᤭��$׷)��eA�ؑN��km�{�YLUt��~M|f?�i}��{����8�|V�D7r�4���Z":f�+�������"�r��+�I��W�y2^Ӧ,(u���>�@x��2_^�S�c�gP(Է�y�eCo���k�!��s{����&��V&u""�UH��X�A޾�������8Ü���m�T�C��V���!�����O�����h"�O̩���+�СY.{���V(9�7أA�4X�8 �=g���/���v��bG�����6�F�(�l���]���op�z��7�2Ơ��=�����V��!A�x��o�c�=��B~d�y�r�ӳ^����\������N����g��֩    �u�}�)F�s�{BqB����V!TBAJ�h d�ϣ^�� ����3V ����q�*�(�bk���P�ro�\���4Ճ��B1Βc0�ܸ�����r.�Ǌ�t����'�[䐈���E�gy��9��ы��c3)c�L'wL� h����C*B|a�k��u�ڃĦ�������
9�4��ǘ#C�
RaZ0|q�̵� {�%X���礟�WB�=V����n)��EJ7���m
��%�+=�Ǿ�:�&G��/�Ɨ��S�1�6�P�Ő|�h���x��Ǝ���B��v�d�"g[�l��� M1�=�T��ΐ�&��Ͼ�@��NoQY+Pt���}!�Z���W�'K��B>t戂~���?|2қ;�4˺����U���$g��h��'=~BA����?k��(gz�|���_�R}���ѭtQ/{�/N�� b��t}6@��R��8�h<���bX����c��\�U���u���{;����(������_��k����hh��Kk(�S%��	����_D���v����������a��Bvb�-g���_T�T�D|����-.�{*��β
1I�+�^�_*N�L%(�tQQR�d`�d�#A2L�����G�0�R���~f�=��o5)� �S!���T���&��1�����wH/���Xtf�[7s�krT�	�FV�%ف�,�#��3�_?����s���~�/6��gy�KٜA�h
R}����i�TΣ��A�!��}_��<W��(�G.C����{���RhG�;
C_f
8y�9l�p��H�?�R���>���o`\^�����k�V�U�C� ��E���/ˑ���օJsP]|����Ԓm�b/w^�Z��q�2oҶ�����/k���V�Rڸph��x���f��Y�0l]�:|�d��`
���gv u�Ǔ3=s�.��E )��]��;�L	�`��&�[9����K���%&�S����Q��X4�Z��q�@p�E���0jS���d�u��9`t�t��s�Ê���`Х�Rp�iQj�B�c��&��qț��
�5Q�C��I�+W��	V�826�ښc�M�
g��{sO�HFYP�NU���������Q��&;��&�̥�s��� q=8�š��g���������F�"�M08ܤD8�
��lvx��R����7�b�!���$��������&�6�p�s�8���c�n>�s�
s��Lh��8ߜ�G�.}����JJ{p>��旜�]݃V��U�2�w�py��ZL!q�9[�����~j.�Zp6�*�H׶.0xSB��x��ge�F���"����$���c�`�8����~j�F����{ȍL�^	9��%��������!�~�������s�/#+�t�%�Ҫ1_�B���٦����r���a����ީ
f��� ץڔc�T����.u4^2J:���eF U�R44��x�m�����vP��w)�`I� �X�g��6aKW�ٯ��L�%T�`�d��}���`IJ'���J�@��%����e�) t�%ު�A
�@��퍦�[��MB��@I2�ty�&hxߡ�琢4�����h����3>'�1�#e��Į%с7��s��`(G�(� 9���ʗ�����D��@z�;K�-%AS�mW����4�X��o�X�J��ϴg��d���t 9/�7�2�荳I��!"sŧ18�����[�.vD�ے.q�[�^��+��yJ�XU�Qh�-�qArqNiP\��L�d	@>�>�S΂���C��/Lz�r&ê�GUC�#m�h�9��V�ڃ�`=0.���!oJ�ɺ��N]��jM����iz[ƴ`� ��VkF�C�%����Ot�e���5�HIu�JL|e�Y}��-	\������E����r����j���~♚����q��]y'w��)����|4��˯	o����
�l�SC�)����y˃��z�|a
��Z{3��9������ J�|%eA9�v�ͥ�r��J��-Z��;�D�=ܷ��r�*P�̸�z�1���%!���P�6�����/�������sF׸HhV���1��N�\7�E���,�BY���� [:�1J��/��|��ʹ�%Ձ"��<��Ճ���g��5��4��2.eS}�N�*[�[@�j��T{�<�Z����a6d<�"v#rZ_�XO(J�A���A�&��V��px��7�c���@�D}�����_���XrA+�>4 H�t�k���铚m9%<�K�$����_�bk�;�%ƀ�X��ԓ��r"dNB�����8�RΡ=�|�*\r8�
����tJ��_��$�t95�r�%&i�$U�Sk�7W�#(�YW-��M�����Z'(����F��N9�&��8"�U�FXa�x%�f:�t7	�%|ĵ(�:`�����j[= o��������� .��h�ס�k�Jj 笄D���t������M�fi�G�;b5��p}�p�l�1.�, }�/�w	8 t��]��LF�>��9كt��_� ����'D�d5G�8>+T���R-�LR��*�m]��.��� )il	!�2Bq}�_�Z[m��M�_�����P	���@����/�Fat�H�+� ����z鱷�����S�E{V��BfL�/#�VG�(0�d��aUe�B��3����kΌ�ZY��$���Y@�c����׏���p6��4ց���}�Ψ���x|��̔1�P�*�h�T�JjzW�>�>�(`�Ὗe�IQ����͠(s:���D��AQ�tiM�g
Aޜ7�ڇKʈ�����弍�����X̫o��m���u�Q��{TF	gp\�m��҇)|���䠈��i�̬���`	7��K���h�g��)S�o�<�Ea�}��H$��YE���־N�S��e,�K�$�R�È�*'J�(F��|>O%�A�:X95�Cu�q��Q������ƅ�NKBD�M�>d��(Ni+;�Wl#�� ��U��j#��)�8�֫�q)����"Y�9â6��H�S�#�a��ܿq-3�o��&��]�t�d����̕v�^9J��P��r�9уp�F�
�%4�����F��H)��;�&����T^�)�iQ-(
[Do.g��k9��<=%h��(]���*�e@�p��҈�����P��6}*����@9�p̡���������zPl�}p~/�@��-%!i8����S\�2���O�{y�3=�0�z+�Z�E�snj�3b�Ө�7��T�~*ī�i�l�C��~�����Q<�[���Tʅ4'q�3f �}�˲�.�[YqH��ο�K	߯l�@B�Ad��s>GJ��w�(�!J�
$tc� ��K�� (J��:|V������2=���]��(oB$s���r���k�#��i\��^�ZP�$E���(���)/Z>���g�|� d�0.dh��xʠ l��,T��K��.%3ZqF����Dw:U�׃�J̙_7�V]F�L�ϭ�N���gigL�otz���|)�E����"U(��I�-��tp��� Q�|���-Do�"@�y�	#�pFr;fd���^��g�N����B�1~~����@ZڝF#)1� q�C$�t�\��R>H� �����l��l��>��m&�q�4
N%�l©��c9f�9���ZNEi��z��9�� �ɜ+@����ȉ�aW��=.��Oɚ�9�M���OɴI��nX��d(���)�D���Q�����Ak��g�~%(�8�i)_�s����>)����Μ
��s�m^ӑ�+ܤ��i�T�Ć>��T}S�ÑKQ6�S�4�?MkqF:���!=���m[�")wH����@��ҭib{�F��ǅ.��^>�ˏ��~V>E���l1���!m6��:4��s?�1�"g;�t�A�G���T�7{��x{��_    �ƒ�M;���PM�[)e���>*т��fǟ���o���>isW?g4��ި�1��Y7�r�"��\�#�6=O5ցe�i���a s5n��;��%�t(�4���꾝+X�tM�B��:CW�]�#'hw�s��ħ�P �a�j�#��O
��n:�o���;eW�K�	7Y��Y��6l=nK逰�>���9�����@�BGA��UBI�#�Vf�#"j E���k�}�r�l~s��͆��x�+`JT9aَ��'\���Yp]pz�p{PI�D�P�")Ӂ���>�SBV^�\$�?R����p;�� �%�"	24@�8ي�-EZ t�ŏc�H/YV��?UH�C�u$� {X��t.	�Qݹ=��2"s)��ߙ`�6�2�Ň�E��B��@4�5��;�96 3�����\� p�퇒�GI��1�%��nG���&����T.F�O��@��.Q�0xU���,�(����b{�~~�Ot@Õ���P�ғm9��+ަ�X�� h��1[��m ���Ӿ��T#���g\�Ƶ�ґ��� �X7��R2�l�).
)c������H<܆<��k;�\�Cr�K)���A뒮�pJ,�����{`�T��j���Q"���O;ѬIzI)4�������M�w���dn��y���aF��t�X��dՔ���b�u�Z\R�_摓=^��œ�93���N�,FX62*����l���*��C- W,��9� �h�dD�3|�� MRqZN���-���,���
7'�Zj<R*H�v��6�/�3�����P0OJ�f~I�yF�tPp8ޚC- ��;ܲ��( =���B�9����Ɛ\���!����6�̿`d��8S��A�#oY�/��`K����dE��R���x���Ri�E����G��J#6Z��[ѧT��a�R�g�t�-��rF��R�$��y{��L%����d+G,d��k�t��b���L��u�5��x�x<�E8���9����J)Qǽ�ආ��n��v�R��b�Q_����Gof<��>�RX���4W�3x�P�����- �Y���q`,'l5txsxm+��o$2�CC���Ұt�ft�'n�)��������P�@O��s>�ZP\:���e#UB���#9c�����$'Rrʂ"�|��3E-�1կ�nx�^�Y�b(���2�z V���97�����X0}���+_��_���?0���s��ߒQ`BI�U޲E��ܼ����7}~�+<\�**-�z�_P��xxJXd��S��G�#R�W�W����O��(B�hDN��$�J̝��^$������9q�h;�`[���u�I�#sH:k _j\��%��_�R��W��Z+�Mq��V�m��H�6�CST<b�Ra,��wɾ�����ϸ�P��3�ic���fD�pQ�5��4�}Go�3r(t���O[
��iG���?rH�#�9d �+�5�~il�Yp<�QaJz?#H>!�e�t@B,r���������]I4�E<�Z}�$��[��I�m�rG����SD�zG�M�#��|0�3� a{a����`B��#u��{ݿw�;0�n)g��}J��)�ʦ��HN"4T(h�-��ǯT�C3��������o�o��|G��������gs�xՂ�O��R��(Xw���*���~m?�J�o>r�o����u;��=r6�=���/�v�4�oӷ[��J��C�J�dqR��r�;x�.$J��7�zp:�*� � �Y0p��u��9Ղ���ʷ���b�jC�\ɋ��������-�p{�f�����rC�e�!���/z>h�Q|��q���s)ez0:$��[[8���ܲ�a�p)k\{�5��S=P��KHr(��.��=�2�.U�%���D��f��y�
L3ů&ʌ�K>}���TŦ�E{dh,Ia�sh�+�PX�����x>�m�x4��<�Nh����R�A3����ʷ�-�p�}I��A0���*���XI�n���O�)��M)�J&��H��jKQ�:R%���oU>�m��<6Q�Tal'���E��d��8�񼝦�Q`��g�Fq�sL㡴�lsͨs"w-��2N�t��zR�N���NoyX%��P��;��3�DE��[�Q=އ;fK�����Dc~)%n6��m������^�-�"
��p�h����4�ϐ�:/J���G���:O��Q�3�:1aMs��n���U�Dc%czѬ$��u�՝���pdi�^���2,�܄995��v@ε�:)������V~�r�+�4�!�*��*��	=w+&T�+X���ȩ��cpR�)g��~�y9�.�?�o�A:��.4� �KL.��q�������>4��O�dN�B�VH� �S��x�!�#W��c���`:M�L2�W���XL��_����
�t�҈4���������X��|�9��W>�oP+��t>���I9�KN�%�1e�^��������-���ɥ��
�.eT��t��w��gyj0�lC�t	���ɷ���N)馾�	w�R1Nd/�܀M�g���=y'�E���mT�T"��%�!/s)��A�p��k�[�+��;�R6�40:�<_�s�5(ʥ��ŕ�,���ܸ\l�����N*��,:����-@)%�"���t����d�����	��x�̚5�K����^%��iT�ϼ����q�#�JD9Ѧw B<��h�J������~������m��(9k���/�����S�(D-�^��IǤ�M��[*�HV��@���x%{z����n j>�V��nAPi���bXQ���D�>��>C!�L��6 zT�N�c�Qt�B+����K�Dq����_+m����a��y�b	ū
�4��^#)������N&�3�O:S�F#���Z�Z���0�`.��S��&er΁�7O��v������	.h�yݯ!ι�|i��W{�m ���XڹP����%�*,�=g�c�'륕�8y:�~J4"I���GJYP�Mm%�o��_{b�O���JRʅ)r�x9rѫC������g���Y[�CP��7gZ0LRx��}eX����a*��8������4�����9��}�oȱX؉|]q5Ǣ�I<O��5B�Kp]ʕ`p�{I��l{�����Մ��H{ϟ�|�M�8���(�����>��҆�7���Wa�-���9��0���p���a��H�O�!#-g�#���7o�]�^�\z��tD�x��Kl,ĩ,)p�CY����Oq�)��7�[ʴ�r����	�\G�مḯg)&=`�Y�5�1k�4Gѓ���j��nA[���-N�tF�:4����I�(�n��s�={0�%�j�6 s���q��;(�7��S݀`�R�ٵ@c�|gC��|��6#��E���Eo�S`��d���Jn�:Q����k���W-Ρ1ή;��M�� i���?K*����ʕ�92 ��Y��;4�����q�������I��և�EGYq��<ڟ�Y�Qe/��҉.�	�}*a���/1i(�,8�r���u;R���wu�iy�~&2�G���ƪ z��;<�K\�׽���>�JN|o��� 1�7���J5����
��t`*�Ƴ���ϒ�3�sj���w���Z�Z<����BA�d���I�i���b�8^R�EI�ޮ��_��#t��L鳎�EG�L�F���t��ښ4(t�
�'�v��I��v��D�}/�����2�q�����%��蔳�(�$:�E9���/E: ��4�9Ez ֯���Vg� ƅ�Z!�t����
�b��C�`�M��A|�6ffۣ)�粞�Ţ֢צ\� 9d:oRN%� }Ȕm�t��:�eQ=��r�63 ҹ{�B&�O&1$+b0�lV���;��a"��w�Ot�[2���T�(�t���ſ�X3�2y~BN9<�M1�,)сPi�}��`l�`��0�P�D�u�=*��    �B�!@�[R)Ղ�D���Ҏ�W�&�r"W�՚%EΕ��B�j�Q�*��Mp�IsN:��}�sb�r�D�����SA� �O1I<c0�n��1q��p}�����d�fx���I�z�(0|ّ��˱�5h�ʰ��z��O�e�!V������̆^Q�ų-�9|K$E�D�.�J��U�qͭLnsK�b��Ǖ�96 ���޹yN��`SƊo����u��O�a-0�v�.�w�ˢ|�%f���>�߱�iNI/�&�����she���������sDq��#δ�M8����G�L�`P�AR�@����P�S��PӍo����O�±��{y].%� �7&yKm����S5Ho�oW�5�#���B����YKs�o��s��艐ɳk�BO���f�f�t)�x6 G��PX^tA:u�kV��7���w�Mvq�Rh�j��Rh����� Hs�=B�QQ�������:y�}�G�r���k�ɰ�W?�:$]�[�^[���G���Z�t�� �n��X�^��x���\E�ܫ)��W�2�_��)c�'�;�`�>����ǵ�9� s��V!:IVEII��4L��v}�%7?���دW�/0q���|��^θ�	���ʛa
|[��ķV�S&G�aD�3�ĕ4�,(������s�H�P��������W���/�)��`�o��Iptt��g�¶Z�zL<kEQ��,Z�c�(�Zp*�3g�Ko�MW��V�3�ҘC���O�0�[d� L���>��B����|Aa��Dv u����h���_׋�?��쾧�8�J�?�
,�&��VR���U�S��W�����r���k� ޷���;����,����rMU]D	:�x[kz�%�>�X���S2Hz�<�nb��	�ޝ"f C^��9�A���M��o�W���o*?j�#n�=~�H9����%���)��Y�隺�h r>�W��&Vk��!��U;�!��y<y� �cMGPH*�^:O?͏��>�Ѐ�I{Lpʇ&Բ''�N$��қ�|hB5��U@���ǫ�9�r�h3�B�HT�c-ϭBZ�-�5���4���Ǵ�p�/�A���$�2�]��&�m���P�tċ��L%6 �ak�5�����w��k�:*�K/e-L�h|'��s�sʠ!w�����
c�Px���Rn%�@��z>ߪ/�s�� U(�u���sR�0�dU�w"r�!?��4H!{�k�H�ǟ�sH��$��� ��ׇR� �)Gȏ�d���7�\t �%A�(�� Q&H��po��jo6 5_h�����η`<������`�>��+�g�kz�	���>*$�d�{���t��3P��PB�n�]��?�EB���C=����i4�P(ǵ�H��>�ߏ�����d��|����������ឤ������~�
�Pg�T ۜ���.�a߇bk1?=�8�r��!�2��R��l��︧�dX�&X�����F	�ՀD
 ;N'�F�n�Z��}���i�r��Na�K�N�І��v��@JU�(��F(�H� �oFZG�� N��3���S/켛�0���K�Eu�W��S�=�;��K��钤)*��=~`j?(yQX��AeD�D��j����6���p-8A��TB
��.�=W���
+�ԅ���Q�P9f`Dz��ԏ������Pb���j��ϢcL����H'���$�D{�~�MTzi=�8ἕ� X��Hn��0� �	V�Zp|f:-M�s
�(V�Y�ڜ��XI��6a���*��d�����7�6�!��O�²�4�t��ݭd8�mH��H���� ��OeR�͐����)��Q������~�8�H�ʩU�SssH���r��fFiP�����V���%���PXԌ&Ƃ��T �l}����
فl3�{����@"a�`W��+Y�%Ӏ�;U�D�᪌�c[!���"H�|C�����9�q|n���2Bqz��d�����r��͝���pTn���z����A�����+�d�p��h򐾧����Ԝ5�ɒS��@�<�*�(@]���o�B�y���m����wT��	�Rd.(Ė3	�?�ϩҐ�����U%���x˜�.��Z+� ��e��&�a�\)?V'�|��K���he?�|9� 9����%���ܸ�5��(��NU$�GRpz�u�D<f\ms���a��47��f�艌�A�=q�f� ���6٤��U�_��B� �
�g�m���=����9�AQ�c=U� qe0����؎ (?�CP���AsgT�۩
��#K�'5)3n ��3�!��y���z����{����/9��!�o4,��~C�
+�.���JD��i�Ԍ��!�h�z(�l�5ڷs����/�p�m�u�
�}�ܖ�'�c=0-���_N���������w2����ɯ����D�Z����D��f4�Y^�/ץ�`}�_Z4w�X0R�by�%� �p�u�Y҇�e�P��?�c����?%"�ox-�ˈ��M�j@d�ۋ���D�@
��������>�40�$��K[���b�L԰�bq�d��pH��$��9�#a�5ԃ��v�ľɠD���$..�8o�S�lrF��p�H��ö������#�>�T"�=�oP���C2��(�#C����9&����K+B: \k�712��#T�P�W}��S6���R�������3��[y'�Y�pe[�*��WL��[�9��(vG��i���D�o�ͬ�J�A�:\6�5 0:����,7@e@���L��]�!s#�Q�|�;�%��	ޮ,�U|TݰӲ&�`
��W 9�Y�����h�0��K��̪�K�ߤs��@XEC��)���)�^��t�	U��)DL�v�H����@�|c]:D�1x�=R&��)��#-R�rA|N(�V>F����5~w��9���D�LS�ra�!kN�L.s��<Q"f���c,�).�w��%Ӄ���$(\�E}rr I볷�ĝ� � ���+�g�L���K�w���ٲ-i?JC �i��R�g\ܓ3Q��ۇX���$��6���/W��l#	#¦�\
JF��x����lQ�z�`�t�Xiȵ@z�H����4���@���E��s���ByS�@u�<_e��T�s`��􌟕 ���'
s������N�ߓ�;7����������*�Ե�h�_^�sH
U2��\ �)r�8`� �>N�W!�ND�5��u�jD9PRb|�ۦs*Ȼ��(N�+N{��r�vA�t����8"����n �x���9�7�h�j��*#Z]E�����9�ȥ�� �M#�_�W%���_%d �*)����WA�H���U�ĈY������R���.��"2��*�G�n_i����<U�o�-(�hG�����s���I�%��nd���5|1��Y�A2X@�C�x�)���m%��LCĦn��wؐC��E����p��by�M`�m���B�I[%&c���$����G�����  ��n���]M��;#.aD�������m9�O��n:̑.��'�nDy,C��>(���W<G)�H� q@J���[���|�(0|�9�9�������1G��c�3_A���H����u[k%a:0Tiy� $��)
-����B��_�(ՠ?��<�sp�PՂ��n��|�E����3�W1&�+5���H!a	{%(�s_�jZNp�>{�L(�pt4lpfV�8��]沎�ZSP�\���@	�M@��g�c��:�o[�Vt�V���6?��X�Vh����ViH�Z�,a@���DT�����):�?x��z�w��b�eeϊˡ�]�W�Y:���[�?a�[Ɏ��^�-l`��"W�!���FN�2G���ʳ���;(�PAz&�
���I#���D����b?Oi��=B�"Ǐb�#�ֈ�m�s�    8�~N����:L�E�9 �����U�ӟ;*�����H�vb�0\�cd�=QC	5��D���( ��%�D7�?�?8H��� �W��m^q�������������CR6���
�k����4�}�T��F�"7W�G���e����t���UذO��zA#E�r��鏕�㰦��c���b�]���U�Si8����2�B55��~��놉B�S�G�1��`Q0�"to	�{��)�O��L����{�*��<̗7J�+��"\O}�Ue���//?UP�l����uF����k�����}x�}˷_���(&��>L��(H��*�>3�����v�����*B7t�����s��E�s9A{��nAH�R��L:��Aw��^gL#���>)�o��:�~�Ϗ��Ӌ,C4��s����ëe�0�P~�˂HZ�&�̛����=ol��i������އ�9:����M�����	Qop42#���W ��c_U�;j��t��b��Xgb_�C	��5O��	�Û�����k�	M1N��R�NCy�3�\��z4P��?���`��x�:��W!#��C�ǯ���ojk��U���P���ᧅ�@Iue�$X���eqƲ`�ȩ��*jL�&����a���q�mD��݆3쐓H�M�ӄ�L,��ᶌ ���t��[4���Q'(
�����ť�Pd��sB� M1����4&����\-����""]h��>�V^r}ȍ��$��~^|�%��E����~H?�������1A3���P(�,z�<[$
B�iNI�����oWKio= �MڏUN6�@��|xyrLj83c*��Cʱ�~1�/m���j����:���z����}6{y�܎K�G�8Tu�q)�;}R�rfP�1%GW(��cR��>��]ϥwdʽ��[���a��E�F���N�	%��~;�
�������U�H7@��*6�2Gᕝ�26}��4���*�v��֋�����-�
|�t(+��R��_.{�!*C��Aq@�W���F�^ʫ"x���3�0��|�yQ�c�*����7���;��4)>�y
�չ
ސ*���P�n��mL�.[�R�t�Kk��T�褞)��_Xau�vbȟN|��.����jR;�[��X��ѫ��Eش�90u�Ȇw�#l��V�7�R~F�6R?���%i�o6B�����!�	h�G���o�L�����@,������?F��E��Q�w�g��@�f�M���k��7��p��g��X|�6R����*=�
�5�د	[�iH8rf�Q )��jG���R��xVܻ'f���"�6IY���{����G8��)�2��h}�����($9޿�o��������r�׳�u��hj�yy��'��!p��~!܉���g+��K#����w=��zG,oκzy�|���ZB�!Α}�g����(`�q�"�]�م��R���~=v�OLU���R��#���19����;���8��<]�dD�A,��/�r;�"AI�9x��@����	Zʜm���k�F�����<��}����g"6!"�#5��p{�Y�#�R?�ȡ�P�p㧌�	��β��0Õ��2U�y�U�^J��"��{r�,��}eփ,�
EGw�S�"E�fMw��5��p�
Ƿ+��|8�&��)�ɣe��^M{.G=�J�Ur��[4���ro�Rܪ,�ϑ�`��{4���^y�t��ݣXv�9�& �}|��O��uIz�;{��~��ޣ^����	��Oj0
X'�!��T�����,.jT�z�Y����y@�šR��#��p�xg5q۵G�ۓ6�{�k�U�v��o�-�������k����O;5��V3�D�IiҪ2�����|ǣ�|ۡ��L�} 1�����?����� �������_o�����߆�9a������~�i���-co��<@Z�����7�G��:�}��?R)�r'�}|yy��uצ�y��X��}Bz���Mq3��&��7]���lB�iP��Ƿ��}Qsat�C9�JvWΏ���r�/���Gɕ�/��9���Ǿs���r���t�3��*��%���s���X�������VyJ����kO��x5�&Į՞��M��/y���ST���`�~#E�<(DE�)�q� v����<�*¦�>�,��ٔ��ݾ�<��p�!q�r�>�/7�rů'fy�@2�4Qrˬ#~��v�m�u��2�F3������^�M�gZ�=5}��ܡZ.>q�q��Jk���q���2�󤾅��BNT�p�T��*��'
��vo��\��_���C��*��a�����}��Q�B�Na^o��C����,��o��	-lh���#.�/��1�+1k�_�W����߬7�>~�k5�\��������e�Y
wo�iN�wf�qݯW�|��U���:���"�'u�]3�0=��w}�]c�D�q}<;̆�	��d��S�
���
�k��!>�᫭���"�)���q�wX%�M��GQ=Z����3.�^(9p��5�LC9���$����#x�O�����\-^F�ϴ���B���o��l�d�X,~�	l���z� ���f���K���g�l�q�o�yH��P�7h�~�<|���v�Ң]�'	�#%�|��%
M1;�
H�v}�x�����L��A�����k+�n�5��m�^Aગ�Wu�u�6����	���З�3Rx� p�����3/�M�[��"t��QȾ��x�H��S6�i?cC%y�Ry��l3�
Ek�G��*B��r�*OF���·��ܿC��J���;e�yyB��eC�Zei��3TX�"���qL��A��3�Lf���/�(3���@u�I�7����Zb�`ld�T�p/i0�;�M���[ϐzT��1����W[�é����}��7~p͎���& EǪ���w��}O�o:L_����p���f׌�4�_^�o&�k_/���`Y:�A_�.��Z�D�Bƞy�hMH$��^��}�D��B����;n2��
�G�cj-Q�������q�Z��D��3�H~�W�>Y%:?���\��(cYɞS&���ˬ���5���E�h��FwKV/�alX�)h�7���y[��UÏ3x����pf��z߻!��0hh[���Y��m� �����|��)3�l���?i0�	��K��--��%C��'�G�'��,H/>�x��D�B��K��"�Q��bH�.�n�~�殧ʿ����s�Ӱ�7aSOs��6'g�	ئ�c\�n6�#����]�|8�Ap�~���ۻ.z4�Q�xBv�K�>ލ�q't�^�,�u>��57TD+^}`0CE:�:\�L�3V��0�+��&}����o?���`k��.�PY��t$2CAz*���HQ�������H�5c�|��sw�xOc��ђC��sn��Zh�w>��:�
�i���t45
R[�
5�+L��	E���#�i�da,T�z�VN@�/*��4����{:R���gz�d�����a�uZ7�$Ԧ(�e�F��X�6��Wf<
���)�xڡ"}�S$)[Q]U�h��SClB�)���i�p�H<ρl� |��^��� �oFd�j[�p��/�$�|�-���Ϙ<�� oZO}�#4���q~�e��-T)�~�"A35�N]�~�]�(ېy/��C	�c�PX[��~���L;��GA��95Ҁ����M#Q�^T�?|/����I�m2�ۤ�ˉZ��0I5$5U�Wiz{�Dv3T���.y���@q�d��ZÂ����ʷ�����2��e�&�	H�ǝ>^���`���=Hdw*8G@��	�c���掐�Ӓ�aTa;qY���^��Vahqv}���?p`���{��.0�U�h����I�S���%l���	j�}��c��L�=���C��� ��l��+w,N6x��P	:<I��M�e��ɔO�;��(	p�	9(5az=	��a�����>1�t��)WK4!h���Ŋ�(*.�[��9�^�eƮD�ڙo?�th�����(�����b1	ҳ=^�}�pYs(�xij��|    ����8�Ls�x�O?k�F'-w/�z������jO���j�M��zu�&D�D�x3�o�Dc�(=A���J)����E��p���'(	T9Tj�����21r�]��]�U�ل;�	+�m���>a�>_�&����}�p��X���s����Q������7���y���O��??1A�H��]%�o�(XR��%��u�'Y۟����4gA)����ۘ�g�)7��F-4��{�T�q�u�=]�F3���F��ֻڄ�aT?���k��k�
>kh�>��N����i�>���%/RXo��P۸"������N��4js����/���Ԇ�x��������	�3먈���ď�+J,N\.�z��5�Ta��R�	���迮�]�	��������1�m�}�qg�+V���F7�+<��cv������I�jn���XO�{.����������v�h;\��h"x���b�"=����=sU8���%�{�6�2>�Tj�c`ܗ����j�:C�1���}�y�/��a�������4��
=��O��!sr"%�ߋ��B�*D��_�U�R�z$�� R���M�8�*_-ӄI=�����Yj[�ʜ'�"�� k"�L�Ѳ���T�ceKB�^�������rY��S��O�*\��T\'b��r}_n\�9QU����_ʰ5�	{���R�̐x�M/�C������-Bt�T~GA������A=���@��`.ɂ$S��D�B�%�a��D�h���n��!iڧ��z��F�ԮC��n�@�2�ȳk�	Bk����J5a۲�(��E�F� ��;����P�8��ǫ�cI���W��%U{��3&�W� �����yO7j�H�m�M��H�����[�(8�]	��߽t��V�6��PE^x���:Y�>E�Յ�s{ߏ/�a�Iɟ�B��U����Wq14���%3�	�ˍS��:L����0c]ٷ�^��C����ۭWҠ}�7y{R"U���m�����6�z���4yb2�gZ!�>����U�
ySͶ^��� ���i�y���2^3Ye��mt2��
��ZV�b�~b��t!���U�g��ASC�4�/?Q�b��D��8��K�z����/�)�j(HG���u^����	�F�N��d�������	�b���}�>#��l���Ҵ���G﷊�u8c��;B?)��CA䔺�3 ��!��ֺiw$�=�E��x(W3A�~eC�S�S�/�+}����<Q��[?c�"����X���x��d��V�h�<����"H���8)�	����wY
��&��<>^�z��k������ۨ2j]
�q��&�B����gS�ᐪ��x�K�J K=��ʜ%������o�f�P�i�̷������>a�5vzh�^Ǆ�v���߲��璩�t���G6���Oه�C�T�V�x�;�ox��ȳ��aq�����c{*�vE�)@�$��RH�|BK%��z��9|<� qLwtn����~|��8.W�D%�z�_|�t�t���a��=A�H*?��R��*�Kk�q�p����i?�o�(������Q�l!�im�}}�H������Ł7�����V?�����0�j��r�/��SV����~��|��E��GHw5D1b����b)V�L���!e�ؓ��:t{���g�q]����6�-���`e�X���ʍOj#_��p��~*���;[�tt�L��=�<�ht�ԁ�i��u��L�&��	�M�P�d\��rت$] �m�p���;]���QЉ��v�����(�>vs��P���j�$L��E��c�OS#$�מ��Ml8��Ǖ�6¡C_�3�/�'�J��@-A����������(���:h������z{��2�Rp�=.Sz���&�B8�>�r��Y��$)5��.�����\aۡ���kp3w�����|ovw=�Uu���"�p���:����ծ��'v�k��[��9O}���"hǞƾ�������œU�h��0��������.��8�.#Q"�{ǵ��_�Y��ƞq�Rt-
��C��EiU��W~(�G�O64�eh�p��u|�Ql���y}:,���;݆iK��v�J��SGC�\���� �c����~q�C��W,���B�N��w|F6A�@�	�K�]���}�!{�5���D��Œ��J��i�)�2t4��k��E����$P��h�j,�z��C������^/�}�:V��s�˾O������針�ړ�ӑ���t�;�ʙhBЮ�/^�MD�9�ߥ,��)z��Z9�6O�E�Nx��@�5|�>B����m�s@�8wHN��x,�Pg���5��)��Ib�z�鱺�W+��������~�=�ڗe�~^=$�)ܧf��"��.Ot��鋥�ӌ��?��.G���R����.��*����>U�"�l_hczƪ`y�]�}e�M����=�[�b`t���űϹ���(E��8�#�q�s^8����ݥ��bRw�Ǝ�x�J�I�0�V>Ŗ�fw)S�\�8���P�E�'de���ק�����L����3������`�ik|~�{:��������F)��4>��$��\p'�@�\��7F�>鿎X�<���h�"H?��x�}FKA��ү^)��N�S屲�5O[���L��l	u����c��Ad��g��o|8�y����c��z�?�*��촉q����q,����=�<Gg����	�'>���-�J}�������B�����`�繻�Eu#� �.�.�}�֯��z9��f8\n� ˿o2�����o>.��0D��Ĺ|�C�v&��ҧ�=���P_^߮cMLOd����"�>�{�Wc|T�q}�����i��I�o>������E��&T:(k�ї��4���!j�������6�A�\����wپ��(L����}ޏ}����cN�kT>��}3��X,��*P�d�~��*B�+���F��*�J7�aL�&T�9�'GҞ�&L��?���s�8�Z�{2�`� T;(��9y~��Ĉ�9RI2���	ѓ5�Kz�۷��,8�9�������)%I�����X^T
_M���������I_$���_^WM�.{��Q���f�탏:-��,�b��ݣNK�;ۧ���룥��X앚����[Y�t�|�YV5I�i����Oį��*��9s�y�M����J�=�ՐMȊO3��Q�%ҧ�A'���`��J�d�$P��Mɂl��K�Yh�����n� Q�P����������C�b�oI��0�������k�e�IO|s����*-=���~7_�j(D���D�f�0�b_k<;H$R��W�i�=l��&f��#Z�{�3�ͥ8�����5�'p��Hk���9�,��'�!)�гw�"��Q�`g��=��\)�lэ�))���2ĽI��y#�펡��nK��B��j���ݠ�۝�{rL~��;�Y#w���Cc;���M�\EL#P+F5����m�D���X�=����5٦B��&P@`���@��~c(&-������[3�!���!vN[w�x��2ܭ������hf�0���$�cfV������FF�c
n9b�<e+��pp��\}�)e�:�M�U�����	��݇,�����|pEQ`t�j�ڶ^4���g(�sܰs§�|TpGEv�������r�*�Wꓑ�&:�~�)��م�l���+���ys�ʛǣ2��K+$ξϛ#���M/2�'J���������Iފ>�*�uz�5nF���
@+�����P������nַ�{lAkY�#E'��x�GDӸ����ڄ�e���-���e��L_H�F�o�<�^-�z��\��3�aб'y���rN?�CQ�0%�3��%�����ϖBf<rL�~$#'i�7��vD2�
���������Ц�M�zJ�g���7.-�t��]E����R�}n���k_����s�8�l��(TT����B_O=�D�3��3hI�	�xʏ�qy[o
�2    ���ߏ��V��Ȟ�<f���^����ёj�Iv���y<�J��rs�05����nhr��k�^�o�K�Vؒt$%����`�O�`������\cӷƯ��/�r�綼Ud�Ӄ���Y�lU~*���y��r�L�*�;g�:�G���ף�H���T|VK�A��<Y�7H�N�~߹DX����抪ea8����@����H�p`QaW��h_J�q�M�����h��0?��,�P����լy������x���(�H1�1ꋠ�~Z�(,Y:I:̩�!��[�~<���0,E�ȡ�8�="��˳�/�pB{ƍ���_(��k_v�6�/d״̈́u�b�"]Օ�+�'����PQ~�V���8��$9�>���0|�>�!�������w�i�"G�s��Y�����c����j��oF!M�!y0Ƨt��h�l)9b�	�Q������e�0I�)3T��¼^PZ!Y�~4�>b�ff���P��c�O�h�
�UM�oO���ܛ�t=�D��`��[9<Q��*g4B���ڿ�ϗ��.���PT����'
A�#{)��H7�_^_ܧ�����I��;���[DG���\�e�'�̳0���Q��C�i�����m� 0\��{ƕ�+�|��W�D{�����QG���},�}�MCI :H{�?��j(D����i|6O�^ywGr�8�"�e;�-,�xy�AzK���C�Jŕ7�貽<먹B��(*�O����XQۏ+Pf��LK9�By���9��z��ø�33���T���T��{7/?���gF�~�9���,���Q<7w��a�>�=��a����Hs�F�6���8CM~����^ޤ����Q)t�g%?bE���B�Bl�y��w~kT
�6S��K�L��lwO����/r,QZ��J/}c��˻�Ht�~���h�KM_�t�qw�}{y<j�jzH|���@�m����
AM �3�U�匌J�#���Q�S3A���f;�Pt��ˣ� ��6Ƥ�F���b�)�9�hq49��$�WA�4��`��߼z�~ux��K���#�n��{J��!7!�L:h����E#�*��	�ݪ(�2|8O��R?ݼ�ۿ�7t�Ж~fB"^I��]{�1E={f���X����t)���R��=�Jjf=��T�����ш��$�a�����lM�4��/�i�0\2�zOX���/�P����>AI�� �D�`���~����#o߈���+� �����?]��YGh�����U��c�����ǋCmB�7?.��+��wb�F�Ņ2�F�X�"rҦ�o�?l� �/:�M��L1�O�^8FlB���/|8����<��5$ g���ڨ����\���@Ph�|<�|=�]�C���		z�(=[!��уQ.��⇒��&@?��-��&(�˲�~��0M5�*�@^���u^IV��x��FQ;��Ȼ�M7�>��  �Zi?.`$��^v��n�0�L����u�.]~��G���%B���K:����%��۾���t$+\$��m҈vd��|���GO�*&�4i��t��@��8nb"��;�vj�/�!B�:�/���C��eQ��f�clP0���Ø��[�n���I���V	�gp�	������)�TΏ�Z���f����P(�O�w���P(���6��� ��� ��<�âp��xԾ�GR��������,��2}�K��Z�����"s#%"]Ӽ�g�F��4,�ЕN�9N*������S�Du�����r;��"��j�n������^˸G;U�c��O,zgl�����$��3ֵQzRx���]w�f����pp0���ކ��r�=�S��[�e��+^`��9��͖�ac_9�u��i��%�`K�_?C�@\`��嗋����|}yҖQtw���B�]�\K����0ƕrȖQ5t���·y^�p9Q| [Ʊ-ű���g��PA�nW9�Ufw���(�z�w��:����������Q�u7/��@���aD4�Э�����AJP��	CE��C�*f+�z�6���|\��k%@����_�?����ǰ\��l�Z�E
v�����~�~o�w	�Ia��0&'8�����[�U�u�w
n�@~F8߱��^A���Qo�(��Q8��vFj��8YJ�(�@e���[s���D��5o���q���.G���������n�ݦ���%Yh~I��̖̚	�+�LV&�UFRc�s��j���i%�Wd��?w2����Ϣ�b�,�a"C�Zѩ��S��M��%~~h���G�cB�	], |��5	5�#Dw,��NV�#2��A�d����Z�P�$�P-Z! Ϧ4�	'DG �U��*ڷj�U���Zt�G��Y�'[��Vۈ�^u��˾øs�ñs�T�d�L4���,2N�d�q1u�ON}tW)��A���8�6�e>ṤOn;�O�D5PI�t��
��֋P}�l�;V"QT A�B4T�s}��ʠ�P�R�����@�@��*�"P1��
T� mmg(@��_�tL]�氲�/�7krH��ߺ\�FTu�0M������#MUPg%iju֒�xr�A$F����}��Ql(�_���5����Ep�g��M�����rL����wJ�D����f�����S�Q凨���Ǉh�rw|^�f9�$�NV�����g�����C�橠�l�
J��Ʃ��l�
Z�MSA�yQPt�@�:O 
j����2Dn'wEA�vrW� �`��!� �#��1G�M�#��8����/��tX|;,�Ͱx����7��Շ?Z�_1�W''.`�z+>=vWLDjq�t0�	Q��*v�4�PLFj��t9j��6OFfz[�����GhF-���m��sV�sV9TsXD�Q��P�A+���ㅓ�>|ҡ�d-lT"N���P�ZFX}�:C9�ύ��e(w����ЅUE9>Շ*�&�W�|Z�J=����O�6��'?u��Ⓔ��C4=���1و\����n��c�8�DV�ަ�&7��s��Wj@=V��-'��@�P��u '4�Wo_`B�Љޒ�=(:&O�1����f�\�{��4Y��v]�����AG�;>�4t燴O٠#��P��5QMBE��j�J�v�D;\�����7�&�Ô�9�3��o0v:\q�e��7�ʌehh�T�>�<
�8}i�;�� P�\����Ij��^�1%�Q����lA�rJ��Q��
pU�j��*�Z���Yp��,84����4�JQ鋠��dW��Q1����[c�͋H�`����f�e��L�L��I�Y�df�e
����2La�XfӘi�i�D�O��a��3,�h�!���V>r��^ѾW��#�'Z�D�9�G��r�ם�����~�q ��yHy�qB��
!�Ad�����D��yY�J#����隘vX�(�KCm��ǚZ ���f�ݯۧ��ߎ6��I.SpCf�������|�|�|�-�-��_-�Z��/�/�g��������f����YI��XOq	�6�o�����6}Շ�7^��G+C�t�j��؎Ƿ=��ұX�D!��iY���epl+X��Pfp�+X�� ���m��z�z�k�|�>������%k�+�jt�6:o{�ֱ�`�w�`��k��c�_V��0HMoJ�_���h=T��y��.�ŵ����TS���T�րT�E+�r�ԛM���4:f�Y�4:f�Y���e�fY0j�ce�ZY�����hU\�bg-�5\���h8YWh89NV�N�U�ب����ɞ�H�Hr��5��?��8v�[�~Ǐ�����o������*S [f��q���$�&���=H�4x;g�Us�݁T��n��;��[��H���l;�U\��Ŧ�1��˱s74�1�9%e��p������)��y���7���@���|s��}������i���W �rR�&\?-WУ����զç�݆WQ;�W+��WQ��t�    ����N�>�.3���� ^Z�B|zo�k'�:	]+���_HH����)���CV�i"�0�C?���~m�w�`8���8�b��q$=����Q\7�fB�mw�V��xV/�fB�g�f�hg.9o�&�&�Vi�㒝�b��z�lM��:�é�I���4���9�2�vzO�`2�5�5�L�d&ɚIGQ��Pq�t�sM�|>��~�I�}$k)���O�2��F5�z�K�cg����f!�q�5p��U\^�s��5�u�S���ǆnc�n�v���]{b��K�;{ȡ����Q���8���C �k*�ԡ�59ܡ����aOW&.tvb`�T�c�إ���p��Kx<s����wƦ�[���Xwe��U���GĚ�.�8OV#^�B$ݥx4���`���g�s�Z�Ǯ��˞e�%i9�bVκ?��,�Cx���vi��3���#�����)k�6�gB�&���z�C*�~q�=�e^�߇z��iu�c�2abS�&vN�8(�Εw|�O��<��C!��0�������Ј�x�%�j^d~�1�:uw(d�����Iyѿ���D�tN'ph��&J9M	�W�:��x���ӥ�]߰�T��ݧy��׸U�7����K�HTCg�1w6JD��o�7VD�h�2�A���,�����b]�K:����t&��CR�Y�������R]��$�������x�-y#vϊ�5@��PY@��, I@a�P$a��� 	�,ʀ$��Zh$a���
 	�l:�T�;��ǷN���*��s�<y�b�t7�=����O�i#v'�
��nO��F+� �b:Ƹ�Sp�	F��`*��dz�p�`v���Љ��E��}� Ó%���<$!�3}'
�'�����y?]��cF�}ڠ���	U��1׭�B�@e�?k�P����?AK�۶Xh̭�a�_�K����5�'N6>�V^b3~-Yf3O��)`��j��D(|2�MK���IR����C6��Y�ێض���b�q��R�ޞ��,�n�(n\�EG7�-��K��eT}�˴xZ-���Ue��
N-8��
8uN�Y�
��1���P-���u@�����	M�z�`�y�&P�s�/������[���1M��sݤ}�˨��eͭ����,W�)!f�Up�j4���V���Z��F��<��\�q}�h��u�c��њ��P��5�Іg��:<���G�� 2W���hng�@s��ōz�q
���C$x/���Ep�E4����\g_Ds+8kК+�Ak������5h�5p�VW��R�P��9B#�,�A�ě5�x���R�g4�gK2�Z�Y��\g�Fs8k4�k��(n[�Y��\ g�Fs�5�%p�h4�ũ�x	Ʃ睄t̂c�7C��=�����3�	� M3�5@zivڍX �5�q�PhZt�L���S�bj�e���� ��W�[q� �i�;3�ƝHrX�7+�AN�'���8��g���a��!F���D�%>�ѡ!�-��LRC+��Ij� :����@'��fV�f��D���fV�f�Y����O��d}R�f �i�kf���3�Qɔ⮆"�Y���N�6@'�PtR����|�ܬX�D0�b5���S�.y�߻<�a���s��Op+wFW��*�	-@�}�Z���'tj��Nhj�ft�~N���8�AH'�F�6��BYN��	���P�
e٠�	]ٻ-'��'�'����N$eo.�d>�d.��H�i1�N�PSt�"ӟ;�*�IHHi4u��FW���h�)�V���{Mn =��d�Y�"��g%� =+��'�J4	=�V�I�ɵM�p@��?Ϸ����kp8	��tp��EXŕ^=�Cs�u:'���9��y��u�iݫ���Xg�[h��{pj|-<hIe��a�, ��+���l���Ղ`Q`1`] VV�M�͂<V��cЂ�ῲY'����'2���t�\Aj��X��R+��LV�Z;c:���VϘM'������&ٯ�V�X�Ld �ir�$T�.��d"�#��'*rl}�!��'
rl}�Ǆ'�Y���@;��k��ѓ<[�c���� �;�h2�tl}"H��'2�tl}"W���Md�X�DV���M�q:3���Q�3qnˡ!g� 4������9X�Џ7k���`B;�O�Xs��cq�-c�l�t��	�t�kM6��t�Ȱ���VM��Ԫ�қZ5�@zS�&3���n\:�@g��g� ���B=�|���x��r�kC��D`е!M&��i2��>��\Az6��ҳ!MV���p����5��!W��o�3�IG����q2x���|=o��h�����A`G,Ö�0�v���h~}�0��k���__3�9(B3��W�������4�Hd�&.fc??��D׷�ۧ����s�qGT䖌�Yo��w>[��4�hP���+l^��Ӥ�Is��6��`7���7���Gjh��������h_/׹ŷ���GC�����m�49ԝI9/�&�H�����6���߶Ŋ�m��HA��7q�T�i��|�&�4�rr��Ӣ����O�\���?=)�?d���s�h�j��i�j>�@ؾh�� ���$+�����~f\3�t����"_G�����SR�5D_I��*�!�Z��T�5�����__M ��R{��&�o��h�zm�m[�hQ�Ώ4�~�ME��̧m�I*�f�8-Z��}�mAWȟ����F�od�� ���O�	 ���tt�av��T˕�X�ͷ43nIL)��H�����U`�NwJۀ��)�	�ζ�z��L]S+���j�L�R�������`�q�����S�-���l�Р#�������BZ(�:����i۲�;]�:qC�9�x�#�-H�u�Xz�p��|��ep��p'P�W7O��oÝ�
ΊOs8+>�!��|n��r�/��8��|���A�L�'A�sd�@mQ��	�!�}>��!ı�/	i��{<�~K��� _|\P���3���$ި��[�7>�K�orm �\���B��!�3be�#�".k��(ř:���5�`�	���b5#>q�pQHl�us��ؗS�����x$���R����� ��}uH���X��>��
ct���5��8b�/m��meWd1�@��ʶ�b6a4��q�M@�@o8F�OFM�ԇ��l��� 'H�F�A�34���x��k9:F%@���!|�մ��_֖Gq�6�i�X�$�\����NP�C�N�H��5@Z�3�[�"?A�6�i�:A	�6�����W�z'���'��{'��{'��{3S0����O;L,:8�ә�8V!�"�e���TW�q�B<�4w7�f�J��/��S���Y�\�K&?������7&^��]��>7�ӕ�̚��ȦI+�@�7�t��r����ǬЎ�0����t�Q�:Zݏ#WR��V@ǌ4X:f���5�5p���- �dG� ]��hT�ٷ�8��4�A��tPhǵMMB=�mj��lS�Џk����t���OK6�H�����Ԇ��7���o�2��Ep�k0��w�� [��
бu���5W�9����g�lB:n�{pΧG�P�k隄j|K�(��Z�&��~5���Ihǟ[5
}1�j:�9G>�CE��Qd�������pl�@tlN�	�gs�� ��U�+2��h� �lD��c#�o�ڈ&��6��x,�|�,��و�%�F4	5�<���#�ۄ:�=E-RG�j�e"�G��b�Q����vb�J�X�{�|����p�S�Q���R:�|���OVk�ۃ�b�K;> ���I,��σ��c��i���v�$�O,�=�W`Jj��o<�(s 魃4��>�L ��T����kn�L�, =-j��t����
�\�hQ��o=��C9δ�A�Ɵl5
�|1�j�t�RKJޯ��?��0��fX Z��
���n �M\gmH�c    G!-�Md���Ep�0&0tc"�w0�Ѝ7L$��M	�8v9�Ўk�
�v��
9��BE�"`"�$w�8�IfvgBP�z��Ǜ4���;!h��t����hr�}4�@:�eg�~1i4 ��#�Fa���"w�I(�_�ijrWt�j�<W|c�>Ӳ����n =W\���V��,l�WZ���Jk.�s��L ���&3H�+��UPgPj�qǚ&��i�qǚ&�w�dX�o�i��b i:���#w i:�=l�BG1ͨ�BO���hWT>�̌����[rY��"�g������B����
������pP�?�J����ʀ���ZMG�3T MG�3�OQ�3s\G��>E�OL���(񙁸�(񙁴�(񙁬�Ь����53��1C����e� �9��Q��ms¿�3&��~���:�>xӽ�8o�d�|4��Ls��oıT��A������˂�t?5��u�c�~�ϻ��iC��~T����G��]�g��q�^�˄.�5���P�+M���:n�1��,��<W@�\C.�\Ccj���.`�)N3�<�i&���8�$0���f��4����8�@ԧ)N3C��<�p"�5�	sV�����T@'�i( :}t5�ܳ^5���z�L3�U3+�Y��)`f�j���W�@�'�j�>�U1����뢦�zL����1�Do|s���K༩Z��7_ir�̕, �cMV��g����0��Jg�~�|�o����=��Kkp�h�kI��޹��`�.*..�ˊˆ��Vŭ�[�����|��*�t`�`0�t��0���]t��w0�Р
��+�f0hb��f���>�/��ؠb�� Y�y��o,lx����1%t�j��}	�!���-����83n�DTf�f�"*�ǳ���� ���eD��x�m\0,��(�j8������ET�g���HJ~�,��@I�t?q�>�?V~�GR##��F�GRrIF.�HJ.��%@I�%��#+�d#� }deW��U�>��_6��GV��F~a��]��?/��ΩPb7�ӥ.����m#�	�S��Jkٓ^�t-���� P����F�*���f0�]T�N�����o�Ҍe�p*��j�
�Ζ�;t�vT�A':��f��8ӯ�F�zP���2~�F`�ӱ@G�� kp�t�@���Z�TZ	ł@��P-� *��̀y�*B3�ek�ѥ<��N�b�!�9����Z�!�9h���R�!�9����J�!��uh$y�!_fh4m�A8Os� �����*� �����3T4X :CE��3T4�t��@g�(�@1:�jh�f���9(���^��9����V��9(���N��9���k�V����Xp�P\ 瘫�"8�Z��KX�(��L�X6��	���4ZS�P�7�<f.;����n�b����%>��c�� &&����!p�` XX,VV�_�_�a��Gr�.g�L�+���`�P�1Z9��I�-�D%�����J��ʱA3Q�1Z96hf��.g�L��LRrLV��'����c�f��c�rl�LRrLV��Iꭓ���LR֓��4h&)�$G<�LR*LF�i�f��c6rL4����cZ����k6�5-�V�	�X����y� ���A8,��Y��X�ϳ�x�g��K�>�=N~+;����Ѹ�)`e���1ߦp,��5���Ζ����:Wz4��V���$�w.�y_T�UpΒRq8�K�8���B�x��5X���]�),�0�%`v����.�v�®V�z�V��C�Є��P�A��KaC�3Nh�w��v�� �1F���h0��j5��Y�jng�����Cs���m�h�P�U��2T�hXs\?y�%%Y'��}Ҡ�B�]�0ߓ���'4�	^Ohj�V����ZqB��N-�:j�Ϸ�oGm�ʓf�Щ!���)Ʈ�uԀo&���s�ü�lU{�E`�(7�%`���Ɔb��c��5���[W��}y���R����'�W`�S�}<�_��V�l{��܄�W��k�	e�D�8�����{�a�=]-��U�OX6W�>ac��s��!�H!��Z��%G���>�eҩ�qBйS��
t��1,cB7�S��aڀڲ 3ʎ~G�9kBPoΚ�ԛ�&4��	���9kB�-[m�DBY��6�P�Si�BY�.ʉ��l���ܠ*[��DBS��ɉ��l��	=�j''�S��ɉZ��}�#s4�m���>s���>s�듼o?�৭�;%!����;%!;q�)	ى��NI�N\wJBv�2�S���;%!;q�)	ى��NI�N���`��hЇ���#/Ї��k��x�A���������J%/��(�xW�*�h��	���������U0��5���f��Κ���Κ��^�V���V�����20c[�#�X�*Ԋ�X�P�Y�ingE�������*����*ٙ14�e�3ch�dg��\ggͭ�93��g����Y�j�F��Y��10�2Uc�Vi�øp��9Gi�K����ZF���N�
�(w�
8�܉��Y�N��(w�ન��h|��~>��H�nX����y>@ɕ�%X*긘-E�)jz����fN�}��$=[�P$�wVU@r}�ZhHn��"g�	4JO̺�#a��� H
[���8��\f(�����Gڋoъi��G�o�
|����Ⱳ\!pI��,W\,�пt\G�OL�����ʲ@��cjeY �4d������0�d��@�i<Y�<�'+��g�Ci�T �,y(��>E���!���V��+�o��*�=E���1��7��\!l\�����͊G�:��Y�LؘԷ)�����o�p��[�jw�ؖ��}�����I�6A��I������]��!�ܩ} �����9�,������`h��g04�53�ٞ�� �g{�8����n ��6��q��6�o�{�7�Ќ=���25y��o�f��e��Is+8� h�����*8� hngג�k��Z��Vq��5��p��\���[c�6�[cІ]`kʰ�Ơ�Pj���Ơ	�Pj����±�a���|Xñ�aī�c+ÈWc�W�����Bv����`�9{CGs�:���������5pv�(N|���pv�h.��CGs	���5w��؀�X�b���70���y]�M\g�6q8���k���47��uq�6q����EpFk���M\g�6qP�u�'�0ڝ0����uX�y��;k.C�vA�j�P���&�03ЄAf��0��L�v���?a�&���Af��0V8�.�R���Ld��f'H{�5��,|&�Z���0���8f.�;�q�\w�㘹��hng�}4W��c�Up�8��;�Rv�U���XK��Jō3��D��Q�`��y���L���)w�83�N\g�܉[��)w�
83�N\g�܉���)w�8�7�U���m�;�4u�)w�;�N�a�܉�:�T:aІ�J'�0S�Af*�0��L�ێ�q�J'�P�y*���g=�F8�(_�Y'MXfī����
0#^�!�Jg:��u�nG��w�<"�T
�1=jPN��079����3WZ@��y�/|��E��D���m�ɹ���mh_o�@��|x[��Æ���\����\P�`Y�E�Tf�t��6��kY�QWi�o�����Q9�o��LY����6͔�Q��o��LY��'�6͔�QY�o��LY����<F3e�f��L��	�LR�IV3�EO���Lc��怉L �.�>3H' q"W�N �D�N �DV�΄1�H� �M6�ξ�&��~���fI�HgV��I�ȉ_�@�HgK�4�I�ȉt�@h�	4�@(�	4�@��	4�@����L ��|t4���3�C7͏���]�;��#55������@�HM��@�HM��n��F+P7RS�P7RS��������Gj�ЕU�I�ʍ*�$T�xQ��D|�7+��L���fŉ, �Yq"��3+N    $Vpެ8�X�y��&W��Yq"�.���H��	�_\Md��h"��\�B4��r%mJ@�\�BV4Y@�wK��� ��4�4�����X�Ldҋ�դ���u2d�3�}:��A:���@:�x"�#�B&:�,d"�#�B&����,���P�����ǭ�ZQ����
R��8U�5+J=Ɛ�M��^1��o҄b�ߤ	�@�o҄�@�o҄��7iB+P�4�P�4���M��q���L(���L�1�9�&�r�&�roL(���w ʊ�^���e�I���u����h��AYq�k�zmPV���^�'�F��e�I����'g��H(+MzMV��J�^��k����|"�+o>�H�ʛ�'r,��G���tPM�����s@5�@z�&3H���
�s@5Y $Ǳ�`�k� :��8���k�z<wM�Ў�i���5"��9�8�oj@��s<s�eu���b=6t�l�iެ��H���"T��f���Hl6x�Љ�.�7Ղ��݆S0�9w��s�S���ק&H�M��
����ټ���ټ���s��]1j0�m�L�1�y�Vj`�#���hssJ R2�,*ӈI4R�,*a���R�,*i�əRҵ,*��zS��,*��I�R�%���D@�ڹ-�X�T-��w�9��y\s '4Z4�o>���Ur�-n�V �Y�#i^pf6�Qz���U0'���
8��As��⠹��������P�ș��щ�lz�Ep6;��8��FsP��7�A6��Ơ'���'���'���';��
��4��asthڰ):4e�;��IС�C&?�Ơ
��Cc��r��0,���5C����E�c��h+1�@���xG���X�>cv�Z�PvO��B�]<ir�2��&2��G��e���Gښ�@z��l ��[E�A�7n5@z��� ��[M&��ƭ&3Ho�V�+H�<'*��s"�#gY?�H�ۂ��.惺�ݘ wZ�Z]�/��vܹ�i��T�q�N.�-�6NmrC&��b��Ԗ@I��ܤ�-������K�m%����LU[%�r�e��*(����S�J�e/���2���-�=.��;���K!�`�nd/�����-������߶@�r�/��~��G����-������߶@�Q��T���k�����^��{�o�}B�+� ��]�`/�m�O��e% �e<Ws���<͌�-@�r��YUK���,��$k����βLc0�rLaHo�d;0�u�g;��n��.xk�	� �\lL �\l� ��}D�[/�������
������2i�A�VɊKЋ��Q�P���Q�^���ë��{�=f��Z�x$v���ztT�{� ���b�Ѣ��C�$T��oqMB�P�3 �/�C/N�Q�!�����b�895��{&���I�;�R<S�J�Yu�P�g���J�L���[�Њ�=�a����0V�iJq6j#�щ�GԚ�do�ۣ��Զb��{98qΛ���� ��{Q\��(.�s�T��9{*�[�9{*�+�y�%������A�f��o���*���n(�pv7m8�
�2���A�� 
gwCa����q���m�G>�i�%���R�M@%�^ ���lH���AH/bF#:�'�3�@ړҙ� �I�L� m��L�Io��'? �l+���h�!�ym��`��Jd��S$;��Z*��3@zr�$o���}zα���7����Ȯ!��}&�}y�<����p;ڌz��?w��$N�#�����������������������-�y����!����[Ӻ�u�c��Ժq���:��5�;�Z�^��:�և(N�M��\R��k�.��Z	6�J;\�,�n2>e;\pI�lN�v����%ؤ,�p�3�����W�4����7v�cr�N` �k��Җ7����Ȟ�Ζ`���SL{"H���VA�������TO(��_�d����#�9eZ'
�ʴN$4��^�XhI��:�ُk�� AX��>����a�PTr𜐣�B�]�1#
P'3oG��CI�H��~դI��T���I�½��☹N��ZBDW����Dʵt�t�A����5))�@�&��9��_i����r�8w�5���6�F%6l	mR�Y�Mb�Y�Mb�Y�M��!٣ͻ��>d�}ο����G�ف|sE���f�iv�����j�Xy�IE����[Oj�Xy�xMF�޲[�IH٭�ԉ=���{<��{<��{<�P�{<�Д{<���b�g��b�g��b�g��"�g��"�g��"�g��"�g�X��?�W�y�Zx�N���������m�|�ύ�?5�΍�"��)�?6n�q@����\�lj���O�\L�$�C�Sc�6�7�*�������si/bs��O�K����k���X�ؤ?�μ��6��m2mڮh�Mۊ��mW������c����\��u��H{:|���c��q@�����4�h���i�к��u4�����Y5�W���C3�Z�q�a��u�{���7����,43�n�7ß& 3�4L��O���f����L��4�4]�ٺaΌ������jb��?463�1��?Mv��v3V��l�t�0e�?Mw��w��*�i�f��gK���,�EZQ�,����i����}2�"Z�/[e�*�U����e4۾nfmLM�O���pd7-h�ϳZ1-+Z��VM�-�y�t3-����B~�������M��߾¢������T۹�����1�u�ț�=z��F�����������ּ���	��z[%�v�)9+@���-�ԛ*����R,x�@TVn 7nl ��%�F���D��y��@�R���*�|���P���Ih����$���yi�q��4	��`5$�x�=uj�6�Ω���lαc/f�:t]w�t]��c�� C��!��5xH�1tJ�Ks]�A@��5Az��I��5tMf���k�q]�P�k蚄~\C�$��&���5��V�(h�#�b[�������<� �A1�����b@;(&���b7�vPL`h�eKmq�DB5ޠ�H��	�x�b"�E�Ն"me��������y�K���A��6���yr�21�, ��`�إ7��]j�t�R�#�f�@xإ@�.5:v��бKf]��$T�ڥ&��.5	�v�Ih�5!MB=�d����&뉄���z"�!o��H�ț�':�ZG��cv,7w�?.S���kv��2�u`wnG+P��C�����:4�|��Y�B۱��ǰ��.��xl�d�*y��^�q�8#�jMÄ���&�0���O�i��a����iX��n6�а���?5��ᆆ�n�aC��O۩a��Zl�S26X֣��`�5��j6�]��*���[@�i����-�q"��u{�!��t}{������B�އR�Ԅ,%���7��8>�y�;S�mq���V�5H$�b�� �O;�� IT4��Yz	�/�et�~m�('*��ݯf�:�z�k�f���Ͳi�J�]�_6[M��f��f��BŐ����pR��>�$|��8$y�0�U�?���j��V_��bZ��ov�ct��f�`Z�i���L+�f��ac5�f+�}mZ�
�H�2-�n�����mh������F��6��C���}.�����4�}���WZ�R��&�m�oۄ��N�TFx;�y��&�A�WKf�q"tL��<�G��1E������T����Q��2̈������
����NL�o�b&��;MIY�l��P8��]�ؙ,�YDZ�^��
 D�Z��[���6@r��X����j�u$qћ� 	�n�ޝ�����r�Qq��AAXf�.i΂+�����[�bXQ���\՜�m�;F��[�7��5`p7E���F��ȧ�]�$D�Y:	i-	���I#����O�A-�h��2��Z�	�L��u��n8���~�>���ө T�T��2���s:%g�� �T�
�Zj    Մj�*��P�R�&�f�M�}�3-�c�(B�V�DE��
u��#~����G}��� �(��V�D�/�U,�GW��� �(
�VAD���;H^�yvH~��V� �E^о_��1k3b_DVR_DVmL@�������?ꉠU�}�ȡ
���oUt���ӆ�*Cjv�\��y�� J}:}�% [3����Ɋ~^ﮗ[�Uǅ�4j��$�&�� �A�~��y�����iQѢ8��ilhPm�o�7��O4h^�E��{-�&�v����t���)��	(;Xe;�C����}�:8��8���ޡ�����`��=~���U�c�J�VɎ�Fh8Z��}"h8:��@�����k -G�eo|Fh9Z-�:v��hw�����v<k��ә�x'��k=9��� ����}!yߠC���- �Ðo�B�8��-� ���o��2�q������Y�A?A�8���	���)Vw�O�&�2��|� � �[�g�\��xo�DA�r�.�������}��ˁ";�'
r��D��O/�솟�.��Ҧ�Y�a�n��%��m��/,&G�͕�Lc�Y�	��Τ�0�&1�,�df�e"����2	La�X&���Tˬ`X>��g-`X>��g��3�';�s`&XrΑ�h�9g�s�r.�sf9g+�9g�a�2,�sff+�9g�O��)����Y�|
��h嵳Y��~��Ρml-����/���>�_�?����V���P�Iٛ�M��$�&MV��j�D4)n�b�$4�n�j�d4��&�m��Is�4ۤH�}~��S��6�ol�m��&�60��@����o����	kl �6�l0��A�V��
�o���3�k� �v�z6�At� Zˑ팾��x��~��/��!�l,�_�Q�F{�_4ZL+���O�E�`[����ʎH�%���m��j���j[e�*_�*�ՊV��Vն*h�}�j��8�F�sSđFb!���Qpt�xq���ḵ�8\�ě5-������N���/_)��1-���F�B��/_)��#-���'�Q���������>|%��#��V_����0������`Z_��j�`�+�_���"|5�f � �_��j�������f�u/�̺/�c�Z�r���M��W�fћω��,zS��ya�A�v���>s��9�z?��~���JV�pZ�5�}�x,�ٱ�ƱI�XL�f�1ޖ���sđ���&��x�ȩH0�")�� �F0;�)�5rf͡AJ�G��Y �Y ѯ�>Z�O�4����j�!�ܒ9tJ	�;I��xFL���@��1\���s]Y)�)��з	62��C��p� J7C|��C�H�<�XȖ���9���ҡF2��<��
'(��
'hhQ�!'�0������ZJ�\�l��2���Z��Q�13�.`Tp̉	`Tp̉�`�׌$���H%��IswX�9	���%e9�Wߩ���sY�%U��8�S���tF�Fp�4�Z��2�.YV����Ds�i��;��$� ~w�F{w�/H��!�!p�r׫T�Y	j\���7�e*�Z����y���9�qϼ��ҲZ~�3��ҋ����OIR����߸�)\0h{�4������WM�9�Ġn�~�׽�n?C�{��P\g����c����گ-6@� �rЀ�5�4f���f��|ݶ~e������u.�VzK���]2�V�)�ஹ����5��ҡ�1�4f��]3��ƌ���Ø��w��NZ<���IcFX�5c:i���fL'�aqߌ�1#,��N��ov�;����K;!s��}��vB��gz��ۢ|3���D��1�4&���Ќ�1��E�fL/���-*4���3��E�f� -��-*4�iq$lQ�Y<�[�kQ�Y<�[�kQ��b��-��U�Y<�[��b3fƴ�(V�f� �iqO��͘A��X������-�*6;Ņ�`���v��c�S�vB��\D�	IZTl��gZ�hQ�3Jc"E�J͘Q)ZTjƌҘHђ��m�$<�n�xjO��,��œ����f�$-���Y<I�kX<5�'iq��>���+�Ȏ4�?a�l�̘��ˈ�����9@�Zc�<�i>>C=͠��fP��Leb�:5�K,�}f60t�>3��tF>3�ږ+b+
c;ÍM!��B36� fG
E@�zl�R�z,-�dJ��3��'��M������Y+	��}���-,ޗz�s���9�`��s��=�����a�fL-��`q,�v�����{^/#�醋Ӆ�����Q���3����o����0s��LC 3����`��L)�b��B�6[�2�1�B(��k�0I�a�Y�[��$e���a�2��Jر�;��Abv���!�e4����i��܋jt/��3cQά-ǁ�-Df�4eB�מV(���Դ�fj#�h*T�
�� �kq�^$Ҁ��N!��ČM�dQo�"r(h�ה�`f�L 3{e"�y,���<�0I��=�2��C(����Sfx�l"F���/"
9��F
y@lZG���LW
Eԉ��)�P��ȩ��lA!x6��P��_�����B���M!X���)��9�`q�ܔ����;>F|K��e�}�Ȉ}!GvQwLb�$�X�"�� �^�.?ww�@ >ϡ`��2�?�˔��2e��k1��F:�%@�@ � �>H��)t�-7D�AZ�!�p�;���~� n�P��-[��q�qiŢJ?�[.���o<�Vc�������[��T�����f�A�|�|��Vψ����/�X���#a����g�o�Y<d�PZZ�|��G���O,����W�#˫~������?��l�~���lK��x>�-}���	��r����)Wo�2Q� �%!(��A�'/hy@��� Y2i`P���NB�C����ew�4D�j�S�����J���9XS")���{�D-Z�������4MI�ݰx��Z��+%����}������;$+�ś(�t��lGl�c�����-�x�{�G��1҇\(;�⡟�g<�	�g�Z=�CY��C?�#mp;��z~��7/�z�c8�Hx�.��K<��G���C[�d
��\=��LX>���v_�t��}����I�_��J7�5�ݜu���3���)�گ�صO�T�?���U��D;���^����Hb'jI�8R�IM��`G����	�2��td~Cr񍋸Mg��pq��*��D6q�JSE<8�K\�M�l�ѕ�>҃���_Nese�Tz�]����Ua���U[j�8[ʬ���)'n�ܺ-mʸ�2�pR�0�%nUIJ�N�z���L����:&
�@���,i_LM�2e�gH�I�I*	���9�����=�ҫqUr�^�^���)Z��.��-M�Z�m�J�� �i:):�LjI���:ٷ�[Z����˭ž�P�zU��}ˠ��ok��ޘ�5isZU���~@�ǑLZ4\6����Q�a��J� ���?�rz�۱��h���k�$hK���３�M��m��ewݷ4�SZRSJ�ˎL�1�-3����k��ʏ��k�1G�(Ft���h;1ح��N$������f�w�����\w�� eR�	4 WjR҂\KDY���k��Phy�%����)1�	�� f�@'�H��[���7
n ��A9N�3�ī�b�b�����)�;)�z�d��Yu
B�e�!��(�NCA���3�*�.C9���1�.�Ꮢfݵ(
e=�r�fձ(m����g�6!��:�N����<:M�h��>��#�H�	�ՄB:̤D!���,42�F�IS��*�L�|�z�Q2�\�a��m1������	>�4��4���,'E�<�Fa�������t�i�A�4� E�FF�"M#�SY�`���[!�M��([V5�gX'nf�*�0� ��ZEZeg*=�rӅ�M�U6���J�Bz�"�#H�͂�����[r6���!��+ZTJ
�Ҡ    ݀.J�*�2�Y�s5}�5�BX�7c����XE��G�"�}=��Y�'�zk��s"C'E6F�(��?¸�'���P���I� OF�@P��	4 ��!Md����b���
���w���G� Vry$����I޶�`H�f�m'��0�lm�ɦԬ����Ml���5O�.�HApQG
6U淞�\}E��Das��[�K΃#/� � ��3��"8��R�V&$�V ��lV�@b�M�Fk��4���n�lKQ�
�Z�ǡ��h=�Ec(x�7O�����|�ן�;fjV����_��/~��(v)���X�h�Y�0����zoG*�j6��pZ���4���)h.,MApai
z���` H��$���[�eW�Ì	��˄�
��˔��ɾL9N�eʙέd�������Bf
z��) .d� DY�L��{y�Ɏ��K�q��z�@o��o7Y�F�}�vљ3�Hq��,��I�d�\��r�X���s���Z�*��G.�T��� ԓGYC�*�TV6���R��FЛ_�F���[`��,���|�b�x�Ñ܁�$�0�W#x$�9�(42��LB���BH�3]P9Cx���4�if���e�CN�2ƀ!gRc!ȜVd\GxV�x3W� �\c�D s�	���	^�9wA6 s��4n����"��#�0��`�7��f� �2ۗ �l_�D �}	����HR@�>L��,A�}g	��k�}Mc�0�Ɓa�a<6V&�aCa"6R&�a����0[g��D��� �2�����o3�!L��� �w��,wPE3�"���̷���Kܷ�Om�3�2�l>�0��(c����3[�2�l�3���L3�:^�~+L���fg%���m5�d�:SI�X�)cP��}H},����80l� ��OͮA� d�����12l<��@�2�A6 ��	���&���l�$"���B�O>R�bc �F^O��B#�'�
F!��d����4���Ͽ4��я���F؛�eFJ���(k3G���<�2+���p|%�rq�+���)d$6V)c	%6V)b�F1���m�l/:$��wm-!$�åV"�^tH�g��F$ۋ��L�Јd{�!�sa� �way����I!����)�������8�O'2�>Nd>}�� |�8�A��s�>}�7Ca���ً�B08�Qhd�����lР�����lР���O���_P�A�C��}Ĩ@���6P"�A(J��e@�h�h����P#�$�NB!�$GNB�x�[P���6bO2�FJ�'<X��Az�'6�ď�?L��G���H�&1��X,�q&������������yp����X@�q��1.U�,�&�?d�d.��WCB�#���V4%T���$�;ɬġ�l©�I5E�#�-��V��s�.��o�鷕�mT�`�*�04 �%��#�FD�~�bF�1���%:�
$���	M5��X�V�ғXZ����&=V�v0d�_IĢ'�jznV(��G�jFnF��t��
�� =Sw���:�#uwZv�A�ʤ�h�֨&m�&��qHS/�Qi��-R�2�����AR���DɀQs	�T�ӏ�F��t`�c�#f`�s�3����:��\M�>q�%���ܱ�?.�V�7k��M[
4��F4����#���	�`gbi��v�����$���V�VLL�:���6� #�!�!%�E��'������Z��h��؅y@G@'A(cI���P�:(��V��AK$�RBe�N�e)qQ`�����~�ĉ}�u�RP����fT	փ���rX�X-��0�6������
�c���3�V���5`#c�`![��3����0��l�I����i&�{Ȧyd �b���ے�7��L1_� �b� <!@1�<A8B��9���0�b~ � @/��@xA=�_�w��/_W��m=5�_��������J�	�\�,�TO����L���j'�J� u�$j��	�u@Ä�����Xza,L��$,�c�!V�~?�B�XiB�@�R�XR����,Z:K�Vz.tQ*�ғh�	Z�������Zz@�pGpB��~�'_��W�ғ�h�+	Z�IV�e�JA+3�p�-=��7@ْ�L�.
�Vj*tQ&�R����ʶ��R�Pe��d���� 8�?����Q��s�������y7����*p���8�)вhQ���ււ֠����h+h+h�	�	ځ�����������(�(hH�G9N'ACK%�-̭!��k!���Z���R*!�PRCI%�Bj���BG��QȨ!�2
5TTBE!��Q�(4�q�#f�������6-hj�(��Տ�uF�`7��XY���k���Z���V�-y���G��i���)Wx�<��s�� �3�6����\���l�z%�&�B/�4Xȥ�h�ri�Z���\�WA���en��XȦ�h��i&�[Ȧ��ZHl!�fk!��l�I����i&�;覘̈́�d3Lb#$v��0����A6�Lf���^]Y_�f��FH� �a!��#+W롚bŊR��k�
�o�Ќ��p�s�5�)�5�iz0�8����yy�?�Wݮ+��96�� ��e���pl8l8`�a+�����9�l`f�@Ѿ9�@άlސ�7O��)�:�8��x�d� ^����vىg6r6B����M�m��������q�(�{>��;��vf��`^�dX3XK�66��-���`�`'�˱:/����*����9B6����uG� �P݀�	�y�4/�`P�6���r[�������e�����Q��b�RM{�,�A���hR���LJ��d�����n=rr����(�����&�ꮃ�u�2lj(�&RI���%ꀚ	5mcd����Mu@�F��34zƃgL���j�DM[䤦Ú=V3��Z���t��zQ�m��g����TS/k:��%�z�놼n-JR?��P'P(�&��P�����.��B�mb ��&�i��j�Q�C��\Tz��iWŰ�i��� �E����u��4z��T����9,IH1�o-�al���:��J����.�&�#���˙�Q�d���E���ndZ/��Ch���i��k<o��(��f?�EE/�x���э�0"FP�O���@D�LR�h�wؚ�����#ޑ���A��8�Q�C+�R��i�Z���$
�p�mz7W過T�x�T惡�E��ݤ'TK4��z�n݃�����c��*_9���4HTM�$j��di 7��^���ڿh>�RSE�D�����\#q?��d����\V$ez���+��������Fޚ�G�ɞo�i:I~�)D�o�{E&�U���з�?�j:���=�ŋ���g�ơ`��Vg���R'��	�t��<�hU�L7��u#�wz+�ƠQ��2-�JT�[m�1����E.�'�"��o�z4iaҩI�_$�e��"5��T5���Q�VK���GO5�R��uo�s�p���(-u4��M	h{�]��#m��8�|��%�Q�Ip-�g7Ԝ-�y��wA�Ö�r��M�-T�BI�"v��_�{�*X��W��jw�kB�T~�~����Zw�A���zb~���(����a��BsK�#�6��C��v\ٺ�>���CN6�r�s�K#���t��z��Q�h�j�������w\��`��]�1`��]����7�<�N�FF&�A0�FF���"�ꓡP׍�3�v����Ѵ�R�S���%`�0Yڦ�a��i�m�0#1��3�0'1��s�� 1,��}�����
b�O��}�2eWf�?��p����[VyE�k(�`�`nk\���?nO���KLw̝�oo���Ǣ0�)�q)�!\��U�NO���<�@�A]���Ӫ��@�w��]=:�M:��٤�i�_��f�\M �  z�A/P�4�h�@�Ѥ��?�nfZ��^\�e~��&z1�|�D�)@��S*�������!m��t]��8�]������)�S��/�������u���B��[�t������p��,ӑp��~\�/����q�؟�ۛ���̜�����:���kDM�x}��E�.t��~ؿrkйr��u�@�;�-~'��������t{ܟ9U߅
����% ��
l�X<}��	@w �>���뢌���-?U�8=�?�����l�l�b.�4]2�2��>n�����)}�u;g/��=���/~��V��%V�k?<�RCw�l]2���}��/��R�l�~qī�����C�>����6nʁ�(g������rT��ɥ{�b�z���R���k�t�>6c�c�\QT�p�a����2�w��
�;�	��B����r������+��<Ξ\?~��nyc~��s�R`u��`��|�|ݿ��ϧ��U�[G��m��w?t���_����L51Jޑ�\������@$9\�l���)��U����uƜ>�Kn���q�=��c���;��_$td˃�׎zQ&vFwf5!|99�?=޲q�r[�KSzK�>�G��pz�ܾFk	�u��Tfy�/��t�ʙ����(�)�G�����v�����[�uƟ��/w���ߋ�k�/C������ݝ��ABCg�������vW\�.�HZA���	z<��G�U��C��r~=FQQRR�y��{ͣ��u�0!�N����l��:&�=^�.��,�����8�ý��^���P2����/Q��L<�ܻ��Av��;�&N��^�<F�Җ�:�m|TebS���+<���R�e�����>�o�:<��7u�Y-� �$��C�zq���ip���3��g��8��1�_�0���}����"8v6��]!ND��=�lP��[ȝ��A�EԌr�c5��wXL�`��2l�1���0���va�`��0R��)�Z�;�����r)g�� ��Y��r�%5���J�4�\� AIr��BIru�%ib=BX�J�0��l�3������Ӑ{�3;�{��%`C�zq�����"��P��fJ��Ǿ�2�Iv3όY`l��1��3恱�q� �flh����l�(	�5cC�y���!�<T�$`#�LA6P̔�K�⻽ޗ��W�����ig��<Y�8��������_��K[l�A} ����r����E[��_��`BcGMY����<eʋ������~O��D8��ne�sk�0���u�b�b����}���
��[����;�5Li��Y���_6�fP�����u=>�zzȋ姻�� y��E��w�Z����[��u�r/��~�\��y�(�"����LX?ooya!���h^��=��J�x�k�\_�o�S����o�:����+�?����EO^g����L�o��{^��	ӟЧ�r�K�ʵ�*��������<�|>��]�}�����c%�e��},����ߥ�K*v���/��aȢ
�uY�j�*y-z>??\�t1��=/���]��_�����ԡ���������8��d���u�K�e�M���~�~���bbcL�ǃ�1��˯ۂ��2�i�[����ßb1�2�
P�����~���*������r}};��{<�!�v�m���:�J9�����>B�uNO�u��ù�J�t�e��C� l�)���~Dl�:Uº__c����P��B��$�a�{��_�����&�Ue�����߿�o3/%�Sa8��������&��y �/ח#v�����{)��^��="�i{^�Ì�ikt���0�r��>�<(�C� ��cP*����;|cP�_Y8��������
�uL4�Ro$�(�HJYP���r�x#)�O7�2K4ۛ�����?�:V��I�#hT�+��r5Փ ���D*�������Kn�^S�2X����Jn��q�\^��Gkzqc
���ʴt�3e:�[XK�)!�V��$�uhA+�4.��V�!R�{ֺ�`#Ѣ�X6�":�%`#%�X]�'C��3)3����4��1I�tl,�ډ����F��!�9ndҬGzfB����TBC	��r�RhHA��n#C��Vl�É��֛�2޷a�Ȳ����u�,�3q�Lg	wd	��$Y��������4�ϟ�2m�����%���5������R�o��fG��j@7���mW�X��Y�組����+/���5$�2��P�Q�ʆPD����t9����U����mQ��2Ϻ}^��A�N���5���I���g2t�ͤ 딥��Ϋ�����"�Ǌ���I��p�����������#����}��[Rw2h��3�맄L�������vf�v(�)oo׺�7#�#���'걧B���B�VRh^:=��6�y�S6�������?���z�a��,Q��?�'�����e	6/�t�?��b������{�Y���%/�zl\�X<�'��sf{ס��TYe�r���٬E^��?g;S��>�<�˒���D]G���{�b��*A�����1���u��s��q~�Zkbbg�ߢ����J^�~�%6�2����� ]���Dy�H���J�yeSv^�Q�}=�<J�+�B1ׯ�a�PT�v/GܠE��t�e+_�<�ײ,�T�N��2�J��(d�]C�~�º*y�'*���0�݅�:�N��\�Ho����;/�����&�]���[��q˿����Ƨ�/��5\��-�a]#i-061�3��I�5�e��џ	��2:6���NTsQ��i_����rM���NO��D8�~�Q���Qʵ�[���c��[ �8�Ҽ-$gˉ�u�u��rs�tmߕ+�O�X�]����Ou)s�.��'�v'�kX.��|���vs��U^Թ���u��f�DY'��W�/���~�H�Oeu�bt�r�_�ЋR[�J�����6�������MG����$=R2Q�S����gg�����uA�N��~�
�N��u��py;��zzY�Ԅ��ƻ����]"��嚻,��;�Zp��������S�Q�P�Sfg%e:���l���	G"�5��)i�i�F�Lm��&�w0���dBg���|~]� v(�x�DRC��G�wQ��-{�o% -��3�mLT�~��K�[?w���X��l�\��K�S7��-e�18��V�3{���5�/�n��G�]Rͫ��(��X����1=G�	��PYn��%�u �,�a�	�s% O��e:�7�G�|BmG��ɺ�#�K��\�;�Z�%�F�r��WL7xya��u��.�`�����[�vv��c_�۳���{E�4_	W�	M5c��P�Q��k;k��	ss�Q�_����zr�z"B'�y��mM\�\��;OL�L:��%�&K��m�)��-������&�f��8]�^��
��j�q2a�c��c���ǯ��$��v��e��k��L�亂� C'=��dcg�}ɥ��2z��n�3S�1����ں�lu�g2���>u?�k�WN`קl�c�k"�4�������!�wݥ��n�����o֖��&�o�� uY��r0D ��"0�(��0D����X����h��^b��Ab���Qb�c#H}�S�QΣ8ļ���#2H,t���M
a!Ĉe�oR	%F,�fT�9)Ʊ��k�q�bļ�I6������׿��H��      �      x�3��wQpr�sw��4����� 9Bl      �   �  x��YK��@\ӧ�e����4L3j@O�r�s�n��	�H#���_U��<�0���̶�z~�:ۡ����0󦸞�qy����B�� v۩O�6�z��W�?؏�*�Z2�7�ޕ^�8���U����>hk�gm��&8P��9��T�
k㤍����l��!��	B�Q��iH����ݷ�Ԛ�"m+~Z]`�eP.�-hL#V�pLo%bx�r�ڒF��z.Zx�Q[��7�6�u�H�66[θ(4ڠV�ڤ��}��ʨ���"?,ze���A]N�4�����jel�3��FL.��N�ו����è8����*,�]cS�Mr�zQpآ.��µ�W�[��1�<B������Q*,y»�Rü_�$q��-�E-
�'���+�V)��C߲O�TU[HU������"�k!�V�D�Y�H���k*�J���~(��q���<�)�B-��K�=�1yV9�2�X_h
��(^MԼ`�+-��0Fm���\vU�q��U�ֻ�����ʒVd��^y�J+���)�s=�!�����V�o߃�BZ�F��o��k��R��L�aY�}D�V�r�_H���]�ʍ��Ҽ��T6V�~���|~�u��ǉ�&�~�Ц�d"��3�g=�9�'�y	\f_�� ���Q?�d�-ۺ�`���O�'��{�]�Z���ݣ@:=˰z�i86 �^�M��Vi����ˑ
(�(�7�\d7�|���{��*�ВoIl�����y�#)I���&�a�*�Xa�M�+��J�2��7h�m��W��轕ăO����=n$�u�5�qR��G�� 5���(�*}(�8;�g`'�T�� ��T���J軖���4�a�W��Ԅ&9����ǰEm��G���(�3:�3��\J��*=�4�°o�4�\�$�0c��gRk     