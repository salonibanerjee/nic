PGDMP         $                x            nic    12.2    12.2 )   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    17742    nic    DATABASE     �   CREATE DATABASE nic WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
    DROP DATABASE nic;
                postgres    false                        1255    17743    bytea_import(text)    FUNCTION     �  CREATE FUNCTION public.bytea_import(p_path text, OUT p_result bytea) RETURNS bytea
    LANGUAGE plpgsql
    AS $$
declare
  l_oid oid;
  r record;
begin
  p_result := '';
  select lo_import(p_path) into l_oid;
  for r in ( select data 
             from pg_largeobject 
             where loid = l_oid 
             order by pageno ) loop
    p_result = p_result || r.data;
  end loop;
  perform lo_unlink(l_oid);
end;$$;
 D   DROP FUNCTION public.bytea_import(p_path text, OUT p_result bytea);
       public          postgres    false            �            1259    17744    ANAND    TABLE     �  CREATE TABLE public."ANAND" (
    id bigint NOT NULL,
    session character varying(4) NOT NULL,
    "Total_No_of_SHGs_formed_in_the_district" numeric(10,0) NOT NULL,
    "Total_No_of_SHGs_got_credit_linkage" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    tstamp character varying(19) NOT NULL,
    ip character varying(15) NOT NULL,
    gp_id character varying(8)
);
    DROP TABLE public."ANAND";
       public         heap    postgres    false            �            1259    17747    ANAND_backup    TABLE     {  CREATE TABLE public."ANAND_backup" (
    id integer NOT NULL,
    session character varying NOT NULL,
    "Total_No_of_SHGs_formed_in_the_district" numeric NOT NULL,
    "Total_No_of_SHGs_got_credit_linkage" numeric NOT NULL,
    "user" character varying NOT NULL,
    tstamp character varying NOT NULL,
    ip character varying NOT NULL,
    gp_id character varying NOT NULL
);
 "   DROP TABLE public."ANAND_backup";
       public         heap    postgres    false            �            1259    17753    ANAND_backup_id_seq    SEQUENCE     �   CREATE SEQUENCE public."ANAND_backup_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."ANAND_backup_id_seq";
       public          postgres    false    203            �           0    0    ANAND_backup_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."ANAND_backup_id_seq" OWNED BY public."ANAND_backup".id;
          public          postgres    false    204            �            1259    17755    AWCC    TABLE     �  CREATE TABLE public."AWCC" (
    id bigint NOT NULL,
    session character varying(4) NOT NULL,
    "No_of_ICDS_Cenetres_devoid_of_own_building" numeric(10,0) NOT NULL,
    "No_of_new_ICDS_building_constructed" numeric(10,0) NOT NULL,
    "No_of_ICDS_Centres_running_in_open_space" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    tstamp character varying(19) NOT NULL,
    ip character varying(15) NOT NULL
);
    DROP TABLE public."AWCC";
       public         heap    postgres    false            �            1259    17758    AWCC_id_seq    SEQUENCE     v   CREATE SEQUENCE public."AWCC_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public."AWCC_id_seq";
       public          postgres    false    205            �           0    0    AWCC_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."AWCC_id_seq" OWNED BY public."AWCC".id;
          public          postgres    false    206            �            1259    17760 	   BAITARANI    TABLE       CREATE TABLE public."BAITARANI" (
    "No_of_burning_ghats_taken_up" numeric(10,0) NOT NULL,
    "Completed_till_date" date NOT NULL,
    "user" character varying(50) NOT NULL,
    tstamp character varying(19) NOT NULL,
    ip character varying(15) NOT NULL,
    id bigint NOT NULL
);
    DROP TABLE public."BAITARANI";
       public         heap    postgres    false            �            1259    17763    BAITARANI_id_seq    SEQUENCE     {   CREATE SEQUENCE public."BAITARANI_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."BAITARANI_id_seq";
       public          postgres    false    207            �           0    0    BAITARANI_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."BAITARANI_id_seq" OWNED BY public."BAITARANI".id;
          public          postgres    false    208            �            1259    17765    DOC    TABLE     `  CREATE TABLE public."DOC" (
    id bigint NOT NULL,
    session character varying(4) NOT NULL,
    "Target_for_distribution_of_poultry" numeric(10,0) NOT NULL,
    "No_of_poultry_actually_distributed" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    tstamp character varying(19) NOT NULL,
    ip character varying(15) NOT NULL
);
    DROP TABLE public."DOC";
       public         heap    postgres    false            �            1259    17768    DOG    TABLE     �  CREATE TABLE public."DOG" (
    id bigint NOT NULL,
    session character varying(4) NOT NULL,
    "Target_for_distribution_of_goats" numeric(10,0) NOT NULL,
    "No_of_goats_actually_distributed" numeric(10,0) NOT NULL,
    "No_of_beneficiaries_selected" numeric(10,0) NOT NULL,
    "No_of_beneficiaries_approved" character varying(10) NOT NULL,
    "user" character varying(50) NOT NULL,
    tstamp character varying(19) NOT NULL,
    ip character varying(15) NOT NULL
);
    DROP TABLE public."DOG";
       public         heap    postgres    false            �            1259    17771 
   DOG_id_seq    SEQUENCE     u   CREATE SEQUENCE public."DOG_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public."DOG_id_seq";
       public          postgres    false    210            �           0    0 
   DOG_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public."DOG_id_seq" OWNED BY public."DOG".id;
          public          postgres    false    211            �            1259    17773    DOPTUHD    TABLE       CREATE TABLE public."DOPTUHD" (
    id bigint NOT NULL,
    session character varying(4) NOT NULL,
    "No_of_Power_tiller_distributed" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    tstamp character varying(19) NOT NULL,
    ip character varying(15) NOT NULL
);
    DROP TABLE public."DOPTUHD";
       public         heap    postgres    false            �            1259    17776    DOPTUHD_id_seq    SEQUENCE     y   CREATE SEQUENCE public."DOPTUHD_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."DOPTUHD_id_seq";
       public          postgres    false    212            �           0    0    DOPTUHD_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."DOPTUHD_id_seq" OWNED BY public."DOPTUHD".id;
          public          postgres    false    213            �            1259    17778 
   ENROLLMENT    TABLE     H  CREATE TABLE public."ENROLLMENT" (
    "Category " numeric(12,0) NOT NULL,
    "Gross_Enrolment_Ratio" numeric(10,0) NOT NULL,
    "Net_Enrolment_Ratio" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    ip character varying(15) NOT NULL,
    tstamp character varying(19) NOT NULL,
    id bigint NOT NULL
);
     DROP TABLE public."ENROLLMENT";
       public         heap    postgres    false            �            1259    17781    ENROLLMENTR_id_seq    SEQUENCE     }   CREATE SEQUENCE public."ENROLLMENTR_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."ENROLLMENTR_id_seq";
       public          postgres    false    214            �           0    0    ENROLLMENTR_id_seq    SEQUENCE OWNED BY     L   ALTER SEQUENCE public."ENROLLMENTR_id_seq" OWNED BY public."ENROLLMENT".id;
          public          postgres    false    215            �            1259    17783    FOODPRO    TABLE     J  CREATE TABLE public."FOODPRO" (
    "Session" character varying(4) NOT NULL,
    "Status_of_pocurement" numeric(10,0) NOT NULL,
    "Target_of_pocurement" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    ip character varying(15) NOT NULL,
    tstamp character varying(19) NOT NULL,
    id bigint NOT NULL
);
    DROP TABLE public."FOODPRO";
       public         heap    postgres    false            �            1259    17786    FOODPRO_id_seq    SEQUENCE     y   CREATE SEQUENCE public."FOODPRO_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."FOODPRO_id_seq";
       public          postgres    false    216            �           0    0    FOODPRO_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."FOODPRO_id_seq" OWNED BY public."FOODPRO".id;
          public          postgres    false    217            �            1259    17788 	   GITANJALI    TABLE     k  CREATE TABLE public."GITANJALI" (
    "No_of_case_sanctioned_under_Gitanjali" numeric(10,0) NOT NULL,
    "Date_of_Inception" date NOT NULL,
    "No_of_houses_constructed_under_Gitanjali" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    ip character varying(15) NOT NULL,
    tstamp character varying(19) NOT NULL,
    id bigint NOT NULL
);
    DROP TABLE public."GITANJALI";
       public         heap    postgres    false            �            1259    17791    GITANJALI_id_seq    SEQUENCE     {   CREATE SEQUENCE public."GITANJALI_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."GITANJALI_id_seq";
       public          postgres    false    218            �           0    0    GITANJALI_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."GITANJALI_id_seq" OWNED BY public."GITANJALI".id;
          public          postgres    false    219            �            1259    17793 
   IMMUNISATI    TABLE        CREATE TABLE public."IMMUNISATI" (
    id bigint NOT NULL,
    session character varying(4) NOT NULL,
    "Per_of_Fully_immunised_child" numeric(52,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    tstamp character varying(19) NOT NULL,
    ip character varying(15) NOT NULL
);
     DROP TABLE public."IMMUNISATI";
       public         heap    postgres    false            �            1259    17796    IMMUNISATION_id_seq    SEQUENCE     ~   CREATE SEQUENCE public."IMMUNISATION_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."IMMUNISATION_id_seq";
       public          postgres    false    220            �           0    0    IMMUNISATION_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."IMMUNISATION_id_seq" OWNED BY public."IMMUNISATI".id;
          public          postgres    false    221            �            1259    17798    INFANTD    TABLE       CREATE TABLE public."INFANTD" (
    id bigint NOT NULL,
    session character varying(4) NOT NULL,
    "Total_No_of_Infant_Death" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    tstamp character varying(19) NOT NULL,
    ip character varying(15) NOT NULL
);
    DROP TABLE public."INFANTD";
       public         heap    postgres    false            �            1259    17801    INFANTD_id_seq    SEQUENCE     y   CREATE SEQUENCE public."INFANTD_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."INFANTD_id_seq";
       public          postgres    false    222            �           0    0    INFANTD_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."INFANTD_id_seq" OWNED BY public."INFANTD".id;
          public          postgres    false    223            �            1259    17803 
   INSPECTION    TABLE     >  CREATE TABLE public."INSPECTION" (
    "No_of_homes_inspected_by_Senior_Officers" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    tstamp character varying(19) NOT NULL,
    ip character varying(15) NOT NULL,
    id bigint NOT NULL,
    "Degisnation_of_officers" character varying(5) NOT NULL
);
     DROP TABLE public."INSPECTION";
       public         heap    postgres    false            �            1259    17806    INSPECTION_id_seq    SEQUENCE     |   CREATE SEQUENCE public."INSPECTION_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."INSPECTION_id_seq";
       public          postgres    false    224            �           0    0    INSPECTION_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."INSPECTION_id_seq" OWNED BY public."INSPECTION".id;
          public          postgres    false    225            �            1259    17808    INSTDEL    TABLE       CREATE TABLE public."INSTDEL" (
    id bigint NOT NULL,
    session character varying(4) NOT NULL,
    "Per_of_Institutional_Delivery" numeric(52,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    tstamp character varying(19) NOT NULL,
    ip character varying(15) NOT NULL
);
    DROP TABLE public."INSTDEL";
       public         heap    postgres    false            �            1259    17811    INSTDEL_id_seq    SEQUENCE     y   CREATE SEQUENCE public."INSTDEL_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."INSTDEL_id_seq";
       public          postgres    false    226            �           0    0    INSTDEL_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."INSTDEL_id_seq" OWNED BY public."INSTDEL".id;
          public          postgres    false    227            �            1259    17813    JALDJALB    TABLE     p  CREATE TABLE public."JALDJALB" (
    "Date_of_Inspection" date NOT NULL,
    "No_of_ponds_excavated_under_Jal_Dharo_Jal_Bharo" numeric(10,0) NOT NULL,
    "No_of_ponds_fish_production_started" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    ip character varying(10) NOT NULL,
    tstamp character varying(19) NOT NULL,
    id bigint NOT NULL
);
    DROP TABLE public."JALDJALB";
       public         heap    postgres    false            �            1259    17816    JALDJALB_id_seq    SEQUENCE     z   CREATE SEQUENCE public."JALDJALB_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."JALDJALB_id_seq";
       public          postgres    false    228            �           0    0    JALDJALB_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."JALDJALB_id_seq" OWNED BY public."JALDJALB".id;
          public          postgres    false    229            �            1259    17818    KANYAS    TABLE     u  CREATE TABLE public."KANYAS" (
    id bigint NOT NULL,
    session character varying NOT NULL,
    "No_of_K-1_cases_application_received" numeric(10,0) NOT NULL,
    "No_of_K-1_cases_application_sanctioned" numeric(10,0) NOT NULL,
    "No_of_K-1_cases_application_disbursed" numeric(10,0) NOT NULL,
    "No_of_K-2_cases_application_received" numeric(10,0) NOT NULL,
    "No_of_K-2_cases_application_sanctioned" numeric(10,0) NOT NULL,
    "No_of_K-2_cases_application_disbursed" numeric(10,0) NOT NULL,
    "user" character varying(4) NOT NULL,
    tstamp character varying(19) NOT NULL,
    ip character varying(15) NOT NULL
);
    DROP TABLE public."KANYAS";
       public         heap    postgres    false            �            1259    17824    KANYAS_id_seq    SEQUENCE     x   CREATE SEQUENCE public."KANYAS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."KANYAS_id_seq";
       public          postgres    false    230            �           0    0    KANYAS_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."KANYAS_id_seq" OWNED BY public."KANYAS".id;
          public          postgres    false    231            �            1259    17826 
   KARMATIRTH    TABLE     �  CREATE TABLE public."KARMATIRTH" (
    "No_of_Karmatirtha_sanctioned" numeric(10,0) NOT NULL,
    "No_of_Karmatirtha_for_which_construction_started" numeric(10,0) NOT NULL,
    "No_of_Karmatirtha_for_which_construction_completed" numeric(10,0) NOT NULL,
    "No_of_Karmatirth_operationalised" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    ip character varying(15) NOT NULL,
    tstamp character varying(19) NOT NULL,
    id bigint NOT NULL
);
     DROP TABLE public."KARMATIRTH";
       public         heap    postgres    false            �            1259    17829    KARMATIRTHA_id_seq    SEQUENCE     }   CREATE SEQUENCE public."KARMATIRTHA_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."KARMATIRTHA_id_seq";
       public          postgres    false    232            �           0    0    KARMATIRTHA_id_seq    SEQUENCE OWNED BY     L   ALTER SEQUENCE public."KARMATIRTHA_id_seq" OWNED BY public."KARMATIRTH".id;
          public          postgres    false    233            �            1259    17831    KCC    TABLE     �  CREATE TABLE public."KCC" (
    id bigint NOT NULL,
    "No_of_agricultrural_families_in_the_district" numeric(10,0) NOT NULL,
    "No_of_agricultural_families_covered_by_kcc" numeric(10,0) NOT NULL,
    kcc_coverage_percentage numeric(52,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    tstamp character varying(19) NOT NULL,
    ip character varying(15) NOT NULL,
    gp_id character varying(8)
);
    DROP TABLE public."KCC";
       public         heap    postgres    false            �            1259    17834 
   KCC_id_seq    SEQUENCE     u   CREATE SEQUENCE public."KCC_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public."KCC_id_seq";
       public          postgres    false    234            �           0    0 
   KCC_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public."KCC_id_seq" OWNED BY public."KCC".id;
          public          postgres    false    235            �            1259    17836    KishanM    TABLE     _  CREATE TABLE public."KishanM" (
    id bigint NOT NULL,
    "No_of_Kishan_Mandis_sanctioned" numeric(10,0) NOT NULL,
    "No_of_Kishan_Mandis_operational" numeric(10,0) NOT NULL,
    "Operationality" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    tstamp character varying(19) NOT NULL,
    ip character varying(15) NOT NULL
);
    DROP TABLE public."KishanM";
       public         heap    postgres    false            �            1259    17839    LANDPP    TABLE     )  CREATE TABLE public."LANDPP" (
    "No_of_land_permission_pending" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    tstamp timestamp with time zone NOT NULL,
    ip character varying(15) NOT NULL,
    id bigint NOT NULL,
    "PROJECTS_NAME" character varying(12) NOT NULL
);
    DROP TABLE public."LANDPP";
       public         heap    postgres    false            �            1259    17842    LANDPP_id_seq    SEQUENCE     x   CREATE SEQUENCE public."LANDPP_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."LANDPP_id_seq";
       public          postgres    false    237            �           0    0    LANDPP_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."LANDPP_id_seq" OWNED BY public."LANDPP".id;
          public          postgres    false    238            �            1259    17844    Login    TABLE     (  CREATE TABLE public."Login" (
    username character varying(70) NOT NULL,
    password character varying(16) NOT NULL,
    designation character varying(70) NOT NULL,
    user_type_id_fk bigint NOT NULL,
    gp_id character varying(10),
    id bigint NOT NULL,
    active_status numeric(1,0)
);
    DROP TABLE public."Login";
       public         heap    postgres    false            �            1259    17847    Login_id_seq    SEQUENCE     w   CREATE SEQUENCE public."Login_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Login_id_seq";
       public          postgres    false    239            �           0    0    Login_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Login_id_seq" OWNED BY public."Login".id;
          public          postgres    false    240            �            1259    17849    Login_user_type_id_fk_seq    SEQUENCE     �   CREATE SEQUENCE public."Login_user_type_id_fk_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."Login_user_type_id_fk_seq";
       public          postgres    false    239            �           0    0    Login_user_type_id_fk_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."Login_user_type_id_fk_seq" OWNED BY public."Login".user_type_id_fk;
          public          postgres    false    241            �            1259    17851 	   MATERNALD    TABLE       CREATE TABLE public."MATERNALD" (
    id bigint NOT NULL,
    session character varying(4) NOT NULL,
    "Total_No_of_Maternal_Death" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    tstamp character varying(19) NOT NULL,
    ip character varying(15) NOT NULL
);
    DROP TABLE public."MATERNALD";
       public         heap    postgres    false            �            1259    17854    MATERNALD_id_seq    SEQUENCE     {   CREATE SEQUENCE public."MATERNALD_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."MATERNALD_id_seq";
       public          postgres    false    242            �           0    0    MATERNALD_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."MATERNALD_id_seq" OWNED BY public."MATERNALD".id;
          public          postgres    false    243            �            1259    17856    MCI    TABLE       CREATE TABLE public."MCI" (
    id bigint NOT NULL,
    session character varying(4) NOT NULL,
    "Percentage_of_malnourished_child" numeric(52,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    tstamp character varying(19) NOT NULL,
    ip character varying(15) NOT NULL
);
    DROP TABLE public."MCI";
       public         heap    postgres    false            �            1259    17859 
   MCI_id_seq    SEQUENCE     u   CREATE SEQUENCE public."MCI_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public."MCI_id_seq";
       public          postgres    false    244            �           0    0 
   MCI_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public."MCI_id_seq" OWNED BY public."MCI".id;
          public          postgres    false    245            �            1259    17861    MGNREGS    TABLE     �  CREATE TABLE public."MGNREGS" (
    id bigint NOT NULL,
    session character varying(4) NOT NULL,
    "No_of_Person_days_generated_under_MGNREGS" numeric(10,0) NOT NULL,
    "Average_No_of_Persondays_generated_per_household" numeric(10,0) NOT NULL,
    "Expenditure_of_the_session" numeric(10,0) NOT NULL,
    per_of_labour_budget_achieved numeric(52,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    tstamp character varying(19) NOT NULL,
    ip character varying(15) NOT NULL
);
    DROP TABLE public."MGNREGS";
       public         heap    postgres    false            �            1259    17864 	   MINORITYS    TABLE     �  CREATE TABLE public."MINORITYS" (
    session character varying(4) NOT NULL,
    "Target_for_Scholarship_distribution_Aikyashree" numeric(10,0) NOT NULL,
    "No_of_students_distributed_scholarship" numeric(10,0) NOT NULL,
    "No_of_Aaplication_uploaded_under_Aikyashree_scholarship" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    ip character varying(15) NOT NULL,
    tstamp character varying(19) NOT NULL,
    id bigint NOT NULL
);
    DROP TABLE public."MINORITYS";
       public         heap    postgres    false            �            1259    17867    MINORITYS_id_seq    SEQUENCE     {   CREATE SEQUENCE public."MINORITYS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."MINORITYS_id_seq";
       public          postgres    false    247            �           0    0    MINORITYS_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."MINORITYS_id_seq" OWNED BY public."MINORITYS".id;
          public          postgres    false    248            �            1259    17869    POE    TABLE     ,  CREATE TABLE public."POE" (
    id bigint NOT NULL,
    session character varying(4) NOT NULL,
    "Target" numeric(10,0) NOT NULL,
    "Production" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    tstamp character varying(19) NOT NULL,
    ip character varying(15) NOT NULL
);
    DROP TABLE public."POE";
       public         heap    postgres    false            �            1259    17872 
   POE_id_seq    SEQUENCE     u   CREATE SEQUENCE public."POE_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public."POE_id_seq";
       public          postgres    false    249            �           0    0 
   POE_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public."POE_id_seq" OWNED BY public."POE".id;
          public          postgres    false    250            �            1259    17874 	   Privilege    TABLE        CREATE TABLE public."Privilege" (
    privilege_id_pk bigint NOT NULL,
    parent integer NOT NULL,
    link character varying(70) NOT NULL,
    view_sidebar bit(1) NOT NULL,
    "order" integer NOT NULL,
    active_status bit(1) NOT NULL,
    page_name character varying(70) NOT NULL
);
    DROP TABLE public."Privilege";
       public         heap    postgres    false            �            1259    17877    SABOOJS    TABLE     \  CREATE TABLE public."SABOOJS" (
    session character varying(4) NOT NULL,
    "Target_for_distribution_of_cycles" numeric(10,0) NOT NULL,
    "Cycle_distributed_till_date" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    ip character varying(15) NOT NULL,
    tstamp character varying(19) NOT NULL,
    id bigint NOT NULL
);
    DROP TABLE public."SABOOJS";
       public         heap    postgres    false            �            1259    17880 
   SABOOJSHRE    TABLE     m  CREATE TABLE public."SABOOJSHRE" (
    "No_of_children_born_since_inception_of_the_project_in_the_dist" numeric(10,0) NOT NULL,
    "No_of_tree_sapling_handed_over_to_the_new_born_children" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    ip character varying(15) NOT NULL,
    tstamp character varying(19) NOT NULL,
    id bigint NOT NULL
);
     DROP TABLE public."SABOOJSHRE";
       public         heap    postgres    false            �            1259    17883    SABOOJSHREE_id_seq    SEQUENCE     }   CREATE SEQUENCE public."SABOOJSHREE_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."SABOOJSHREE_id_seq";
       public          postgres    false    253            �           0    0    SABOOJSHREE_id_seq    SEQUENCE OWNED BY     L   ALTER SEQUENCE public."SABOOJSHREE_id_seq" OWNED BY public."SABOOJSHRE".id;
          public          postgres    false    254            �            1259    17885    SABOOJS_id_seq    SEQUENCE     y   CREATE SEQUENCE public."SABOOJS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."SABOOJS_id_seq";
       public          postgres    false    252            �           0    0    SABOOJS_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."SABOOJS_id_seq" OWNED BY public."SABOOJS".id;
          public          postgres    false    255                        1259    17887 
   SAFEDSAVEL    TABLE     p  CREATE TABLE public."SAFEDSAVEL" (
    session character varying(4) NOT NULL,
    "No_of_accidents" numeric(10,0) NOT NULL,
    "No_of_death" numeric(10,0) NOT NULL,
    "No_of_insured_person" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    tstamp character varying(19) NOT NULL,
    ip character varying(15) NOT NULL,
    id bigint NOT NULL
);
     DROP TABLE public."SAFEDSAVEL";
       public         heap    postgres    false                       1259    17890    SAFEDSAVEL_id_seq    SEQUENCE     |   CREATE SEQUENCE public."SAFEDSAVEL_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."SAFEDSAVEL_id_seq";
       public          postgres    false    256            �           0    0    SAFEDSAVEL_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."SAFEDSAVEL_id_seq" OWNED BY public."SAFEDSAVEL".id;
          public          postgres    false    257                       1259    17892 	   SAMABYTHI    TABLE     %  CREATE TABLE public."SAMABYTHI" (
    "No_of_beneficiaries_provided_benefit_till_date" numeric(10,0) NOT NULL,
    "Till_date" date NOT NULL,
    "user" character varying(50) NOT NULL,
    ip character varying(15) NOT NULL,
    tstamp character varying(19) NOT NULL,
    id bigint NOT NULL
);
    DROP TABLE public."SAMABYTHI";
       public         heap    postgres    false                       1259    17895    SAMABYTHI_id_seq    SEQUENCE     {   CREATE SEQUENCE public."SAMABYTHI_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."SAMABYTHI_id_seq";
       public          postgres    false    258            �           0    0    SAMABYTHI_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."SAMABYTHI_id_seq" OWNED BY public."SAMABYTHI".id;
          public          postgres    false    259                       1259    17897    SIKSHAS    TABLE     �  CREATE TABLE public."SIKSHAS" (
    session character varying(4) NOT NULL,
    "Targetted_No_Of_SC/ST_Student_under_Sikshashree" numeric(10,0) NOT NULL,
    "No_of_Students_getting_benefit_under_Sikshashree" numeric(10,0) NOT NULL,
    "No_of_Applications_uploaded_under_Sikshashree" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    ip character varying(15) NOT NULL,
    tstamp character varying(19) NOT NULL,
    id bigint NOT NULL
);
    DROP TABLE public."SIKSHAS";
       public         heap    postgres    false                       1259    17900    SIKSHAS_id_seq    SEQUENCE     y   CREATE SEQUENCE public."SIKSHAS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."SIKSHAS_id_seq";
       public          postgres    false    260            �           0    0    SIKSHAS_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."SIKSHAS_id_seq" OWNED BY public."SIKSHAS".id;
          public          postgres    false    261                       1259    17902    SVSKP    TABLE     e  CREATE TABLE public."SVSKP" (
    session character varying(4) NOT NULL,
    "No_of_project_Sponsored_under_SVSKP" numeric(10,0) NOT NULL,
    "No_of_project_sanctioned_under_SVSKP" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    ip character varying(15) NOT NULL,
    tstamp character varying(19) NOT NULL,
    id bigint NOT NULL
);
    DROP TABLE public."SVSKP";
       public         heap    postgres    false                       1259    17905    SVSKP_id_seq    SEQUENCE     w   CREATE SEQUENCE public."SVSKP_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."SVSKP_id_seq";
       public          postgres    false    262            �           0    0    SVSKP_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."SVSKP_id_seq" OWNED BY public."SVSKP".id;
          public          postgres    false    263                       1259    17907    YUBAS    TABLE     `  CREATE TABLE public."YUBAS" (
    "No_of_unemployed_Youth_registered_under_Yubashree" numeric(10,0) NOT NULL,
    "No_of_unemployed_registered_Youth_getting_monthly_assistance" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    ip character varying(15) NOT NULL,
    tstamp character varying(19) NOT NULL,
    id bigint NOT NULL
);
    DROP TABLE public."YUBAS";
       public         heap    postgres    false            	           1259    17910    YUBAS_id_seq    SEQUENCE     w   CREATE SEQUENCE public."YUBAS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."YUBAS_id_seq";
       public          postgres    false    264            �           0    0    YUBAS_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."YUBAS_id_seq" OWNED BY public."YUBAS".id;
          public          postgres    false    265            
           1259    17912    anand_id_seq    SEQUENCE     u   CREATE SEQUENCE public.anand_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.anand_id_seq;
       public          postgres    false    202            �           0    0    anand_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.anand_id_seq OWNED BY public."ANAND".id;
          public          postgres    false    266                       1259    17914    attri_table    TABLE     �   CREATE TABLE public.attri_table (
    id bigint NOT NULL,
    id_scheme numeric NOT NULL,
    a_name character varying(100) NOT NULL,
    name character varying(100) NOT NULL
);
    DROP TABLE public.attri_table;
       public         heap    postgres    false                       1259    17920    att_table_id_seq    SEQUENCE     y   CREATE SEQUENCE public.att_table_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.att_table_id_seq;
       public          postgres    false    267            �           0    0    att_table_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.att_table_id_seq OWNED BY public.attri_table.id;
          public          postgres    false    268                       1259    17922 	   audit_log    TABLE     d  CREATE TABLE public.audit_log (
    id bigint NOT NULL,
    "user" character varying(50) NOT NULL,
    section character varying(100) NOT NULL,
    action character varying(50) NOT NULL,
    request character varying(100) NOT NULL,
    stamp character varying(20) NOT NULL,
    comment character varying(200),
    ip_addr character varying(20) NOT NULL
);
    DROP TABLE public.audit_log;
       public         heap    postgres    false                       1259    17928    audit_log_id_seq    SEQUENCE     y   CREATE SEQUENCE public.audit_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.audit_log_id_seq;
       public          postgres    false    269            �           0    0    audit_log_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.audit_log_id_seq OWNED BY public.audit_log.id;
          public          postgres    false    270                       1259    18117    dashboard_info    TABLE     G  CREATE TABLE public.dashboard_info (
    id bigint NOT NULL,
    s_name character varying(50) NOT NULL,
    name character varying(50) NOT NULL,
    a_target character varying(50) NOT NULL,
    target character varying(50) NOT NULL,
    a_progress character varying(50) NOT NULL,
    progress character varying(50) NOT NULL
);
 "   DROP TABLE public.dashboard_info;
       public         heap    postgres    false                       1259    17930 
   doc_id_seq    SEQUENCE     s   CREATE SEQUENCE public.doc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.doc_id_seq;
       public          postgres    false    209            �           0    0 
   doc_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.doc_id_seq OWNED BY public."DOC".id;
          public          postgres    false    271                       1259    17932    kishanm_id_seq    SEQUENCE     w   CREATE SEQUENCE public.kishanm_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.kishanm_id_seq;
       public          postgres    false    236            �           0    0    kishanm_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.kishanm_id_seq OWNED BY public."KishanM".id;
          public          postgres    false    272                       1259    17934    mgnres_id_seq    SEQUENCE     v   CREATE SEQUENCE public.mgnres_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.mgnres_id_seq;
       public          postgres    false    246            �           0    0    mgnres_id_seq    SEQUENCE OWNED BY     B   ALTER SEQUENCE public.mgnres_id_seq OWNED BY public."MGNREGS".id;
          public          postgres    false    273                       1259    17936    profile    TABLE     �   CREATE TABLE public.profile (
    id_pk bigint NOT NULL,
    username character varying(50) NOT NULL,
    f_name character varying(50),
    m_name character varying(50),
    l_name character varying(50),
    mobile numeric(10,0)
);
    DROP TABLE public.profile;
       public         heap    postgres    false                       1259    17939    profile_id_pk_seq    SEQUENCE     z   CREATE SEQUENCE public.profile_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.profile_id_pk_seq;
       public          postgres    false    274            �           0    0    profile_id_pk_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.profile_id_pk_seq OWNED BY public.profile.id_pk;
          public          postgres    false    275                       1259    17941    rp_location_master_block    TABLE     &  CREATE TABLE public.rp_location_master_block (
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
       public         heap    postgres    false                       1259    17944    rp_location_master_district    TABLE     �   CREATE TABLE public.rp_location_master_district (
    district_id_pk bigint NOT NULL,
    state_id_fk integer,
    district_name character varying(100),
    schcd character varying(10)
);
 /   DROP TABLE public.rp_location_master_district;
       public         heap    postgres    false                       1259    17947    rp_location_master_gp    TABLE       CREATE TABLE public.rp_location_master_gp (
    schcd character varying(12) NOT NULL,
    schname character varying(100),
    parent_id character varying(12),
    gp_ward_flag character varying(2) NOT NULL,
    block_id_fk integer,
    gp_id_pk bigint NOT NULL
);
 )   DROP TABLE public.rp_location_master_gp;
       public         heap    postgres    false                       1259    17950    rp_location_master_state    TABLE     �   CREATE TABLE public.rp_location_master_state (
    state_id_pk integer NOT NULL,
    state_name character varying(30),
    active_status smallint
);
 ,   DROP TABLE public.rp_location_master_state;
       public         heap    postgres    false                       1259    17953    rp_location_master_subdiv    TABLE     �   CREATE TABLE public.rp_location_master_subdiv (
    district_id_fk integer,
    subdiv_name character varying(100),
    schcd character varying(10),
    subdiv_id_pk bigint NOT NULL
);
 -   DROP TABLE public.rp_location_master_subdiv;
       public         heap    postgres    false                       1259    17956    scheme_table    TABLE     �   CREATE TABLE public.scheme_table (
    id bigint NOT NULL,
    s_name character varying(10) NOT NULL,
    name character varying(50) NOT NULL
);
     DROP TABLE public.scheme_table;
       public         heap    postgres    false                       1259    17959    scheme_table_id_seq    SEQUENCE     |   CREATE SEQUENCE public.scheme_table_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.scheme_table_id_seq;
       public          postgres    false    281            �           0    0    scheme_table_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.scheme_table_id_seq OWNED BY public.scheme_table.id;
          public          postgres    false    282                       1259    17961    user_privilege    TABLE     �   CREATE TABLE public.user_privilege (
    id_pk bigint NOT NULL,
    privilege_id_fk bigint NOT NULL,
    user_type_id_fk bigint NOT NULL,
    active_status bit(1) NOT NULL
);
 "   DROP TABLE public.user_privilege;
       public         heap    postgres    false                       1259    17964 "   user_privilege_privilege_id_fk_seq    SEQUENCE     �   CREATE SEQUENCE public.user_privilege_privilege_id_fk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.user_privilege_privilege_id_fk_seq;
       public          postgres    false    283            �           0    0 "   user_privilege_privilege_id_fk_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.user_privilege_privilege_id_fk_seq OWNED BY public.user_privilege.privilege_id_fk;
          public          postgres    false    284                       1259    17966 "   user_privilege_user_type_id_fk_seq    SEQUENCE     �   CREATE SEQUENCE public.user_privilege_user_type_id_fk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.user_privilege_user_type_id_fk_seq;
       public          postgres    false    283            �           0    0 "   user_privilege_user_type_id_fk_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.user_privilege_user_type_id_fk_seq OWNED BY public.user_privilege.user_type_id_fk;
          public          postgres    false    285                       1259    17968 	   user_type    TABLE     �   CREATE TABLE public.user_type (
    user_type_id_pk bigint NOT NULL,
    desig character varying(20) NOT NULL,
    active_status bit(1) NOT NULL
);
    DROP TABLE public.user_type;
       public         heap    postgres    false            �           2604    17971    ANAND id    DEFAULT     f   ALTER TABLE ONLY public."ANAND" ALTER COLUMN id SET DEFAULT nextval('public.anand_id_seq'::regclass);
 9   ALTER TABLE public."ANAND" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    266    202            �           2604    17972    ANAND_backup id    DEFAULT     v   ALTER TABLE ONLY public."ANAND_backup" ALTER COLUMN id SET DEFAULT nextval('public."ANAND_backup_id_seq"'::regclass);
 @   ALTER TABLE public."ANAND_backup" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    203            �           2604    17973    AWCC id    DEFAULT     f   ALTER TABLE ONLY public."AWCC" ALTER COLUMN id SET DEFAULT nextval('public."AWCC_id_seq"'::regclass);
 8   ALTER TABLE public."AWCC" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    205            �           2604    17974    BAITARANI id    DEFAULT     p   ALTER TABLE ONLY public."BAITARANI" ALTER COLUMN id SET DEFAULT nextval('public."BAITARANI_id_seq"'::regclass);
 =   ALTER TABLE public."BAITARANI" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    207            �           2604    17975    DOC id    DEFAULT     b   ALTER TABLE ONLY public."DOC" ALTER COLUMN id SET DEFAULT nextval('public.doc_id_seq'::regclass);
 7   ALTER TABLE public."DOC" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    271    209            �           2604    17976    DOG id    DEFAULT     d   ALTER TABLE ONLY public."DOG" ALTER COLUMN id SET DEFAULT nextval('public."DOG_id_seq"'::regclass);
 7   ALTER TABLE public."DOG" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210            �           2604    17977 
   DOPTUHD id    DEFAULT     l   ALTER TABLE ONLY public."DOPTUHD" ALTER COLUMN id SET DEFAULT nextval('public."DOPTUHD_id_seq"'::regclass);
 ;   ALTER TABLE public."DOPTUHD" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212            �           2604    17978    ENROLLMENT id    DEFAULT     s   ALTER TABLE ONLY public."ENROLLMENT" ALTER COLUMN id SET DEFAULT nextval('public."ENROLLMENTR_id_seq"'::regclass);
 >   ALTER TABLE public."ENROLLMENT" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214            �           2604    17979 
   FOODPRO id    DEFAULT     l   ALTER TABLE ONLY public."FOODPRO" ALTER COLUMN id SET DEFAULT nextval('public."FOODPRO_id_seq"'::regclass);
 ;   ALTER TABLE public."FOODPRO" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216            �           2604    17980    GITANJALI id    DEFAULT     p   ALTER TABLE ONLY public."GITANJALI" ALTER COLUMN id SET DEFAULT nextval('public."GITANJALI_id_seq"'::regclass);
 =   ALTER TABLE public."GITANJALI" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218            �           2604    17981    IMMUNISATI id    DEFAULT     t   ALTER TABLE ONLY public."IMMUNISATI" ALTER COLUMN id SET DEFAULT nextval('public."IMMUNISATION_id_seq"'::regclass);
 >   ALTER TABLE public."IMMUNISATI" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220            �           2604    17982 
   INFANTD id    DEFAULT     l   ALTER TABLE ONLY public."INFANTD" ALTER COLUMN id SET DEFAULT nextval('public."INFANTD_id_seq"'::regclass);
 ;   ALTER TABLE public."INFANTD" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222            �           2604    17983    INSPECTION id    DEFAULT     r   ALTER TABLE ONLY public."INSPECTION" ALTER COLUMN id SET DEFAULT nextval('public."INSPECTION_id_seq"'::regclass);
 >   ALTER TABLE public."INSPECTION" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224            �           2604    17984 
   INSTDEL id    DEFAULT     l   ALTER TABLE ONLY public."INSTDEL" ALTER COLUMN id SET DEFAULT nextval('public."INSTDEL_id_seq"'::regclass);
 ;   ALTER TABLE public."INSTDEL" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226            �           2604    17985    JALDJALB id    DEFAULT     n   ALTER TABLE ONLY public."JALDJALB" ALTER COLUMN id SET DEFAULT nextval('public."JALDJALB_id_seq"'::regclass);
 <   ALTER TABLE public."JALDJALB" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228            �           2604    17986 	   KANYAS id    DEFAULT     j   ALTER TABLE ONLY public."KANYAS" ALTER COLUMN id SET DEFAULT nextval('public."KANYAS_id_seq"'::regclass);
 :   ALTER TABLE public."KANYAS" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230            �           2604    17987    KARMATIRTH id    DEFAULT     s   ALTER TABLE ONLY public."KARMATIRTH" ALTER COLUMN id SET DEFAULT nextval('public."KARMATIRTHA_id_seq"'::regclass);
 >   ALTER TABLE public."KARMATIRTH" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232            �           2604    17988    KCC id    DEFAULT     d   ALTER TABLE ONLY public."KCC" ALTER COLUMN id SET DEFAULT nextval('public."KCC_id_seq"'::regclass);
 7   ALTER TABLE public."KCC" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234            �           2604    17989 
   KishanM id    DEFAULT     j   ALTER TABLE ONLY public."KishanM" ALTER COLUMN id SET DEFAULT nextval('public.kishanm_id_seq'::regclass);
 ;   ALTER TABLE public."KishanM" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    272    236            �           2604    17990 	   LANDPP id    DEFAULT     j   ALTER TABLE ONLY public."LANDPP" ALTER COLUMN id SET DEFAULT nextval('public."LANDPP_id_seq"'::regclass);
 :   ALTER TABLE public."LANDPP" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    237            �           2604    17991    Login user_type_id_fk    DEFAULT     �   ALTER TABLE ONLY public."Login" ALTER COLUMN user_type_id_fk SET DEFAULT nextval('public."Login_user_type_id_fk_seq"'::regclass);
 F   ALTER TABLE public."Login" ALTER COLUMN user_type_id_fk DROP DEFAULT;
       public          postgres    false    241    239            �           2604    17992    Login id    DEFAULT     h   ALTER TABLE ONLY public."Login" ALTER COLUMN id SET DEFAULT nextval('public."Login_id_seq"'::regclass);
 9   ALTER TABLE public."Login" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239            �           2604    17993    MATERNALD id    DEFAULT     p   ALTER TABLE ONLY public."MATERNALD" ALTER COLUMN id SET DEFAULT nextval('public."MATERNALD_id_seq"'::regclass);
 =   ALTER TABLE public."MATERNALD" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    242            �           2604    17994    MCI id    DEFAULT     d   ALTER TABLE ONLY public."MCI" ALTER COLUMN id SET DEFAULT nextval('public."MCI_id_seq"'::regclass);
 7   ALTER TABLE public."MCI" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    244            �           2604    17995 
   MGNREGS id    DEFAULT     i   ALTER TABLE ONLY public."MGNREGS" ALTER COLUMN id SET DEFAULT nextval('public.mgnres_id_seq'::regclass);
 ;   ALTER TABLE public."MGNREGS" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    273    246            �           2604    17996    MINORITYS id    DEFAULT     p   ALTER TABLE ONLY public."MINORITYS" ALTER COLUMN id SET DEFAULT nextval('public."MINORITYS_id_seq"'::regclass);
 =   ALTER TABLE public."MINORITYS" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    248    247            �           2604    17997    POE id    DEFAULT     d   ALTER TABLE ONLY public."POE" ALTER COLUMN id SET DEFAULT nextval('public."POE_id_seq"'::regclass);
 7   ALTER TABLE public."POE" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    250    249            �           2604    17998 
   SABOOJS id    DEFAULT     l   ALTER TABLE ONLY public."SABOOJS" ALTER COLUMN id SET DEFAULT nextval('public."SABOOJS_id_seq"'::regclass);
 ;   ALTER TABLE public."SABOOJS" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    255    252            �           2604    17999    SABOOJSHRE id    DEFAULT     s   ALTER TABLE ONLY public."SABOOJSHRE" ALTER COLUMN id SET DEFAULT nextval('public."SABOOJSHREE_id_seq"'::regclass);
 >   ALTER TABLE public."SABOOJSHRE" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    254    253            �           2604    18000    SAFEDSAVEL id    DEFAULT     r   ALTER TABLE ONLY public."SAFEDSAVEL" ALTER COLUMN id SET DEFAULT nextval('public."SAFEDSAVEL_id_seq"'::regclass);
 >   ALTER TABLE public."SAFEDSAVEL" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    257    256            �           2604    18001    SAMABYTHI id    DEFAULT     p   ALTER TABLE ONLY public."SAMABYTHI" ALTER COLUMN id SET DEFAULT nextval('public."SAMABYTHI_id_seq"'::regclass);
 =   ALTER TABLE public."SAMABYTHI" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    259    258            �           2604    18002 
   SIKSHAS id    DEFAULT     l   ALTER TABLE ONLY public."SIKSHAS" ALTER COLUMN id SET DEFAULT nextval('public."SIKSHAS_id_seq"'::regclass);
 ;   ALTER TABLE public."SIKSHAS" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    261    260            �           2604    18003    SVSKP id    DEFAULT     h   ALTER TABLE ONLY public."SVSKP" ALTER COLUMN id SET DEFAULT nextval('public."SVSKP_id_seq"'::regclass);
 9   ALTER TABLE public."SVSKP" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    263    262            �           2604    18004    YUBAS id    DEFAULT     h   ALTER TABLE ONLY public."YUBAS" ALTER COLUMN id SET DEFAULT nextval('public."YUBAS_id_seq"'::regclass);
 9   ALTER TABLE public."YUBAS" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    265    264            �           2604    18005    attri_table id    DEFAULT     n   ALTER TABLE ONLY public.attri_table ALTER COLUMN id SET DEFAULT nextval('public.att_table_id_seq'::regclass);
 =   ALTER TABLE public.attri_table ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    268    267            �           2604    18006    audit_log id    DEFAULT     l   ALTER TABLE ONLY public.audit_log ALTER COLUMN id SET DEFAULT nextval('public.audit_log_id_seq'::regclass);
 ;   ALTER TABLE public.audit_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    270    269            �           2604    18007    profile id_pk    DEFAULT     n   ALTER TABLE ONLY public.profile ALTER COLUMN id_pk SET DEFAULT nextval('public.profile_id_pk_seq'::regclass);
 <   ALTER TABLE public.profile ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    275    274            �           2604    18008    scheme_table id    DEFAULT     r   ALTER TABLE ONLY public.scheme_table ALTER COLUMN id SET DEFAULT nextval('public.scheme_table_id_seq'::regclass);
 >   ALTER TABLE public.scheme_table ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    282    281            �           2604    18009    user_privilege privilege_id_fk    DEFAULT     �   ALTER TABLE ONLY public.user_privilege ALTER COLUMN privilege_id_fk SET DEFAULT nextval('public.user_privilege_privilege_id_fk_seq'::regclass);
 M   ALTER TABLE public.user_privilege ALTER COLUMN privilege_id_fk DROP DEFAULT;
       public          postgres    false    284    283            �           2604    18010    user_privilege user_type_id_fk    DEFAULT     �   ALTER TABLE ONLY public.user_privilege ALTER COLUMN user_type_id_fk SET DEFAULT nextval('public.user_privilege_user_type_id_fk_seq'::regclass);
 M   ALTER TABLE public.user_privilege ALTER COLUMN user_type_id_fk DROP DEFAULT;
       public          postgres    false    285    283            s          0    17744    ANAND 
   TABLE DATA           �   COPY public."ANAND" (id, session, "Total_No_of_SHGs_formed_in_the_district", "Total_No_of_SHGs_got_credit_linkage", "user", tstamp, ip, gp_id) FROM stdin;
    public          postgres    false    202   �o      t          0    17747    ANAND_backup 
   TABLE DATA           �   COPY public."ANAND_backup" (id, session, "Total_No_of_SHGs_formed_in_the_district", "Total_No_of_SHGs_got_credit_linkage", "user", tstamp, ip, gp_id) FROM stdin;
    public          postgres    false    203   <p      v          0    17755    AWCC 
   TABLE DATA           �   COPY public."AWCC" (id, session, "No_of_ICDS_Cenetres_devoid_of_own_building", "No_of_new_ICDS_building_constructed", "No_of_ICDS_Centres_running_in_open_space", "user", tstamp, ip) FROM stdin;
    public          postgres    false    205   �p      x          0    17760 	   BAITARANI 
   TABLE DATA           t   COPY public."BAITARANI" ("No_of_burning_ghats_taken_up", "Completed_till_date", "user", tstamp, ip, id) FROM stdin;
    public          postgres    false    207   �p      z          0    17765    DOC 
   TABLE DATA           �   COPY public."DOC" (id, session, "Target_for_distribution_of_poultry", "No_of_poultry_actually_distributed", "user", tstamp, ip) FROM stdin;
    public          postgres    false    209   �p      {          0    17768    DOG 
   TABLE DATA           �   COPY public."DOG" (id, session, "Target_for_distribution_of_goats", "No_of_goats_actually_distributed", "No_of_beneficiaries_selected", "No_of_beneficiaries_approved", "user", tstamp, ip) FROM stdin;
    public          postgres    false    210   �p      }          0    17773    DOPTUHD 
   TABLE DATA           f   COPY public."DOPTUHD" (id, session, "No_of_Power_tiller_distributed", "user", tstamp, ip) FROM stdin;
    public          postgres    false    212   q                0    17778 
   ENROLLMENT 
   TABLE DATA           {   COPY public."ENROLLMENT" ("Category ", "Gross_Enrolment_Ratio", "Net_Enrolment_Ratio", "user", ip, tstamp, id) FROM stdin;
    public          postgres    false    214   /q      �          0    17783    FOODPRO 
   TABLE DATA           v   COPY public."FOODPRO" ("Session", "Status_of_pocurement", "Target_of_pocurement", "user", ip, tstamp, id) FROM stdin;
    public          postgres    false    216   Lq      �          0    17788 	   GITANJALI 
   TABLE DATA           �   COPY public."GITANJALI" ("No_of_case_sanctioned_under_Gitanjali", "Date_of_Inception", "No_of_houses_constructed_under_Gitanjali", "user", ip, tstamp, id) FROM stdin;
    public          postgres    false    218   iq      �          0    17793 
   IMMUNISATI 
   TABLE DATA           g   COPY public."IMMUNISATI" (id, session, "Per_of_Fully_immunised_child", "user", tstamp, ip) FROM stdin;
    public          postgres    false    220   �q      �          0    17798    INFANTD 
   TABLE DATA           `   COPY public."INFANTD" (id, session, "Total_No_of_Infant_Death", "user", tstamp, ip) FROM stdin;
    public          postgres    false    222   �q      �          0    17803 
   INSPECTION 
   TABLE DATA           �   COPY public."INSPECTION" ("No_of_homes_inspected_by_Senior_Officers", "user", tstamp, ip, id, "Degisnation_of_officers") FROM stdin;
    public          postgres    false    224   �q      �          0    17808    INSTDEL 
   TABLE DATA           e   COPY public."INSTDEL" (id, session, "Per_of_Institutional_Delivery", "user", tstamp, ip) FROM stdin;
    public          postgres    false    226   �q      �          0    17813    JALDJALB 
   TABLE DATA           �   COPY public."JALDJALB" ("Date_of_Inspection", "No_of_ponds_excavated_under_Jal_Dharo_Jal_Bharo", "No_of_ponds_fish_production_started", "user", ip, tstamp, id) FROM stdin;
    public          postgres    false    228   �q      �          0    17818    KANYAS 
   TABLE DATA           9  COPY public."KANYAS" (id, session, "No_of_K-1_cases_application_received", "No_of_K-1_cases_application_sanctioned", "No_of_K-1_cases_application_disbursed", "No_of_K-2_cases_application_received", "No_of_K-2_cases_application_sanctioned", "No_of_K-2_cases_application_disbursed", "user", tstamp, ip) FROM stdin;
    public          postgres    false    230   r      �          0    17826 
   KARMATIRTH 
   TABLE DATA           �   COPY public."KARMATIRTH" ("No_of_Karmatirtha_sanctioned", "No_of_Karmatirtha_for_which_construction_started", "No_of_Karmatirtha_for_which_construction_completed", "No_of_Karmatirth_operationalised", "user", ip, tstamp, id) FROM stdin;
    public          postgres    false    232   4r      �          0    17831    KCC 
   TABLE DATA           �   COPY public."KCC" (id, "No_of_agricultrural_families_in_the_district", "No_of_agricultural_families_covered_by_kcc", kcc_coverage_percentage, "user", tstamp, ip, gp_id) FROM stdin;
    public          postgres    false    234   Qr      �          0    17836    KishanM 
   TABLE DATA           �   COPY public."KishanM" (id, "No_of_Kishan_Mandis_sanctioned", "No_of_Kishan_Mandis_operational", "Operationality", "user", tstamp, ip) FROM stdin;
    public          postgres    false    236   �r      �          0    17839    LANDPP 
   TABLE DATA           l   COPY public."LANDPP" ("No_of_land_permission_pending", "user", tstamp, ip, id, "PROJECTS_NAME") FROM stdin;
    public          postgres    false    237   �r      �          0    17844    Login 
   TABLE DATA           m   COPY public."Login" (username, password, designation, user_type_id_fk, gp_id, id, active_status) FROM stdin;
    public          postgres    false    239   s      �          0    17851 	   MATERNALD 
   TABLE DATA           d   COPY public."MATERNALD" (id, session, "Total_No_of_Maternal_Death", "user", tstamp, ip) FROM stdin;
    public          postgres    false    242   ds      �          0    17856    MCI 
   TABLE DATA           d   COPY public."MCI" (id, session, "Percentage_of_malnourished_child", "user", tstamp, ip) FROM stdin;
    public          postgres    false    244   �s      �          0    17861    MGNREGS 
   TABLE DATA           �   COPY public."MGNREGS" (id, session, "No_of_Person_days_generated_under_MGNREGS", "Average_No_of_Persondays_generated_per_household", "Expenditure_of_the_session", per_of_labour_budget_achieved, "user", tstamp, ip) FROM stdin;
    public          postgres    false    246   �s      �          0    17864 	   MINORITYS 
   TABLE DATA           �   COPY public."MINORITYS" (session, "Target_for_Scholarship_distribution_Aikyashree", "No_of_students_distributed_scholarship", "No_of_Aaplication_uploaded_under_Aikyashree_scholarship", "user", ip, tstamp, id) FROM stdin;
    public          postgres    false    247   �s      �          0    17869    POE 
   TABLE DATA           X   COPY public."POE" (id, session, "Target", "Production", "user", tstamp, ip) FROM stdin;
    public          postgres    false    249   �s      �          0    17874 	   Privilege 
   TABLE DATA           u   COPY public."Privilege" (privilege_id_pk, parent, link, view_sidebar, "order", active_status, page_name) FROM stdin;
    public          postgres    false    251   �s      �          0    17877    SABOOJS 
   TABLE DATA           �   COPY public."SABOOJS" (session, "Target_for_distribution_of_cycles", "Cycle_distributed_till_date", "user", ip, tstamp, id) FROM stdin;
    public          postgres    false    252   �t      �          0    17880 
   SABOOJSHRE 
   TABLE DATA           �   COPY public."SABOOJSHRE" ("No_of_children_born_since_inception_of_the_project_in_the_dist", "No_of_tree_sapling_handed_over_to_the_new_born_children", "user", ip, tstamp, id) FROM stdin;
    public          postgres    false    253   �t      �          0    17887 
   SAFEDSAVEL 
   TABLE DATA           �   COPY public."SAFEDSAVEL" (session, "No_of_accidents", "No_of_death", "No_of_insured_person", "user", tstamp, ip, id) FROM stdin;
    public          postgres    false    256   �t      �          0    17892 	   SAMABYTHI 
   TABLE DATA           |   COPY public."SAMABYTHI" ("No_of_beneficiaries_provided_benefit_till_date", "Till_date", "user", ip, tstamp, id) FROM stdin;
    public          postgres    false    258   �t      �          0    17897    SIKSHAS 
   TABLE DATA           �   COPY public."SIKSHAS" (session, "Targetted_No_Of_SC/ST_Student_under_Sikshashree", "No_of_Students_getting_benefit_under_Sikshashree", "No_of_Applications_uploaded_under_Sikshashree", "user", ip, tstamp, id) FROM stdin;
    public          postgres    false    260   u      �          0    17902    SVSKP 
   TABLE DATA           �   COPY public."SVSKP" (session, "No_of_project_Sponsored_under_SVSKP", "No_of_project_sanctioned_under_SVSKP", "user", ip, tstamp, id) FROM stdin;
    public          postgres    false    262   6u      �          0    17907    YUBAS 
   TABLE DATA           �   COPY public."YUBAS" ("No_of_unemployed_Youth_registered_under_Yubashree", "No_of_unemployed_registered_Youth_getting_monthly_assistance", "user", ip, tstamp, id) FROM stdin;
    public          postgres    false    264   Su      �          0    17914    attri_table 
   TABLE DATA           B   COPY public.attri_table (id, id_scheme, a_name, name) FROM stdin;
    public          postgres    false    267   pu      �          0    17922 	   audit_log 
   TABLE DATA           b   COPY public.audit_log (id, "user", section, action, request, stamp, comment, ip_addr) FROM stdin;
    public          postgres    false    269   �|      �          0    18117    dashboard_info 
   TABLE DATA           b   COPY public.dashboard_info (id, s_name, name, a_target, target, a_progress, progress) FROM stdin;
    public          postgres    false    287   X�      �          0    17936    profile 
   TABLE DATA           R   COPY public.profile (id_pk, username, f_name, m_name, l_name, mobile) FROM stdin;
    public          postgres    false    274   u�      �          0    17941    rp_location_master_block 
   TABLE DATA           �   COPY public.rp_location_master_block (district_id_fk, subdiv_id_fk, block_name, schcd, clucd, block_id_pk, block_mun_corp_flag, block_kol_flag) FROM stdin;
    public          postgres    false    276   ł      �          0    17944    rp_location_master_district 
   TABLE DATA           h   COPY public.rp_location_master_district (district_id_pk, state_id_fk, district_name, schcd) FROM stdin;
    public          postgres    false    277   ��      �          0    17947    rp_location_master_gp 
   TABLE DATA           o   COPY public.rp_location_master_gp (schcd, schname, parent_id, gp_ward_flag, block_id_fk, gp_id_pk) FROM stdin;
    public          postgres    false    278   (�      �          0    17950    rp_location_master_state 
   TABLE DATA           Z   COPY public.rp_location_master_state (state_id_pk, state_name, active_status) FROM stdin;
    public          postgres    false    279   �      �          0    17953    rp_location_master_subdiv 
   TABLE DATA           e   COPY public.rp_location_master_subdiv (district_id_fk, subdiv_name, schcd, subdiv_id_pk) FROM stdin;
    public          postgres    false    280   F�      �          0    17956    scheme_table 
   TABLE DATA           8   COPY public.scheme_table (id, s_name, name) FROM stdin;
    public          postgres    false    281   (�      �          0    17961    user_privilege 
   TABLE DATA           `   COPY public.user_privilege (id_pk, privilege_id_fk, user_type_id_fk, active_status) FROM stdin;
    public          postgres    false    283   |�      �          0    17968 	   user_type 
   TABLE DATA           J   COPY public.user_type (user_type_id_pk, desig, active_status) FROM stdin;
    public          postgres    false    286   5�      �           0    0    ANAND_backup_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."ANAND_backup_id_seq"', 1, true);
          public          postgres    false    204            �           0    0    AWCC_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."AWCC_id_seq"', 1, false);
          public          postgres    false    206            �           0    0    BAITARANI_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."BAITARANI_id_seq"', 1, false);
          public          postgres    false    208            �           0    0 
   DOG_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."DOG_id_seq"', 1, false);
          public          postgres    false    211            �           0    0    DOPTUHD_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."DOPTUHD_id_seq"', 1, false);
          public          postgres    false    213            �           0    0    ENROLLMENTR_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."ENROLLMENTR_id_seq"', 1, false);
          public          postgres    false    215            �           0    0    FOODPRO_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."FOODPRO_id_seq"', 1, false);
          public          postgres    false    217            �           0    0    GITANJALI_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."GITANJALI_id_seq"', 1, false);
          public          postgres    false    219            �           0    0    IMMUNISATION_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."IMMUNISATION_id_seq"', 1, false);
          public          postgres    false    221                        0    0    INFANTD_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."INFANTD_id_seq"', 1, false);
          public          postgres    false    223                       0    0    INSPECTION_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."INSPECTION_id_seq"', 1, false);
          public          postgres    false    225                       0    0    INSTDEL_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."INSTDEL_id_seq"', 1, false);
          public          postgres    false    227                       0    0    JALDJALB_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."JALDJALB_id_seq"', 1, false);
          public          postgres    false    229                       0    0    KANYAS_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."KANYAS_id_seq"', 1, false);
          public          postgres    false    231                       0    0    KARMATIRTHA_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."KARMATIRTHA_id_seq"', 1, false);
          public          postgres    false    233                       0    0 
   KCC_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public."KCC_id_seq"', 3, true);
          public          postgres    false    235                       0    0    LANDPP_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."LANDPP_id_seq"', 1, false);
          public          postgres    false    238                       0    0    Login_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Login_id_seq"', 1, true);
          public          postgres    false    240            	           0    0    Login_user_type_id_fk_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."Login_user_type_id_fk_seq"', 1, false);
          public          postgres    false    241            
           0    0    MATERNALD_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."MATERNALD_id_seq"', 1, false);
          public          postgres    false    243                       0    0 
   MCI_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."MCI_id_seq"', 1, false);
          public          postgres    false    245                       0    0    MINORITYS_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."MINORITYS_id_seq"', 1, false);
          public          postgres    false    248                       0    0 
   POE_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."POE_id_seq"', 1, false);
          public          postgres    false    250                       0    0    SABOOJSHREE_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."SABOOJSHREE_id_seq"', 1, false);
          public          postgres    false    254                       0    0    SABOOJS_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."SABOOJS_id_seq"', 1, false);
          public          postgres    false    255                       0    0    SAFEDSAVEL_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."SAFEDSAVEL_id_seq"', 1, false);
          public          postgres    false    257                       0    0    SAMABYTHI_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."SAMABYTHI_id_seq"', 1, false);
          public          postgres    false    259                       0    0    SIKSHAS_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."SIKSHAS_id_seq"', 1, false);
          public          postgres    false    261                       0    0    SVSKP_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."SVSKP_id_seq"', 1, false);
          public          postgres    false    263                       0    0    YUBAS_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."YUBAS_id_seq"', 1, false);
          public          postgres    false    265                       0    0    anand_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.anand_id_seq', 2, true);
          public          postgres    false    266                       0    0    att_table_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.att_table_id_seq', 1, false);
          public          postgres    false    268                       0    0    audit_log_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.audit_log_id_seq', 127, true);
          public          postgres    false    270                       0    0 
   doc_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.doc_id_seq', 1, false);
          public          postgres    false    271                       0    0    kishanm_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.kishanm_id_seq', 1, false);
          public          postgres    false    272                       0    0    mgnres_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.mgnres_id_seq', 1, false);
          public          postgres    false    273                       0    0    profile_id_pk_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.profile_id_pk_seq', 1, false);
          public          postgres    false    275                       0    0    scheme_table_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.scheme_table_id_seq', 31, true);
          public          postgres    false    282                       0    0 "   user_privilege_privilege_id_fk_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.user_privilege_privilege_id_fk_seq', 1, false);
          public          postgres    false    284                       0    0 "   user_privilege_user_type_id_fk_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.user_privilege_user_type_id_fk_seq', 1, false);
          public          postgres    false    285            �           2606    18012    AWCC AWCC_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."AWCC"
    ADD CONSTRAINT "AWCC_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."AWCC" DROP CONSTRAINT "AWCC_pkey";
       public            postgres    false    205            �           2606    18014    DOG DOG_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public."DOG"
    ADD CONSTRAINT "DOG_pkey" PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."DOG" DROP CONSTRAINT "DOG_pkey";
       public            postgres    false    210            �           2606    18016    DOPTUHD DOPTUHD_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."DOPTUHD"
    ADD CONSTRAINT "DOPTUHD_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."DOPTUHD" DROP CONSTRAINT "DOPTUHD_pkey";
       public            postgres    false    212            �           2606    18018    IMMUNISATI IMMUNISATION_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."IMMUNISATI"
    ADD CONSTRAINT "IMMUNISATION_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."IMMUNISATI" DROP CONSTRAINT "IMMUNISATION_pkey";
       public            postgres    false    220            �           2606    18020    INFANTD INFANTD_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."INFANTD"
    ADD CONSTRAINT "INFANTD_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."INFANTD" DROP CONSTRAINT "INFANTD_pkey";
       public            postgres    false    222            �           2606    18022    INSTDEL INSTDEL_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."INSTDEL"
    ADD CONSTRAINT "INSTDEL_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."INSTDEL" DROP CONSTRAINT "INSTDEL_pkey";
       public            postgres    false    226            �           2606    18024    KANYAS KANYAS_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."KANYAS"
    ADD CONSTRAINT "KANYAS_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."KANYAS" DROP CONSTRAINT "KANYAS_pkey";
       public            postgres    false    230            �           2606    18026    KCC KCC_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public."KCC"
    ADD CONSTRAINT "KCC_pkey" PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."KCC" DROP CONSTRAINT "KCC_pkey";
       public            postgres    false    234            �           2606    18028    Login Login_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Login"
    ADD CONSTRAINT "Login_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Login" DROP CONSTRAINT "Login_pkey";
       public            postgres    false    239            �           2606    18030 "   Login Login_username_username1_key 
   CONSTRAINT     x   ALTER TABLE ONLY public."Login"
    ADD CONSTRAINT "Login_username_username1_key" UNIQUE (username) INCLUDE (username);
 P   ALTER TABLE ONLY public."Login" DROP CONSTRAINT "Login_username_username1_key";
       public            postgres    false    239    239            �           2606    18032    MATERNALD MATERNALD_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."MATERNALD"
    ADD CONSTRAINT "MATERNALD_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."MATERNALD" DROP CONSTRAINT "MATERNALD_pkey";
       public            postgres    false    242            �           2606    18034    MCI MCI_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public."MCI"
    ADD CONSTRAINT "MCI_pkey" PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."MCI" DROP CONSTRAINT "MCI_pkey";
       public            postgres    false    244            �           2606    18036    POE POE_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public."POE"
    ADD CONSTRAINT "POE_pkey" PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."POE" DROP CONSTRAINT "POE_pkey";
       public            postgres    false    249            �           2606    18038    Privilege Privilege_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public."Privilege"
    ADD CONSTRAINT "Privilege_pkey" PRIMARY KEY (privilege_id_pk);
 F   ALTER TABLE ONLY public."Privilege" DROP CONSTRAINT "Privilege_pkey";
       public            postgres    false    251            �           2606    18040    ANAND anand_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."ANAND"
    ADD CONSTRAINT anand_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."ANAND" DROP CONSTRAINT anand_pkey;
       public            postgres    false    202            �           2606    18042    attri_table att_table_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.attri_table
    ADD CONSTRAINT att_table_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.attri_table DROP CONSTRAINT att_table_pkey;
       public            postgres    false    267            �           2606    18044    audit_log audit_log_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.audit_log
    ADD CONSTRAINT audit_log_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.audit_log DROP CONSTRAINT audit_log_pkey;
       public            postgres    false    269            �           2606    18121 "   dashboard_info dashboard_info_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.dashboard_info
    ADD CONSTRAINT dashboard_info_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.dashboard_info DROP CONSTRAINT dashboard_info_pkey;
       public            postgres    false    287            �           2606    18046    DOC doc_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public."DOC"
    ADD CONSTRAINT doc_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public."DOC" DROP CONSTRAINT doc_pkey;
       public            postgres    false    209            �           2606    18048    KishanM kishanm_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."KishanM"
    ADD CONSTRAINT kishanm_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."KishanM" DROP CONSTRAINT kishanm_pkey;
       public            postgres    false    236            �           2606    18050    MGNREGS mgnres_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public."MGNREGS"
    ADD CONSTRAINT mgnres_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY public."MGNREGS" DROP CONSTRAINT mgnres_pkey;
       public            postgres    false    246            �           2606    18052    ANAND_backup pk_ANAND_backup 
   CONSTRAINT     ^   ALTER TABLE ONLY public."ANAND_backup"
    ADD CONSTRAINT "pk_ANAND_backup" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."ANAND_backup" DROP CONSTRAINT "pk_ANAND_backup";
       public            postgres    false    203            �           2606    18054    profile profile_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.profile
    ADD CONSTRAINT profile_pkey PRIMARY KEY (id_pk);
 >   ALTER TABLE ONLY public.profile DROP CONSTRAINT profile_pkey;
       public            postgres    false    274            �           2606    18056 6   rp_location_master_block rp_location_master_block_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.rp_location_master_block
    ADD CONSTRAINT rp_location_master_block_pkey PRIMARY KEY (block_id_pk);
 `   ALTER TABLE ONLY public.rp_location_master_block DROP CONSTRAINT rp_location_master_block_pkey;
       public            postgres    false    276            �           2606    18058 <   rp_location_master_district rp_location_master_district_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.rp_location_master_district
    ADD CONSTRAINT rp_location_master_district_pkey PRIMARY KEY (district_id_pk);
 f   ALTER TABLE ONLY public.rp_location_master_district DROP CONSTRAINT rp_location_master_district_pkey;
       public            postgres    false    277            �           2606    18060 0   rp_location_master_gp rp_location_master_gp_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.rp_location_master_gp
    ADD CONSTRAINT rp_location_master_gp_pkey PRIMARY KEY (gp_id_pk);
 Z   ALTER TABLE ONLY public.rp_location_master_gp DROP CONSTRAINT rp_location_master_gp_pkey;
       public            postgres    false    278            �           2606    18062 6   rp_location_master_state rp_location_master_state_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.rp_location_master_state
    ADD CONSTRAINT rp_location_master_state_pkey PRIMARY KEY (state_id_pk);
 `   ALTER TABLE ONLY public.rp_location_master_state DROP CONSTRAINT rp_location_master_state_pkey;
       public            postgres    false    279            �           2606    18064 8   rp_location_master_subdiv rp_location_master_subdiv_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.rp_location_master_subdiv
    ADD CONSTRAINT rp_location_master_subdiv_pkey PRIMARY KEY (subdiv_id_pk);
 b   ALTER TABLE ONLY public.rp_location_master_subdiv DROP CONSTRAINT rp_location_master_subdiv_pkey;
       public            postgres    false    280            �           2606    18066    scheme_table scheme_table_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.scheme_table
    ADD CONSTRAINT scheme_table_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.scheme_table DROP CONSTRAINT scheme_table_pkey;
       public            postgres    false    281            �           2606    18068 "   user_privilege user_privilege_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.user_privilege
    ADD CONSTRAINT user_privilege_pkey PRIMARY KEY (id_pk);
 L   ALTER TABLE ONLY public.user_privilege DROP CONSTRAINT user_privilege_pkey;
       public            postgres    false    283            �           2606    18070    user_type user_type_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.user_type
    ADD CONSTRAINT user_type_pkey PRIMARY KEY (user_type_id_pk);
 B   ALTER TABLE ONLY public.user_type DROP CONSTRAINT user_type_pkey;
       public            postgres    false    286            �           2606    18071     Login Login_user_type_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Login"
    ADD CONSTRAINT "Login_user_type_id_fk_fkey" FOREIGN KEY (user_type_id_fk) REFERENCES public.user_type(user_type_id_pk) ON UPDATE CASCADE ON DELETE SET NULL;
 N   ALTER TABLE ONLY public."Login" DROP CONSTRAINT "Login_user_type_id_fk_fkey";
       public          postgres    false    286    239    3049            �           2606    18076    audit_log audit_log_user_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.audit_log
    ADD CONSTRAINT audit_log_user_fkey FOREIGN KEY ("user") REFERENCES public."Login"(username) NOT VALID;
 G   ALTER TABLE ONLY public.audit_log DROP CONSTRAINT audit_log_user_fkey;
       public          postgres    false    239    3017    269            �           2606    18081    user_privilege privilege_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_privilege
    ADD CONSTRAINT privilege_id_fk FOREIGN KEY (privilege_id_fk) REFERENCES public."Privilege"(privilege_id_pk) ON UPDATE CASCADE ON DELETE SET NULL;
 H   ALTER TABLE ONLY public.user_privilege DROP CONSTRAINT privilege_id_fk;
       public          postgres    false    3027    283    251            �           2606    18086 E   rp_location_master_block rp_location_master_block_district_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.rp_location_master_block
    ADD CONSTRAINT rp_location_master_block_district_id_fk_fkey FOREIGN KEY (district_id_fk) REFERENCES public.rp_location_master_district(district_id_pk) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 o   ALTER TABLE ONLY public.rp_location_master_block DROP CONSTRAINT rp_location_master_block_district_id_fk_fkey;
       public          postgres    false    3037    277    276            �           2606    18091 C   rp_location_master_block rp_location_master_block_subdiv_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.rp_location_master_block
    ADD CONSTRAINT rp_location_master_block_subdiv_id_fk_fkey FOREIGN KEY (subdiv_id_fk) REFERENCES public.rp_location_master_subdiv(subdiv_id_pk) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 m   ALTER TABLE ONLY public.rp_location_master_block DROP CONSTRAINT rp_location_master_block_subdiv_id_fk_fkey;
       public          postgres    false    280    3043    276            �           2606    18096 H   rp_location_master_district rp_location_master_district_state_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.rp_location_master_district
    ADD CONSTRAINT rp_location_master_district_state_id_fk_fkey FOREIGN KEY (state_id_fk) REFERENCES public.rp_location_master_state(state_id_pk) NOT VALID;
 r   ALTER TABLE ONLY public.rp_location_master_district DROP CONSTRAINT rp_location_master_district_state_id_fk_fkey;
       public          postgres    false    279    277    3041            �           2606    18101 <   rp_location_master_gp rp_location_master_gp_block_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.rp_location_master_gp
    ADD CONSTRAINT rp_location_master_gp_block_id_fk_fkey FOREIGN KEY (block_id_fk) REFERENCES public.rp_location_master_block(block_id_pk) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 f   ALTER TABLE ONLY public.rp_location_master_gp DROP CONSTRAINT rp_location_master_gp_block_id_fk_fkey;
       public          postgres    false    278    276    3035            �           2606    18106 G   rp_location_master_subdiv rp_location_master_subdiv_district_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.rp_location_master_subdiv
    ADD CONSTRAINT rp_location_master_subdiv_district_id_fk_fkey FOREIGN KEY (district_id_fk) REFERENCES public.rp_location_master_district(district_id_pk) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 q   ALTER TABLE ONLY public.rp_location_master_subdiv DROP CONSTRAINT rp_location_master_subdiv_district_id_fk_fkey;
       public          postgres    false    3037    277    280            �           2606    18111    user_privilege user_type_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_privilege
    ADD CONSTRAINT user_type_id_fk FOREIGN KEY (user_type_id_fk) REFERENCES public.user_type(user_type_id_pk);
 H   ALTER TABLE ONLY public.user_privilege DROP CONSTRAINT user_type_id_fk;
       public          postgres    false    3049    283    286            s   m   x����	�0���L6`�ob�8���
r	+Ā? z�{+���<J*�	��J^�9_n��8�5ӷ,���-�S���	L?dJ����S�4P��=
zDN��ob�%h      t   R   x�3�4202�444�43�LO�K/ͩ�+�LI���K,�pH�M���K��+�50�56P04�25�25ᴲ2�4�44����� $�      v      x������ � �      x      x������ � �      z      x������ � �      {      x������ � �      }      x������ � �            x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   g   x���;
�0 �9=��$�	��x�b����������x� 
������gIi){��!o��~>6���%j(��Ff��HTk!A���hC\c���;�^�6%      �      x������ � �      �      x������ � �      �   R   x�KO�K/ͩ�+�LI���K,�pH�M���K���
��p��rrZ��(�Ĥd$E`�.��F@%F@ʀ+F��� F��      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x�U�Q
�0D����	L[����ْXiSj�x{�M�HX2og6�8�u��'�^��G�S��x6e۹��zʜQ��N����j���=c�"�F�V���L�?�5��G%��\�ad����e�{�N�s��~1�X�C�c9\�o�~:� �/"�B+      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   e  x��X[o۸~ż,�>l�%���usrڢMQ,P�`d��F�]����/"e+�ٗD�|�/Ù�I�|�x��ŮVEW�uW��?��*�l�Ҽ�K�UM���P=� J������4�����g3ۊV&�[$���Y5{���Q�WGY��t&��"9["�]�����O��I�\�ı����7Y7�ފS�wRZn9j�}�5r_�[� �~P�^Pz�fh���Q�ۮ�d�6�oA$"F�*'b�,�&�U�[o���m�����:?�s�"X�����1�]��8^*��+�$DX8K��,��N�4/7���v������AhJC��AX�&�רv�h�׈�e�؅�.��ey
�r�� � �,�i�`U�DM���R�b /d��uq<���Խ�e�d����l�C��j����e�d�}���[[U��Y����g��Qh��?�?l�C�ʭ�;^T�]�j� a�c °<���Z�Ƶם�ć��7U��(
�������$&	޸atg�� J]u5F��'�7��|��>�}�=�h����0�ײ�*��� ��|�_#�9�7�嫷8����y��G��$f���Ug��z���7��1�h���-��U�QF��d��K�;
�p�jz��x�z��x7�={���b�y���#�:l�J�Y�`�3Lx�����G�(t�ڢ�b����l��sLm�kz�����!���a�_�gs�7m��[�;��5m���f_K�Dz������`���,'+.�Xe϶��n�ۘ�W�8G�L���p��e%������h��1`����T���dl6'�5����	���9F�`��dl�����)��u�W�ᜮ��iplfR|8� g�	�p�)�;�̠�����5�okЃH���#}j�T�7&K�9�Tu8�?7��9=Ɵa�<�d��� �M�l��(�\�ݪV迱|t���d�Ql>#F�i�/��$o�Wݍ��<�6�c���[`�{/g��t͠9��l
~�͗�u��Um��B�a�(��E]��?��o-�ǻy|�XD(�e�l�:��ٙ��3�iEj�Lp�H��6�h��2XH0��AK�߅O|����9��"#*w�T�r��"O�J\�rwF��S�����7��JB��tO�(��`F�bF_��9�.��*S�����y'<�����c�ፗ�:��=�a� �A�Z���QK�k�G�C��=�X��< ]���Y�>�;e�l�9�������݋��"�zb�ק���W�>ܱK��9)��z'\N�����͐oX���z�D�Z��-��(v�����k����2�rF6�{�� A��yk,S�����jœ���mY!!!&	�\��گ&Έ~,�:�*�@.�����#����8Y��l�"-K�_a�m͉o�Vx0w���҃�U8 <������+�֤DJ��{�i���o��<���P������LkR����me����"=�zl��9W�Qͨ+�!�lR~���:���6(Tℾ�$9�ɾ�}�Y�o���/7�/�_l��Z-q��N9(����w�I!H�I�*O�U��ȷ��o����T�a��	�>�~�k}��3 O��!P�|\�E�R�xf�P�������$��Ҽ���g�����u��{[�q�g�?������e�4͢x���=ě�ն��T�{� �A����j��Q�����y�*-�]�Jʩ[�7�Ы����ߔ����ԕ����tr5�]e�t��ai�<�Z��;�m���z~�8�.ڞî�ѱ1�_oz:,�4�R�'�Ec���5m��r������wkκ�6I[�5�q��d��f      �   c  x�͛�n�8�����$�(�jӤ�M�E��(T[��ul#V�ݷߡd�6h-q"H4�/���ß��E�Y����z^���զ��,����j�}-�zg���vV���}=�Nnƫͼ��j�܍U��.�+��|{;��_�g���V���g�|#�\~IiF���p:�>C/X�]�ƅeھԣ��}�}����\Tٲz��`ȏ�E��PqdHl��c��fu�i���]f�ܜ"��#�|7��������Ӏ|��g���G�P�0b�0�UO�n�����}��Z-WG"}�k��Q�ؐI��;Fi2pyF����]��#G��2G,�����{?�<Q*i�3J��圎-�d����.8��Q:�	pj��~�y�T-�����!�k�t���r���r̾�E�/�1ѢH��RaE��R� N������p���F2G3|�u^5*ΰ���t�W6h3L����������ǻ�_+pD�~��#8Q�橂O�dh݅
�CXn��>yx�6�<^��"�=�"�!=�Pp���=���Nn����Ai�~<���?�v� o�����-7���ԡ�j:��,5L�*�ĥ_�D�1<PԹ~�+.}��+����"܀������nxd\�F���6E�+G�%��8��d�l�,��0�;4����8�Vq��LdJ8��`J�HS��W�9��s�ū�����zz;����ui����������M����]G"��aw�mn3̽�9�/cP��WM9�aw��>� ɗqıhn>�2le=��j���]n�>� !�nЄ[��fxK IC��b*�8�7�|p;�gX4X^�t�Т��_n�@ �+=A:vh�tp���찓8�IL%������!�a7qxp�҉�-���հ[�<X{�t����^��l���!I2D0�6��s2�=�")Cf���"�|
h�sE1x>��o�N>�h�����Ӗ���"��Zx��Hʩ�������=�	�\2�IY�]9����	[4XH�T���vQ��a[��\Y'�%<B���4#ys��M;z`oo	�+a:oo�`�䃦���@���X���)j�}U��p��ow������%��o˦nZ|&��G�����-��l����Ӳ����uJ���^�ن�O@ȃ�mJR���ִ���ٹ�G�A��-mvd O*i�a���QJ����?9G�� �#_�D�����ً��D����Ú����ȆT6n+;��#�E���%i��6����=ҭ��L��4�wY��3�u��ev�h���l$�<t�F���-�AU�����nH�t:����M����<eIf˦��u�_]\\��D�      �      x������ � �      �   @   x�3�LO�K/ͩ�+�LI���K,�pH�M���K����rr�Cr����[Xp��qqq ��      �      x�}\�r�ʑ]�}���BԀiY�H� � �V�v��otV���o�m�0NeM9g�TS5�:/�����ײ^����e�Ԡ�Z񏪴���V��RMuu���X���1�_��M���c�C[Y�TuW��/]��ڟ��c�G�Z�������4cW��X��>�ZY�TC�E�U3Tgwq����/)ek�ѕ�kD���N���Ni��9��c���n�h�mE�����i��ѯF��l�U��TE��ur��ͳ;.�ᙸ�?�z!>T�'�gw;�zV�um��Ε&h3�H_���7u�?���n�BX]O��=n��]>G��z�,ƪ��u+�c���tM?n�- f"��c�n��A�Ɉ&"�0/��Q��gD���d�!��#q�"]�X�8�Hc�SB�N7vs��AC7�ihS hbw� �e�@�I�2��;",�L`���P4��)j��=�M���e���V���c=:����tn����gl�d=ٻ#��g����m��Z���H�z��m���!�hϧ��!ة�s��q;]�y/^�_��Q�x��D6,��ǅ.y9�����\\�k�e������n��Ϭ�#3�k��n��DA�"���4�4�� �9�V��ue��&���H����O�lu�����g��8@�}�˸���룛۳l|\@������TPB�����0N]3�j�ICփ�k
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
�n�Si@���&D�k�� Y:O[	]U�(+BK�VW ��%�M�P�U�lߩ�����ޗڬ,?��O<�9H񟛨}�,����v��zy�ݻ��p��׃�!]�n���c|�~?�ܡg�=�x�e��T���˫����`�nr`o�յ��f�)��)��"���&��_ᬒ o�%}���F��Ѐ�����_�=��      �   "  x�e�Mn�0���Sp�
����!#	
D�H��9jgԪ�.���١�V��%'wñ&h����Tx=rR�B+��vZޔ:Qv����=�Z�$N��w��\�l�0
lK�5 ��ÖS!�&�!ٻgA-`�BW�CB�W����l������Qs���&g��n�P({��\ ��E��UFށ4�&���aQ�<�[��iI��P���?q2���A����oJ-�k�BL�����ȁO��@��1��@M`�g*7����O%�J���>ޕ൴�����|7!|} �7�mp      �      x�|�]��8��}�o�@vH��t)�]�l�^!K�{e����#@�i2;�����SH� ���Tc��p���~Z��C�sh���?�?�����3.M9����s���<��c�hA��p��˧���UJ���8��_�C����{,��5���������C�����\x�k�щ��t���Ё�;��@��1�ߦ�0���϶���c|��q>���-���?m�>��؞��v��%PA��۶=�}�?��vYL�����zۖ�0 ��2.���F,�u�O�������?�����kAu�����^����y,����+@?��:��hLFT�ۙj������P����r.F�"Y��k�7��y������5����ï��~|�dђ�j�hʁ��v�?X���.�
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
a!Ĉe�oR	%F,�fT�9)Ʊ��k�q�bļ�I6������׿��H��      �      x�3��wQpr�sw��4����� 9Bl      �   �  x�MT˒�@;��b��%�o���@3�@m�*�����a�q۲$c4=����4�2���[��_׎���ڑ�5���z�O���qg폎�����RP��-�u���\�Σ ��J5�w�;��*����AW�e�mlN�����d�����z�L�M$c�O<'.�#�^F�#�>�N�ސ��g�e>��M���[[K�R��#o��L]�6f0/t 6 >qj�Bۑ��}���2�x�3 �u�h��ܟ̬�d#��4�@���s۴�s[�=��V��u�i%;�=�O�`�3���Gm��"��uJ��9�	��'uDZ�鸴shs�!�2R�P��,�eŏ��Ob�=�]-���7�7E֍P�xj��W!��k�\�?�.���}�>��"��� ���S���IY��/L��)=�����.y�s�սs���i�e:5�зl�t�|��\"�	�㩛�p�˸ͼ\r`��Ȏ��2d@dG0�sAl���Z��WT����'%%�`hZ��tǀc(���c�ap����s�r&Y�C�W`�S9S��u�u�8#:A��@j�u9�sz��+��u���� �*���"IQ_�x���P,Qv\ҙ:P���A�\>&i�%�z�b��	xQ�>�|����aH,���>%&�~gH��
��ڣ���$|����89c���|�(�2l����<n�:���R�!'^      �   D  x�eSKo� >���VZ�N�m�����Ɩq�����ց
���w�4{�1|�!�M��ƌ��4��3���wd�J4�J^frL0���v��W��*�̌������hڛ��Hn1���\9F��*�ڻn�_2���H���d������u����՞�fp�l�q�|0�i��4���od����b��-]A�r(�`�䑻�f�CG��<�$�"�0�e6ʞ��{�I/�G�%k9��q�fT���l�� ���S�b0�ڟHt�'�L��8(0�BO�(Y�7�"
ڟ�>r� �F��4�h�J�_ YRU��vνP�����jx�Eیuބ���ʏ�y#�=�'��ϑ�W��-��2A�5G�;�f4赣�*�W$�aYUY�T�t��h�%?jH��\4UQ��h!��Ü�ͬ��a�� �����5�ٔ,ٶk�|�jw���w�0�0�!Q�+�����u�����o�l��

lϺ������8��Rk��L>��3ɞ�'�ޱI<���4-���^�]7�q�0o�%�7������"���)/��D ���I��	�      �   �   x�%��� ���"�K���ޒ� ��,�5��N����RYa���6U�R����*ӷ��ƅg4��>��#��t�d��t�
(���	��I�0�S�t'��-��%hϡ ܱ��α�K�'XO�(�`-<�O�;P�>���jO�Q��%���<���?3��?04      �   ?   x�3�t��4�2�tt�u2�A m����M9��������efY`������ ��j     