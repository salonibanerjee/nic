PGDMP                          x            nic3    12.2    12.2 J   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                        0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    18909    nic3    DATABASE     �   CREATE DATABASE nic3 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
    DROP DATABASE nic3;
                postgres    false            )           1255    18910    bytea_import(text)    FUNCTION     �  CREATE FUNCTION public.bytea_import(p_path text, OUT p_result bytea) RETURNS bytea
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
       public          postgres    false            �            1259    18911    ANAND    TABLE     �  CREATE TABLE public."ANAND" (
    id bigint NOT NULL,
    session character varying(4) NOT NULL,
    "Total_No_of_SHGs_formed_in_the_district" numeric(10,0) NOT NULL,
    "Total_No_of_SHGs_got_credit_linkage" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    tstamp character varying(19) NOT NULL,
    ip character varying(15) NOT NULL,
    schcd character varying(8)
);
    DROP TABLE public."ANAND";
       public         heap    postgres    false            �            1259    18914    ANAND_backup    TABLE     {  CREATE TABLE public."ANAND_backup" (
    id integer NOT NULL,
    session character varying NOT NULL,
    "Total_No_of_SHGs_formed_in_the_district" numeric NOT NULL,
    "Total_No_of_SHGs_got_credit_linkage" numeric NOT NULL,
    "user" character varying NOT NULL,
    tstamp character varying NOT NULL,
    ip character varying NOT NULL,
    schcd character varying NOT NULL
);
 "   DROP TABLE public."ANAND_backup";
       public         heap    postgres    false            �            1259    18920    ANAND_backup_id_seq    SEQUENCE     �   CREATE SEQUENCE public."ANAND_backup_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."ANAND_backup_id_seq";
       public          postgres    false    203                       0    0    ANAND_backup_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."ANAND_backup_id_seq" OWNED BY public."ANAND_backup".id;
          public          postgres    false    204            �            1259    18922    AWCC    TABLE     �  CREATE TABLE public."AWCC" (
    id bigint NOT NULL,
    session character varying(4) NOT NULL,
    "No_of_ICDS_Cenetres_devoid_of_own_building" numeric(10,0) NOT NULL,
    "No_of_new_ICDS_building_constructed" numeric(10,0) NOT NULL,
    "No_of_ICDS_Centres_running_in_open_space" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    tstamp character varying(19) NOT NULL,
    ip character varying(15) NOT NULL,
    schcd character varying(8)
);
    DROP TABLE public."AWCC";
       public         heap    postgres    false            �            1259    18925    AWCC_id_seq    SEQUENCE     v   CREATE SEQUENCE public."AWCC_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public."AWCC_id_seq";
       public          postgres    false    205                       0    0    AWCC_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."AWCC_id_seq" OWNED BY public."AWCC".id;
          public          postgres    false    206            �            1259    18927 	   BAITARANI    TABLE     =  CREATE TABLE public."BAITARANI" (
    "No_of_burning_ghats_taken_up" numeric(10,0) NOT NULL,
    "Completed_till_date" date NOT NULL,
    "user" character varying(50) NOT NULL,
    tstamp character varying(19) NOT NULL,
    ip character varying(15) NOT NULL,
    id bigint NOT NULL,
    schcd character varying(8)
);
    DROP TABLE public."BAITARANI";
       public         heap    postgres    false            �            1259    18930    BAITARANI_id_seq    SEQUENCE     {   CREATE SEQUENCE public."BAITARANI_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."BAITARANI_id_seq";
       public          postgres    false    207                       0    0    BAITARANI_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."BAITARANI_id_seq" OWNED BY public."BAITARANI".id;
          public          postgres    false    208            �            1259    18932    DOC    TABLE     �  CREATE TABLE public."DOC" (
    id bigint NOT NULL,
    session character varying(4) NOT NULL,
    "Target_for_distribution_of_poultry" numeric(10,0) NOT NULL,
    "No_of_poultry_actually_distributed" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    tstamp character varying(19) NOT NULL,
    ip character varying(15) NOT NULL,
    schcd character varying(8)
);
    DROP TABLE public."DOC";
       public         heap    postgres    false            �            1259    18935    DOG    TABLE     �  CREATE TABLE public."DOG" (
    id bigint NOT NULL,
    session character varying(4) NOT NULL,
    "Target_for_distribution_of_goats" numeric(10,0) NOT NULL,
    "No_of_goats_actually_distributed" numeric(10,0) NOT NULL,
    "No_of_beneficiaries_selected" numeric(10,0) NOT NULL,
    "No_of_beneficiaries_approved" character varying(10) NOT NULL,
    "user" character varying(50) NOT NULL,
    tstamp character varying(19) NOT NULL,
    ip character varying(15) NOT NULL,
    schcd character varying(8)
);
    DROP TABLE public."DOG";
       public         heap    postgres    false            �            1259    18938 
   DOG_id_seq    SEQUENCE     u   CREATE SEQUENCE public."DOG_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public."DOG_id_seq";
       public          postgres    false    210                       0    0 
   DOG_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public."DOG_id_seq" OWNED BY public."DOG".id;
          public          postgres    false    211            �            1259    18940    DOPTUHD    TABLE     ?  CREATE TABLE public."DOPTUHD" (
    id bigint NOT NULL,
    session character varying(4) NOT NULL,
    "No_of_Power_tiller_distributed" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    tstamp character varying(19) NOT NULL,
    ip character varying(15) NOT NULL,
    schcd character varying(8)
);
    DROP TABLE public."DOPTUHD";
       public         heap    postgres    false            �            1259    18943    DOPTUHD_id_seq    SEQUENCE     y   CREATE SEQUENCE public."DOPTUHD_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."DOPTUHD_id_seq";
       public          postgres    false    212                       0    0    DOPTUHD_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."DOPTUHD_id_seq" OWNED BY public."DOPTUHD".id;
          public          postgres    false    213            �            1259    18945 
   ENROLLMENT    TABLE     h  CREATE TABLE public."ENROLLMENT" (
    "Category " numeric(12,0) NOT NULL,
    "Gross_Enrolment_Ratio" numeric(10,0) NOT NULL,
    "Net_Enrolment_Ratio" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    ip character varying(15) NOT NULL,
    tstamp character varying(19) NOT NULL,
    id bigint NOT NULL,
    schcd character varying(8)
);
     DROP TABLE public."ENROLLMENT";
       public         heap    postgres    false            �            1259    18948    ENROLLMENTR_id_seq    SEQUENCE     }   CREATE SEQUENCE public."ENROLLMENTR_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."ENROLLMENTR_id_seq";
       public          postgres    false    214                       0    0    ENROLLMENTR_id_seq    SEQUENCE OWNED BY     L   ALTER SEQUENCE public."ENROLLMENTR_id_seq" OWNED BY public."ENROLLMENT".id;
          public          postgres    false    215            �            1259    18950    FOODPRO    TABLE     j  CREATE TABLE public."FOODPRO" (
    "Session" character varying(4) NOT NULL,
    "Status_of_pocurement" numeric(10,0) NOT NULL,
    "Target_of_pocurement" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    ip character varying(15) NOT NULL,
    tstamp character varying(19) NOT NULL,
    id bigint NOT NULL,
    schcd character varying(8)
);
    DROP TABLE public."FOODPRO";
       public         heap    postgres    false            �            1259    18953    FOODPRO_id_seq    SEQUENCE     y   CREATE SEQUENCE public."FOODPRO_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."FOODPRO_id_seq";
       public          postgres    false    216                       0    0    FOODPRO_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."FOODPRO_id_seq" OWNED BY public."FOODPRO".id;
          public          postgres    false    217            �            1259    18955 	   GITANJALI    TABLE     �  CREATE TABLE public."GITANJALI" (
    "No_of_case_sanctioned_under_Gitanjali" numeric(10,0) NOT NULL,
    "Date_of_Inception" date NOT NULL,
    "No_of_houses_constructed_under_Gitanjali" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    ip character varying(15) NOT NULL,
    tstamp character varying(19) NOT NULL,
    id bigint NOT NULL,
    schcd character varying(8)
);
    DROP TABLE public."GITANJALI";
       public         heap    postgres    false            �            1259    18958    GITANJALI_id_seq    SEQUENCE     {   CREATE SEQUENCE public."GITANJALI_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."GITANJALI_id_seq";
       public          postgres    false    218            	           0    0    GITANJALI_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."GITANJALI_id_seq" OWNED BY public."GITANJALI".id;
          public          postgres    false    219            �            1259    18960 
   IMMUNISATI    TABLE     @  CREATE TABLE public."IMMUNISATI" (
    id bigint NOT NULL,
    session character varying(4) NOT NULL,
    "Per_of_Fully_immunised_child" numeric(52,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    tstamp character varying(19) NOT NULL,
    ip character varying(15) NOT NULL,
    schcd character varying(8)
);
     DROP TABLE public."IMMUNISATI";
       public         heap    postgres    false            �            1259    18963    IMMUNISATION_id_seq    SEQUENCE     ~   CREATE SEQUENCE public."IMMUNISATION_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."IMMUNISATION_id_seq";
       public          postgres    false    220            
           0    0    IMMUNISATION_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."IMMUNISATION_id_seq" OWNED BY public."IMMUNISATI".id;
          public          postgres    false    221            �            1259    18965    INFANTD    TABLE     9  CREATE TABLE public."INFANTD" (
    id bigint NOT NULL,
    session character varying(4) NOT NULL,
    "Total_No_of_Infant_Death" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    tstamp character varying(19) NOT NULL,
    ip character varying(15) NOT NULL,
    schcd character varying(8)
);
    DROP TABLE public."INFANTD";
       public         heap    postgres    false            �            1259    18968    INFANTD_id_seq    SEQUENCE     y   CREATE SEQUENCE public."INFANTD_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."INFANTD_id_seq";
       public          postgres    false    222                       0    0    INFANTD_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."INFANTD_id_seq" OWNED BY public."INFANTD".id;
          public          postgres    false    223            �            1259    18970 
   INSPECTION    TABLE     ^  CREATE TABLE public."INSPECTION" (
    "No_of_homes_inspected_by_Senior_Officers" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    tstamp character varying(19) NOT NULL,
    ip character varying(15) NOT NULL,
    id bigint NOT NULL,
    "Degisnation_of_officers" character varying(5) NOT NULL,
    schcd character varying(8)
);
     DROP TABLE public."INSPECTION";
       public         heap    postgres    false            �            1259    18973    INSPECTION_id_seq    SEQUENCE     |   CREATE SEQUENCE public."INSPECTION_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."INSPECTION_id_seq";
       public          postgres    false    224                       0    0    INSPECTION_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."INSPECTION_id_seq" OWNED BY public."INSPECTION".id;
          public          postgres    false    225            �            1259    18975    INSTDEL    TABLE     >  CREATE TABLE public."INSTDEL" (
    id bigint NOT NULL,
    session character varying(4) NOT NULL,
    "Per_of_Institutional_Delivery" numeric(52,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    tstamp character varying(19) NOT NULL,
    ip character varying(15) NOT NULL,
    schcd character varying(8)
);
    DROP TABLE public."INSTDEL";
       public         heap    postgres    false            �            1259    18978    INSTDEL_id_seq    SEQUENCE     y   CREATE SEQUENCE public."INSTDEL_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."INSTDEL_id_seq";
       public          postgres    false    226                       0    0    INSTDEL_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."INSTDEL_id_seq" OWNED BY public."INSTDEL".id;
          public          postgres    false    227            �            1259    18980    JALDJALB    TABLE     �  CREATE TABLE public."JALDJALB" (
    "Date_of_Inspection" date NOT NULL,
    "No_of_ponds_excavated_under_Jal_Dharo_Jal_Bharo" numeric(10,0) NOT NULL,
    "No_of_ponds_fish_production_started" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    ip character varying(10) NOT NULL,
    tstamp character varying(19) NOT NULL,
    id bigint NOT NULL,
    schcd character varying(8)
);
    DROP TABLE public."JALDJALB";
       public         heap    postgres    false            �            1259    18983    JALDJALB_id_seq    SEQUENCE     z   CREATE SEQUENCE public."JALDJALB_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."JALDJALB_id_seq";
       public          postgres    false    228                       0    0    JALDJALB_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."JALDJALB_id_seq" OWNED BY public."JALDJALB".id;
          public          postgres    false    229            �            1259    18985    KANYAS    TABLE     �  CREATE TABLE public."KANYAS" (
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
    ip character varying(15) NOT NULL,
    schcd character varying(8)
);
    DROP TABLE public."KANYAS";
       public         heap    postgres    false            �            1259    18991    KANYAS_id_seq    SEQUENCE     x   CREATE SEQUENCE public."KANYAS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."KANYAS_id_seq";
       public          postgres    false    230                       0    0    KANYAS_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."KANYAS_id_seq" OWNED BY public."KANYAS".id;
          public          postgres    false    231            �            1259    18993 
   KARMATIRTH    TABLE     �  CREATE TABLE public."KARMATIRTH" (
    "No_of_Karmatirtha_sanctioned" numeric(10,0) NOT NULL,
    "No_of_Karmatirtha_for_which_construction_started" numeric(10,0) NOT NULL,
    "No_of_Karmatirtha_for_which_construction_completed" numeric(10,0) NOT NULL,
    "No_of_Karmatirth_operationalised" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    ip character varying(15) NOT NULL,
    tstamp character varying(19) NOT NULL,
    id bigint NOT NULL,
    schcd character varying(8)
);
     DROP TABLE public."KARMATIRTH";
       public         heap    postgres    false            �            1259    18996    KARMATIRTHA_id_seq    SEQUENCE     }   CREATE SEQUENCE public."KARMATIRTHA_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."KARMATIRTHA_id_seq";
       public          postgres    false    232                       0    0    KARMATIRTHA_id_seq    SEQUENCE OWNED BY     L   ALTER SEQUENCE public."KARMATIRTHA_id_seq" OWNED BY public."KARMATIRTH".id;
          public          postgres    false    233            �            1259    18998    KCC    TABLE     �  CREATE TABLE public."KCC" (
    id bigint NOT NULL,
    "No_of_agricultrural_families_in_the_district" numeric(10,0) NOT NULL,
    "No_of_agricultural_families_covered_by_kcc" numeric(10,0) NOT NULL,
    kcc_coverage_percentage numeric(52,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    tstamp character varying(19) NOT NULL,
    ip character varying(15) NOT NULL,
    schcd character varying(8)
);
    DROP TABLE public."KCC";
       public         heap    postgres    false            �            1259    19001 
   KCC_backup    TABLE     �  CREATE TABLE public."KCC_backup" (
    id integer NOT NULL,
    "No_of_agricultrural_families_in_the_district" numeric NOT NULL,
    "No_of_agricultural_families_covered_by_kcc" numeric NOT NULL,
    kcc_coverage_percentage numeric NOT NULL,
    "user" character varying NOT NULL,
    tstamp character varying NOT NULL,
    ip character varying NOT NULL,
    schcd character varying NOT NULL
);
     DROP TABLE public."KCC_backup";
       public         heap    postgres    false            �            1259    19007    KCC_backup_id_seq    SEQUENCE     �   CREATE SEQUENCE public."KCC_backup_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."KCC_backup_id_seq";
       public          postgres    false    235                       0    0    KCC_backup_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."KCC_backup_id_seq" OWNED BY public."KCC_backup".id;
          public          postgres    false    236            �            1259    19009 
   KCC_id_seq    SEQUENCE     u   CREATE SEQUENCE public."KCC_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public."KCC_id_seq";
       public          postgres    false    234                       0    0 
   KCC_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public."KCC_id_seq" OWNED BY public."KCC".id;
          public          postgres    false    237            �            1259    19011    KishanM    TABLE       CREATE TABLE public."KishanM" (
    id bigint NOT NULL,
    "No_of_Kishan_Mandis_sanctioned" numeric(10,0) NOT NULL,
    "No_of_Kishan_Mandis_operational" numeric(10,0) NOT NULL,
    "Operationality" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    tstamp character varying(19) NOT NULL,
    ip character varying(15) NOT NULL,
    schcd character varying(8)
);
    DROP TABLE public."KishanM";
       public         heap    postgres    false            �            1259    19014    LANDPP    TABLE     I  CREATE TABLE public."LANDPP" (
    "No_of_land_permission_pending" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    tstamp timestamp with time zone NOT NULL,
    ip character varying(15) NOT NULL,
    id bigint NOT NULL,
    "PROJECTS_NAME" character varying(12) NOT NULL,
    schcd character varying(8)
);
    DROP TABLE public."LANDPP";
       public         heap    postgres    false            �            1259    19017    LANDPP_id_seq    SEQUENCE     x   CREATE SEQUENCE public."LANDPP_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."LANDPP_id_seq";
       public          postgres    false    239                       0    0    LANDPP_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."LANDPP_id_seq" OWNED BY public."LANDPP".id;
          public          postgres    false    240            �            1259    19019    Login    TABLE     (  CREATE TABLE public."Login" (
    username character varying(70) NOT NULL,
    password character varying(16) NOT NULL,
    designation character varying(70) NOT NULL,
    user_type_id_fk bigint NOT NULL,
    gp_id character varying(10),
    id bigint NOT NULL,
    active_status numeric(1,0)
);
    DROP TABLE public."Login";
       public         heap    postgres    false            �            1259    19022    Login_id_seq    SEQUENCE     w   CREATE SEQUENCE public."Login_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Login_id_seq";
       public          postgres    false    241                       0    0    Login_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Login_id_seq" OWNED BY public."Login".id;
          public          postgres    false    242            �            1259    19024    Login_user_type_id_fk_seq    SEQUENCE     �   CREATE SEQUENCE public."Login_user_type_id_fk_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."Login_user_type_id_fk_seq";
       public          postgres    false    241                       0    0    Login_user_type_id_fk_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."Login_user_type_id_fk_seq" OWNED BY public."Login".user_type_id_fk;
          public          postgres    false    243            �            1259    19026 	   MATERNALD    TABLE     =  CREATE TABLE public."MATERNALD" (
    id bigint NOT NULL,
    session character varying(4) NOT NULL,
    "Total_No_of_Maternal_Death" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    tstamp character varying(19) NOT NULL,
    ip character varying(15) NOT NULL,
    schcd character varying(8)
);
    DROP TABLE public."MATERNALD";
       public         heap    postgres    false            �            1259    19029    MATERNALD_id_seq    SEQUENCE     {   CREATE SEQUENCE public."MATERNALD_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."MATERNALD_id_seq";
       public          postgres    false    244                       0    0    MATERNALD_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."MATERNALD_id_seq" OWNED BY public."MATERNALD".id;
          public          postgres    false    245            �            1259    19031    MCI    TABLE     =  CREATE TABLE public."MCI" (
    id bigint NOT NULL,
    session character varying(4) NOT NULL,
    "Percentage_of_malnourished_child" numeric(52,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    tstamp character varying(19) NOT NULL,
    ip character varying(15) NOT NULL,
    schcd character varying(8)
);
    DROP TABLE public."MCI";
       public         heap    postgres    false            �            1259    19034 
   MCI_id_seq    SEQUENCE     u   CREATE SEQUENCE public."MCI_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public."MCI_id_seq";
       public          postgres    false    246                       0    0 
   MCI_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public."MCI_id_seq" OWNED BY public."MCI".id;
          public          postgres    false    247            �            1259    19036    MGNREGS    TABLE       CREATE TABLE public."MGNREGS" (
    id bigint NOT NULL,
    session character varying(4) NOT NULL,
    "No_of_Person_days_generated_under_MGNREGS" numeric(10,0) NOT NULL,
    "Average_No_of_Persondays_generated_per_household" numeric(10,0) NOT NULL,
    "Expenditure_of_the_session" numeric(10,0) NOT NULL,
    per_of_labour_budget_achieved numeric(52,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    tstamp character varying(19) NOT NULL,
    ip character varying(15) NOT NULL,
    schcd character varying(8)
);
    DROP TABLE public."MGNREGS";
       public         heap    postgres    false            �            1259    19039 	   MINORITYS    TABLE     �  CREATE TABLE public."MINORITYS" (
    session character varying(4) NOT NULL,
    "Target_for_Scholarship_distribution_Aikyashree" numeric(10,0) NOT NULL,
    "No_of_students_distributed_scholarship" numeric(10,0) NOT NULL,
    "No_of_Aaplication_uploaded_under_Aikyashree_scholarship" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    ip character varying(15) NOT NULL,
    tstamp character varying(19) NOT NULL,
    id bigint NOT NULL,
    schcd character varying(8)
);
    DROP TABLE public."MINORITYS";
       public         heap    postgres    false            �            1259    19042    MINORITYS_id_seq    SEQUENCE     {   CREATE SEQUENCE public."MINORITYS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."MINORITYS_id_seq";
       public          postgres    false    249                       0    0    MINORITYS_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."MINORITYS_id_seq" OWNED BY public."MINORITYS".id;
          public          postgres    false    250            �            1259    19044    POE    TABLE     L  CREATE TABLE public."POE" (
    id bigint NOT NULL,
    session character varying(4) NOT NULL,
    "Target" numeric(10,0) NOT NULL,
    "Production" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    tstamp character varying(19) NOT NULL,
    ip character varying(15) NOT NULL,
    schcd character varying(8)
);
    DROP TABLE public."POE";
       public         heap    postgres    false            �            1259    19047 
   POE_id_seq    SEQUENCE     u   CREATE SEQUENCE public."POE_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public."POE_id_seq";
       public          postgres    false    251                       0    0 
   POE_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public."POE_id_seq" OWNED BY public."POE".id;
          public          postgres    false    252            �            1259    19049 	   Privilege    TABLE        CREATE TABLE public."Privilege" (
    privilege_id_pk bigint NOT NULL,
    parent integer NOT NULL,
    link character varying(70) NOT NULL,
    view_sidebar bit(1) NOT NULL,
    "order" integer NOT NULL,
    active_status bit(1) NOT NULL,
    page_name character varying(70) NOT NULL
);
    DROP TABLE public."Privilege";
       public         heap    postgres    false            �            1259    19052    SABOOJS    TABLE     |  CREATE TABLE public."SABOOJS" (
    session character varying(4) NOT NULL,
    "Target_for_distribution_of_cycles" numeric(10,0) NOT NULL,
    "Cycle_distributed_till_date" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    ip character varying(15) NOT NULL,
    tstamp character varying(19) NOT NULL,
    id bigint NOT NULL,
    schcd character varying(8)
);
    DROP TABLE public."SABOOJS";
       public         heap    postgres    false            �            1259    19055 
   SABOOJSHRE    TABLE     �  CREATE TABLE public."SABOOJSHRE" (
    "No_of_children_born_since_inception_of_the_project_in_the_dist" numeric(10,0) NOT NULL,
    "No_of_tree_sapling_handed_over_to_the_new_born_children" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    ip character varying(15) NOT NULL,
    tstamp character varying(19) NOT NULL,
    id bigint NOT NULL,
    schcd character varying(8)
);
     DROP TABLE public."SABOOJSHRE";
       public         heap    postgres    false                        1259    19058    SABOOJSHREE_id_seq    SEQUENCE     }   CREATE SEQUENCE public."SABOOJSHREE_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."SABOOJSHREE_id_seq";
       public          postgres    false    255                       0    0    SABOOJSHREE_id_seq    SEQUENCE OWNED BY     L   ALTER SEQUENCE public."SABOOJSHREE_id_seq" OWNED BY public."SABOOJSHRE".id;
          public          postgres    false    256                       1259    19060    SABOOJS_id_seq    SEQUENCE     y   CREATE SEQUENCE public."SABOOJS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."SABOOJS_id_seq";
       public          postgres    false    254                       0    0    SABOOJS_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."SABOOJS_id_seq" OWNED BY public."SABOOJS".id;
          public          postgres    false    257                       1259    19062 
   SAFEDSAVEL    TABLE     �  CREATE TABLE public."SAFEDSAVEL" (
    session character varying(4) NOT NULL,
    "No_of_accidents" numeric(10,0) NOT NULL,
    "No_of_death" numeric(10,0) NOT NULL,
    "No_of_insured_person" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    tstamp character varying(19) NOT NULL,
    ip character varying(15) NOT NULL,
    id bigint NOT NULL,
    schcd character varying(8)
);
     DROP TABLE public."SAFEDSAVEL";
       public         heap    postgres    false                       1259    19065    SAFEDSAVEL_id_seq    SEQUENCE     |   CREATE SEQUENCE public."SAFEDSAVEL_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."SAFEDSAVEL_id_seq";
       public          postgres    false    258                       0    0    SAFEDSAVEL_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."SAFEDSAVEL_id_seq" OWNED BY public."SAFEDSAVEL".id;
          public          postgres    false    259                       1259    19067 	   SAMABYTHI    TABLE     E  CREATE TABLE public."SAMABYTHI" (
    "No_of_beneficiaries_provided_benefit_till_date" numeric(10,0) NOT NULL,
    "Till_date" date NOT NULL,
    "user" character varying(50) NOT NULL,
    ip character varying(15) NOT NULL,
    tstamp character varying(19) NOT NULL,
    id bigint NOT NULL,
    schcd character varying(8)
);
    DROP TABLE public."SAMABYTHI";
       public         heap    postgres    false                       1259    19070    SAMABYTHI_id_seq    SEQUENCE     {   CREATE SEQUENCE public."SAMABYTHI_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."SAMABYTHI_id_seq";
       public          postgres    false    260                       0    0    SAMABYTHI_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."SAMABYTHI_id_seq" OWNED BY public."SAMABYTHI".id;
          public          postgres    false    261                       1259    19072    SIKSHAS    TABLE     �  CREATE TABLE public."SIKSHAS" (
    session character varying(4) NOT NULL,
    "Targetted_No_Of_SC/ST_Student_under_Sikshashree" numeric(10,0) NOT NULL,
    "No_of_Students_getting_benefit_under_Sikshashree" numeric(10,0) NOT NULL,
    "No_of_Applications_uploaded_under_Sikshashree" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    ip character varying(15) NOT NULL,
    tstamp character varying(19) NOT NULL,
    id bigint NOT NULL,
    schcd character varying(8)
);
    DROP TABLE public."SIKSHAS";
       public         heap    postgres    false                       1259    19075    SIKSHAS_id_seq    SEQUENCE     y   CREATE SEQUENCE public."SIKSHAS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."SIKSHAS_id_seq";
       public          postgres    false    262                       0    0    SIKSHAS_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."SIKSHAS_id_seq" OWNED BY public."SIKSHAS".id;
          public          postgres    false    263                       1259    19077    SVSKP    TABLE     �  CREATE TABLE public."SVSKP" (
    session character varying(4) NOT NULL,
    "No_of_project_Sponsored_under_SVSKP" numeric(10,0) NOT NULL,
    "No_of_project_sanctioned_under_SVSKP" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    ip character varying(15) NOT NULL,
    tstamp character varying(19) NOT NULL,
    id bigint NOT NULL,
    schcd character varying(8)
);
    DROP TABLE public."SVSKP";
       public         heap    postgres    false            	           1259    19080    SVSKP_id_seq    SEQUENCE     w   CREATE SEQUENCE public."SVSKP_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."SVSKP_id_seq";
       public          postgres    false    264                       0    0    SVSKP_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."SVSKP_id_seq" OWNED BY public."SVSKP".id;
          public          postgres    false    265            
           1259    19082    YUBAS    TABLE     �  CREATE TABLE public."YUBAS" (
    "No_of_unemployed_Youth_registered_under_Yubashree" numeric(10,0) NOT NULL,
    "No_of_unemployed_registered_Youth_getting_monthly_assistance" numeric(10,0) NOT NULL,
    "user" character varying(50) NOT NULL,
    ip character varying(15) NOT NULL,
    tstamp character varying(19) NOT NULL,
    id bigint NOT NULL,
    schcd character varying(8)
);
    DROP TABLE public."YUBAS";
       public         heap    postgres    false                       1259    19085    YUBAS_id_seq    SEQUENCE     w   CREATE SEQUENCE public."YUBAS_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."YUBAS_id_seq";
       public          postgres    false    266                        0    0    YUBAS_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."YUBAS_id_seq" OWNED BY public."YUBAS".id;
          public          postgres    false    267                       1259    19087    anand_id_seq    SEQUENCE     u   CREATE SEQUENCE public.anand_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.anand_id_seq;
       public          postgres    false    202            !           0    0    anand_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.anand_id_seq OWNED BY public."ANAND".id;
          public          postgres    false    268                       1259    19089    attri_table    TABLE     �   CREATE TABLE public.attri_table (
    id bigint NOT NULL,
    id_scheme numeric NOT NULL,
    a_name character varying(100) NOT NULL,
    name character varying(100) NOT NULL
);
    DROP TABLE public.attri_table;
       public         heap    postgres    false                       1259    19095    att_table_id_seq    SEQUENCE     y   CREATE SEQUENCE public.att_table_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.att_table_id_seq;
       public          postgres    false    269            "           0    0    att_table_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.att_table_id_seq OWNED BY public.attri_table.id;
          public          postgres    false    270                       1259    19097 	   audit_log    TABLE     d  CREATE TABLE public.audit_log (
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
       public         heap    postgres    false                       1259    19103    audit_log_id_seq    SEQUENCE     y   CREATE SEQUENCE public.audit_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.audit_log_id_seq;
       public          postgres    false    271            #           0    0    audit_log_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.audit_log_id_seq OWNED BY public.audit_log.id;
          public          postgres    false    272            &           1259    19338    check_First_User    TABLE     �   CREATE TABLE public."check_First_User" (
    user_id_pk bigint NOT NULL,
    check_if_first_user integer NOT NULL,
    check_profile_updated_once integer
);
 &   DROP TABLE public."check_First_User";
       public         heap    postgres    false            '           1259    19341 (   check_First_User_check_if_first_user_seq    SEQUENCE     �   CREATE SEQUENCE public."check_First_User_check_if_first_user_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public."check_First_User_check_if_first_user_seq";
       public          postgres    false    294            $           0    0 (   check_First_User_check_if_first_user_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public."check_First_User_check_if_first_user_seq" OWNED BY public."check_First_User".check_if_first_user;
          public          postgres    false    295            (           1259    19343    check_First_User_user_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public."check_First_User_user_id_pk_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."check_First_User_user_id_pk_seq";
       public          postgres    false    294            %           0    0    check_First_User_user_id_pk_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."check_First_User_user_id_pk_seq" OWNED BY public."check_First_User".user_id_pk;
          public          postgres    false    296                       1259    19105    dashboard_info    TABLE     G  CREATE TABLE public.dashboard_info (
    id bigint NOT NULL,
    s_name character varying(50) NOT NULL,
    name character varying(50) NOT NULL,
    a_target character varying(50) NOT NULL,
    target character varying(50) NOT NULL,
    a_progress character varying(50) NOT NULL,
    progress character varying(50) NOT NULL
);
 "   DROP TABLE public.dashboard_info;
       public         heap    postgres    false                       1259    19108 
   doc_id_seq    SEQUENCE     s   CREATE SEQUENCE public.doc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.doc_id_seq;
       public          postgres    false    209            &           0    0 
   doc_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.doc_id_seq OWNED BY public."DOC".id;
          public          postgres    false    274                       1259    19110    kishanm_id_seq    SEQUENCE     w   CREATE SEQUENCE public.kishanm_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.kishanm_id_seq;
       public          postgres    false    238            '           0    0    kishanm_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.kishanm_id_seq OWNED BY public."KishanM".id;
          public          postgres    false    275                       1259    19112    location_data    TABLE     �   CREATE TABLE public.location_data (
    location_area character varying(100) NOT NULL,
    location_schcd character varying(10) NOT NULL,
    location_id bigint NOT NULL
);
 !   DROP TABLE public.location_data;
       public         heap    postgres    false                       1259    19115    location_data_location_id_seq    SEQUENCE     �   CREATE SEQUENCE public.location_data_location_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.location_data_location_id_seq;
       public          postgres    false    276            (           0    0    location_data_location_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.location_data_location_id_seq OWNED BY public.location_data.location_id;
          public          postgres    false    277            $           1259    19312    meeting_schedule    TABLE     �   CREATE TABLE public.meeting_schedule (
    id bigint NOT NULL,
    start_time character varying(16),
    end_time character varying(16)
);
 $   DROP TABLE public.meeting_schedule;
       public         heap    postgres    false            %           1259    19315    meeting_schedule_id_seq    SEQUENCE     �   CREATE SEQUENCE public.meeting_schedule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.meeting_schedule_id_seq;
       public          postgres    false    292            )           0    0    meeting_schedule_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.meeting_schedule_id_seq OWNED BY public.meeting_schedule.id;
          public          postgres    false    293                       1259    19117    mgnres_id_seq    SEQUENCE     v   CREATE SEQUENCE public.mgnres_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.mgnres_id_seq;
       public          postgres    false    248            *           0    0    mgnres_id_seq    SEQUENCE OWNED BY     B   ALTER SEQUENCE public.mgnres_id_seq OWNED BY public."MGNREGS".id;
          public          postgres    false    278                       1259    19119    profile    TABLE     [  CREATE TABLE public.profile (
    id_pk bigint NOT NULL,
    username character varying(50),
    f_name character varying(50),
    m_name character varying(50),
    l_name character varying(50),
    mobile numeric(10,0),
    email character varying(50),
    designation character varying(50),
    district character varying(50),
    image text
);
    DROP TABLE public.profile;
       public         heap    postgres    false                       1259    19125    profile_id_pk_seq    SEQUENCE     z   CREATE SEQUENCE public.profile_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.profile_id_pk_seq;
       public          postgres    false    279            +           0    0    profile_id_pk_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.profile_id_pk_seq OWNED BY public.profile.id_pk;
          public          postgres    false    280                       1259    19127    rp_location_master_block    TABLE     &  CREATE TABLE public.rp_location_master_block (
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
       public         heap    postgres    false                       1259    19130    rp_location_master_district    TABLE     �   CREATE TABLE public.rp_location_master_district (
    district_id_pk bigint NOT NULL,
    state_id_fk integer,
    district_name character varying(100),
    schcd character varying(10)
);
 /   DROP TABLE public.rp_location_master_district;
       public         heap    postgres    false                       1259    19133    rp_location_master_gp    TABLE       CREATE TABLE public.rp_location_master_gp (
    schcd character varying(12) NOT NULL,
    schname character varying(100),
    parent_id character varying(12),
    gp_ward_flag character varying(2) NOT NULL,
    block_id_fk integer,
    gp_id_pk bigint NOT NULL
);
 )   DROP TABLE public.rp_location_master_gp;
       public         heap    postgres    false                       1259    19136    rp_location_master_state    TABLE     �   CREATE TABLE public.rp_location_master_state (
    state_id_pk integer NOT NULL,
    state_name character varying(30),
    active_status smallint
);
 ,   DROP TABLE public.rp_location_master_state;
       public         heap    postgres    false                       1259    19139    rp_location_master_subdiv    TABLE     �   CREATE TABLE public.rp_location_master_subdiv (
    district_id_fk integer,
    subdiv_name character varying(100),
    schcd character varying(10),
    subdiv_id_pk bigint NOT NULL
);
 -   DROP TABLE public.rp_location_master_subdiv;
       public         heap    postgres    false                       1259    19142    scheme_table    TABLE     �   CREATE TABLE public.scheme_table (
    id bigint NOT NULL,
    s_name character varying(10) NOT NULL,
    name character varying(50) NOT NULL
);
     DROP TABLE public.scheme_table;
       public         heap    postgres    false                       1259    19145    scheme_table_id_seq    SEQUENCE     |   CREATE SEQUENCE public.scheme_table_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.scheme_table_id_seq;
       public          postgres    false    286            ,           0    0    scheme_table_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.scheme_table_id_seq OWNED BY public.scheme_table.id;
          public          postgres    false    287                        1259    19147    user_privilege    TABLE     �   CREATE TABLE public.user_privilege (
    id_pk bigint NOT NULL,
    privilege_id_fk bigint NOT NULL,
    user_type_id_fk bigint NOT NULL,
    active_status bit(1) NOT NULL
);
 "   DROP TABLE public.user_privilege;
       public         heap    postgres    false            !           1259    19150 "   user_privilege_privilege_id_fk_seq    SEQUENCE     �   CREATE SEQUENCE public.user_privilege_privilege_id_fk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.user_privilege_privilege_id_fk_seq;
       public          postgres    false    288            -           0    0 "   user_privilege_privilege_id_fk_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.user_privilege_privilege_id_fk_seq OWNED BY public.user_privilege.privilege_id_fk;
          public          postgres    false    289            "           1259    19152 "   user_privilege_user_type_id_fk_seq    SEQUENCE     �   CREATE SEQUENCE public.user_privilege_user_type_id_fk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.user_privilege_user_type_id_fk_seq;
       public          postgres    false    288            .           0    0 "   user_privilege_user_type_id_fk_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.user_privilege_user_type_id_fk_seq OWNED BY public.user_privilege.user_type_id_fk;
          public          postgres    false    290            #           1259    19154 	   user_type    TABLE     �   CREATE TABLE public.user_type (
    user_type_id_pk bigint NOT NULL,
    desig character varying(20) NOT NULL,
    active_status bit(1) NOT NULL
);
    DROP TABLE public.user_type;
       public         heap    postgres    false            �           2604    19157    ANAND id    DEFAULT     f   ALTER TABLE ONLY public."ANAND" ALTER COLUMN id SET DEFAULT nextval('public.anand_id_seq'::regclass);
 9   ALTER TABLE public."ANAND" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    268    202            �           2604    19158    ANAND_backup id    DEFAULT     v   ALTER TABLE ONLY public."ANAND_backup" ALTER COLUMN id SET DEFAULT nextval('public."ANAND_backup_id_seq"'::regclass);
 @   ALTER TABLE public."ANAND_backup" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    203            �           2604    19159    AWCC id    DEFAULT     f   ALTER TABLE ONLY public."AWCC" ALTER COLUMN id SET DEFAULT nextval('public."AWCC_id_seq"'::regclass);
 8   ALTER TABLE public."AWCC" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    205            �           2604    19160    BAITARANI id    DEFAULT     p   ALTER TABLE ONLY public."BAITARANI" ALTER COLUMN id SET DEFAULT nextval('public."BAITARANI_id_seq"'::regclass);
 =   ALTER TABLE public."BAITARANI" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    207            �           2604    19161    DOC id    DEFAULT     b   ALTER TABLE ONLY public."DOC" ALTER COLUMN id SET DEFAULT nextval('public.doc_id_seq'::regclass);
 7   ALTER TABLE public."DOC" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    274    209            �           2604    19162    DOG id    DEFAULT     d   ALTER TABLE ONLY public."DOG" ALTER COLUMN id SET DEFAULT nextval('public."DOG_id_seq"'::regclass);
 7   ALTER TABLE public."DOG" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210            �           2604    19163 
   DOPTUHD id    DEFAULT     l   ALTER TABLE ONLY public."DOPTUHD" ALTER COLUMN id SET DEFAULT nextval('public."DOPTUHD_id_seq"'::regclass);
 ;   ALTER TABLE public."DOPTUHD" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212            �           2604    19164    ENROLLMENT id    DEFAULT     s   ALTER TABLE ONLY public."ENROLLMENT" ALTER COLUMN id SET DEFAULT nextval('public."ENROLLMENTR_id_seq"'::regclass);
 >   ALTER TABLE public."ENROLLMENT" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214            �           2604    19165 
   FOODPRO id    DEFAULT     l   ALTER TABLE ONLY public."FOODPRO" ALTER COLUMN id SET DEFAULT nextval('public."FOODPRO_id_seq"'::regclass);
 ;   ALTER TABLE public."FOODPRO" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216            �           2604    19166    GITANJALI id    DEFAULT     p   ALTER TABLE ONLY public."GITANJALI" ALTER COLUMN id SET DEFAULT nextval('public."GITANJALI_id_seq"'::regclass);
 =   ALTER TABLE public."GITANJALI" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218            �           2604    19167    IMMUNISATI id    DEFAULT     t   ALTER TABLE ONLY public."IMMUNISATI" ALTER COLUMN id SET DEFAULT nextval('public."IMMUNISATION_id_seq"'::regclass);
 >   ALTER TABLE public."IMMUNISATI" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220            �           2604    19168 
   INFANTD id    DEFAULT     l   ALTER TABLE ONLY public."INFANTD" ALTER COLUMN id SET DEFAULT nextval('public."INFANTD_id_seq"'::regclass);
 ;   ALTER TABLE public."INFANTD" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222            �           2604    19169    INSPECTION id    DEFAULT     r   ALTER TABLE ONLY public."INSPECTION" ALTER COLUMN id SET DEFAULT nextval('public."INSPECTION_id_seq"'::regclass);
 >   ALTER TABLE public."INSPECTION" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224            �           2604    19170 
   INSTDEL id    DEFAULT     l   ALTER TABLE ONLY public."INSTDEL" ALTER COLUMN id SET DEFAULT nextval('public."INSTDEL_id_seq"'::regclass);
 ;   ALTER TABLE public."INSTDEL" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226            �           2604    19171    JALDJALB id    DEFAULT     n   ALTER TABLE ONLY public."JALDJALB" ALTER COLUMN id SET DEFAULT nextval('public."JALDJALB_id_seq"'::regclass);
 <   ALTER TABLE public."JALDJALB" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228            �           2604    19172 	   KANYAS id    DEFAULT     j   ALTER TABLE ONLY public."KANYAS" ALTER COLUMN id SET DEFAULT nextval('public."KANYAS_id_seq"'::regclass);
 :   ALTER TABLE public."KANYAS" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230            �           2604    19173    KARMATIRTH id    DEFAULT     s   ALTER TABLE ONLY public."KARMATIRTH" ALTER COLUMN id SET DEFAULT nextval('public."KARMATIRTHA_id_seq"'::regclass);
 >   ALTER TABLE public."KARMATIRTH" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232            �           2604    19174    KCC id    DEFAULT     d   ALTER TABLE ONLY public."KCC" ALTER COLUMN id SET DEFAULT nextval('public."KCC_id_seq"'::regclass);
 7   ALTER TABLE public."KCC" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    234            �           2604    19175    KCC_backup id    DEFAULT     r   ALTER TABLE ONLY public."KCC_backup" ALTER COLUMN id SET DEFAULT nextval('public."KCC_backup_id_seq"'::regclass);
 >   ALTER TABLE public."KCC_backup" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235            �           2604    19176 
   KishanM id    DEFAULT     j   ALTER TABLE ONLY public."KishanM" ALTER COLUMN id SET DEFAULT nextval('public.kishanm_id_seq'::regclass);
 ;   ALTER TABLE public."KishanM" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    275    238            �           2604    19177 	   LANDPP id    DEFAULT     j   ALTER TABLE ONLY public."LANDPP" ALTER COLUMN id SET DEFAULT nextval('public."LANDPP_id_seq"'::regclass);
 :   ALTER TABLE public."LANDPP" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239            �           2604    19178    Login user_type_id_fk    DEFAULT     �   ALTER TABLE ONLY public."Login" ALTER COLUMN user_type_id_fk SET DEFAULT nextval('public."Login_user_type_id_fk_seq"'::regclass);
 F   ALTER TABLE public."Login" ALTER COLUMN user_type_id_fk DROP DEFAULT;
       public          postgres    false    243    241            �           2604    19179    Login id    DEFAULT     h   ALTER TABLE ONLY public."Login" ALTER COLUMN id SET DEFAULT nextval('public."Login_id_seq"'::regclass);
 9   ALTER TABLE public."Login" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    241            �           2604    19180    MATERNALD id    DEFAULT     p   ALTER TABLE ONLY public."MATERNALD" ALTER COLUMN id SET DEFAULT nextval('public."MATERNALD_id_seq"'::regclass);
 =   ALTER TABLE public."MATERNALD" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    244            �           2604    19181    MCI id    DEFAULT     d   ALTER TABLE ONLY public."MCI" ALTER COLUMN id SET DEFAULT nextval('public."MCI_id_seq"'::regclass);
 7   ALTER TABLE public."MCI" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    247    246            �           2604    19182 
   MGNREGS id    DEFAULT     i   ALTER TABLE ONLY public."MGNREGS" ALTER COLUMN id SET DEFAULT nextval('public.mgnres_id_seq'::regclass);
 ;   ALTER TABLE public."MGNREGS" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    278    248            �           2604    19183    MINORITYS id    DEFAULT     p   ALTER TABLE ONLY public."MINORITYS" ALTER COLUMN id SET DEFAULT nextval('public."MINORITYS_id_seq"'::regclass);
 =   ALTER TABLE public."MINORITYS" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    250    249            �           2604    19184    POE id    DEFAULT     d   ALTER TABLE ONLY public."POE" ALTER COLUMN id SET DEFAULT nextval('public."POE_id_seq"'::regclass);
 7   ALTER TABLE public."POE" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    252    251            �           2604    19185 
   SABOOJS id    DEFAULT     l   ALTER TABLE ONLY public."SABOOJS" ALTER COLUMN id SET DEFAULT nextval('public."SABOOJS_id_seq"'::regclass);
 ;   ALTER TABLE public."SABOOJS" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    257    254            �           2604    19186    SABOOJSHRE id    DEFAULT     s   ALTER TABLE ONLY public."SABOOJSHRE" ALTER COLUMN id SET DEFAULT nextval('public."SABOOJSHREE_id_seq"'::regclass);
 >   ALTER TABLE public."SABOOJSHRE" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    256    255            �           2604    19187    SAFEDSAVEL id    DEFAULT     r   ALTER TABLE ONLY public."SAFEDSAVEL" ALTER COLUMN id SET DEFAULT nextval('public."SAFEDSAVEL_id_seq"'::regclass);
 >   ALTER TABLE public."SAFEDSAVEL" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    259    258            �           2604    19188    SAMABYTHI id    DEFAULT     p   ALTER TABLE ONLY public."SAMABYTHI" ALTER COLUMN id SET DEFAULT nextval('public."SAMABYTHI_id_seq"'::regclass);
 =   ALTER TABLE public."SAMABYTHI" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    261    260            �           2604    19189 
   SIKSHAS id    DEFAULT     l   ALTER TABLE ONLY public."SIKSHAS" ALTER COLUMN id SET DEFAULT nextval('public."SIKSHAS_id_seq"'::regclass);
 ;   ALTER TABLE public."SIKSHAS" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    263    262            �           2604    19190    SVSKP id    DEFAULT     h   ALTER TABLE ONLY public."SVSKP" ALTER COLUMN id SET DEFAULT nextval('public."SVSKP_id_seq"'::regclass);
 9   ALTER TABLE public."SVSKP" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    265    264            �           2604    19191    YUBAS id    DEFAULT     h   ALTER TABLE ONLY public."YUBAS" ALTER COLUMN id SET DEFAULT nextval('public."YUBAS_id_seq"'::regclass);
 9   ALTER TABLE public."YUBAS" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    267    266            �           2604    19192    attri_table id    DEFAULT     n   ALTER TABLE ONLY public.attri_table ALTER COLUMN id SET DEFAULT nextval('public.att_table_id_seq'::regclass);
 =   ALTER TABLE public.attri_table ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    270    269            �           2604    19193    audit_log id    DEFAULT     l   ALTER TABLE ONLY public.audit_log ALTER COLUMN id SET DEFAULT nextval('public.audit_log_id_seq'::regclass);
 ;   ALTER TABLE public.audit_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    272    271            �           2604    19345    check_First_User user_id_pk    DEFAULT     �   ALTER TABLE ONLY public."check_First_User" ALTER COLUMN user_id_pk SET DEFAULT nextval('public."check_First_User_user_id_pk_seq"'::regclass);
 L   ALTER TABLE public."check_First_User" ALTER COLUMN user_id_pk DROP DEFAULT;
       public          postgres    false    296    294            �           2604    19346 $   check_First_User check_if_first_user    DEFAULT     �   ALTER TABLE ONLY public."check_First_User" ALTER COLUMN check_if_first_user SET DEFAULT nextval('public."check_First_User_check_if_first_user_seq"'::regclass);
 U   ALTER TABLE public."check_First_User" ALTER COLUMN check_if_first_user DROP DEFAULT;
       public          postgres    false    295    294            �           2604    19194    location_data location_id    DEFAULT     �   ALTER TABLE ONLY public.location_data ALTER COLUMN location_id SET DEFAULT nextval('public.location_data_location_id_seq'::regclass);
 H   ALTER TABLE public.location_data ALTER COLUMN location_id DROP DEFAULT;
       public          postgres    false    277    276            �           2604    19317    meeting_schedule id    DEFAULT     z   ALTER TABLE ONLY public.meeting_schedule ALTER COLUMN id SET DEFAULT nextval('public.meeting_schedule_id_seq'::regclass);
 B   ALTER TABLE public.meeting_schedule ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    293    292            �           2604    19195    profile id_pk    DEFAULT     n   ALTER TABLE ONLY public.profile ALTER COLUMN id_pk SET DEFAULT nextval('public.profile_id_pk_seq'::regclass);
 <   ALTER TABLE public.profile ALTER COLUMN id_pk DROP DEFAULT;
       public          postgres    false    280    279            �           2604    19196    scheme_table id    DEFAULT     r   ALTER TABLE ONLY public.scheme_table ALTER COLUMN id SET DEFAULT nextval('public.scheme_table_id_seq'::regclass);
 >   ALTER TABLE public.scheme_table ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    287    286            �           2604    19197    user_privilege privilege_id_fk    DEFAULT     �   ALTER TABLE ONLY public.user_privilege ALTER COLUMN privilege_id_fk SET DEFAULT nextval('public.user_privilege_privilege_id_fk_seq'::regclass);
 M   ALTER TABLE public.user_privilege ALTER COLUMN privilege_id_fk DROP DEFAULT;
       public          postgres    false    289    288            �           2604    19198    user_privilege user_type_id_fk    DEFAULT     �   ALTER TABLE ONLY public.user_privilege ALTER COLUMN user_type_id_fk SET DEFAULT nextval('public.user_privilege_user_type_id_fk_seq'::regclass);
 M   ALTER TABLE public.user_privilege ALTER COLUMN user_type_id_fk DROP DEFAULT;
       public          postgres    false    290    288            �          0    18911    ANAND 
   TABLE DATA           �   COPY public."ANAND" (id, session, "Total_No_of_SHGs_formed_in_the_district", "Total_No_of_SHGs_got_credit_linkage", "user", tstamp, ip, schcd) FROM stdin;
    public          postgres    false    202   ��      �          0    18914    ANAND_backup 
   TABLE DATA           �   COPY public."ANAND_backup" (id, session, "Total_No_of_SHGs_formed_in_the_district", "Total_No_of_SHGs_got_credit_linkage", "user", tstamp, ip, schcd) FROM stdin;
    public          postgres    false    203   ;�      �          0    18922    AWCC 
   TABLE DATA           �   COPY public."AWCC" (id, session, "No_of_ICDS_Cenetres_devoid_of_own_building", "No_of_new_ICDS_building_constructed", "No_of_ICDS_Centres_running_in_open_space", "user", tstamp, ip, schcd) FROM stdin;
    public          postgres    false    205   Ȟ      �          0    18927 	   BAITARANI 
   TABLE DATA           {   COPY public."BAITARANI" ("No_of_burning_ghats_taken_up", "Completed_till_date", "user", tstamp, ip, id, schcd) FROM stdin;
    public          postgres    false    207   �      �          0    18932    DOC 
   TABLE DATA           �   COPY public."DOC" (id, session, "Target_for_distribution_of_poultry", "No_of_poultry_actually_distributed", "user", tstamp, ip, schcd) FROM stdin;
    public          postgres    false    209   �      �          0    18935    DOG 
   TABLE DATA           �   COPY public."DOG" (id, session, "Target_for_distribution_of_goats", "No_of_goats_actually_distributed", "No_of_beneficiaries_selected", "No_of_beneficiaries_approved", "user", tstamp, ip, schcd) FROM stdin;
    public          postgres    false    210   ��      �          0    18940    DOPTUHD 
   TABLE DATA           m   COPY public."DOPTUHD" (id, session, "No_of_Power_tiller_distributed", "user", tstamp, ip, schcd) FROM stdin;
    public          postgres    false    212   8�      �          0    18945 
   ENROLLMENT 
   TABLE DATA           �   COPY public."ENROLLMENT" ("Category ", "Gross_Enrolment_Ratio", "Net_Enrolment_Ratio", "user", ip, tstamp, id, schcd) FROM stdin;
    public          postgres    false    214   U�      �          0    18950    FOODPRO 
   TABLE DATA           }   COPY public."FOODPRO" ("Session", "Status_of_pocurement", "Target_of_pocurement", "user", ip, tstamp, id, schcd) FROM stdin;
    public          postgres    false    216   r�      �          0    18955 	   GITANJALI 
   TABLE DATA           �   COPY public."GITANJALI" ("No_of_case_sanctioned_under_Gitanjali", "Date_of_Inception", "No_of_houses_constructed_under_Gitanjali", "user", ip, tstamp, id, schcd) FROM stdin;
    public          postgres    false    218   ��      �          0    18960 
   IMMUNISATI 
   TABLE DATA           n   COPY public."IMMUNISATI" (id, session, "Per_of_Fully_immunised_child", "user", tstamp, ip, schcd) FROM stdin;
    public          postgres    false    220   ��      �          0    18965    INFANTD 
   TABLE DATA           g   COPY public."INFANTD" (id, session, "Total_No_of_Infant_Death", "user", tstamp, ip, schcd) FROM stdin;
    public          postgres    false    222   ɠ      �          0    18970 
   INSPECTION 
   TABLE DATA           �   COPY public."INSPECTION" ("No_of_homes_inspected_by_Senior_Officers", "user", tstamp, ip, id, "Degisnation_of_officers", schcd) FROM stdin;
    public          postgres    false    224   �      �          0    18975    INSTDEL 
   TABLE DATA           l   COPY public."INSTDEL" (id, session, "Per_of_Institutional_Delivery", "user", tstamp, ip, schcd) FROM stdin;
    public          postgres    false    226   �      �          0    18980    JALDJALB 
   TABLE DATA           �   COPY public."JALDJALB" ("Date_of_Inspection", "No_of_ponds_excavated_under_Jal_Dharo_Jal_Bharo", "No_of_ponds_fish_production_started", "user", ip, tstamp, id, schcd) FROM stdin;
    public          postgres    false    228    �      �          0    18985    KANYAS 
   TABLE DATA           @  COPY public."KANYAS" (id, session, "No_of_K-1_cases_application_received", "No_of_K-1_cases_application_sanctioned", "No_of_K-1_cases_application_disbursed", "No_of_K-2_cases_application_received", "No_of_K-2_cases_application_sanctioned", "No_of_K-2_cases_application_disbursed", "user", tstamp, ip, schcd) FROM stdin;
    public          postgres    false    230   =�      �          0    18993 
   KARMATIRTH 
   TABLE DATA           �   COPY public."KARMATIRTH" ("No_of_Karmatirtha_sanctioned", "No_of_Karmatirtha_for_which_construction_started", "No_of_Karmatirtha_for_which_construction_completed", "No_of_Karmatirth_operationalised", "user", ip, tstamp, id, schcd) FROM stdin;
    public          postgres    false    232   Z�      �          0    18998    KCC 
   TABLE DATA           �   COPY public."KCC" (id, "No_of_agricultrural_families_in_the_district", "No_of_agricultural_families_covered_by_kcc", kcc_coverage_percentage, "user", tstamp, ip, schcd) FROM stdin;
    public          postgres    false    234   w�      �          0    19001 
   KCC_backup 
   TABLE DATA           �   COPY public."KCC_backup" (id, "No_of_agricultrural_families_in_the_district", "No_of_agricultural_families_covered_by_kcc", kcc_coverage_percentage, "user", tstamp, ip, schcd) FROM stdin;
    public          postgres    false    235   4�      �          0    19011    KishanM 
   TABLE DATA           �   COPY public."KishanM" (id, "No_of_Kishan_Mandis_sanctioned", "No_of_Kishan_Mandis_operational", "Operationality", "user", tstamp, ip, schcd) FROM stdin;
    public          postgres    false    238   Ѣ      �          0    19014    LANDPP 
   TABLE DATA           s   COPY public."LANDPP" ("No_of_land_permission_pending", "user", tstamp, ip, id, "PROJECTS_NAME", schcd) FROM stdin;
    public          postgres    false    239   >�      �          0    19019    Login 
   TABLE DATA           m   COPY public."Login" (username, password, designation, user_type_id_fk, gp_id, id, active_status) FROM stdin;
    public          postgres    false    241   [�      �          0    19026 	   MATERNALD 
   TABLE DATA           k   COPY public."MATERNALD" (id, session, "Total_No_of_Maternal_Death", "user", tstamp, ip, schcd) FROM stdin;
    public          postgres    false    244   ��      �          0    19031    MCI 
   TABLE DATA           k   COPY public."MCI" (id, session, "Percentage_of_malnourished_child", "user", tstamp, ip, schcd) FROM stdin;
    public          postgres    false    246   ٣      �          0    19036    MGNREGS 
   TABLE DATA           �   COPY public."MGNREGS" (id, session, "No_of_Person_days_generated_under_MGNREGS", "Average_No_of_Persondays_generated_per_household", "Expenditure_of_the_session", per_of_labour_budget_achieved, "user", tstamp, ip, schcd) FROM stdin;
    public          postgres    false    248   ��      �          0    19039 	   MINORITYS 
   TABLE DATA           �   COPY public."MINORITYS" (session, "Target_for_Scholarship_distribution_Aikyashree", "No_of_students_distributed_scholarship", "No_of_Aaplication_uploaded_under_Aikyashree_scholarship", "user", ip, tstamp, id, schcd) FROM stdin;
    public          postgres    false    249   �      �          0    19044    POE 
   TABLE DATA           _   COPY public."POE" (id, session, "Target", "Production", "user", tstamp, ip, schcd) FROM stdin;
    public          postgres    false    251   0�      �          0    19049 	   Privilege 
   TABLE DATA           u   COPY public."Privilege" (privilege_id_pk, parent, link, view_sidebar, "order", active_status, page_name) FROM stdin;
    public          postgres    false    253   M�      �          0    19052    SABOOJS 
   TABLE DATA           �   COPY public."SABOOJS" (session, "Target_for_distribution_of_cycles", "Cycle_distributed_till_date", "user", ip, tstamp, id, schcd) FROM stdin;
    public          postgres    false    254   ��      �          0    19055 
   SABOOJSHRE 
   TABLE DATA           �   COPY public."SABOOJSHRE" ("No_of_children_born_since_inception_of_the_project_in_the_dist", "No_of_tree_sapling_handed_over_to_the_new_born_children", "user", ip, tstamp, id, schcd) FROM stdin;
    public          postgres    false    255   �      �          0    19062 
   SAFEDSAVEL 
   TABLE DATA           �   COPY public."SAFEDSAVEL" (session, "No_of_accidents", "No_of_death", "No_of_insured_person", "user", tstamp, ip, id, schcd) FROM stdin;
    public          postgres    false    258   7�      �          0    19067 	   SAMABYTHI 
   TABLE DATA           �   COPY public."SAMABYTHI" ("No_of_beneficiaries_provided_benefit_till_date", "Till_date", "user", ip, tstamp, id, schcd) FROM stdin;
    public          postgres    false    260   T�      �          0    19072    SIKSHAS 
   TABLE DATA           �   COPY public."SIKSHAS" (session, "Targetted_No_Of_SC/ST_Student_under_Sikshashree", "No_of_Students_getting_benefit_under_Sikshashree", "No_of_Applications_uploaded_under_Sikshashree", "user", ip, tstamp, id, schcd) FROM stdin;
    public          postgres    false    262   q�      �          0    19077    SVSKP 
   TABLE DATA           �   COPY public."SVSKP" (session, "No_of_project_Sponsored_under_SVSKP", "No_of_project_sanctioned_under_SVSKP", "user", ip, tstamp, id, schcd) FROM stdin;
    public          postgres    false    264   ��      �          0    19082    YUBAS 
   TABLE DATA           �   COPY public."YUBAS" ("No_of_unemployed_Youth_registered_under_Yubashree", "No_of_unemployed_registered_Youth_getting_monthly_assistance", "user", ip, tstamp, id, schcd) FROM stdin;
    public          postgres    false    266   ��      �          0    19089    attri_table 
   TABLE DATA           B   COPY public.attri_table (id, id_scheme, a_name, name) FROM stdin;
    public          postgres    false    269   ȥ      �          0    19097 	   audit_log 
   TABLE DATA           b   COPY public.audit_log (id, "user", section, action, request, stamp, comment, ip_addr) FROM stdin;
    public          postgres    false    271   =�      �          0    19338    check_First_User 
   TABLE DATA           i   COPY public."check_First_User" (user_id_pk, check_if_first_user, check_profile_updated_once) FROM stdin;
    public          postgres    false    294   ��      �          0    19105    dashboard_info 
   TABLE DATA           b   COPY public.dashboard_info (id, s_name, name, a_target, target, a_progress, progress) FROM stdin;
    public          postgres    false    273   ´      �          0    19112    location_data 
   TABLE DATA           S   COPY public.location_data (location_area, location_schcd, location_id) FROM stdin;
    public          postgres    false    276   �      �          0    19312    meeting_schedule 
   TABLE DATA           D   COPY public.meeting_schedule (id, start_time, end_time) FROM stdin;
    public          postgres    false    292    �      �          0    19119    profile 
   TABLE DATA           w   COPY public.profile (id_pk, username, f_name, m_name, l_name, mobile, email, designation, district, image) FROM stdin;
    public          postgres    false    279   7�      �          0    19127    rp_location_master_block 
   TABLE DATA           �   COPY public.rp_location_master_block (district_id_fk, subdiv_id_fk, block_name, schcd, clucd, block_id_pk, block_mun_corp_flag, block_kol_flag) FROM stdin;
    public          postgres    false    281   �*      �          0    19130    rp_location_master_district 
   TABLE DATA           h   COPY public.rp_location_master_district (district_id_pk, state_id_fk, district_name, schcd) FROM stdin;
    public          postgres    false    282   B      �          0    19133    rp_location_master_gp 
   TABLE DATA           o   COPY public.rp_location_master_gp (schcd, schname, parent_id, gp_ward_flag, block_id_fk, gp_id_pk) FROM stdin;
    public          postgres    false    283   AC      �          0    19136    rp_location_master_state 
   TABLE DATA           Z   COPY public.rp_location_master_state (state_id_pk, state_name, active_status) FROM stdin;
    public          postgres    false    284   12      �          0    19139    rp_location_master_subdiv 
   TABLE DATA           e   COPY public.rp_location_master_subdiv (district_id_fk, subdiv_name, schcd, subdiv_id_pk) FROM stdin;
    public          postgres    false    285   _2      �          0    19142    scheme_table 
   TABLE DATA           8   COPY public.scheme_table (id, s_name, name) FROM stdin;
    public          postgres    false    286   A5      �          0    19147    user_privilege 
   TABLE DATA           `   COPY public.user_privilege (id_pk, privilege_id_fk, user_type_id_fk, active_status) FROM stdin;
    public          postgres    false    288   �7      �          0    19154 	   user_type 
   TABLE DATA           J   COPY public.user_type (user_type_id_pk, desig, active_status) FROM stdin;
    public          postgres    false    291   N8      /           0    0    ANAND_backup_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."ANAND_backup_id_seq"', 4, true);
          public          postgres    false    204            0           0    0    AWCC_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."AWCC_id_seq"', 1, false);
          public          postgres    false    206            1           0    0    BAITARANI_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."BAITARANI_id_seq"', 1, false);
          public          postgres    false    208            2           0    0 
   DOG_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."DOG_id_seq"', 1, false);
          public          postgres    false    211            3           0    0    DOPTUHD_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."DOPTUHD_id_seq"', 1, false);
          public          postgres    false    213            4           0    0    ENROLLMENTR_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."ENROLLMENTR_id_seq"', 1, false);
          public          postgres    false    215            5           0    0    FOODPRO_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."FOODPRO_id_seq"', 1, false);
          public          postgres    false    217            6           0    0    GITANJALI_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."GITANJALI_id_seq"', 1, false);
          public          postgres    false    219            7           0    0    IMMUNISATION_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."IMMUNISATION_id_seq"', 1, false);
          public          postgres    false    221            8           0    0    INFANTD_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."INFANTD_id_seq"', 1, false);
          public          postgres    false    223            9           0    0    INSPECTION_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."INSPECTION_id_seq"', 1, false);
          public          postgres    false    225            :           0    0    INSTDEL_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."INSTDEL_id_seq"', 1, false);
          public          postgres    false    227            ;           0    0    JALDJALB_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."JALDJALB_id_seq"', 1, false);
          public          postgres    false    229            <           0    0    KANYAS_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."KANYAS_id_seq"', 1, false);
          public          postgres    false    231            =           0    0    KARMATIRTHA_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."KARMATIRTHA_id_seq"', 1, false);
          public          postgres    false    233            >           0    0    KCC_backup_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."KCC_backup_id_seq"', 5, true);
          public          postgres    false    236            ?           0    0 
   KCC_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public."KCC_id_seq"', 6, true);
          public          postgres    false    237            @           0    0    LANDPP_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public."LANDPP_id_seq"', 1, false);
          public          postgres    false    240            A           0    0    Login_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Login_id_seq"', 1, true);
          public          postgres    false    242            B           0    0    Login_user_type_id_fk_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."Login_user_type_id_fk_seq"', 1, false);
          public          postgres    false    243            C           0    0    MATERNALD_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."MATERNALD_id_seq"', 1, false);
          public          postgres    false    245            D           0    0 
   MCI_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."MCI_id_seq"', 1, false);
          public          postgres    false    247            E           0    0    MINORITYS_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."MINORITYS_id_seq"', 1, false);
          public          postgres    false    250            F           0    0 
   POE_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."POE_id_seq"', 1, false);
          public          postgres    false    252            G           0    0    SABOOJSHREE_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."SABOOJSHREE_id_seq"', 1, false);
          public          postgres    false    256            H           0    0    SABOOJS_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."SABOOJS_id_seq"', 1, false);
          public          postgres    false    257            I           0    0    SAFEDSAVEL_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."SAFEDSAVEL_id_seq"', 1, false);
          public          postgres    false    259            J           0    0    SAMABYTHI_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."SAMABYTHI_id_seq"', 1, false);
          public          postgres    false    261            K           0    0    SIKSHAS_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."SIKSHAS_id_seq"', 1, false);
          public          postgres    false    263            L           0    0    SVSKP_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."SVSKP_id_seq"', 1, false);
          public          postgres    false    265            M           0    0    YUBAS_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."YUBAS_id_seq"', 1, false);
          public          postgres    false    267            N           0    0    anand_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.anand_id_seq', 3, true);
          public          postgres    false    268            O           0    0    att_table_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.att_table_id_seq', 1, false);
          public          postgres    false    270            P           0    0    audit_log_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.audit_log_id_seq', 178, true);
          public          postgres    false    272            Q           0    0 (   check_First_User_check_if_first_user_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public."check_First_User_check_if_first_user_seq"', 1, true);
          public          postgres    false    295            R           0    0    check_First_User_user_id_pk_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."check_First_User_user_id_pk_seq"', 1, false);
          public          postgres    false    296            S           0    0 
   doc_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.doc_id_seq', 1, false);
          public          postgres    false    274            T           0    0    kishanm_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.kishanm_id_seq', 1, false);
          public          postgres    false    275            U           0    0    location_data_location_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.location_data_location_id_seq', 1, false);
          public          postgres    false    277            V           0    0    meeting_schedule_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.meeting_schedule_id_seq', 1, true);
          public          postgres    false    293            W           0    0    mgnres_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.mgnres_id_seq', 1, false);
          public          postgres    false    278            X           0    0    profile_id_pk_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.profile_id_pk_seq', 16, true);
          public          postgres    false    280            Y           0    0    scheme_table_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.scheme_table_id_seq', 31, true);
          public          postgres    false    287            Z           0    0 "   user_privilege_privilege_id_fk_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.user_privilege_privilege_id_fk_seq', 1, false);
          public          postgres    false    289            [           0    0 "   user_privilege_user_type_id_fk_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.user_privilege_user_type_id_fk_seq', 1, false);
          public          postgres    false    290            �           2606    19201    AWCC AWCC_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."AWCC"
    ADD CONSTRAINT "AWCC_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."AWCC" DROP CONSTRAINT "AWCC_pkey";
       public            postgres    false    205            �           2606    19203    DOG DOG_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public."DOG"
    ADD CONSTRAINT "DOG_pkey" PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."DOG" DROP CONSTRAINT "DOG_pkey";
       public            postgres    false    210            �           2606    19205    DOPTUHD DOPTUHD_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."DOPTUHD"
    ADD CONSTRAINT "DOPTUHD_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."DOPTUHD" DROP CONSTRAINT "DOPTUHD_pkey";
       public            postgres    false    212            �           2606    19207    IMMUNISATI IMMUNISATION_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."IMMUNISATI"
    ADD CONSTRAINT "IMMUNISATION_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."IMMUNISATI" DROP CONSTRAINT "IMMUNISATION_pkey";
       public            postgres    false    220            �           2606    19209    INFANTD INFANTD_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."INFANTD"
    ADD CONSTRAINT "INFANTD_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."INFANTD" DROP CONSTRAINT "INFANTD_pkey";
       public            postgres    false    222            �           2606    19211    INSTDEL INSTDEL_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."INSTDEL"
    ADD CONSTRAINT "INSTDEL_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."INSTDEL" DROP CONSTRAINT "INSTDEL_pkey";
       public            postgres    false    226            �           2606    19213    KANYAS KANYAS_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."KANYAS"
    ADD CONSTRAINT "KANYAS_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."KANYAS" DROP CONSTRAINT "KANYAS_pkey";
       public            postgres    false    230            �           2606    19215    KCC KCC_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public."KCC"
    ADD CONSTRAINT "KCC_pkey" PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."KCC" DROP CONSTRAINT "KCC_pkey";
       public            postgres    false    234            �           2606    19217    Login Login_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Login"
    ADD CONSTRAINT "Login_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Login" DROP CONSTRAINT "Login_pkey";
       public            postgres    false    241            �           2606    19219 "   Login Login_username_username1_key 
   CONSTRAINT     x   ALTER TABLE ONLY public."Login"
    ADD CONSTRAINT "Login_username_username1_key" UNIQUE (username) INCLUDE (username);
 P   ALTER TABLE ONLY public."Login" DROP CONSTRAINT "Login_username_username1_key";
       public            postgres    false    241    241            �           2606    19221    MATERNALD MATERNALD_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."MATERNALD"
    ADD CONSTRAINT "MATERNALD_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."MATERNALD" DROP CONSTRAINT "MATERNALD_pkey";
       public            postgres    false    244            �           2606    19223    MCI MCI_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public."MCI"
    ADD CONSTRAINT "MCI_pkey" PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."MCI" DROP CONSTRAINT "MCI_pkey";
       public            postgres    false    246            �           2606    19225    POE POE_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public."POE"
    ADD CONSTRAINT "POE_pkey" PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."POE" DROP CONSTRAINT "POE_pkey";
       public            postgres    false    251            �           2606    19227    Privilege Privilege_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public."Privilege"
    ADD CONSTRAINT "Privilege_pkey" PRIMARY KEY (privilege_id_pk);
 F   ALTER TABLE ONLY public."Privilege" DROP CONSTRAINT "Privilege_pkey";
       public            postgres    false    253            �           2606    19229    ANAND anand_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."ANAND"
    ADD CONSTRAINT anand_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."ANAND" DROP CONSTRAINT anand_pkey;
       public            postgres    false    202            �           2606    19231    attri_table att_table_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.attri_table
    ADD CONSTRAINT att_table_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.attri_table DROP CONSTRAINT att_table_pkey;
       public            postgres    false    269            �           2606    19233    audit_log audit_log_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.audit_log
    ADD CONSTRAINT audit_log_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.audit_log DROP CONSTRAINT audit_log_pkey;
       public            postgres    false    271                       2606    19348 &   check_First_User check_First_User_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public."check_First_User"
    ADD CONSTRAINT "check_First_User_pkey" PRIMARY KEY (user_id_pk);
 T   ALTER TABLE ONLY public."check_First_User" DROP CONSTRAINT "check_First_User_pkey";
       public            postgres    false    294            �           2606    19235 "   dashboard_info dashboard_info_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.dashboard_info
    ADD CONSTRAINT dashboard_info_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.dashboard_info DROP CONSTRAINT dashboard_info_pkey;
       public            postgres    false    273            �           2606    19237    DOC doc_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public."DOC"
    ADD CONSTRAINT doc_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public."DOC" DROP CONSTRAINT doc_pkey;
       public            postgres    false    209            �           2606    19239    KishanM kishanm_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."KishanM"
    ADD CONSTRAINT kishanm_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."KishanM" DROP CONSTRAINT kishanm_pkey;
       public            postgres    false    238            �           2606    19241     location_data location_data_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.location_data
    ADD CONSTRAINT location_data_pkey PRIMARY KEY (location_id);
 J   ALTER TABLE ONLY public.location_data DROP CONSTRAINT location_data_pkey;
       public            postgres    false    276                       2606    19319 &   meeting_schedule meeting_schedule_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.meeting_schedule
    ADD CONSTRAINT meeting_schedule_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.meeting_schedule DROP CONSTRAINT meeting_schedule_pkey;
       public            postgres    false    292            �           2606    19243    MGNREGS mgnres_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public."MGNREGS"
    ADD CONSTRAINT mgnres_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY public."MGNREGS" DROP CONSTRAINT mgnres_pkey;
       public            postgres    false    248            �           2606    19245    ANAND_backup pk_ANAND_backup 
   CONSTRAINT     ^   ALTER TABLE ONLY public."ANAND_backup"
    ADD CONSTRAINT "pk_ANAND_backup" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."ANAND_backup" DROP CONSTRAINT "pk_ANAND_backup";
       public            postgres    false    203            �           2606    19247    KCC_backup pk_KCC_backup 
   CONSTRAINT     Z   ALTER TABLE ONLY public."KCC_backup"
    ADD CONSTRAINT "pk_KCC_backup" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."KCC_backup" DROP CONSTRAINT "pk_KCC_backup";
       public            postgres    false    235                        2606    19249    profile profile_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.profile
    ADD CONSTRAINT profile_pkey PRIMARY KEY (id_pk);
 >   ALTER TABLE ONLY public.profile DROP CONSTRAINT profile_pkey;
       public            postgres    false    279                       2606    19251 6   rp_location_master_block rp_location_master_block_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.rp_location_master_block
    ADD CONSTRAINT rp_location_master_block_pkey PRIMARY KEY (block_id_pk);
 `   ALTER TABLE ONLY public.rp_location_master_block DROP CONSTRAINT rp_location_master_block_pkey;
       public            postgres    false    281                       2606    19253 <   rp_location_master_district rp_location_master_district_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.rp_location_master_district
    ADD CONSTRAINT rp_location_master_district_pkey PRIMARY KEY (district_id_pk);
 f   ALTER TABLE ONLY public.rp_location_master_district DROP CONSTRAINT rp_location_master_district_pkey;
       public            postgres    false    282                       2606    19255 0   rp_location_master_gp rp_location_master_gp_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.rp_location_master_gp
    ADD CONSTRAINT rp_location_master_gp_pkey PRIMARY KEY (gp_id_pk);
 Z   ALTER TABLE ONLY public.rp_location_master_gp DROP CONSTRAINT rp_location_master_gp_pkey;
       public            postgres    false    283                       2606    19257 6   rp_location_master_state rp_location_master_state_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.rp_location_master_state
    ADD CONSTRAINT rp_location_master_state_pkey PRIMARY KEY (state_id_pk);
 `   ALTER TABLE ONLY public.rp_location_master_state DROP CONSTRAINT rp_location_master_state_pkey;
       public            postgres    false    284            
           2606    19259 8   rp_location_master_subdiv rp_location_master_subdiv_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.rp_location_master_subdiv
    ADD CONSTRAINT rp_location_master_subdiv_pkey PRIMARY KEY (subdiv_id_pk);
 b   ALTER TABLE ONLY public.rp_location_master_subdiv DROP CONSTRAINT rp_location_master_subdiv_pkey;
       public            postgres    false    285                       2606    19261    scheme_table scheme_table_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.scheme_table
    ADD CONSTRAINT scheme_table_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.scheme_table DROP CONSTRAINT scheme_table_pkey;
       public            postgres    false    286                       2606    19263 "   user_privilege user_privilege_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.user_privilege
    ADD CONSTRAINT user_privilege_pkey PRIMARY KEY (id_pk);
 L   ALTER TABLE ONLY public.user_privilege DROP CONSTRAINT user_privilege_pkey;
       public            postgres    false    288                       2606    19265    user_type user_type_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.user_type
    ADD CONSTRAINT user_type_pkey PRIMARY KEY (user_type_id_pk);
 B   ALTER TABLE ONLY public.user_type DROP CONSTRAINT user_type_pkey;
       public            postgres    false    291                       2606    19266     Login Login_user_type_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Login"
    ADD CONSTRAINT "Login_user_type_id_fk_fkey" FOREIGN KEY (user_type_id_fk) REFERENCES public.user_type(user_type_id_pk) ON UPDATE CASCADE ON DELETE SET NULL;
 N   ALTER TABLE ONLY public."Login" DROP CONSTRAINT "Login_user_type_id_fk_fkey";
       public          postgres    false    241    3088    291                       2606    19271    audit_log audit_log_user_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.audit_log
    ADD CONSTRAINT audit_log_user_fkey FOREIGN KEY ("user") REFERENCES public."Login"(username) NOT VALID;
 G   ALTER TABLE ONLY public.audit_log DROP CONSTRAINT audit_log_user_fkey;
       public          postgres    false    3052    241    271                       2606    19276    user_privilege privilege_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_privilege
    ADD CONSTRAINT privilege_id_fk FOREIGN KEY (privilege_id_fk) REFERENCES public."Privilege"(privilege_id_pk) ON UPDATE CASCADE ON DELETE SET NULL;
 H   ALTER TABLE ONLY public.user_privilege DROP CONSTRAINT privilege_id_fk;
       public          postgres    false    3062    288    253                       2606    19281 E   rp_location_master_block rp_location_master_block_district_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.rp_location_master_block
    ADD CONSTRAINT rp_location_master_block_district_id_fk_fkey FOREIGN KEY (district_id_fk) REFERENCES public.rp_location_master_district(district_id_pk) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 o   ALTER TABLE ONLY public.rp_location_master_block DROP CONSTRAINT rp_location_master_block_district_id_fk_fkey;
       public          postgres    false    281    282    3076                       2606    19286 C   rp_location_master_block rp_location_master_block_subdiv_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.rp_location_master_block
    ADD CONSTRAINT rp_location_master_block_subdiv_id_fk_fkey FOREIGN KEY (subdiv_id_fk) REFERENCES public.rp_location_master_subdiv(subdiv_id_pk) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 m   ALTER TABLE ONLY public.rp_location_master_block DROP CONSTRAINT rp_location_master_block_subdiv_id_fk_fkey;
       public          postgres    false    281    285    3082                       2606    19291 H   rp_location_master_district rp_location_master_district_state_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.rp_location_master_district
    ADD CONSTRAINT rp_location_master_district_state_id_fk_fkey FOREIGN KEY (state_id_fk) REFERENCES public.rp_location_master_state(state_id_pk) NOT VALID;
 r   ALTER TABLE ONLY public.rp_location_master_district DROP CONSTRAINT rp_location_master_district_state_id_fk_fkey;
       public          postgres    false    284    3080    282                       2606    19296 <   rp_location_master_gp rp_location_master_gp_block_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.rp_location_master_gp
    ADD CONSTRAINT rp_location_master_gp_block_id_fk_fkey FOREIGN KEY (block_id_fk) REFERENCES public.rp_location_master_block(block_id_pk) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 f   ALTER TABLE ONLY public.rp_location_master_gp DROP CONSTRAINT rp_location_master_gp_block_id_fk_fkey;
       public          postgres    false    3074    283    281                       2606    19301 G   rp_location_master_subdiv rp_location_master_subdiv_district_id_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.rp_location_master_subdiv
    ADD CONSTRAINT rp_location_master_subdiv_district_id_fk_fkey FOREIGN KEY (district_id_fk) REFERENCES public.rp_location_master_district(district_id_pk) ON UPDATE CASCADE ON DELETE SET NULL NOT VALID;
 q   ALTER TABLE ONLY public.rp_location_master_subdiv DROP CONSTRAINT rp_location_master_subdiv_district_id_fk_fkey;
       public          postgres    false    282    3076    285                       2606    19349    check_First_User user_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."check_First_User"
    ADD CONSTRAINT user_id_fk FOREIGN KEY (user_id_pk) REFERENCES public."Login"(id);
 G   ALTER TABLE ONLY public."check_First_User" DROP CONSTRAINT user_id_fk;
       public          postgres    false    3050    294    241                       2606    19306    user_privilege user_type_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_privilege
    ADD CONSTRAINT user_type_id_fk FOREIGN KEY (user_type_id_fk) REFERENCES public.user_type(user_type_id_pk);
 H   ALTER TABLE ONLY public.user_privilege DROP CONSTRAINT user_type_id_fk;
       public          postgres    false    3088    288    291            �   �   x���M
�P��)z��/�Yy7��B� ���>����.��0Đ��$ƒ�|��9O}?N�|wÒ���NK�4�ak�J�B�DR�V�ǚ((�����U����J�@nS@��
PIZ�_v�($
�]$��*�����KQ��.��Y�7�|T�j      �   }   x���;
�0�z������i�$�l�,�q���A��M1o!��D�D)�-���=�4�y����֘7��O�F[����dv� =k�� ���Kv�H7�e[dG��y�R&�$|��3��y=�      �      x������ � �      �      x������ � �      �   �   x�3�4202�4��41�LO�K/ͩ�+�LI���K,�pH�M���K����50�56P04�25�25�4�44���2��b4ŔLS@��!�1�$sN#r�"��L�>3�JP�&s.S�I@Q#J�d����� �q]�      �   �   x���A
�@���)ze�L2�'�	�H�Bi�}Ձ�n�_��O$ 4�L1t��?�s��qZ��x�n���c9�����Kc�X��ho$٪Tv1�Ik�I�7�ἇ���y�����~�n��!gw�SjK"�o<bP      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x���1
�P�99�P���<}SO��H����}��]�K���?!J�F0t��=�����t�^�eX�i�n�*IJ�c�:�B��X͜Ш>�ӱ�ő,�s"�ny߃ĒRA�C����9���$H�w��1�~]����l 	�z���I����V�8�m��_�ݤ�      �   �   x���1
�0�Y>E.#ɲ�h�A��C�Bi�޾-iq�����"��X��!�%?����a˒�9ϩL�z����EiQ�9!0#���1��5�G� �\� Uu�t'tj�:��l ���ŮB�U�KaX�6�x����\�      �   ]   x�3�45�46�462�LO�K/ͩ�+�LI���K,�pH�M���K���4202�50�54T04�2��24崲2���2�0�41�41%ۈ=... k�$6      �      x������ � �      �   Q   x�KO�K/ͩ�+�LI���K,�pH�M���K���
��p��rrZ��(�Ĥd$E`�.���`%��F@51z\\\ `��      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x�U�Q
�0D����	L[����ْXiSj�x{�M�HX2og6�8�u��'�^��G�S��x6e۹��zʜQ��N����j���=c�"�F�V���L�?�5��G%��\�ad����e�{�N�s��~1�X�C�c9\�o�~:� �/"�B+      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   e  x��X[o۸~ż,�>l�%���usrڢMQ,P�`d��F�]����/"e+�ٗD�|�/Ù�I�|�x��ŮVEW�uW��?��*�l�Ҽ�K�UM���P=� J������4�����g3ۊV&�[$���Y5{���Q�WGY��t&��"9["�]�����O��I�\�ı����7Y7�ފS�wRZn9j�}�5r_�[� �~P�^Pz�fh���Q�ۮ�d�6�oA$"F�*'b�,�&�U�[o���m�����:?�s�"X�����1�]��8^*��+�$DX8K��,��N�4/7���v������AhJC��AX�&�רv�h�׈�e�؅�.��ey
�r�� � �,�i�`U�DM���R�b /d��uq<���Խ�e�d����l�C��j����e�d�}���[[U��Y����g��Qh��?�?l�C�ʭ�;^T�]�j� a�c °<���Z�Ƶם�ć��7U��(
�������$&	޸atg�� J]u5F��'�7��|��>�}�=�h����0�ײ�*��� ��|�_#�9�7�嫷8����y��G��$f���Ug��z���7��1�h���-��U�QF��d��K�;
�p�jz��x�z��x7�={���b�y���#�:l�J�Y�`�3Lx�����G�(t�ڢ�b����l��sLm�kz�����!���a�_�gs�7m��[�;��5m���f_K�Dz������`���,'+.�Xe϶��n�ۘ�W�8G�L���p��e%������h��1`����T���dl6'�5����	���9F�`��dl�����)��u�W�ᜮ��iplfR|8� g�	�p�)�;�̠�����5�okЃH���#}j�T�7&K�9�Tu8�?7��9=Ɵa�<�d��� �M�l��(�\�ݪV迱|t���d�Ql>#F�i�/��$o�Wݍ��<�6�c���[`�{/g��t͠9��l
~�͗�u��Um��B�a�(��E]��?��o-�ǻy|�XD(�e�l�:��ٙ��3�iEj�Lp�H��6�h��2XH0��AK�߅O|����9��"#*w�T�r��"O�J\�rwF��S�����7��JB��tO�(��`F�bF_��9�.��*S�����y'<�����c�ፗ�:��=�a� �A�Z���QK�k�G�C��=�X��< ]���Y�>�;e�l�9�������݋��"�zb�ק���W�>ܱK��9)��z'\N�����͐oX���z�D�Z��-��(v�����k����2�rF6�{�� A��yk,S�����jœ���mY!!!&	�\��گ&Έ~,�:�*�@.�����#����8Y��l�"-K�_a�m͉o�Vx0w���҃�U8 <������+�֤DJ��{�i���o��<���P������LkR����me����"=�zl��9W�Qͨ+�!�lR~���:���6(Tℾ�$9�ɾ�}�Y�o���/7�/�_l��Z-q��N9(����w�I!H�I�*O�U��ȷ��o����T�a��	�>�~�k}��3 O��!P�|\�E�R�xf�P�������$��Ҽ���g�����u��{[�q�g�?������e�4͢x���=ě�ն��T�{� �A����j��Q�����y�*-�]�Jʩ[�7�Ы����ߔ����ԕ����tr5�]e�t��ai�<�Z��;�m���z~�8�.ڞî�ѱ1�_oz:,�4�R�'�Ec���5m��r������wkκ�6I[�5�q��d��f      �   L  x�͜�n�8�����$�(�jӤx�1���+P��a��A� �o�$e������1M mР?G��C��h1{^����x}|xX>>϶��O������i��n_�x�Z��V��f;�N�Ə��/^�/��|�m;������0?^�>���o�mQ<>�M��a��sJZk�4���ӑ��E��@6.,��m;�z�l�O��|��-��r�:��P��%>���eHl�g���j~�-~_�>�şWW����-�<�dz�����ÀB��'��%[�Q�0����gOu�	���õ���W�j��j���X�f��̦Lj�1J��+ʵ�"��a�� 9�4!TX�*�i��'��Jj慒�)�쁎-��y3����!��M'LNi��������	y�^1[�U�壘�R�<�b�/����i-J��&!TXVwp���,+�6p�p��oG#��I�t=D�;�cOP�W��5�L�E�UC��q
no������<-���:"�ݍ*���q
��f������������ ��gؤ��g�$�f��Sh�Ps����v���p4V�]3~����h�6�P�'��f�Ie	�f���y�8��@ �0��$u�E(xŹ�a�1�'��s�����|����~zd��F'uI2G�9�����ɸ�98��uܣ!�=��l��X�L��Z���$�I��y��qJ��nƗ��������l;7n��������	�^�w����^z�!	v���0���_"�2F9��k*��WpXe�� �2Np,�_Oˌ[YM
U�2�`�행�'�H����2����iH�dy$����L.������G-g�*���2�#���{
I{�1��T&%���I���� ��Mm���Җ4v%�{�|y���^��l��^����X0���)��o�� 3x���ǟ4A�ZQ%��� ��V��S��4�O|�ܟ6�eT�Txwh�Q��R{5ţeR�ݡ	ͼ3���p��*U�S�hf#�]A����
3ԧ0ے�s�:+�-)Ј:m�)ݭC��ԉ��!�W��\�ݡ�MR0�u�ӻ�غ��C�����npa�#�,�yUc��؋�\�a�57���yx�0�j�wKD�����S��xZ�2��B=,�S��|V��?dK����mJr���͵ڄ�ٹ1$<A���|Ԗ�j�����:6�R���:�=aq��A���D��	�ׁ�D�����9���ȆT6n3,��"Hl�8���d�E6nౕn��Ud�F���TkJR����m����	@�a{:h0���~��߬�c�4��aH"@���Cf��K��E�Z6�Y�S5�`mB4<u�WK����/��R��P�����Q�6@��y�C �p�G#�!�:�$�Ur�� q?"��E�"�����x0L<�����F����@U1��'\d��vlMGM8h��:�h�op��*p�l��l�j���w����@�yqVs���tqP�xHt$ԙ��0����6���><�=,>:]�Ȗ0��p�F#�����9���Rq��ɉl��]-XW#������kW���N�(uއ���u�Ȏ0��@�����c��F+�,>:]�<�[U؃�cu�a���ؕG�X�V������<�����px�^�+�V�Ր���4��1��a=�e���-�{���g3v%8�<�<[n�Q�N76e����V�G�g�/��I��ZIa!I�+O��309�.O7cr�ܪ��lF�V��y�6����<5���J���c��U�-�:�pܮz��,����I�׋��� ��l      �      x�3�4�4�2�4�4����� �      �   9  x���Mj�0F��)��� 8�B��h��a"˶�"I.���,�:qI�ʶ�}����N���~|L�Xi�֘�p8��Ɉ���U��P�<��f��ۋt�����'�+�ɨp�R
rS15N�^�;�X�Yi%=*����B��;���K�^<]��?hU�a�r]n��D����1�{>޷k��1u/5pPZ�5$2�@�`s���P�@�LG�\vE2#�_��P�\{��~]�Jt��52$�Q0�΋M��H�Tw��/$z���S8�� L��=���Rx�9�*�Ȏ��#����s�9�6+.�      �   �   x�m�Mr� ���)|�t�_*v'�b��3��9J�Yt��OOzR�˳�i ���ς@b0���5����	7[�z�;�fq~w��l���+/͝o��<,z�qu�=���.�d�$������RA�o��/��*�"+G˞#۽,�ć��%�8� jk��1u/ha	������#�f��P���'��9��YϚ���u��Y�̦X��Q�@
�~C��_I      �   '   x�3�4202�5��50V02�20A�*�b���� ��      �      x���ǖ�к&8>Ϣ�Zx3kNx�a��ۧ���{oU��se� p{��3�`�?q���eW������������������Y���jg��i8����']?1���M$[%�2��O�{b�e�1*�v��a�È�f���߾�,�����va��Y~�����]{�_ǋ�V�֣�K���aFC���� �aX��a�;s̥9�|�k���e�����80��9~�1���h������߉�g���?��̛-C�-�7{���Ӽ_��r�C}G�5S`�X:�L�����䋩ԗv.Q�>��@:K��aZ}l���������4p���@�V���y_Z����I��Sr:��a���,�x� /`fo���,��c�R��O(=�#���XP��g�_|?�?c�8����N:i�J��!���"��;��w��Qc�R^G���W����ġ\2g͖e���Ɖߚ�d£:K.|�~�w�wZ,�u�hb�W�k�<�/�����Ce!�]�٦F6c�N�E��
ؿ�Kp��-�o��x�erɺ�4��V0s�`�W�q���~~��/�	A�DP�မ���fN��������~�`J"ǀ��E�?X�o�A.��6�xOޝ���_����voJ�cdoN�`���ެ�J��]�g�����r���q��@`�=d�+�#�f~�A8�z-�cv�h�7t9$����5 8L㵐���,ߠ��� F�[:ؿ��.��������K�_ek	I�!��Fd��_6����n|�u���b!�!�ů�
��`��}ß6�[i�&y�L\��>�;n�����0�s}8���j������q�Z<���tC�x��N'"�)�ɛ��P?#�C��_�S���7)F��M�oV�WH_D렔�"�VuKR���`���K�f׷�8	c3�A�gE�+����||u.$EG�!�bϵS+��O��Z(�n+���1QM�Ue~~��Vb�������4�Y\gҎM9f"Yd���5Zt
\���� ��\ņ���_�_Ɛ�,�M�A�2(��*�U����C�4���,-��<��7CՔ�^.�5|�Â,�
�x�KK��.<��
G�LS����� ���#�����M��C�)�4ߍ��Wv��:d5�%i��� ��[�E�v��V���bү%_�%%�)I�Y���i!���~�UĀ�dkv &ଡ�W� �7������׻L�J?���
�̂�х��>�����L؁B`XI�����%�f��>���⹥�>�v�x�W�)��֝��:x]1��4���bϳ�vI@�8t�(���a��}tl���]-�i�ek��I�bf/���:*����ڈ���EJ��|��a�������Y���L������2�I����_����U3D�-L�Ѝ~բ��s��9�e�ǺIo��!�pttE޻��7ǔ��+�z&Kl�6�μ�C= �H<RƐ�I��]h[�Y=����wW���1�4pC�<��
7Tgۿ���g>@�Xi��a�q;���a�x2=��}���F��a�����@�40�h�eP�K��&n��/2�j��V @d:y,���_�U�R�����E����F���}��L�~fdC�����m��z$���2���^���q����t�i���e��T��N�=��e�q������NB}�#���&#����L���=�N/"��oD��zx��-���E�}m�WP�OЀvW@�<�I�����_{sG&,dc�����|��<��°����wHw���*�*�?���Mio��n�Ƞ� �޹
a��O���^~@X)b�
9���/`�������%�_^��o6���g��i��h^�O��zߐ�����7�$z��>bW�i:K:r�8H?3C�Ar9 $�_����������%��;�#�R��0�)m��{-�M�ˉr��o��4)n�D]ƈ�٤�qH^d�#j�����S���%/	՘_�C�ʙo�����,~Ig��s�XMlY�W/OC:+�!�G��Z�l�kn�̞t�s"ʺz���[mЯ�|�!��2�?�h�?;z�=���@h������埠�o���f��d�/*C�Av��um��I�Q�
k儯o�Y���]T;5�ӫQ�=�Kx�t�q�#�S�ڙ	�4D��rӭ�;�p�u�;���/��_4����$�ab��q�v��Y�E1JR'>��>ŵ���S�k'�"{ڥ����(ah�[��|������'=����d��A@낌���G'`��ր|�����\O͕r��7{��Y�Iל�Ԏʍ'\�,N!��3h|�HLˌ^݂g��c�wa�$Xp��
���K�ۼ�i �Je���/�|-�/��������1�A���d|���MO�h�`��"�HQ<��k�����t��Ī��B`QՑ-�߶�'���'O~x&���]������
�⟢���rO��y�6"2����?^�����	�:���+ ������S>~����z�tWd>��+�_Q!�0�P�ܟ�gt���~����v�,B�Fwo��MW5�}�Z��r��^��
������8[������
�������x�BpMx=��XUc�&��I�Zc���G\���<V@�:���?�	��l6����q~�d�0�c֐h�󦽷<�$���WC�9�qWɲ(�X�z�(m�k�oƕ��k��$��0&OGy�cF��?�#���){/��n$��"=u��q^@S]Y�l�Տ�6��Nn}3(�3�z�!��Ne֍6��Jԋ�RZ�Mg�jE���z_|���lýs���4�;�H嵑�A�&:N������m~��r�xz�?����0EQOB���y�7��^��9Y�S�]�'�mw�4�t�-絤�@}�!�-m�+�'#�,�X�+ ��bU�r(PH���`>�x�R|�4<
�����W��~o�$bܯ�j�"5�6�~SUk�!���<�J,F�,����T�!�j8{SSJ�<�CBt��4\O��y����a�0(��k��֢,���T(-B-q�%v51/�/R��6ȔR��a4��gr�V��$���g>�!4'�6���}��|:�������Z|�����౷����ŕ}���$���g��'�l�������P3���)�Gg,۬���$B���s
%#֌�-ҥh1�P����!ϛ�	-��f�%"t��>�d[�0�'~�����(�7�A�CE���ϋ_q��I�D�����	/���`AT�cO߰��_�k�9�ܵ0y�Gݰp�|�M��|q\��ڄ�F���	yzV�Ɖ?�V���2ӽp��3#�E��|�#:���+<�0
YI+bC+B��n�Tg�=��d���g ,�.�&E;/4�+����A���U
��heC��C�_���	̟���g�')�$uz�Z�������J��P�v?齸�2�B�/|���G�l��&
a��77��H���kQO���5Xw���W��l��f�R��Kf)��4\��<?n�����M<@Dp��o
�����o��bE�g5o�ڧEm�1�k�,ɜ:�E̯ ���T}WHm��=�:L��Y��m<f�����)@_��ӸtV���\���z�d�T=_�	�h_Y���#�,ܯ<u|�D��p_J�/�<$��Z��8�ӹ�`��N {Pi uc	��Ѯ�N+��ygY���F�QOi�k�	���1����t�ԎV�^���dY��IȠ�.J��f��A\��N��L R��=���c�Q|�j+qt����.��h���2�~�@�Bo�'In�N���8��/�� Bf'8%¬�ε�
&]T(�R���\$�x�@� /��r�b��#���Y�������n��� �sK(�i��o4�&��	��[���Q�R��N�ݎ�|W��D�ј@>��(1�s#�����W�H��r?�-BH�{�IG�=    ;�;��ǚ��]�[ ��L�� ����?�� f=P��4�ׯ�u��4d� P2�M�;��%�`m����a�F��)kƼPd�!^�ժ)j����9�GI��Y���nB�I��2��Jj��G�4X�v:϶�>��V|BjO,%�m�@K�T�d�,�����L]���*(-��䒓��'��;ɼj�RQͬ�v�7�~��aL���d��t�a��F���L�h_����>�P|��rA��9LlQ��Q���1=^Y���l.!T��sGC�3�bd���	�z�w���%�32����tY���3�-�#-+��4���9�)����	5�J=��&OL�:�L> h'=�B�n�)6�85u"�=-�|=���jR�H��,���$��~ό�\���8����?�c��8�Z�F�ML,�/�׻y.�nc�"��	�y�$�r�
3���#�����9�՚�2�b�N�hZ�	�����+����4e��7N�5.����:��4 �q�0�Q��0�sq�Ǽ3u�EÔ��|�g x�n��}���E�H����Þ�Мc�h��y{��NC��A�82�O�hZo���ټ�%vj�1E�{�5��!�h��F p-������A64R�g���ИTcA�{1�88��w��^�QU�l�����o�"�=su��t�q���k3����G�����m�Q-�+�ꁥ@N1��چ��N��a1��-�WU�J�UA��4QU~O7��A����;��ox�+��bm��%�������}�ז����M���[�q��@���
��.�z�g��0~��;jB��h���N���k����_�5/���$�Q�}c���t{馑8)�o�ʷo����?�)���󀆦�[K�K?��0��Iw6̱-^Т:����h���9H�I|�-�=��Mh��(�F���ǪfL�}�k6뮫e㉞��ѩ^B�P"8A��5í��|�u|u�k6�|�xpFAqy��.��j��� oXW�V�����m��k5�	z7 k�58���j�8H���*�{X�iA� ,���# �6dWK�!�b���̢&���:����P�>ܿ���ǵW{n)t�h����K���A��X�kJ��O}I��l���~�l��g��N{�O2_����,��4����:�q=^�vչA�^��&�M"����� ��x@�z^Zj��<����>���*8G=bdm*Z��e�g�R��$kXڴ��z�j������}�����|ߏ2���nΌb��F4��0V�� �d�K��iP+�{H��G��1�M�~��<�+B5�hY����b�,�;Pw���i}`߲�HD�ʯ�̫��QM7
��� Q��o����U{���(�'�o\!���P���m�^ڰԯ8blO�]?$j���;J�(�7ׯ8{!|)�Ӈ��C`X�i|-�g� bg_U+n���a�%�:w��������w�
DŻ�Y�t\ޗ����c��t>���޿ڱ�78Gɴ@#2ֲ���Y#ʹ`���i����Ю�l��0�8�tT�/7r2h���z4�\1���ǯ�n�V��q�3��F���k����{�ro�6d�������O�:ϐBn��3����}{UydM�y�8t�ʐY�M==@<���c�8ЗL0V=T��5�a(�4���`	=�� ����k�8v�k���{l�p��/F��9X��sN?y����
O���n�-�h�1Z��-��A�>�"4m\�ݭ��\��S~�K��m�G����j�>�9E㷑q��〡Q�0%�AC�P��\�v䮠�����m�Ԗޠ]a`�`���.����|>b@��^���"~�"�[qO'b#��Q����,��>!����L�Ó8����!U�=Nd���t�)���4j�
�ê!���S恦U}��zG�X륚�2��F�ۮnAX���Lv+�Fy�A�G�L�:fY!�Ȗv���!����zިg`z��{��t�%"���
L��C,�T�WC�[�Ǯz�dϞQ��²�$�k�Ĩ���a����LOs���!Q���r��~�V��@���hXd��&�8R������1�"��$h�1"�V3����	(s��uk,�M�[� �⚒j�_#z�P&3��0���XUi�C|9��2�l��&��j�IѬ/�ϔ��#��NC�w zA�����!���4��4�;��[l�WCA�+��h��Mȸ��}�:d�E��mg�3�KЊ��Z���^2�Wg䟗�K ݯ>��8Xk�wD���`�����k�k�_������Q�u���Kޖ��&�B��r߫c�qx#�|�[C�Ds�&�.��+(�$�L]�þ��^�`<1��J�M/��mh%���K¦9�Pf��#�H5RJ��t�E�DR$�n ܅��;���}��~z�ݲE��j�V2�.lc�5�|�o��S]�<s����+�^М�Ԁ<Y_"(���8F���n|���}��S�p�Y=���ZזU��h��q҅�F��&���$<���f�<D�!Mqؾ�JU�K�Fߵ�$p����	���s�v��	+��צ��/��|��l��4�6doB������˜B�A��S��k�[(�%8�kDa��6�crˀ�Z�*�M$�6 �/�|#�j �b)�w�Y�*k].��+[�Y�O"��Ɏ T'!�������!ɏ�O��ϕ{	%<��%񳠢�{��G��2����5G��<��~;������Ln���i��d�B0=U#s��� �v�%7v5�W�8P�I�F0��kJ��+��mW��'�!v��+$ۼ���Ԇ��qQ�����S�{��<���n:�[��|_i��w5Ͳ�?8�X�1G�
��H�� *D]�W�*.��]��
?p��[M7��+��]����L�	
��]��WP?2��~"E�N���";�dE�G=QF� v�E�Ӝ�_IV�@�h���vYF\?���P�N���Mm�6Z:=�N(��3H�n%�T[C��{��t_�)�G����l��G7��Q�k0>�����8}��.Y�C�2�,�1z@fN��͎=��$��rp2{����ְ��f
GrEp�y=`#�g��pvL��Lk�y�B�3G�jF��U�̑Ӕ	N/���%���_i���!�����P?������2��8��w:!����KUB�5�O0�9�9��a]�+�i��W�r�6$���q����ܞZ~|[�!ۘ��㜾J�1�=G�0�(�0�Wt�)��^f�r���ƣ�`!�5{�"�>J�S��}��U'E�c�^�:^ZI��2C�)�C$׷�wU��kI%�W&{zZ��šeO�}���0���Nť0�]��}���S�?����u4(�|����ne�n�|[���A�����q�t���M1�9���3���5`�Q���\�Q� =?QB��W�Y�t�i i�=��ljŦ�q�����5�	�~����|o�����Teɱ#(3k�>��_sP�v�Y��z}T"a�Oh*�x���Y��1�8m�ў`H�a�n群�Kao����Pz�ɓ�u6>�������I�>d8�
m��L��F�-���ߐw�)1�)�]�o'���0����*���pl���dmߛi9m%ͩI��1S�@յF��)�G[��������%���9���d���n��7�:��/�#PJ���� [$�7X�ak��"���ף�y�O��3�5���
m��a�a�.��+k�q��Lb����-t�G]Z��~� -���4\u{ʮ�Y�����WT�
�wF��#��p��ٔx�~��.�#7b��;�	#x��P����tnX$��u~��зG���gH>bR��W䅃�2�?/�e��	��j��^o�3�$�>���|��R�֚��,O�Z�U0�)U�i r��k+t�[��߳G��a΍F�� hQ�n��]>��-�rU��qK?vQO+3H)��    ���ӻi�Z���320Z���m��gꖝ��\ ��Y�4�c�b�w��O(ο(�y.�z�O�Zq�i��p�`h�4�'�U�Y��u�܊�aoTU��.�ėP�-�=?�p�Dm#�WJ?�倈=��o��m�&�Kj��ZP��5T�R;=V�[R*b��b��{^��@Մ��?����M��K�N���_+���*�d�{ct�nD�/c��5�i{tJ���Ⱦ��z^�@'��V��|@���;��@���V�$����ƃ�!C��e&w�B<����Ƌ�����n��u�O|J����+�����K^�.�D�-����(��7_vr�vDa�1Q�.lL���eê��@��A3�5�N���rZ�Gl��(�ى�+���xW��؟i�2�~�XS!���hײ7	һG�[�2we�tK�Z�0���&.��]�+�<��\g+�+���[�.�W��4Ss�E2rH���B:��Rm*�pﾁ�b�e��T����
�*G��w8�Fmq3���:��G8��'x�Ɏ��2��	�(�vD�.:�>F�6��`}�!��AIX/�ש݋�^���"a�X:}�<���!"����%��8+�H�#�Y1�SG|����olr���b���ު����Z�<T��4��R�O~C:dXZ��O�14TD��G��M�aL1#��97������ W��śH�8�N0�A�{��yh�S��9�Q�IR��=%K�P>P�ll�,Лv)8R�I��M��o��$i���E��}�7��˩ۿ�����/��d��]G��O���x�t�z��n�41&B�'�d��J�]�L����w�k���H+) n��'�� ��H9�Il\֎P0�D~��GAP!�m�ZQ��5=	bm^9���V�U(��.���u\\MRv��@�̻i���}�<c�4��gi `�����<��7d�7k:-�KpXQ��)S�=�u���Y�w=]� �oI��"�v����$F���n`	��f$��W��h���IF�G��b�4G���|��?E�{��{|���`�`���ҁ�~��rď�^2������1`oZXu�C�(�Y�rG�=Bvd�N�$DժO@�u�a�u�0�s����@�/�!#�;U�D7���~�����ƺ�:r
�|~���٩��ÔF����,}�������i}�e�<���4�qm���kl"�nk�����)İB!�,Į�q�Xh�� �e<� �/"���� �$]3���:,�4�����j�ݹUY�
n�b��kd�-�JJ��ތ�����A3��=4DZ��U;]?�环��{�����8���w��I$?~zR u�sjaU'}n��` �u�/ �F&�I/4,�GBdb��G,�$��=7�\ҷ��c�fv@�ü��tM�3�O6��g�G����-�Z;*����൹�����\������m��z������6�B1~�0�6�zŠ��4 ��~���9���j�b��ԓ�ϭ���}D�C��3-8O��M�Iy8ՙh�̵.��ۼ���mߏ����P�I��N���M��#$���1M��%Իd%�uNoK&��[��� �?x���غ�i�Hay^�`�K���{x��0��S	����hb�����:���V�gT�R�Db�wX'�C��ʼ�jG_fFt��-��Z�7:L�;)�ui�zm L�|%	՚��t-��Og��%�gJQ�|�.@��j�8	�FGz�!q��ǔs�.�@|�ˤ�Z����tS:��	���l�D,\�PG�[���~o�z	�X�>t�0�!y�d��JEC��ľq/��%%������e�Q4@~�T�}�˧<�r7�0�F�
�dl�0|%G8���TuuwA��حZ&)�g!p����x��{Ӿ�R����[x �][P2�f�e�r߾u��pW�<��0z���x�VG\j��n�Z�]��y��P�v��1$d����&�s5��*ˀ��E=w�Gk����%Vi�&���ob�R�!~+�h�m7�"ʬ~���0$y�VJ�Rs��Z�C~}t�RR�Y��H_p��"��n�>ۙ���:#���duq���̿���{��|T�س�y��z�c4P�(��8�$�S(DS�f�G՝<@tf�e�t��	��4[���K���y��,S/���I�P��"x]�n�N���Kb (�,�uĻ,c��]���&�mq��U����qoc����g��O�
�Em
$v6��h��� �=��ʁ��	���|��@�����1�0��������Y<����v�_�K�Y��>�v[/�	���B��NW����~�yj��yph�?������L0�Bٛ��=�~2�;��\� �4KO�ɲ�ɼ��Ċ���B\����5�"Tl��^����ִY�p�Feb"m}�����`�w2>��5A~���')�#��iL�o��w��b��Q}���q��6άưE&�"�z?�b{-S��`����K���A���~�`.>�?E�L-��Y�_wbA��m[��� ��k���&9�o���
mD����_��=5�S���7�[��by��w�F�v�#y����a�iCF�+�����)�n�^KїR�H��i��?a�]��k��1K9�`���l
�6�g�g��Ak���5z��G?d7�8��L#�X���-�IOk}�DS���y�LzbLx���}uݨ��y5���h4��&�^��� k�μ�ܑ��Y��\_�����/9+��rpD�Y�������^�+[�D��� ��@z���<��z�I�j�
�o-��*C[�~��J�oDM߰n_4=U�>=u��{&茌����S���į���	����U���=]_�ɵß�(�1�@	�D�QN�jNZ�M'�χQO$�S�������4�F��[����)�ONs}�"6É����sNh���-̀ɘ�0�\�E�I� ���3
��WJ��$�Uy�M80�>^�ڡ��K�������$�,KpqY���J�������[X�G�׊ *�yM��n\�����v}�OZP�S�N�}����~��L��z�#�-�-H{��<���lWjP��F������y� 3�F!�C��5TJ��}5_�)˲�:�S����6�u_oKAN���xą��I~��]�TZ�Y8$g�T-�8!''�Kyш�Դ��29V#���4N�ݻ� م��a�Q�b0�{w[�E%^�̟��~*�i�v���yǻ��̍~!a	"�	?&�y�i=B������FGފ��?��#�וH��a��%!4(�4�晄�g�ֽy��Q�eBم;W!�~�wk!�s��T�AJ�Cx���U�V��6u-�m6y?�;�n4,�d6Mcڍr��(�J�ǵ���Rn*�!����"�h2�h���х:;xd�����+ӎ���w���O�����7��u̘�,�_Hz��<Z�j�`:���)@iE
a��a's��;ܲ���x��_ΖT��!��P&o�?��� F3x=��Ģ,se'��'�,�5�",3�{,F#�x�ڍ����C��c�������}��	�U3l_�Eh��$a[�c����}I���*�u�����}K<���fP�y�:��q�]��2';RcD�UPA�������'�dx^��Λ���`d"��
4hӎ�b�f
+_~6�f
{[�U&�M?�Ay��U�����>�<U	Y�A;8-�ξJFA�ɐ�q��>�d��Te3��}�u~�Y����O;9�y��В���cB��Z�� ��ަ���q�Z'4Ϊ��۝Œ�sAB��
;�/���nn>m���AL���x�A�}��}/����R%��{T����~n3�V�G"�S�~Q�>e��g�������tU���F�g"�Wa���$�+A���e�!V_��8�Y�(�|T�b��"�a�#"�����Ut+�����j������s=x4��[[\�n&\�����w�oMa�G]
Ĭ�$��6s��,�d=���;��    G0Gz�7�ޑb-���h/��O���|�r�
�!�I]��B�5�DT�R�"�qL��
g^�'�*1���ڨ��Ų6��怍�ԙΈ�׈���}j���� ��H���������ض�7$��Or�N�"R����`���R��]���9Ed2���]��DZ��D%Дq^T�;��~��t��YÈz���0>�,�����5+�O}{��VȞ�,d����h_"�ԡ��ͳ���*�-3��m��.'��1($�qL������4qWD�y�Q^����A���U_7�C5Թ ��a���vB-� �t e�璠5j�MÅ�W�!���)��������8�����9�A�} &�{�qD��1|����!*E�B��Z B3Zk!>PO��$�qq��k 5|P�0����I �L%��{��.��֋\�}�
;�<b���@G^>����i���=a�VE�����k=�����r���zq{�d��&L�zA��,�n~����d+¹ݘ�p�U�g����� rn�����v����Þ��/�����t��׆��2��u��{������YS:��O����+O�b��'çWoN�7�����U`6���A_�p�j��Q�7��C-;�EYC���` ���ڵ�U���k�Ph��x�'0%~y3�M�3��e!�0��w=&9��1K���(�)�(�yR5MN��)�"�vNHɌ�������w����[X�g0B��?���'��ƫ����fz>�'��\'���>5� ��,> �d���� _��gu���h'�J��>Jc���3_ئ<yf 3�(������N�����������h�N���M�Y������&����M�T�zRKYq�1�@{����_/q�ҫudT�~��ɓp�N�,g��e%�ͭ�t���������A2�E��֚�":�ǧ3#= K���A�o���b�z�W �H���p�Ii������I��6�EaY�u`�dp;���)
���R*�-�^��"�� RR&�t��l�~[�i�w�^��»��v��������c�C�N?�[���$
���ne��7����n�����`
�8o>�>{h �b1�%�`�G���Uys��F[ܔ��[d5��J�(��2T2�J\T�<1��\���Ϛ_�� �-�&I	��DK�{t[�"�|��+j�-5�K��d_r�"o}#�Nn9F�ԇ�������0� 6�����rc���ݹ�)���;T��ޮ�U�Xm��1ފ��N�ǎ�������~��Zo�)�b���������Z�*σ]{=v�#&�����S�K�0M�K�G���2��1I���Y�N�R�U��ʉ����;�e�(�������=�����?1]��e�{�1I���U)s?���n�ٿ$��fH�������̱bj<W1͸�n���U�K���+�"��H�u�"�A�q��)��%�\�*"��+��5�v)��	1
���>���/�����7�x�1���
1��ްۣ��\Nu� �7��/���9�����ĸ3r-Ja�NT�>j�1��N����8�l䗯b��|�?�1AG�ַ+m	\��J8��-���e�N��6�Q�-j`����Ã��\�Wf#��N�R[��qq3�1�{
�Z�i���_�d�X[��p�57wN��)�zI�7�9ܻ*�4{�A4~�9if'�{�[H��x�ʲ�R�Qh����d�f��%�Ke"يt;�c"�T^�.���u��P5c��!"6�*�o�~X^H���V�KbM?�ڄ ���)L�K���E�wj�+-���KL���כ#��*A�P��Ϸ�� x���ha�^����tۊ? ����R�H�cuԤ��Ӻ}�B���N��o���4�U�҅���aFzbY:�f-Y���V�����RJ�|It������Y�U}�z%���]�2����A5��d:���ͦ��!s�e��+b�Ů�� �%�^��m�=è���� ,�����Ie��'d�|ѽ0�.|S���b�}��w^�s���-O�,�4�%���@F�t���Щ��Pפ� ���f~V�D��g,M���zH��5�4h��NCjU���v�C��@�������D#U8�d"q�~�k:�6����n�|��`�7~o��_�s�*��@?6I�ϧ(� Gq��#*�����7�1��<��jzTR���eNW㭩Nj��FO�_�[�a
�B @lO��Cs��I��$/s�_MhX���J%)��W�Ɠt^٭i_t��F=��@�w�=�j�@#���>�db��cvF_?�ˏ� p�r,gM�b��rS3L�ɺ�5S���-�N���|��l�E�s�+%�����_H��aE���-}�G��o�����e��3�(���S4��%ya� ���j
_�w8��rf��=0'v�t�l�@�Дx��{o�g����ހ�(=��ή")̙=f��_���Yo�9|"D�!�P<�Uʩ~����r�}�'*��MK�"��S�ȼaE	���qx55��$=��[B˚}��3I��w�Q�N�� eB%�h��(*Xk�o���.f 5�1[-�Ki���e�G�/	�󁙇y,��`�a\O�Bi��gϵ*)�?XZ{r��-��W����sQ$9���ގ�O��l���䇘J�7/H�j�����*�J�Ǔ�J��o_��ۿ�kW� ��6n=�>��?����f�	�/���G�D��A��J˗�]ǫ���+J۔�h��7>�i�(yL�uН�y���.�x��ɑ1�m,d���I����^d�AS�����__���H��;?�{ �8C�P u�~|(�{�_{b!V�����cKƚ(�]�.��/aWp�y�ޝ���1�2�
f>`yPt8��$&�b�ƞRL?T�e�������"���9:��o�OM��OK�>Y��C�E5?�J����>��\�H��f6\3ec��F5����_in�E	�J`ƦyDܓS��ɦwOU@8�V=��?ŋ�[�) h�*��g*���� ��	�!�Jr.�m��J�ac�6������'�tj$���J��N�˃�_j1m�!����k��"�ׇG����5]�9�{�htV��������49U�>2)���7"���:�� [η��K��@o=>���d�}��!#Ea_�R'�0��(��ж����JU�ɿ�`���O����m�4�x��\�d�cs۝�����m�HW�ݗ��r
B��h(���NDژ�3 �D}�I��\�O�o�<�Y�W/_�a�4S�ѓN"�A+0z�(y����rvݬ1_,���*�;%>�<�A4��]_7���.W���u3�(�������n�Aê��F����tF$��bM�y�V^1�f�[A���_�>h���:�n�;t�N���>�h����/�p?$�00J8ſO;�RnҎN�Q���3Sv������HOt*5�Hi��E����V�t�W� f���5/�&�h��I��n葵+�/�l��c&yVd��4&R~���?�j�Ŗ�`����@�^8��L��>k �R�T���q��'^�@7��}�~�P�?�"����¸:�U��:J�$y?o���� ,	���%��^�K��\y���x�����gBt�7HO��`DoH��_���C�U��!з�Nq
ꌆEs��' r��c��n�<�����/�t=��2]��P,��D���^]6-�.c��E�I��C���������a6���I��dү��ǆ�N���t'=�m�Oc��V��$��*Σ��,�L�8U��\��� ȥ�4Qf�5�?�ب�=�����Gu��M�P�>�&h�(�b㾨$�Zo/_}ɼ�,����I�C�|�|y��Ը:��8}�o/=o���^���,o������!s1�F�ly8*����y�Q�׊T������n=���A���FA��m��?��1�{ᷜS�3w��˫���8�n ��p��`��5������ʲ\]��̢�@k>��_�F���4�)��̩�>    �.���s�4�c���	*�����`�F���$�j��$�7��q^��X��\���l��� ��(Zn������\|�����kQ�[9ӏȿ�����N�9�U��+e�ǚ�I�k^�����g�:��$L���죷Zd.��w�T3A0Ӣ?5O�erD����#&�jO���䴼�.��&�d���͙U�F�H���q���;� >2Ms�#��r�#=�O"��_bЏ:� �H�M�ǌ7���m5,y���d�����Ώ���M+K�m�`zW�R�t"D-�� ���:��o��Yd�K?�hE$^z��pě�k�t9<���dL'�뺅��� oy��'����'���{�΅4�%|$2�t�_���L��^�=R�¬��ӇJ4�U=<����7� `�Ȣ[�|������������h��ܲ�C$�ԭ(%�'��<.�d����&�Z�@H���J�篹e��L����M��)����(�'�#䰎0h3�*-�L<��k"�Q<�!�83�;�� ��6�Y��G*�(�g2�f���w�y��w�}�����<B�7:�Z��3��Y�P��I�fO�M��bP�S{��b�ctJ��|�$M@��@��?p!/�|��iP~��$�� ,e����{���D_�Q�,��m6��\/ڜ+z>9N�kD�`�z����C�d4X�^��	�P�d,7�:l8��
+pB�����Pv�f�?��tm5_�AV@k��n��B���k䕇�l�!ʃ�	n5E�k�0��.}�+�����s�J}��4��%���X'T����^so�޴ϻ��F�X4U�AWK�);���'�o*?ՁЯ�������N�O��>�@���IC�k�x��_�U"�n{$f���m<�~�V�6BX����rNǛ��3�� ��\,�����t2v�Ąs�<{9���?H·��ʨ?��Ѥ��&���7��"8��p�����s(FWZ:>]F���~�I����Y���EK�|��Q��	��t;�T�l��Y(PyNwz�%36�=���M�\�������p5�w�P�o�}����� �p4|]^�͂��Ee*�rN0C$��>>=hޠ6�4É?lٲ��F�Ev��L� }&܆��a�&�uvݻZӴ�JMq��o������-�h�olr�0�Y`���_���.	R�A���h����=q[�2�o(�	�Wcʫ��E��4Hi��B���wF8�����x�P�T�ga1�xM��xb)���׏��ީP�?�	a����_f�7W��P�+�o4�T�ro=��2�M`8�߬ǐ� EƷ�k��\�I�c0�0n�y�?l#��|(V)�l¤��tK�n���h��In���xh�Yo|��D�uU*`^i�J�]���\]�z|p�"-����dE7~>8��
@v_�0��b_
5���ю����j"m���G�5���GЧ��P��n�����/(�\z�=��y���jΦ��5w����W�V���`�$�a@ّ���D̀f����Z�m�3y,��C|��y^8�R��P��K�*�`p��=�r��Ӧ�J�ڳ��q�皉
��Q�$��I[�� vElTil��d���{>�!��̣�����sN���%Q�e;�Zك��d{�I�+;�(7��⓲=��X��o����C���7��ҿ�4������F�9}~�=�u�=iɰ~���.����n7�]��b��[!�2�ꢩ`ǩs ���n���*�-�(�~����'o�k������UMa�mai!~;ȇ��Ef7�dLn�ֻ��)�=E��,�/?��kQ O���e��/�ix-@I����aS\��TO�j����$LZ�W��ݣ@M[Tdk�ȑfE�n����K:��t��u"�;�;�r�9�LT_�|O�-W�}�����="�O�9�T1a���,:hZuw�k�H��~͙�S@�Ky�W]=[R5@�?ǒ[#�7�K,�w�tٿ:yF�W.��G�lUL�	&�w�Na5�޾�<+�ϩ��ӋU�M�rT�m�ŒZ�:��O��9��l��ܛFc(�/��x�`m�:\"#�V�9� S%��"�Nv�'Bt�$�l�_hV��;�Y��W��5#O�=��j�#ŋ5�ۙ��a�bѧ<]帤��GP��MxI`kӐ��KI�ذ�L�O�i�%$]�Q1��RO98�u�N��w�(�iXהyMF�fj��8D�IR}c����Z���iv.�:�G�~4-��f���*�О�9I��t��-i`t���J�u1<��ku�z��<g�D��OfE�nt"�g�z��"p��P�
�F�pb"���Ĩ�hB2�]���p�>8�E�٦�.��X��}Ǔ]�>�c�<86��ǽ��Q��E�jˋi`2{]��:�S��Kk�����dy��1��t��[�� �ZB���e3�x]�n�F^���|w���fڙ?��!��Q6U��O��GC�1*�T潏��Qlꁴ�N�g��M,E���v4y ����2^ŽU`N�u��ۀ!�鬉d�ɁB�$�!2��/i���Sޛ���~���r��e�!�/���ڂ���4*��biFyɠ�Y$U%����KE��b�U�B :3)���R��ݰ���/F�#<^~� ��Qr:Q�Hᙝ%bL<��~�=Y����@�7fb�ז\0U�$~|�ة�xc@X�Sa��k���,��J��LH���e��5�����G�o9^�X����� ��J�.0OֺA"�f&V���D� �3
G�0���֌N�r���R��YvT�N�>Ǐ弄�>&�>U.b-	>�Q^?̶����6I�7��6o�9?�k6��.��>G��mS���.$��m�y$�:�A�M<SÀ����O��0\�� ZˇJ�����Я!��m;�P3f��w�5��]^���#�ф���[��[\��`݁���?P����1�N������Q�%�gJ]��g�s�޵=�Wr�����
�8�T�h�L~j��
�E�xt.I�A�!4�P���Yևy���5�n;�d/5���f�Gw^����B5�_T���U��*���6Gm�.2���ԗ���#FZ�����>:бr`:2'��������ؗ�ߝ��,>���W*~Ѩ�x�	^�?{u�?V��bTy:P/���N�S�'�����ą�-f�]R�M�nY*����t~5%���hKTt�n�`a�ĸbÂ��=U� IU�^������#�uЙu��`n�|��V�U�(rt��� 	�n۳��w���w��Uc�X��16?�B��y����{���9�$_�cʗ�ف7������+ډ�����h�X���t@��f��;7�e'It������~�|��Q	%A@������6m��X�7pn��	Y4(��l9�|���ԉ}���)� ��E���Շ�l������ M]N|DY��Ғts��>�sU�>�b��'�lh��Fy��J=(@������ō�kAH$,�?^�����LO�fމу��|I���"ږJ�}�zT�^-���Rc�c�1���<��Hn��:m9�C�b�)�t�D�O��x`z�;[��p�� �鳨�G��i� c�^�)�_��&\�u�~K��d�K��1x���e��_�|["c��=7{po����}�,�3�Z��_��U�I>��vu6"���A\�AY�&�>�s��K�u7�)��޴椾eѶӃX�����0�?���;�XCxO&�a���#]`�Tyw~�
�\�t�ƬО��U�A�G�v�%oJ7Be�7KBӛx��"*��A��o���h��Ym��[z�g1�{KI�N���3�Ғ$U�r���*8̏�%���4x@���'3��M�m�Oھ����E�7�>��b�χ-��X\��P*�XD�l|���!���x�k|t����M��<�A%!����*����I6DY�c��(�Ix    �<^dZ�:�'�mdz�]T)}͟C�������#M�d�_�E��Ì�)9�t�A:�����yC��kĶ ��^�&M/�<��n��NzݸBǀ 󖱘'4�9>#�����/	(���ŷq��?������<�i�2��8H������eHE����0�^�5^�/��%��Bt`G�D_��D@��KbSz#Ea0��y&o�Ɛ�VӖ(�|bWh�VW3o�< 1v�
�Y�7���}W^l���Q��p���|���a�d��6ȍ^��1���#2"�@��Á��Ͽ�7gD�F}߳�o-P0�d��p���ޥ�,\[�w�鯿k�]�l�b�l�9���r'��eø ���B`�f�$|�E����f[d=�����h�l�PS��g���c�#ͼ�o`v�[����`Cbo�- �X�;�H��t�ގR�!��?�FZ��Tڢԧ��󥐬:=�%��<ݭzI�����h��?�m&s��h�v��U��j}���s��^��+�����-���+�1�:|䇉�Z'�＆)���;��e�I\���#��[��B'u;k��K	i����g�ַ��$[����(��[�c�0���>(sC�W��r�j^y(9mm!�g��hP��p�!�`�J��?�Hz|�_�Ş��V3��*<��t�]5��Ձ�0��FfP�9��w��'�F]l�qF7�⃍J��
�����wfCd���b�.0�ٔ/��|��΀�S�r�����_j]{����O&���G��o/��~ya��:����3E��ǋWK)�?1�2|��:B�޿���
]�=0�F/_��+G��.���(�a����0`,"2�F���[hk�o��Àh	r�$�@�˘q���5��RqoD������,g4�+�߈rU7�J��3{���I9N ���^���rR�[���ٌ x7�T�T�y�:�B�;�^RJd�f)'D3�p���=̐F� 0�iz��H�ά�b.BQ�����}�o�Yٽ�#�PB��N�Y	ɖ�U���|��DXj�[J�<� ����+�v�qu���Bt?����i>�����<f)�c<,���h~�	9.Z�`,�u~� ��Q���Yթ����A�3�����2{D4��~��Xt��@�2r��Zuo۪ؼ� �r�E�F���(;qÃ��h�1A��.h�Ps���ɛ�(,�n�ӡ�7���i�.�q��!O қ+Jo������qx�_��ֽ���н�I�N�9e�F���ֵ � Y.�.8P�q.U�@2��G��.�X����C=�?Y~A?~�d4~�y����,%�!�/��x ��/w�������44�+8�� �L����l�T/��-ܕ��
ʆ/�.&Rz�V"l�Y_�0 V	�M��c���"�cV �9Z��cdY��|d�S�,S�ܿ�B�߳�*�a��+{|���(����G`�Z���Z}䏭3�f^'���[M��\*��ׇ�޿4Us�-7�\�/�T���9l�����%/��w>_�X����λ?�u�{�%���oq@ծ]R�����^h�n>��[���A[а�/�W�־2�4��So� q�1A>���s�|�A�3���p����P�sn�{/�L]ٹ7k>�jy��杕�L��.�Ɵ�Yb�q������!�onȋ���FI	޼��
�M��;L���=�-�q�|������A��f���fq�9��D><b]�`rq�~y�j1��e\�u�gO��]����	�נ�kG�DD�K�P�%>p�Q:���I�1��������Ĝ*ʜ��e;�<�/��)Q�������#�ð+�f��Pt���� ����Ǿ���I�lg���#���)�f���+���MS(�3��y �����)�E�9������k*��
�p4���L����2z����F.� �w�������p���c�|�@��C��ö�^���ȸ:�Bl#;V�57붚t6�wI�N&� ��!�+����Bt�h̼#q��{ǋ��K@
_z���'����4]?r4��m�Zo2IEM9��*�IQ���>^�V����ܼ\�ܯ� L�95Y���_E�%�.�L�Z�]�E/��c�5�\c�_ڨs�Å��k�s��vC�Y
Oӹ�j��.D���e���7e�5��ˉ`����G[:��;v�Sa*� �5Nx8f�(ʻ����l���9�u�I5*&�[H�e��h�*Mm��<���`C��䨵;J�H^f���&�+��K���I��vn�tiO��jP�4��A�f�|�O�>�����j\��6E@�x>�A�n����N������ؿ�ܳb~��{����}�Q����΂~:Gx����PK7��P�R�RU{v x��S�;0���}9����vE�f��{��<?��_��"7�����7�~���<�ǔ�6����5�ĕn2�k�/HK���T7N�[f%�Q�R�k9�[��#q�>�歛8l\N�J��W�wm�p���[	�\��1��m�p��4ߝ�hd�1q��,�7a�ͽ��j��׬(����^��{�_8�崙�l<v���
��b��7�u�߭�D�K�w������}�=���z-�;-���ڇ:��!��#|��7���)�ptw���r,�.?�A������h�ƅ�y�oXw���� �X�W?����(q�}\�M�G�nΊ0���BF�"�/�c����q���n�д��5�p���������J�h"�K�R��=@4�9q�r�9ѧ��ڒ����S��s��F��|���i�����VQ��
��zs.��Y���^���_Ɯ�	P�}����Ƚȯ]Kd�f�o�d9����� y�6���
H&oz����=��'*g�娽���Wp��G��V ��� 2G͓����GH9��,�9Lq4�4b��-��o�	�-�梠���dk�:֛)�_����|(ɓ��*�/�1��$�ç_��wO��g.wg1ݑ��^,�����ur��k�Y�Lz#U�$S���t�_D�o����T=e���O�뢕/kI;�=	���
ŧ`����8�S�s��~tr�K�2E[���Pz�`Ru`c��� @^u��NF=��/m�s�m��R��n��@�6��G�wVg)��
��n��XS� :�^�BM4�u��j���^�������e��wȯq4�>�`����'�cwצ9������W�e�2�C4���	R��;�r�'u���~�
��Q4*��jb��G���%�/�2�c���2�I�,������e��~���8�@�lV�s�׸1s��6ϭV�{B�3������JIs���C�T=��H��H\�s��߬Dޓn��Lɋ�	������a^�{G�{k?��v����ۑ�-��;6]Fyg�.��l�u��}���\��ʹ�h����	g���6�1`�zSBPn|с�	u���cu�>V�=B��H�����b�W=�Uh�ջ᷐#ӐC�qި�.�{{�A�.4�2���wޞ�V8έ�2=�vTk�BT�6S)lՀR<Fq�I��j�l���ʅʹ^`���
����� ��:��/*��� =���;��e���*���3���pUr�+��ݹ��3�B(��YUZl�]����i������n}%�Un��0P�tZ���z�D�e2����V��'��7j|���ԽfB���gr�(-c�����-)t9�*�{�c��wR��RGz�U��r�%3$�(Q����*�z,�&��������	x�]��A�Ƒ�#�G�>�ĉl��~�h��M�,"�@�8��.��DKI)i�����N�-���Ӻ�Wʋs���8���c��"����)Ϋk�����S��Ғ�^��`��7�E3�$8/�Q��������t��Ii:�+�i�X@���� Q�֓G2~U`�ۖ���#袡������7j-@1��}o���݅o�uz�C��9�����\� Z?푗��n    \n�r�˨_�Ɏ�{�j(-�g���������%�@��4T�R� �e˳��,�T��R�Q��f�X6�u�����#����{��T�	�s�a\Ԭ����7n���nc�l�ٲ�T#���]��%�zӃ\���dg�!�����g���΍�/��!�%��(�,�M{ ����ύ���H��Y�)D/�
�'�L�Tn��7��
�w������ E�*����`�4���t���O����FH����Q�Z>h�4Z�?�惲��u���7s�#�jĂ�����j@Q��f���q�yg�I�yj� Eu+ڨH����^V�+��mTW�v9h��}���s����IW�r�<o������T��_�>u�����go�w?�nۮ�ʷ����>|�H�������n�����_t���k��$�/t}�!X�*�3��.�A҆�H�j��q'�|з����I?Sk}ƑP�Bdе�Q�n���"T��'������]�/N��lk6y����.`�b�˛�hv��?
#�E:�Z�� 5����MaY�b�P)�m ��U	�<�&�N)Y���
� @���,�#��.��l]��gs8�#s��������-~��Ytd�YP����BV��A(����5M�U胥���mOiL/)�Y%݊[��Kc��I���!1X�O�[���?�bx����N�_���1[`S��llX���]�#�ޙ�yayV*�m	���ߖ�?v7=�h�Ե�H��AS�$rP�{�sS^_K�U���~�!�f1uMgr�l�z�1�m<YE�� !�b��w�G�����^+"�bP$^��[<rύ!�堛���O#Xek� ���:p�\��Tz~,�Ҿ���!�K��W�6:�]�pys��b/X(��#�������8F9ڷ��fs��L�?��ڏrO1E�z�Q�	��yR���h������(�9�^�P8��`�ڟl�X�q@��&���3'e��,�*�ý�1s��̒��<�7���[��wOtṉ1��o�VC�D�c��)>�Z�S\�9LtiUx�m�b$2�c�{�R���q�aE> ��!�:�*J���*�_��T��^�Y�i�e�LR곖�Tø%a�~�IHtb�~c��W�{�<͈u�L�;(�^�rq�:2��]z��qP_Q�O�e%�J�Օ�������;���=M�yMt-���h��|�n݈L$��Vq{�4	/�ۤ ^5�̩:w�=��w�kO���&s>\҃82I��A&���Z���$�D0b&�Q+���OYV~jb�C��'� ����)�4u�6�TY��,����`r����"Ǆ-ɠ�C��e?,��l�M�4��_�.��]c%�.޸K};��{(����F���<�����IE��tC�~\��ō~Q�����^��z3A4��X����jL8��'w+�v�I��	r�Z��8��]R��G�����L~kRM/�C�~'Ѹ�O� ֥��kpt�����w���f���<X�`5U'�L�~��@�߰e�km	�G�(�vv����h�� X����v~�-���E�cQE,Lۥ̧��k���u1ĞM@�6�Ê�����K!�E-_��>o�9�ݔ$4�?ޛ_���~�Ҹ�� !A�&p��7�;W�'��F��qsZ����a�m�U������G��-L��o���Hݍs����fg�x��mdOE�_��I���G@(T W�R�P�mHX�b�3�ڱ�P"�>��RܺbhA��:�&��K�/��!Y0�5`��
H�9��_}�ZHT�~�I>ݶu�7�����y�3�����~^鮔�v��ؙ��!�ҩ;0uҬ������#u�5�sхMz�n�w,�?#��q�/S0~j�L
�*y7�)&��Uѷ���XS�W������>�d����^�� �*�C�Y�z%�h7j�>�?��v�j^�kh��*�OF�����ҝ;����X��w���MVW�H�|jUOս*��-���p.��iI/1:^��X���S/(1�"�+l�!T�M��T�N��{��q�B���EdI� \a(qԬ�,��X��N�2�뤚Գ�]��)5u���7�o�lK��2JJ
@6/4�[L��6X�����h��L��r���KW���PkN�W=Qi�����E�3�A�%)B�N�	��{���j,�ֿ.����)��l��)�p0v���+k+�{�
��\+w^���G��4 ]��O~W���茝w��(!�`�����W�Fǂ����9�/�����n�_��l�oy�!,�[�$�С���A��2���}9z6_ � '��q�plj�u���@��^/;���yQ'��ṏ����>����e��ϧ�k��+��9�?�ۗD����W�n�A����u\u�\�i��=G�h���y^�/yyqᅿ�'M������������Ж>#t�׷Q��r��D�V^����T�;؉4��u˭rK~ �!9��aF9g����n�U��%�w�Z���ԁ;~������L�<e���UX�kv�M-�;�I�W��ϧw�L�.x %C�+S� P��&c��E�]�33U�P�p[� g>�����������L��eXsx���3�����h���-�t7D;��Zp�,���������v�瓙��Q�vD�/��N��f�H�}�r�ؗsb�8��%}rL������T_-E캥.o�?�������h�'�q�!R��:�_��DG����ቛO���ļ��u�%�^�)=j�ˀEĐ�pXS�
�ij����1��e߬��c�
8�&![z�#H ����=�x��8a�4Tu|ʒ~b_��e���P�����i�j�N+�
H�
@4��ԑ�s���Ȏ����Z��[�{�4H�h�3_���c�G���2�eс��[���>[Ǫ}lȩ�;E$��������+��.��S>@�����Y��jǝ��7��#v�dܑ��r��0������=����`��� ����[/5߸��3a��T��MBQ���ү�5�n�������Ԍ���]7�w�v�'9M���Y�#�������gO���/�?*fy�]�P����o��n�tY�{���$�Q%0L�\�[��zKdg��ҢO��� ���⒄y ]�f9ʴ#
�����6a�!0��k���Gt�������f�y������P�}�d_�n���0�Ft���T4�GQ�(��e!�"��u��<ֳ@N��P����"�#�Y�F��U;����+RYy�vdtK��s�(���⟎
��!:����1�H!�ߡ���I����Pձ�WX����D��<g̢�#� ;���k��$��5��B�cb�{ș�ld��=�f���ࡁh$hoF�Cd����ъ��/�'C��Jd�s����x��I��B!�.�Y�۵!jA����+��Q�;~t��|0�#O0��Q��z���x��߇�G[i�������~�G� i����VL�,U����5�$;-�=��G+� ����v���4'g�ӈ�<9��0��c�������<�{A���$�[��X����%䲼+f@�7�=�d@�b�s�-��k�D�=�R�$JK�ݿ��y�T�*�@�H����r�H�4z����޳��	o��;f��j�ac�6��!�#��̍��l�eR7��#�B��^l�`lo
9[�b��`� ���!�4��L���r�t��w,`C ƛ��-pH�N���do�A&�Ӽ6[�%�`$�Q+r̃�&젌W;�:�O��:o칿{�3$���ِ����RN'��O*M�e�%5���.0q8���}V�.E�P3��)F�˴��<��(=�����c`��Y?�Z���JRf&-S��
�_��C3�|n_Zi�I>�,�g�8ȟ�0-��k�9�R�՜��)+�,��/ok*�Ě��g�z#�����3�eQ��p�ޮ�\����k>U���g��:��^��X��{�@:�n����i ���������|7ȑ�!e�g�`'k�r^&=�E��M�    ��e�������3����KR�=��d��	r;�.��.[�v�"���G �T�V�D�/P��8ۼ2AP�:��;G�!�!��e�o�Em�6�	��Ի�@�R���-ц�r�I�Ρ
�/k9�{����u E�&�����_��*gRw"(���B5ߟ���ޠ�k�� -pea�"S�z���u�C�������p���=�k�_&dN�kk��BW��y����^�s]��ߤ}"��P�*��Α���r'�Z�)e����������r[Cc9��Q����ӊ��/6�A�kH�u?�zw6�/ϋznWC+�3��R��Ng.���
�lR�qkYD������� -�SE��7���!�4�����(�i2���j����KQƜs�L���a����Ľ[n�|61��H�dYk�o/Mh|`�l������5[�%4���M`_J7���j̇^�)1l%U#�AŚ������J����!V����E�3�sH��*�����r��c��)tN�%�}|�7�~��?߁�ʷ�Y��<5�$<��BB#$�F���d�@E=~p]������-C�������S�*���OU;3�X*�/�q����-�R���^;��V5_���y���/#&�17�o-��E����K��ғ����:��
�k���U�%��~���1]R�����x/0��|�����>���bì#�❝������F��㯿*s���\�P2Řo�*��S�,��VK;����b��U�0s�g
�N6FjD¿��S,��)f[�f�O,��|n�&��li`��~�{K����En��p�)����������v��G��c#f]�� -#�[v�����a���<J����W�/��`��;���7z�ҵ��᭲o~<^���0 �l�az�J0��_.xe�l�MH�6�11t��yDr����5>+V���7oY�Z7��#��l��;ׯGz_�h>ʺ8�Iob����DYk$�q��d�0�����P���#[Of�?��
|���o0.��j3+gF҃�O��3Y�I/��z�_��Jx1��yE���M>w��S��<�k��vscۏ,��1��Qg��{�ǇK��}4L_�Ӿ���i
{߿ɐS�+�:�aūT����AFhhxȖ���i���{� �f_��<?䛅�5����b�\�ui�7x�s/�C^Y�B�[��G�`9&��*�Q~�Yہ�%0��x�Ÿ/���ʹnZY'�n�[M��Es�ɑh�B��=��K<����X�����;�9��SJ$e�z�mG�)?�)0���ޅCvtk-��]$�R��;�}2gS�7wu�6'S�
(amg��B/�Ə��֜���)�g!�
q��I6�
q]�}9��x�6BU�_�7�P�e�	��7��X^~�u�y�Ј����o�͋���H�]��vymmD�z�pw�kQ���Qγ�~q�)�?)4eVyb�RS����Q��N3Ⴉl�;;ᾪh4]l�~S[���Ay�N,m-tWA,���&�$y
=��U�^y��z�+�'�5y3Uc��*%��]x8��O�����a�BW�x�c���l��?��N����  Ť��q��w��5� �)Y�}o����/#��H�T�w���t��t{gY~����t&�@����J~��<�!|�n�hmB���ߨ�~�ܷ�,��ҫ;�LP� #��Ɛ;�S5S�+�;o.���.����O�.���ɩ�C}�v�$#�.�r�;EP���0�c��
��FMm)�4��r�A���W+�E����F��k��e�[������B�P<c�װ�����oHV��V�O%�׸JtK=�P�ZT�� ���ͯ�x�I��<���5���'�5l�[�����|���E}��z���4y\)?	�x�ga(���Ut�9���N>T���~^EMR(�`�V?�0A!Qߛ������K5%[H1񝑿�cY�wʬ����h1�Z^�jv����mLi_n���_�d����%#�$���r�m���j�ZEj���"㖡�2bR��k;䈷��ېſ�RG�O�����,������s�Vz�9%v��3Oj�c�%d�Gq�ɣ�a���24W�>��:��ԙk�����P�����)�h�-"{H���-�c�n�K�k��Ę��D�*����6f6���i����㤊Y�2���M>�qN�hZ�p\��H4���J<խ|aZ+�1`�c۷����^��	�~�^rXɮ��˳2/[z6�xD�_����n�P�;[�y���2]l��4Aĸ������1	Z|��4���A^!�1΅%�Uצ|��;E��
���;��=�U�b�׷��	��!ӹ�\ >�G����e�}(�f_( �i�_��!kJ����Ǭ㲕��{��e6S�7�u$ц_������ 
 �0�I}��f��m�D��tFO����w�9�@���M3��$�8]L'��N�rf�"9gaC�[������,s9 g!���͘��/��� �~,g;�He<-��7�6��5����J��Кθv~�����;c��y���/r��(U)�|v �	�!���I�Hk�p4�&F:�7�e#��� )�I���秎S��˗�\���k�x���е���}dKw]�O:n�ʇ��,�@�ku�������R��w������FFzO��`vt6v��sF�77D_EI��OY͏�P� ����l���_'����e��CB��t/Yֲ�ma��h�zs���HgR:`j#�Iδ�y�c3�4k�����/��bq�R��]�*��W��7��g���3d��aY���ͦT��˾�uΕ�4m�n�����>��Z���o�^��9��9��!��O$}��H��=g!�a΁u9�O�2t:���F�AW�M����=)Kڥ���7F,�&�_�0����0�z�\}k�q|�o��n���O�I�[�׾~l?����n�� ��������]`g̊��x��	{��z{)����t��Eݾ��+�c�}Uz;h���j����K����%}V�/��Q[�h������G0N�K�O�,��}��g$��y��mOO��>�E
ۿђ'�V4��=B�K��OJ1
Hg���L��[��N�u��i�}ͤq�[`�T#L�����C���:x����k:�XZ�&��i�Z�~��:<�G(�1��;]���, S����P��ol��t���c@PUl����s#`�I<k�9u����������a{�M�����A��)�����#|���֥����	���k_Q����/w����Uq��'�s!/ ǣZ�7$r�\�w�%�į��Z�;
�_�
�rD��G	�A<�ч�M8`�Il�K�輳%G:A�h�z�]��)*3���Rw�c��6�(��Ǟw�3��Y�b��t� �a����)�������w!��G_�2|/�O'U�UN�I�4����ǰ���o��s�:��������������P���e�j������[�ڧ�T��X����E�e�f�Y�g&V�e�vL?Pk�{�z���+ץ��_��w�㐥uH$�4:��@sS�y�([�0�>�'�K�P��!�� dy�4O����X9-�����y���7Eş7�{�i}u1��v�W���-��-�<[�q{� ���"@��E�/34�U -��K�ߣ����wѰ�a��y�sb)u���M���d����zSRsCS�CT�����xS��g�Y_���,|��ʡ�W��j(l"T�	%u�}��w�E�-���k�}���")�=���K�Y5i���P��۠TӰ(��vx{�Ȕ�?|�H<�P���w��iG�ҘV8/Eu;5�.�|� �g�.v�1�Tt+X]����Y$)�R�ًE�p����oBbv������T�9��Kl�{�+3R����&������	�ۑ��jƑ2/
<�2gDD�&����>8��]:>�X���Xׯ��ɤ_�h�WX�$C��)�ꜧ� 4�5�o؉m�m�E����L�*Yn��ōR�:�v�{���{A\�/��˽��22    � ���c�"fc�?�i��T~ز %���P��ey!~)�<�g��6 '���co�ƮU�w�X@Ȳ��')�]=e3�Y�������v*�@���j$MwQx�(�u}%����Wx�񓽩O<Z�%_[�3][K�ZѾa�H��3��£{C�<A���o}��E$]Ծ��Q��d�bX�#w�i��!g���/KgK�g�婮z�3��t&���6�aN���A���:�1e���rγUƕ�SbQ,՞���c����Q�V���&�,K��~��k�_�"�����a�����/K���5!H}��J�Iv�cy�S�3�M�h��﮹^3&":M�?�m�x�o�X�����B��,�t��
Fљ0�^�ø7�Ϣj�G���Ĭw�"mS[�t��h��RI~�R9D�˃C�6� ���V��^htPCI�~������2��N�j*c2�`�?�lv}2�* �.Q�Ƃ�=I^ �D�+�T��D�旧ׂ\n�����	���(8;h��^��H�\�S�b~���n�U�h��Z��j�*���9�ʘ�����o��r
�:J�E`_h�·��" p��>��(����_�z�o�aq]8h���'wϹ�b��:>j����"����W��|��i�/�F��|,n8uWھ�W��t�,M�`?LwL� �Ů�
�����
�P�����/�d!3}�sS���1a�F���.iv�zܷ=5m|-�׍�=T�%p�ӤD���,X��5���;�1&S�Z����]�R��V3� Uk��u��1_�� _��jH���K8:=��~[v�&A������tK�o?]�������ye��/��(��2�OK����!�������;>�Y� D��|w�#��z�\��u�I��۹��D�������
�|[M�13$���_� ��(�L@��>��K�H�3dfg!��3!6N/���}��
��0.#�-
a[���jI?�q�F�mKaG��������vk� �S�i��8	4`�q���=e՝�Z8�dtǫ3�R��JE��������2V�=���C~w����x=Fر}Y�Y��:��l<�92��85��	�%��{?!����h�����3�ol�7�������Uu9��z���_�E��[V��5��������e3Y�=�W�Ӕ{Nf�C�#� ��L������e�Q�׎M BćH�Z�:�ִ��Z�m)�Q*x2B�>@[�|��[��	�I_H��e�~>IT~k��I��᛻�/��bF�,��ӵ�V���W+;DB��;-�^`�z;
��M}�}�O����}�a��T*�|y��D��-�X�^oٟ^�P�[4פw��9I:�G�w������޳0eʘn?��h�R�fu~������+���H����w�������	o���u��n&��R��M��ժ����w��o|>��^XNP�?�e-�� ��u�����8שQ-���=/�6�#�e�~8h�}�@��z�.ᅄ���V:
.t��|�W��~RcF�~��z�8�ׁ��QBM���R��e�k�#M���u+F�b8��o��:��E;�i>8?�}\����05لoψG+Os[��^1_GJiȠƻb�[ޜ9�Sk�T
���y~�X�s9������[� �vT1�������n��z·�w'�j�{��>:�W��#&VV��4��8��u��lx�$��sdgGsj�#T?�&2���>k�uA)�zje*H��A�^M�L�����y�O�R�d�8�?�˟Dݠ��o:�YZBpq����vo1,��*�j��� ��*�Z�g���ވ�:B���|�y�V|e�����z�����x������	��K��y�v�Wmm~��4]e˪�U�[���Md�6�'0lH����=�3*���:��`�=]�s���˾�.q�*(��ɊM�h�K�$"��ҵ�O����R����gw+��>�F>z���Sɣ��u�C�t|��c"^up�o"���┕�*�=�e��p�1� ^7�Km����`&J�~�c�e�U��B�1��j2ձ��*�=	��6#�����f[�Z}�Vn�p��@p4\E�5 �C)2��~A+�L����s��;�$�v���n+Q�K_�{q����|*��{��,��V��f�N�ͅ�����3��aE���KTj��(�R�G��2w��ͥ�F�����)*��c��E�ܙ� ��}�Yn�K��ʶtM���IL_�Xܧ�'��fcr�.i���'����g,�5�CZµ�0v��w���E��ǚ��~�T_i���S���9���_�
t�����~���Ź��B¥�
�r�MO�?)&|ʡlX;P�����0�������՗��ϓ~�wW����͑��CEiU�):��ͤls���_CbL��U]9�)�2���١����^͙o�D�ܣKd��iQM�t�*����u�Yf����(�� X�ӄ;�z��,h�᣼Kr,���Qe�)��ua�"�;o�t�0�.5U�`&�R
�'\�-�CT��f�$^D4���|�Y�j��C�`��T���E��¥��m�#���1��b0Fڀ��2TIHu�a�uE~���~)yf����S&��q�)V؁�c�[C��{7Ų��*&"����7+��=Տ�4-"��q�m�r�E!����ۏL�d��m�(�^����m!��<lx���fhkX��w��P����?h��M.�͹ǈg��' L���[<a�t�ڙ�V"Rk�'�y�<9��o볍}�ez]���	nM#��=�w�i�-n�a���@�^\}�@�h�HD�f�R���'�����mt��6'���X��ӱ���4�0&C���sNC�	�ak�o�=�d������+�n�^���U��Y����ֆ����X"�	���,�s=v� u�'�4�i���������0s��3��AK�*O��±�rg���m?��uL�{�(��aY|}w�'�3�������L�K|;.)󥮭�"e&lb��TTya�p�����N�AX�V�ww�b�´�o�Ú�ɺ�9��`E	�S�N�w��K�W��%}���5\ƓS�����r�,+$��7�߭�9�a�V�9(T�z���0k~ae�!�!"6t�>Mx��]�+xM� L�i;pN�b���Y+���P�]�EF��bJ�
�2շ�����w��g�_we�̼�Y��S�OD�����M��{J�l5�Z�sbq���ȕR�6bT�R)a�ʋp�ABWKZ���$�=E�E%�֝���K��]��v�"�j�v�,��@�BMD���d�����uX�9�Ύ���|�j��J�@y����z]����ik���i9�X���Z���5߱�R���sXh��myn��>/�(��H�?����[m`��ν��L͗D<�V�p��$~߬ϭq�i�����:�φ�$�������v���=#c�8�<AVoӏUz	�ȸц��؜��U���)z���n8:�'�CT�=�qS<�֚������<Tˈ��������hnK7�[Uݻ-�DB��S&�6x=��9�|Lh������G�b�3�4P�� �0c={ ��W�bl���Au�X
ˍ�_T�F$1�~@�m���o����f$���tlp�����eY6�0��K�z�e�������?�F�@ǐ�#�z�r�� q;�s����>��պ ��jR�J�4�6�����+�T�����՝Y*Z�u#_ya��]�~�pq����T^����㯢���������ݬ����~+H�+���Y'�S���yT��qT�T��Ϲ���j���\����=��D �q M�S) �08�B2&d϶�/�e�@Dղ�\)�{
9UM��� �[T��\�)�|6��}�1��}�������#�TK`��~�k�}<��I�#�����O.cS�*$�s�r��o,#��k1">��-�9�mۿ�)AM÷���/�n�W��CaD	��r�#�|J��R��(we�nr~��K�j�+���舼z�ȵp�1B������OX~9�    ��A���a���c���4^aJ��\�,���]��ź�CX��݉ц�����>���(��IQ�Ua6���\t�>Co�D{dґ�Swޫ�+��z'F�����{�r��i^;$��g�/I_P���Ϯ3om����9�lJU�~C0���z-s-y�k��i���SY�"~x���&����.o8��n��_�͜xQ\e �H�W���G�CS�-������۪Tl��|�5�(�nZ��7�����1GXlN0ȊUN�Zƾe=i�	�&u�T8�RnK;u����۳�p�>�)���ː��G�b��5I�	�n�wj�A~�j�a�^��:rܝ�.]ߟ��-����nodv�:�ej �k���|+��]�ZouShI#膷V��t<Wp��~��?gk��(��(���|�KDS�T�nKJ�Ȟ���Nn��ӏh�1Ό���l����gؽ����Ə�:k�4 ��#��U�/\F��Dl�FJd����ae44�����k�=��ޤ���T���"��IT��I��"�c2ɝ�p�\�<��SI`��\p�7Єѥ(�g���s��*_w�9����Bu�d��0۾��"�I���@~C@s�=�D�$e���lɮ�ag��>�n������t�Y����И��l�E(c���ͅ��ϯ��2��3\^�ېj��ZQ��|S�\��m���Nh�z�IJ��4 ��Bȅ4�y��w�t�8F�+���wS
��^��D^t�9�>��HQ��V��b����k�7���Oq'���H�_dCJ�s1.�,�u�.+���e�v�J����0�I=�$XO�Ֆ��-��XQ�o[L��!,�� ��
�*(9���W�?�%>@�,Ο6{��"�vhő�]�����h�$g�y�/�w���ک^��5�{��g]��M���>�T���Ǣ���U�N��lS�f�c&��㔩˪8�G���a?v��B�l�����zT��0PKȚG����$s!�boι�\���_�<Aݍw���m�5��=���;>�j����XXkc�n�y� f�<=꿎�Ҷ\�G���(�B�"�Dxq�5�9��h�ߜ�2�����v�~��&�p�y�h]�P��#m���["ѝx�j����?��S�q*���O�x�%���PV��ݩ"��.ڍm�An��?�
o�_�8�dw�%��2�{Ď��1br��Wb׺Be9����~�Z����/ Ep��莩G5����2tL�Ä�j��E���zG�<�Ml�~E,\����*�Q���(kVF7Rc��0���X8z�Z<����j;P�dq% �}��L"��TNtJ��篊���T!v�V�4��S9˫,zIJ��NB
�&&R�����h�Q�c%�^�p2<�*N�q�ll��T��9ێ�؋�)F���~�"��9u�f8�{�jc\��8�.��9��1�� ;�5=f�~����ַ] �C�0��|o$bTǑ�%xK#���:��@�^����!'��߁ة�v�4F���~?%�LqN3#��ug�7Ư�3�KzH_�-�߷�wE3������㧼�IHw藗��[nd�n<L����v;v�M���P݈��%�j-U�e�쉈�RS���s&~�1��k���"��c�U~�#��M�f��9ǥ��}�v�%<��
�L�q(cU~�ր�"��-9e#�>���۵J�	'�p���]o�[�n�.S��ԉ3�܅��:��d�^�0 ����iw�j|d��8jtS�Β�)ܜ���ʚ
f�۸����׺p�4C{]�>�+�o�f��8�X�Vu�9�ht���5�4�-�ı������0W(U����(��
÷�k
�1T'�ke������P��5���{{��(�7-��d�vv-W�hW��gі���#�I����o4����H�\��1fj�4�%z��n�2Ȉ;5E�Ԛwt�'2���N�N��ݙCf�ʉ���#���H_��2�}�"��f��N�*M�u�Pf�bm��Y�1�tnG��4O@d6CCyB)sCIP����"#�ւ�`��r�W��h���VL�߹��U]��������r|~�R_���=�T���T��C�M�퉵t(���b�A0�(h��	�U'�j_|1aC��s��E���PL��t8d*F]	��pG
G�w'db�īs����Ϣ�cM�NE�V��!ڶ�z1&��p�&����w��u�vA��A�_��ն���0M�.�O&���9(xش,��A*�)rBw��&��0|��cÓ�p�ۛL���C�Kr���i��4���$�8��5�֖��\k�c�;Рjv�Zr݉��=�=un�o�wz��2���v�WhV���bx~��'k	�xs��(R��60��W@9����I����"c�i-�`4�[R񐙯B�pYѝ�k���4�ͦ<A��+%ݠ��5��i��j��{n��',��ٕ�d _F]F��DD�a^ �zY�C�o%i�	P8�/x��@����%;:`kn��]ԫ��_6�S���ct�7
��,o����n��l��>*^2r9 ��!��;�u=\�J�g�2y��i��b���\x��nv��_+�ޝN��K��z�FE�/���+�W��[x��]ՀO�H��v�)�L��T�;#�!��-'�Sͷp]�c����n�[���zuy_[(nt=恛�kq�v�����*��3�j���W�rm �C�)��|��������6 �CtB/G$�\ں��Vn?�䯇�S�/���'Jm����DpNZ�v�_�����H6��Ň�@����7tU� �M6�X���ng���Ő�&��V�"肠F�Z�m@}d�I�\���m8�Dd���Sx���w���:7Ő-c�\˝(�۶+���X�u�x&3���T��ڠ�P�h'�o7�:~�;	��Ҷh�~�%a#1������\CD���x�o�V�
��zjWq�k�"t"�CF�yn�X�gV,���q�6�8�T�H�Ml���N�>{�q�����d��U+i���?KM/��SCψ��!��k�?vY�ɯ����n�*q���}�[��=��o���ȯ�* ��8d��������*���!�d3N�B7O�sAs�TY�����Ωb��^�K��-����:��݊�(R)�֚�@ߘ���*	f=@��;��^?F��M$�a�ShVf��Aj�]�6?_L)+~��*6V����-�U`������
ڍu��wp�zV�p�a�ok���qtK��P� �d�dD�iG�����gVS�e܈�w�i��N2:�\]P�3׾o��{��]�#0et
��UJ,�>��p��D�H4��ˍ)������z.�#O}�ߘ��,�Ⱦm67s�ĕ7=���@������<��}Ҽ���f[:	W�z�#����|�l�4��Oz
[��Ooә��0"�=G�f���$a��Ȅ�\8�v��p>��Lu��p6�ݵ�Y��B9e�~�WѢ���xv��t���S�_�M����ygҦu�nt�� ����J�H��΍��ٷ��v:�vO�q�6���9�\_��>p+꿵&@�.钎h�r����8�������N���>S��D.�oK��C�y�uXM�|-][)����R�Bb���^�[?�bah��_��F
�5��ڨ���a��%��̎�5c��u��oS�B�s��� �zr�:Y���F|?�r6^`��W�XV]��'x/� ��2(��!�?v���������u��1G�2�W�x%R�p>�\Gv�u#Ǻ��>���v*���m�5{D���3<u5cOSr+M8Ƶ�G��+�V��-�۝-����et�g����Ux.]��?�z�789M�az�{�3:��[=k����j�yz�h~������o�h���^�B�l��u%b_Mfx�� �
����j���Ŷ�:�^l�W@<�v��F>>������O������p���ck���K���J0�*ǁ��;-��$I�ac�.��t?�����(�>i��v	�N�5H�a1/�R    QvN�.�������\�]?��h�X_ߋ�|���e#���V~����yg��J����.��=�I����YT����)���m�R��4�\��{�[+�ۡ�"��9��7g�{W	���v�c����P�6��MCz���z���!|�כ���b!V�@ΧD؋����s7,��"T���?��ڏ֏1.��3�)u���������7{P;�F��L��H�Sm9�	34� ~N�D�KU����H���L_8��5v��Ԛ4Bw&��d�Ro�v��T!46j=���"㐻�p;Z�*�ua�!��nҕv�	�uHR1|6�`�6s��G���;$�ݻ��Ё1B�.��<W�6���(��S�(Id�j2��uHy:�O��#g}�8�/�,`�ڕ�S�{���dWp�����ٳ�cT�	��rY���s $�l�yDgs�O"�>'
��w�l�#��z��a���K�D-���$�!ӿ�^u�9�v�R���c� ����q���ƽ����E��y�*���7�15���j6A"��͎$ܾ��2�t6[{�!WQNzM��jVL3"�����=l��E�l��-��Ws�\�ʺ�@t����O���(f�~���~���S�/8�hl�� �(�|���!��,I��e������5����y���af;k�Z��:W^���ln�3�+�G���s�����!VΏP��l�>�6���l��$K`��+�i�%e�$�\���<�u������j����M���E�jɪÁ$�,����R��MqU}}��M�i?X��|Ko�{��#%�x�#!���f��� �C�-_��2Gn�����$㒪�����h��U>?�4�:�iϱqYGX���9c�Gj�Qt�����VG�.���� ��_B�9�������H�}r�v�`���|{��G���0�U�2����?a��~@�"�I�"(����^��_{RÎ<e?��'�2���T�ᢸ��?��Q�6'�9���( B9c�\{G��!3A#��C� ���y��5��co�]�o����1N�L��h�=.5؆����G����P��sa�g�hTq߷*�0�xD���(�}쩤�!��sE�___�t�C�������g�z_�d#�D�s�9�09��w[�Ϟt5y/%D?��"[�F�|�]d��]e��+|Tg�5���@�o������E�yY0z��=�(w�aP19�e�WّSE�EU�kc��_8��� �7��Ꚃ�	
a��<��Ij�q�E���J%��'3���}��P/�a�hy�>�c� ��P�������nVg���d/JaקI?�}{���.��Z��C�d����k�}���R�����X7q����Q���T�b��b*WGW6�
�����v�Ǧz׭�QG�б�G����8Ĩ������#��[7畯$�5�<`�bFt�����aaqe�A��]*�cO�Y�o�r��	|3r!K�'���>F �T6zx���\��G�mO�)V��ɔ��z�
����c{��m�΁����Ri�*X!Ζ��+h���g���|8���Z�ݝ-ߐL�_E��f �G��{D�B��b����Z�B#��o��O�Aw�]dr���4�6;�N�q�_�e�V=F*�}K㝞��\�/7Q����D��^�:�mYs�����bK��}c`p��`��9iO��-��Bp�rn�˦9�l�(�|$��U#�:K�)�ܲ�	�׉�2�W��)��y䴽`�4�W�u޾�������8�!����=���ƕ޵nAQ����8��8���l��������
�8���+&&`hI��^�N�R6��z�g
:Z3�~��~/�U�V���m:�W���P1=?w�bWԤn�������x<��s��.�� �w�V�~�a����;τVd��;�O�ih4�����?y��N���0�}�#n|�\tw����c`O�������$΄Z��q4H��b�����L*�6p�;���n���o#[7�Ֆ�E�����H����8���
LZZQ�lxc�O�c_�j�� �~>��#��m�"a"���:7j�v�0�j��-9��h������]�ѭ�py��B���++Q�j���i����b�-k����Ux{������:�'|����N��W�Y"��!n�����{b0R�]�i"�Y�xt�^�w�x�|.�.W�~D��H+2ѷl��m#*� xT��3�h�� םV֎�
w��gь�Wu�'@vZ4j^l�R�u�d%�o6�{k����e��O=�5��K8)3V� B\�6[J�z\S1�<�}�%y緙��O��V�����-b'�i߭�ڴ�m�*PoN����˘.8���e>��������\G�'�	o*�����)<m�޶�8�ɯ�]9M����g�����i�e��J薳�﹩շQn��tu����������(|�����}�H3J����sL_/�����-Y:я_�a�uND���7��f��������ZQ?�h	�������c���g�a.��,NΫ_Z�v�L�hH�1��"�� [)����O���]�P�J����[��\B&<�zFy/�YɺE�ALWL���n@�2�W함��Y���gn�N��8 +����R��Л�}~X��
��N��� 9p�X,��äj�*7�:����v���Nd�������{`M\�֯8�)����H�#�"��bm�n�-�ʆb��)�c�R�j����5y��"��2^��j���cBuYk2��La�K��L6�0%�,��_�b��5(���h�q(.Ah׾r�Y���x��<1��g��{@��Y����P7�Wi������[28�����v�h�F�ő�7�18���j�y��(t��i�LYG�] o_�LS�����ܣ�߃=_L�Օm�6by�v����z9.�Q�RF.{7�C�\w�Ȗ�$��7�w]�V��q�D#5;�#�3�Z� �s1aQ[��Ap�����0\蒸�-$�EIJ��*���M��@����/����Cx&�>;�|gJ��د�&Gξ��c4��V��h��o��Nz1�-��3���U����R���u�=��4��WO�77}I�/۪�W���sY9�Y�_f*��25Q���O�4k?��w���.�$/�ܜ�Q�R� 5,;Wp8+O����9g#�n;W�ѻ*F�iSr���hg��(��F|&s*�_�Y(��\��OD;�(�N��c�"^�;�J}� �y���V]u,^\1ӐP�#9�#Ēww�W6\{d����S�L֯�|��s��Ӭ����+^���G�/����������3�r����(�v�n�V��>|�5�;*5%��S�k�n�k_*�n��<����o��J��i\Ɣ�_�]8-�;Q����(�����$2����|�􋰃���;�=�͓�n��f��o�Tzi���S�7{�c�J.$���m�y)�T��|�I?�z=�O}*�g�Wz��h��w1X�`&��6X������p������vGC�n=�ʗ�	�<��s���~��U���Yu��&p��{��a՗Ar��Q�y{��~�R�>�!X0��i9���(����K��/s9��漢l�^�)��ç؞SGRisɓp'w��[2Q<Zp8#��0�z;Lg���9t�6�HBoq�/�J�6c�"/f��ג+oձ�{��Z����������Plb0bA�>"4��~H/���?�H�x��M'{N�<C�U��v��Q.�{��]�{�A/n佥_�I"�m�P���mHF�ڴ+h��Q�g<�s�3a�)���99M����y�Tu� �e��S!ϋ��KmZ6p�b�aJ�ڏ�@#�^$�͸�D�br�e��ԻlԽ +��i�<��X�����C�O��yh��ޙk��-o?���~=�S������4�v�r���Br�\O    3gh��q�`��&��p�$�� �i�+�V�qA�n�&�zw��VVG�G�~:��uJ?�4r�Up0=�6ɭ��	/�M��D�`"^��#$ym�r���jw>�qEչ�2�>~-�ȆT����9i�^�?P�+H� hī��p�D˛���8r\(O�����:���b�[$;1�?� ��ϝD&�i%�:x��v�X�m�3(���<V.�|:^��^�z^l?<�(D����?�m��s�Ď�Nk����x�U�cS��)q��Sa5��*���] ��\��5h�����A���`%<�"������IRa���N|�&�1�eᯪӳ��7*#�Z1)��A��B����2=�$��x���(�+��jX�A0��Vx����Az���zL�9lΰre���T�x�T�s��+g|��l��W����T1��l�Z󘱖�fI~31��������s<�O��3��	p���9����O�4O��cү�b꾲^	�����s���|Cq��ʵ�>nc2oĥ������������:(襴Z�|1����Nwx����T���������P�rx��C���� �<��"С�els��`���}���m���\���e{�>��B��Yy�q��i����8���M~�F��ԕ��dAԟs�\�㧀��T	���s����� �lC3�v�z��J�~�凘7E(�@�������>V�<g�^��j����Ί�v��������t�#���S�)ɞ�V��0grI�Gx-��Pl!rζ7},Z��F7���z�i�}:i�xj6E����b�-%�}�r�ZQ��ːժ]I-ŝy�U�F������qU�h���6�R�������y)pR(��x�%��ҥI��Y���!9��tH�$V�.����=�g�o��$
W�p;�\�����j��G�t��k~OKµ`��Fu�g�yT8�tg�uv&Ip4i��|��M��]��o�$��Ϋ��(q���|48�i����.߀�a�����%����-5��*.�Mv�����s�2S�љ��ڳB�t n7�e,?����J��������o�p�xjq�v�=��;�a�6��/�y��9�`���Ik��KQ�_��SL�	�K��JS�I�8z
�r�J��j�._>��A�"�Ә�g�R��;�yB_�K���M���R���.��P{P�ֿ[u��#>���V��r�i�}yp+96�͹�����;���u��v��iip4�F*R�E��lO�-wy�q�\3�����CTP(�4�ɥ̙KH�|r{��9�h�����MT�	�����l���D]��1?0��:��g��+U��u�s1-&��j�iP�0���1"l���n:�(=��xv�m����v��K�V��^�ҿ�K�cnH�4@٧�̲m���'	u�iw���ToW�>�ť鴰ݦ�ޓ�eK�� D���G��ql��l�Bxe{��0�y����S�q%n��f�����}7|��=��]�u�|�^$!�1*\��o��r���J˰m�i�h���v�%Z*:��I.-�<
������N��9����p��(Zm+�����ץw;9ݶaN�G������
R��^ ��w��*�5N�����U�eYq�8���QDUMXN[{��{I���B����~���0�݂ K1sdϮWc+\����j��M��# X������}(�!ڗ��]��J�?M���1�nW�&�	���]?䃰�h������B���-5��ł�ѡ����U�r�v�h+N����� D�o�&��W<��+���64>�Qo�� �4>�{;�.}t�[��U�A�S1�E�z\�SοN7��Th&�Vq�l+��,9�%�T�����Oy�9G��'���õV4'a�Ӣ��ś�}�ǟ���x]��
��:�i�B����pW����y��Е�9���n]�j�H�y%:���A�l?���kb�"w����B�f���leTo�`$Ǫk�_�y��I��J�v�TO�*@��}�o��R2Yŧ��W���H�J�7�!�h%B�f����^#:ն�sR�c%Y_(���n{�?���f���1�j'�r؈��:[S���p�a�@��ph-)� -*'&�p]���˞G�V�U��B�}��`�/�;:K'^5"�۩AQ� n�w�j�zW�\ߜ.�;y�p��*,:<3���N������uKePsZԋ-\�!����C�d�`t�b=����X�r�FS.-tb4�C��D�k��-[4+H�	Q�K�������<�+w���w�$b!�o^�׉�I��!�C\��6Z@�OK�EK��9�~���7���BB#��	�ČO�+�F���Mp��me�����um��v;B���� ��0ҙ��'Ξaޠ�"B\N��5�$d����H'��T.)�Q�Ɉ��囀R/��#bY�����{�'�����O��J
���<v����'_���P�L#�1;!I�5huؕVI�B�li�����&%<��B����w0]ٓ�3���7���~]���|����w����ta�����ޥ֑f$b��S�:�z�v��Y��p\�͞F���f��F�D���YN"�S�U�&v��������S�{�u��z����r���������\]sK��'�Ϣ����_�7�U�x�&��w[d����.m�^�))���ç����6���Q
!ܢͺEoJz頁���䉧x��*ɯn�O�gխ����zq��+�WxU��i3�$v����y������Խ
�FW��S�����+!�/���[�r\0Ŏ��u�_8�%�v2q���ӲY�C�	f8���ӓk׎�|q5ҙa�q�~�y`Y��npx��-��)^�4|�w1Q
� �FE,�A�x+O��m+�#�]6zV�V�ZY��=��9�=�sC���Ьǔ���J�Cg?+����ݸ<��sʡW�WBͺo�NG��+�$V��ZG�!l��x��	nA�4n=i�V���#�������z��I�m�~�R��L(Xy�5d$�c���LrY5s���b���������*��{H+���N�<�͐H��,��9�@�Ug�q�Y1{Ϗ��ќ��h�@�Co����ǆ��|��x���Fo��q��D��ؠ��ߩ*�2:���y�Z���}��|Z��F�^z�pw㕰�ĺ�%���ϼS��q����}��{�fB���ط	/t����;{�Fa�Q�	������YQ��Y3�ʼ���G�Gtq�%�W��_�o~�xy��&_�=�Pܡ`�����:u4�(��R��ݡg���@�rJ�y;����dT��	)���l�/W��r�W�%����6|�,d6�:�8���{D���P�u;0o�Qؗ���;nVe{�)8�vJ��Woy�a��)W�/�c�>���0�r����3d�u5��;���6q�G�+'i�%/X��BJ�	�rB�0�<�繎N�+ׇ�]���,�$� ��p�^����>�,��5,)����Ө��?����·�����e���ԴJ�0�����Kp#Tl�u��#S�k���p�����8���R�L:��q�Ȋ�Y��.�5�s�?��?J;�<��T`2N,=n�X�G&�@	�~�@<�!���*�	"��Y�����;�~��@�p⡕n�K�x�"��!��l�'��<��*�fiWN��ȍ�$Rg��K���?r�����n_"�O'y{ԕ߻C�Lkk]*V�����#�%�ƅ���Q��f�UkX>z�����^H��T{�iʓ���ϯ�u��'��Zg����k�j�>���6��Fd'ly;i�/m���S�4�LP���n�Pj����ϴ%�.�����ow:��,���hʆ�p�s��f?,���<E����,rFpg�������	ݞ��vΆ��6�Nr3yu�I3��M�xD����F�7�t��W1)�M��_�X�V��<�7�����������x0��qa��Tus�ғ*UX�:ro"��E�6r>�w#�Դ��w    %J~ц����Sp>�{��r� @6� �bN���D�����^~�#� ]n)�Ա
~P~���mI��A�YL(���fM+�ܭt��YH�t�^����W��Ʃ6^�Tu�E�ahKH׾gϧ����~Q&���v������gD��n�nx���z�d�<�`�yj�r.��sY�}7sZ_����#p�#W=_��j7�ء�����ȱpu�Uzr~�F��]7�Q>�K7+��"��S�?���mW��V���oS"�����݇c�����2�=t�w\Q�{B�Һ,G�T�y(OQ������U���a>�6�QO��fçL6ȃhY��� |�������B�4���Δ���_,6�J���7Х�ʮ�E���T���1��T"�2�YP���<�Ŧ�[�U�;S�蛫!䑥/lTf��o^l�p���VK�p��a~��u�pm�M�9AYV-2�>��*���R��y5�����)�JO�8r��t�e�b���,`�S&�P�����pV -�q7�7-�	���D����G����}�����"�'�}�+o�Ī��$���9�ު8�4�#�!f9>p\��ba��ٻx��D�nTX!�)��8���9�NuQ��l�b�m�����K!x����#`��d����r�?�֍T"���rcELJv���Xĭ��<�l��#vZ3�V���|�00��xz�
�%`1g4���� �7��H�����8�EZ�B6��۠��<�,��;!aAȹM����m�(����jJ=f�Q��������ճk���Ƣ�K�6�/����o���|��'�d��GgX��_�"����nu�yx��.���m��㜋a���G�y���f��\�Q�w�T��`kLc��1��O�C��Kmf��<��9���Ch�=(ʥo|�iل��1�
]��K�����
0ѿN����]|m���u#�`.��@��T}����!-� ����[?�s��6��33L2,ڤ+�]�7�z�"���2�)�L~�7aI�?F/F�o�7w5�[j�m��*���s!cM'�e�X�sɆ�G�tkF:������iζ֭��t�\�g#�.%<��Y;D���N�����S��i���~z2[kɧQl���5��y����J�	��6��?䜣?�6�j�o=���.����I�1g�bl�Ɏ�K��a��k�Au ��*X�h�Hmv������l��M
C��8��[A�3�l���ͳ)�f���g���8��z������K�A�(����\�O�o�1m���L�t$��,��RTe/�;�CF8J�qa�>�&X� �����U�l�s_��h�������;P�V}<-;[������zK�l��+�QTq���+��G^�;�����V7��F�I����)q�˰)��nn+��9�"[�������8|��3�.[0V%��8�����/��{7;���>^�~=b�e�5[��z/&��OP}$�l4;L�C�X���nP��&�g�������/~M�}E�5pC�<���f�n��k�f�P�J������p2|����$�XV-ÅP��ݥ�ОY�Ec@
�Rm���������>�[���X6v�hg�q�C�O���@�ʗ5R�5M�2��7wkN{?�{*��x�'Jwa,A��dc�v���[�f�d�^c���}�s}Bs�dGכ�b��ziRG���~k�V|?���C�Ġ"���JW��9n����V��8�&��mnU )t������7�O�k>.W=������u�o'���%��ӕD��B�jy�Í�?A� �ˆo����V���~<��	��D*r2�ٜ��Ý�o�aݽpE�c9i�T�1Y:z�/�����ꅅ·�l�N�>!҆�������9@����W�*bXS�_0��f�������S�K�'L1R � ?��2Ci�@�FW:���ʍ��N���x��$oZ���1j�oDaϿ�U=���w�1綍���z*&d���]SC���Ze��t]�~.��c���F�w�ҷ�4�d����S�L��[�r�}���#��A��6��G3m����	�8�Ƅ5��k{�_�ɄR3:s
S3����Y��Ř��GO��ی��PF�:�QTtS���uo �3b��30`����L3�q��~��k�f?j�0���}��ʑ����VP��4V��h*�ѽ��w�|�@l N�����_�XO���K�܎����A\�����a�i�(��(��3��{oa,�ً��o�}f"��!0q6��M6y>,ٜ��"*�$��S��%v_�|Ң�𗸂k��|�Ep��֟_ [���	'&��j�x�R��j���9������`��i����w�lQ^G��0�3�ꌜYu��D�J[�GY@4�.�%$�	w",�
�,`�r��%�����?�+������At�[�	�[B�C�9��%�B�L�?Y!=W��-Tǰ�$������o�����|z-)c�9�y��Pc煉(ˉ�׈"sL��m�+1ޑ'+���U\�0ԟT�K�(~?u�h������$��A��\?���L�f#Yʒߴ�r���v�m�;n)�����ל�}:�LK=���$f7�>.My�'����s�۶��O���?8*��6v��$�+�ymGD�j~?�Cb�����A\V����l
�5���O<�%/h"��<TG�-�����ef����۽���Y�pCei�{=Q|�r7���+���_����प�_�^�N��g��&��[@Ϩ6L9�7����E׻�!�My��+2Hs͉f�;��Ļ�S$YTW�� P$C�ӔSح0c��˜L��D�@��`�Ǳ,�,����/kz�q�CbB�b�׫�rr�#9TEnv-hB[}-Z9�з{'�V��xy</�|����}���|egV.��C�Y��%�O"p�'3�k�KgN����\]�*����QјE/�HЫ�~�)��ag�n{�-!�-N�0�r�{�K��iA���d81~�@^�Nت�$�6�^	�1��w^Y���*�V;�X�Q�L�Q2j(�o�~M��=?R�����U���8�R}�T��E]�q���;x�<��p$��=h�qV��^m���Eq$������5�Cli�/���yX�3:;+춑�+����:�~p:�(Q��=�K�>���4!La��H��4�����"47����T=a�����"��n�Ҙx`�ܝ��V>h��X����w.Cq�S�G�8k���Nq��
������+�⤣���{���tm֡Yͥ���(Sɏ�Jt������}<��,��"�ӯ*ݓD���tQ��t�ı@��?�E�0����4SW����"Q��	>(�(IH�r��[5�-~zd��D����z��qc�#�ԩ"#7y�� ��n5�}K���
�>\H#�9�UW�Q���,v0�H������BG��`�I�y`�['_Db!���	"����Z[xa`T��o'f�c,ɐX׬5�E���Ƹ���{�$�yb;־�e�?����?l@ (Xj	\3=�G|���(�_wC�0�|�?�K������"O&�{R��48Ef�ru0�+�g�l�Xv��>��
�3o2ӭL�Y󘣐�����a��t=��$D�Ym�!n����*�У�bڼj�I��v@��a������hԷ]�|��'�z���[���_D:[��::�\Sv�m?�@Sƫ�/b_廳n�I���������I&�i��3���|f��#M��ng]p���?��<>���'uڝ\�0Ӭ�J�c���;��� �L&ԥ��-��`����Zf���ħp,�ֵ�36�[q!�����?�|-���{�/��7K
%68�Z~�⻬ս��<��V~�<�ʰA�úL+w|({�;V��j��S���+���� �=9��T9�c�s���OY���찵6���$TmI������&�wkJ��u��I��^�=�Y��M��&�����ޛ�܉�%zy��=3��N    >'����%��m�h�Ru�I/����#�#��v}�8r}��C[��WBns����T6mi���@!P�L����~��Ux���(�a<*/$�[^-%��ߏ����˼��i<:�TAVwXXJ�EjS��M~m�����Y��1���Z>��J����F'a$�0H5	~ �!�qlb}1��%?�Afsx�Ty2��,����3v{��o���<��o���X�iexi2�,`�OHp��r���/����5����Oi&w�Y�P�a&q!��t�D0[�O���c���rє�א���h�uMg�����h��S�w7������ޅ��#�GRo�%Zև���dwM��F>=������rbc4��ъo�F��!�$c�S�qf���.�o��y�m�nw�{��k4�Fy��(>��7��G���w7�˰����Va�0��:'r���	k��}�����o�A��ަ,�y"7}&��R�`���(���E����L���a��!k��N)�fi�6����C�� 	��9�漵��90���N�Օ��9����Zc4�>�8� �M:���`~2etEN:B�2li��x^�o"�3;N!6�dkv�`��"�	�ڳ����B�~EU�H�0^����m��pf�5����8�T��D���o,�~�g�bLS�	;��j�����.Ú �9�]�/�El'L!�b��6��'�P�YK"��5-׹]}{A2
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
Q1�W��]Od��=��w�)Տ*��TMHN{�    ���L��g�
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
R�y�:��A'��ɴ������L7�3�C���vL?
s��	ݐ{�R�k�    1~��'�Z��`�},��i�R��������b����`�U�_����Mq(vli�Q���>�D�T��w~��N���(�W�<��������Y��(�a���X\��AF���8� ����Kv���~�m�	�0�]����t{h�'�V�pa�n��).���9� �C�Z�~�K`i�?�����<���;����N�Y��뽰!�W��.��.g�� ��w�X+Z�u۰� ���f|� �*~�#3���~��V]ˆWkT��T�K�?m��-�>x;��g(	o0��5NEǐ����k���IL�1*Q"��q���߸����3 �@Uz��)�*�I�K8�7�.�0g�W;���� ���K�gx�b8M���y�zg�6��{��{�P�9�7���<�a��qA�(5D�z��}���Ds��8��Z������7Au�y���ƺ�oC	��Cw��<��9j��`�=��SпA۱��F��جË�ȎeP��ߪZ3m������d����Z>C�9�g#bR��촖��u a�)��>�V��U(�R�,�2*"�C:��~!�E��ؘ$��K�P\J2��j�<�#�&�>��S��6�v�\���#�� �?�������m���( v�ū���F�^�WD����9��UZ�.�5J󋹆o�d����x6`Kd6�=q�^���u���"��J�<����>j}���ɿ-z��F޲?��.��K�Z.��d�2�]p��o}�@M�����Ɵ��_q��*��*��i<TK�xS��7�v������E͈��7ts�#|U�X����|*b��̢�z*�2�Y^v����,��E�T3��? �."���]+�Af��������0q�v�б��pMN�s����<5l0�V��>��[��{���>]x��J�Ӓ>��U�@���`)��M!�Z�;o�Y��k���1���^�b��hE�|a�{�D��4�_63��jX����A����ns�zI�"�3B��Z��5�n��ō�z�B�^^��nβ��G��1����++����C� s�*�9�N� ��2O������;��(��4�x�SP� �3�K-ķ��0���~�����q۟YIn�`����k(NV>��>�+fzx�	�3F���̡���li;����_���_��"�@6a�u3��?�A���~���-����T;�8x6F]*��=zV�����_��+v080)x��`���":+r����*�|�w��/(��Q�Y\�c��=����=R�9=�?���N1P��< ���pK��|O��M�/��Ԅ}K�K�>�3�O(pٸ�^�sc��>0�ƈ��a�_�V����e��L���(�
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
�@�SZ��))T�th>m~l2a�p��>�O:iS�c�Y��A���+aR�l�q���� xŁ`�;ѧ�F�C��|Śn0�r�c<��|X/�W�Yh�d |�:ҩ1"��>!g'�"���-X��=�N�>*��!k�h2}�9����IlS� ������6̥0:�U=4������sE�KD����@���u^�Z��)ޟ�%�L1W-_C��`��ob�hY����~t[�{�A��L�'s��LՖ�����|��޾,7�^�}q�I,Ǐv��E����o /�<�Ɉw�vq�ҿ`���<r�8�4�\�jQ����:x�q��ݿG-
����p
�%����) �� �KP    i:{��cls�nc>7���urs�ϻU�� }������Š�Q+��"'�F��+�����'�p-X� �+����8�1�t����g-�U]���	��C����;۪:���W0x�u�$�c����x+�v�Uxj�"l�zE����d
K�=�9��~iQ���2��%���z3W=|[K�v`T5�b�.�v�J`�-��t�Y�303��\��N>��澰c�~t[�I��b�EQ+���k�Î�������懊�}t�O%&��pP_4Rr��4pb;�(��Pˍ���4��+aϐ=���;�ٺ�@#�ѣ�[���h'?�����a�~�E���(*��,��0<��/ͼO����6�>����W��������!���@�X��fQ�t-#|3V��PU߹�l�,�:[Wm�.o�<�l�~)�����.�CK>wow��#y�������Fp��-�v�lì��ċP>]�K�'�>�}�l"}��4��E�9d��r]��6��_7� �oc؂o�S���Wس�	���8��&s�a��K�F��{/���U���VY��_�W{Ҩ.��������Np)�c˰4����U��Y5I5���K��O%Ոc� ����b#�o���EU+�yT�8��&�s��_7X�&A/�m/`m�{'ó�"���ΚGk��{ O�4����"sj[�Y	����O��)���x{���5T�-��'�����zvN���y�M���6����\� m�^���I�Q\� �Y؀�Jwu&��&�`���Α��q�j1���� ��V8}� ��r2���`q�_ܮ�/(�ya���S��
1X�¨�q/jJ�9|��^�^�� �扬���X�/_�,�Q����Y,8
DQ�X�����%\�~��w:P�{�� U?�7�_��n#azP�`���[�F�V}���k�n}������~Y��bn8e5��I�fի�+6�i3����9�=�/:�<����or~�bQk)K�XO��2���j�K�+���h�T�x���������"l&�i"��#��� �*��Ρ$��G�O�����BZ\��eio\����K	�G"��+���k��	~D�3�J����}���f�'��Z��έ���=Bk0�uy�󵅦�!�X��K~�hڑ��7ȧp�蝛zU�T�8�M]@�}|n..��4*����+8ny]�Z~�~ƛ��������6`���P�%�Y:�/H-~�:��Q��؂�ad�����hԋյ1ʵ0�7_ҽ`a*L,����~wbQ��Z���'C�/�oSf��zcG���H'��g�<
��^�Y��wL��RCL�y�Q{��hM\��������@��U�Z�����l6d����N��n��LC�K«�Zk��E�j?p�:��[fէ��b��N�o�mZX;Y�ZY��|��^�ߏ�o�i����Y�� �T�&��:C}�|���F�2�A�%���p�vs1���Y�|���z�X��t�(^IYp-�=07k)ޚ�5Ʌ����Z��ޒ"=
g*�@g�'��4Q����᧴ɥo�g���>���|Y#��j,)L�ó (��Np�oړ�������c&ߛ�~��b�t���}���. �]=y�xI8�}�@~����`�!�N�v��m��N�3���0�y�.�m���:�4�w
�U��Z�I�ė�@���q1�����Q�7��b�hz"vg#d�L��ݸ!�h��ABs��G�1l~P�q�
�?�HH��bh�f�ʰ�\�߆���E���j�-)�����V�A�G�yuH�/���`��J��t'��-�7�.�#F;�>q���\J���&m�b<G���Tȧ���L�����ǏF{��<C�.�;o�'�E��Eq��^�y�+��d)'�ȃ0{�uX4�3j�@W3�J�$ʵ����	gS�B8�׮�^���5��|V���7��ʌ��3�t�O;�$\'"��ى�l7fՖ���S�'�]�[�0�j�l��,���־�(��m�f���;�-�A���J�G���(չڵ����z�����ҩ�H����}�{<�vVe���#���U���5�(�Yp?�@:����u���nI;i7�9�a��s���t[c���wf�Z�9�(^Z��e�����d�{C8�V��}��;-��ͯp�b�PZ�N
g:�� 	�p�uz�4n��G���i`�H4�* �N^�"{*Շ���|!9�5�g�&$�ڢL�A�?��cF��Ek���u�lTI��u��ܠ3u�W�D;�9z�Y]�Y�x���_Mm��T�lɰ��r :G�:eV,���9	��,}-ҩg��3�5D���I�|7�+m%���o%�5�T�O�oY�U���E�� �����Yݐ���{�>mv��Z�
1�8j�������%%���/��<�%���-C/��=�+�b�rI�z���iq�������ur�~��RI:��ZZ�=}+��G..p.�?�6>C��ʾT�L��*�iЙn�����zǗ	��s86 m5�ݨo�9����y��mӉ��}��l�׬*ֽ�B��5�E"��i1I�h�acY6{:���� U,��}(qf��y�3��"Z���ON���i���,�܆JjW��m)����0�W�~�js�+����Q�a��/�s�y�������r��5���,�[|u7����6a��Q�yS�r:��k�Z�8�Ml�p���X�<"�*�/L�a����ǣ7n��\��0���m���#ܦ�F�m΀[�&���Oal�t{�f�a����� ��E3D�`�,����@��ʛn#���և����][s�ůd�����7�O�ҬK6���W_�<��2��?��$����������C�8׌V�
��|��90�9��K�_�,��oX��&�����l��Vk�~Q<���A�~�U��2c��ϲ�G-�0��(��Nt} �%���e[�d�y�:��V��н�g�#��^f�ؕ6.�Gؚ���R?����Z�d��To���&��{�4M*�>*�� f�B�������1�t�~t��$�=q m�t S��C�7�6��j��0N~n���ס��]���>�ѣ��u� �����Mi���ʚL��B&_%E�E��"^:�U�[����{>�^��{����E��e��̄@Hf���W��E�K�_� ��+�A�Vh�K|�j��ș^EJ]8�*���[�m�w'17e�hQ�I��{~_ӓ�^����h[:�/��t~��<��/|�i���c���jCh�+U)��Θ�!�F�r�Ұ������z|��́����k�q�V˜_������S,y'����Z���ʾ�k����"��x�
�V��e�Ifgy��n��Hg?
Ug�!V���ıA\�����vг�-�C���3I���7:��JW�)c���&�( ���ɚ�[�R�|��ش�r���7�Dfb�NFb~�D���)f:��Q�0�p�#܆� |%�~�-tf�����o�G�ЖD���N'�m�n�\Su���WT�Ɋ
R��xn�.B�{�`�;��ꆕ�5��2`&�A�^���8U;�酭9~ݚY���y���+9�O"y��U�]�o��QG�j\��w�1�=u���AE�rw�pxc�t��:b�������l�>��xѠ��ȋ�4Qa�����.d���@:��}.�޴�;+�T��v`jt�Zj0/=���[Ѝ�Ԝ�پ���m�)�Ɓ�?wf!X{f�:�zB���.z�|�X�:Գ�G�s�S5 3�3�Z��!���d��O,�����* ���sѿ;�X�gZ�F܀H̗OmZ�j�]���+�����S'������!���Rg��Vg����y��t����e����53
���m��37-[�䥟"�vd��"�	2�)��Bf��/
���ܺ-���2���&e�B��z]�6V���b��nԺ+�.�m2w�#    G�_a�3�̃�u�|����|?Kb<��+@�ɳ�R5�F�Sc=�F�^��|\a�N�i��~MX����*�e�"^e�hK�C�[�H`�qC���<����_�2Q����7��qUn��(����"k7�@��;���su�XDd��&�`GZ�GK����ؼ�e�:\f4�R�=���cW�(�(~i5b����K�H�.h���}�cB�P�m�u*X�=0mMZ{R����5
�\������0�~˩JJ�~��O���F!j*�v=����?zE.���ݣ=���u[x����v��cHhh�{4d���D����)�X��*_��kU�&ơ���Ԧ�/�d�p�&��/	�t�SD$9��}�-P����m��"Jr��nx�6�Wy� ����ncؿ[�9�{ � Oz;?������t�`ʽΘ�������.eR2�B�)i��C�͔�U���Y�pA�PNzh��1}��i��^1x�Fɬ>&����ʿ��N�`H�~���U�sދ���&��ڋ��ȿ�W�U�ε��3�8�N!�9v��o�Gv^$_��:_+�OP���4�����^��B�t��`�L�k�;S�Z;��a�ҕ�����3Ҏ��ٙA�[ݪj?v�M� ������c�U� 2��%<�����{M��3D��m{���PG�GwA
o�>4�f�H?.y�ʜ���˜��i����}�C�r?U�%��ԺdX��iyX�<)�,u'���Ɏ����MV*7}�r��<�˩��6dD����l�U�ש,��Q��!�v��a��{:�S��5�G�;��r_!"pEB�6׭6��Y�w�r��Tf��>���U}f:病Z�(7����obmKJ���G���X��US�9�舅�pi�>��ڇ�$���F��3�^�vc�
[U�}��H����e}��^�yZб�\ĵK�/�'иzj__�A��94�5b���l��yh���Y�f�SVn��)!�(F�o����1��+_���]�q����(�
���`���N%���C��#y��������i7�{e��F+��+EZ���w�&�},�t3�ݏFb��8���X!���SM�|�[�h�m1��Fb1�U%D�{��f��٭�&��߰�ɏ+��k�5V� �VTR{�m�Z�E(�ӌ�������$D���uJb��U�9�\�R�\���P�/�����q�*�����,�KJH]Ѭr�)P:�f�i�w�j�]�,P�f���}D��;�X�6LZ�?hU�N�&/�26}+3��ou�5֌m҂�N��_m�Π�B7x��S/Jp!�4=�ƶ쒿����2��Fղ�f�����ni���a4��PP6$s�cgqf��*��́5;�C�� ��T]B�4���>J㢱1��T ���]��{����ʚx;<ou�1�Uh�LMM�� �M��S����>7�u����/ZVc��]t�5~���ߜ��yuq
�_G�=0rkWx?�A�V �H��6Un����1�Lt��*����b�^~l��T���G���iެx�𵛱�˱�����D_�'}��3��k�$*3������xÒ؄?ԛ�9>�7FH[�]�ѯe,�|hu5(=�:��+�e{���+�?�MK�o*�))R�ɶZXc�!7�[�����XK�~���ɞ%���L��tl���O�:^G�	CKH��
,ǋ� <���%l��7~���~Ϣ�e1�����(VLL��P���t�P�Y�����AZ�(V�Rȋ�w��*��,���h�*f�r�����‭���W�1m�D���G��hy�w\�ex���m��q�j��w���o3� Rg�`�z�O��-�sT�Gŋ���,���.�/N�BY>����ꎺ�O过9G�h6M �7V��O�rej���v��O���Y�k�=uW�]tk$�/N�Z��JF]�j2�܏~fe��)�TG�%Z���?"�ŷ�L�S���d�^Ҕ����2�?CP� >�6/�=��a�ge*��.A:aT+�~��(����Y�5����k���s�� ���F���#�M!���¹1��v�	e�Qp�V-�0��j��(B���m��0k)֪�J�-gh�g(e��J��݄�բ�Bw�X���돚R?����N�J4䋼E���B��QA�Z�<�G�8�F�_���n�����Y9Y�	[�2l}Qq����,�S��ܗ7�8�#���KĽ��-xh��Z��.l��0������4i$���0��g}�B�ܫ��n�-��$���x�+��̣��mk��\<!S?A!�	�k�t��֣��o�gM/!-������.j9d%Bq�I�%����Y'���Zx���}���:����4?�f<��S1�u,x��d�
�C�^�Rx��Z6��p�:�s3eMĠ��JsQ���L��k�%�h7�6u�bE�$�Ҳ+NL����R�S�2�e�#���5����H�%`Ft<����r��q�Q�˛��.W����M8�(��c �>���O����Z�|��bzʌ��Ȭ�� �k��Y�|0��pX+�\�l�`��C���V׎��R����7�H'�6��G_�p��ň�&�b�z~v9�������`��ݯ��:�a�O�	��7-��m�*E��<R	�u�O�;M[���ػ���JFB�)W����A,e�w���\�E�V�ug�I���,���~!�W����l|#�gvQ��{Ć���V���A� �X�$>ɭ����">>���|G}7�Ņ��֕[, ��[�@]W�hT�K�]���>{�ݮ2uI:��}�u�,�'���'�<;=x����[�=�'D4e����.i�7�	�4�/R�N\��xK��b2&!A��d�Ǒ������UĽ�5�@�3�:ͤd�E�6:��"����ǟHbZ�]��T�B3H@�!(K�Tp���O%ɵ�tq��n~���
@ݡ�p��/�e�&����p�a���uT���O$��̑�O`G���q�&�:����;ѱݟ��f>���8�y{q��jb����\����ߏ��s�1m���̈́Am@������*���+������� ���������]���铘T�VZ]�h������q�V*y,��'��n8��_���y��>h�ol���+@Z��^]d�Ѽ��M�VHlX�� j��R1�=�4�;�'n�A�b�2���-�^������p�1���+�͠[����~8:��>>��� ���x��O�>��#��|�*�!!5�`���xxV�41g<w@�?��ڎ�`��*ksa%EN�g=����ˠc�F��cP7G�Lm�� ��\�l��?�h���mdMÎ'0"U�i='g[5�vK볱oA�@�P���nuW����M��ԣ=��=8�xS�j�p�ˮ܂��g�cĵ#h��YcS�X���|gjt�:u�H��N:1��1/�M}�2�:���1]M	|
S�����k�*���	�%d+�f�EG��}K�	�o�K�\��ey6W����!}�y�z�]v�%))���	"�%��W��9~b�,�4�T"ȪY���Ag���cک��+��|�Fl�I�ڲ-�NN*�%�+|O�b֟qi����k�-�gq�m�l:��W�Q��5E��}����*���2��y����+񴾾��k@mMD�T���ŨA�v��/lk�ǈ�������c��GI���䠔�oCΩ��>v�k�"�i�BAK/�ֻ�b��3k��:���()>�8״,u{ z��)Ƿ��iЄ�����v�͜�)���l�fL�!D>+D�_��"���K�<q���/cf��b�d�1�8�'Z��O�U��|w��{���{���L.<�p;y���Ycg� ڐy5�-}�@4<úĽ��3&�^��k�.�}9+�՚h�{ �l�tW�Q���9Df�ٞ6i�p�on��X�f,���١���z������L���Z�J���%�����1    �X��]���݇g)�� ϶q��R�7�kk��Y�b>ȅ��⮪�]��.��S�ш�E^�u�� �g����L⯙��rxVJff�!M��c���_���A��֠��:�{Վ�au\��EF�Xc尹=Ǖ���0!#0U6-W�u�k����5�\1m��O=�a ������\ؐB)6�'m%OR~
�l�nw�.�;���h:p1��e�UB]yX�<|�qu�ܭ^���J<=�H�;��|Y}җ�~Fq�[.�����A��_��z@�N�۸��o�z���H�@��{��ŕ��)�&�t-���22Q����&���öD�Ehqi���=mݺ����>P|�Vn��j��Y��l`�s����hD�E���ڑy��n{�����?���`,��n��t[M7(<�lS{�z��&�+�������2s�}^���6��cUh�#��� נG�������{�>J�����'h�om:��X/��v��'+u|���s��$FW�ŷd_��l�����X3�N��i�ƫV>�v6f��
3�]��yL㘍�l*��*!�o�l�t�M���խ ã��7c凉�7���mGۄz	ֆuf
�c5��N��x��(��a\�M��I�2u�'���UL<�m�#<oؐx{͉zy�,?)�Y$E���5�C���8�J>�~C?�D�y��6;�4MB����}�����i��W��z�o,2It9~��Ӽ'\��ocO@��C��Z��7�cdn� �,�g�,�K�pI�xy��J���G٣��D;�.I��F�߮�$xS���Ոě��2�P�O�ae#}�s�Q�@OQktW�a]  �zI�MK��e��"@��ע\D�P�J�"�6��(� ����s��y&ѫE��wp'T�Wq�^������6�t�C`GEumԠ\G_k%%��eM�T���~���kER�`�H~���v�*xw[��^0{��:^�Ѿ�ř���XHt��W!��1����~��(3qT��Ys�ɟ���p\"�;N�;�h��G�#���o�����z�k�a���F�����.�S���������C��,��KZ�¦~\z~��y���7Yx��0o��ͯ��ܬ�y������@I�F����h�1>}����"㣝����W�H��&C�]���='��|�v؟�p�^#P���%�BD�[a�Z'
�\�~BO���[ؕO��e�i���n�Ge٣F�M����ė~������V~�!e����#�u2є������1�-d�a�i��)�3����I ���ͅgAɋ��f�j-�Ü�1��L��K< �����2�c>�� �Ja�ۘ��=�?�6U����F�z��ud�iC���[iӓ�6�V�Z�K���-��o.Z��`��͛3$����ڷw��sth~	1GKY ��X�,�������_���ݡy战��)��%��$����n���q�m�0�T�F�Rx���}$WZ�.j��顴S;|�m#��o����U���9[����JW(*�.D!���׸���`� �@*u0�1U�w
�1|����;�s��&R��ͤT���h��&��h�B�L
�m��5b�� ۬�k�RHzO�8�Մ�ݦ�r�U!�� გR�
L��$%�Pg��eb+Q �ztHc'�8�Ǟ]7x[%`�@�3Q�
z��e��D�u��F�?����_u��PΚ�{Q[���o��]_��	*�Ng�vC���i��:���]��*@��i�Q7Z�rI�4c������xM�4��
�Ǌ�fQ!��}PY��u2�N�c�������g&T�nA��SR�v��m���G� �nq���A�i�颶�;��fR�P(�F��B{�Q��ac���v�(~B�Ty�t*�V�.��L��[�}3�=q�/ �$!y�0-��:���5nP�G#���Zf� �G�:B�8U��|ϓ�ú�a�bSj�-��)u�DU�t�1{��(�F�����r._g��B�ׅ�ߘ�v�"O���4SH !>N�(�jמX]$���濅.��+���'��&�a�ʌv⃻��ÿMG6*l����R���#��^���>tw�v_o$��6Kr��N�I%[�S���g��kH�=�xԚ��҆ψ�Y�U&4J�6j�����E���;��a���&K�����P������q�vq!�d	eCY��d���5`����|(۵�VA����W�#�������m>F,�G ���0z�`N� e3���������$ ʧ���T��`��d��$Z���F���]?�	�s�Y����L�O/���MNӗ���ufr�亽�W��C,@=�:���g��=�p�w�7��,�<&73��T5���9D��R�vR
����ʹI���o�z؞3ޫ�����?��A��fv�ٚ�.�� wV&�vY��~9�i�-�iv�KF��@<���{�Ɵ�6��<�Y^5�Ȁd�n~|B���|>��i���ߍإ�5�����-��H�]W!��-� �j�žM��VY�����A�h��		�S ��Cg��f$?h�a�]�Z�{�t*��f٧Oen�o�!��LB�z�X��S��s�s���a˱g��=�����������E��L739�@�����eB[U�TK�$�D];������ؔ���\
�˳�D8^�J^�[6��;{P?Y'�����Id��UzA��g[)7Q5�u�`����@�۶V���bP��,h������H��I^~ہ��l�f�S�8���ˣ5�G�'[���ph�o�M�2DW�y��R�1�ۛ����F=��2z%�vl�m?��&�}��ُ�F^fY�r��3�J-�สf�(�Kd-е�5���s�g�h/;[
q����m�R� 
/�rԩ��ׯh�/yՑ/�8l����p�-�A�`�$����m�=�B�$a��a���&�X�j}���S�W�X�7�w�v]R�	d���Ls�_9}��z��em����[^&����)~�<&�:o�!Bw1Z�S���ݯ��xܵ7�W�[}��@��\��<mM�%��.c�q�M� *��K�#�g}c3�'��_^�<�0��gEz(@({���^:SN-D����?�,nx[�%<|��c>pG���Yѿ�"k���*%����(��)���[,oa�f��_myd戴u1��"��s{	Yj��_V��K�*����P*���Q�n�#N3�]��󛟳0���d&n �%�h�p��P�� o���{L�5��an u�п�7���͠��ɯ$���>,+�����Cv��§[�$*�lHkR/?:	�#u����p��҃o�l�xy��L�Y�N�Me�^\7��yt��'����(s�>]���Xߌ�MR+m/K;�,��[����Ș�|�3etSk�e'gYY�����`+��N+���+%���d1�!#���7�A���#LB[�l�ə��ǌ;���9��b)��>���eUn���Q�|�\$� ��LB�WT�f��ɑW������T����t��{T�uH�5���c�*���FĿ���3��O�C�o��X/a+�v�#��L6����x�����l#;�ty�g���I��agB	+����{ce�_!�;w�,�WeQ��M^C,������������T���,��<��>
���2$3T��!rװ;g����71i%sz��i�=,m�{���Mu���&��e��e�*�J(��ʤ���kb\ʼL1ey��Q�� �?�:��r �c�e�ǀ���]�	���k��5� �n��(��j������� �����o���:fJ�T�G屙�
)�if!(
����|�lX�����1h����1�fִ�@>vP{�&Ó�	X#a~�u�Kv����QNGr����%<c���J/����h�Vt���k0��#:�o��Wd��Ǳ�N�a�0h���1��fg)~��<Ig̦[*��    �=�r��i���#�B����ғ��@�V2�y(��M}�T�Yu;��&�IP�o[��� �8����X%J,՞�7��\1ߐٳ�+A��~����k,�,l\\�Χ����k���� �eX�3������u�N['�i�3�ӀP�k��a��s{�C�t��F:����u�<K\+(����=a�maV�E(�t��i;��IE�J�a�9����>�p͐���R��ȖEƔ����/;�>�4�吖}Y+�)!m�[�6\��W9Kl^��w%d�(�?�U؃�?���n��L��Ԛ�
ߋp�ۦ�v�>/��L���AR/2������8���e��������}]���cuE'O���>މdH��Q���Ir�!ً*E~��2����_�"�vN�[��P5��}�������hY�x#�a�h�[�@J�=�9��Bp MZ�5�<�LlF�=�x�~>c�-����$�k��oL�o��B��&�5Y�/�1l���(����r�;^�{�aOA��o�Yl��,_�v��9�����"p�ǡ_\�&�a]�߉Pr�ҹbj =��_��]�n��%������!��n؇��ά��\G-���7�P��b�&� ���3[�g�G���"��S����{���#`'2�X��a��R�3�9�g����׉���}�7�X �G-��_�䧮:~K1vR����ۻ �X��z�zT2_+��@t�_���@ ��򓸮2�R����t>Ǻg�v�Mǋ�qV�T}s�|�<����gL.i8UJ}_NŚ�=ک9k.�a��!�_1���+�#!��j��"E�X@�ĺ�����I �U���a0�>����!v�`��η��'vµ�����X_����ʳs���!����\_�( �2yO����+M�<`CVUw�Ԏ��se. {l����:�06���Ľ>��E	�
�!���a�by���`�jg��0h��ֆ<K Gk����{�X��^�n#�B��򑇮}q��&|��s�[W�
Z��.���CorK.Ⱔ';B�L��6ې.G+�o��8�N�� t8�3�I�|d7���m����Y�s=�Й��]���X���Ā����5P���]����9HI���f*V�"i���g���& ��g�j�
�����Oꓳ�B�C8��.�jPv��c79S�`+�h_��7�,������%1|���3�{���7.��o�U���i��h���2��:�T��3������)����CZ����7q�HҨn��S��Mˊo�_�޲K=)Y���m�w:@��v�fn�i�Y9�N���;Hz@�!�Y�3*�ѡf�O��	?X?�b�$�* : ��Pֳ����*��tT'���lcy�Ik�J���D��Q���Ls���ʟ�;��|Hxˮ������߁C�r��L t����7�är�*��5y��>Z��8�aX���\,�.��<��v/��L�=����8;�qČ����!�헭��������;��;l��H�ڇ�7�)�8$�E�vV���3Qҿ���zb���F��E�صh�Eh-�4"N�!����!��+����n���R�Q��npd�}�I7�B7PP�b�m�\7輣^(e'���g���ǚ�@�����H� r�����ެ}�W0�UIô���7D,�Qm���)��>�RU�e<o ֥��|�lo�EI��T�q^l'����^pE���k+�[uX ����Ra���G�"J��y}"�U���1�� �8ful�,y�9�a�g��0ZԌ?�O��V`N�"ا��X��ӻ��Σs�s�.gC蝘�UA����L�Q�Ɖ+�k��`�N����F�Y��P[��؝y��k�p�=;N|q���vUL؄���!�( 5�-��&=q�h�'ց�z[���|�{��ᅾ*�=�<W�,�0'�յQ���Ҳ�{2S�*��e�� O�Ex.3���h�1o�K;D�LtڲW�������q�����s#"0k�X=绉�K0$��x��AJ��0�bu�%��A��.-�]V���)9���d����Z��z_s��<��PLz(<�Q��tC��S[�ı�"{i5��J-�c����)����^��$�An�p�����!�:.��y	38b*�t��{��b��2�k����It�c�y���5�f�X��@sj_~-�m����"����(ze��h��<�f�r{�sɿ.�l�M=�Iw����" ����/��M�j��1-�1F��.�
��A�h����o6��ۏ�O~����p��v�y��@c�����8/���8yC4�o�3�ٛ���E�����nK�YDs~�櫒��]r�~&���&��] Ѳ$�7#��ÿ���v�r1�v��"�׈����>є�lU�:�3G��jq%�ߧ�c��%��n���p?�PR�A"F���CX7~�`o'J��=���&i�ܙ��U	���U�����VN����i֥�v�!�w&��'��X�k@�4��:ۇa*�H�n7��=&�Z�%Q)3i��@����'=�׋ݿ��U;L�}�S��c��'a,�^��������>�����N$3��eY�,�ZOVE>��c}�Hjq�/�W
���݌9�y�r�M��G�](���@��,Akr�H)�F�8�N��Շd~�\�Ba��L��#s��2m�<"Ĳ��X`y̰�V$��9s�wm�rԣrԉ<0
�5�h�bh\�da�X��dh��e��t�O�$��R�nB ��[ g�.M'S�,�g|Ν����,��F�9����Ur'�'QGg�6D�~�[MKW��߇S���^�?�
?��ε�l���(�t13���O��G$A�hf�}���6PWݜ���g�~�M�^�KT�_a죈!�=��g/0s�k A�mX��L�\Y��%m�:>k]=j;�R�?j9�n��("�U�9z���e=����Ox\�� :��Sx��D���*?���O���������V�x>�/�7eNEL��3�Q�I���?Ԥ"���t�A+�/�=}w>��������� �o,�Y�埝��Y� "��g��i�\jTE���r�;�tf�q����&�e���R��H{�/oUD�!Ԕk?��f���[cl��DD�[���cS)��l��7���a��%��4�&��Ľ�B�[����ÜNk�e��^�k^��!f5��[W�l�鶖
$_A<�ܒ? c�=a?3��%y�~��� �)9�ӹqm�ꩄ��* N��JN����M$����XN��tk��mtuW/9�y�^?����%�<��^��J��QJ@�ΰ�ȨB��2T�+ַj֖�4QK�Ř!�#�~�ڙ-��V��	�86w�T�}�о�-nޙ!�2������	R������W���t�%�-�`�C�@��E� ��" nZs"f��!�ʾ�2��zNzoxg�[k\�xbC�eVs�?Cb���V��u��<J�#�R�z:XֲR׳��K������&U��urf%O���?Ri�0x"����Z�P��/�r9∽<��,����rj'����n^V>��^���>r������I�\ڭ�N ��]Bd�Bwn?D �v���)�
����"�����ȇkA� �M���S���Q"?�3w�x�&�9�_�O��ϗ�������f�o�o� W�DՒ������k��7��"���_��z\n����'A;�ܡZ~X�/��������lo~5b�����;b������P�	������~,����6x�{�rvWni-��r	/�v�\!�?�g:jS�� ���W.QW�����i�v��q�zV�[��A�d�+~�q���i�[�P�,��9ɠG�ruP�x����TB�h��پ.�@���r���Q��D�����;��������X^��~e��3����/��g�ܥ��*�GKP�����J���?ƾ���E�,L�Gy��^pH���eSb3�ɿ��?{ܜ_^%�    ͤ��ψ�m�D���u����P��8SH��u7?+���T�P6g����I����,�hi\�}��8Dx5J����\�5����B�Q���
0�~��[+��*�p�'��)��?`�wҹs�wl�h�e�E~�0���L´[#0r�����-�FR�DeZ!�Z`�7�J/����ʊӥ���ۥ߰���9���+ʔ��*��$rp�z������l�Rn��?�`-���ֽ�3p �
�%H�,5�5c���b$M����}�<��@�[=wS�^&D��|PĦ����.��K��wB����B��^gL�2���b���c�O�.�����0]�^�6��Mꡯ�<� ~L+����@�	f����A+G_��E�gԹW��,_�Ns���`E�a�9g~�2S^$�ޟ���7�:s4u^� Ы�T�lb0��ͩ�X�5�K�e��|���Λc��ﺀ��N�{S�{'��џ���\z��vǄr2���(o�m�۵�o���?�OW�?3�NK`� RF��lH!vk:���kK1��; !�D�כ��G�Ǚ�ZW[�L�R&�Mt��kڃg<�|�7�|e��v?�_��{׬�3LnX3\y ���er!:��R���lT�k��:h�.�!V݉ �����W��n�&g�����kĒ�VP~t���奲~�+�$j�����Z�̐�/�X/��<sW����3l�o�@��ֹ:�A�g�S�D��٪@����&�S�<��	F�/q���O2:r`��vq���=ܐ��q��9mM����q�7w#���O�6����J_�-���T�t ��V;�	BW�����Q��������]��(=kcD_�.����y����������K��8R�.��w6�%�H�Ե��>ư�������7��E�T*��;k����1,��Se�(�4t*odRÍsv�NO�eн�6S4I��k6@�"�z��R�	{����r�BE��6xf����!���
������*�t\|
�S�|�C�h���[����A�ӯa�`=龜��o�2ά��r�J�s�@��d��{�-�ܯg���u��U���w�f��p�\d��ӟ�S���t@d��X�|%0���+y�c�g]�`p�C��3��1BbW_����	�n�֮α����g�]�ط2�'�i�Ҵj�\�.аZa�48�{�f�,9��gmM����r?�K
6ǳBzJP�$u���w�x�L�S��m)q{�d:)�d������)Qbn���e��~	��b�s����ՒG7��b������S����Z=G�c��z���qʇ��Q���aX�3���i�ŭ������T����d���搋D1��������ޱ:Ғ��/z���V/l�.م��;��$�U.$��HW3�c�Z���iX�<�ǾE�Ї?����E̎�B8k�J8�&�T9�O^��(�e��<?��;�>���*���5*��;��Eoͬ^46Z����'hwg���Z�4��f��p{0j @�~B�7�ni�!���Z���}[�AĐ�t�գ�<��j"�o�-���r��������^-�'�	cx���?XYڵ)ɲkb�����	�&4^s�A����=ryU�3�����-??Θ��!���b�Oӳ��:��#�RSo���u%���|�N��nh���J �9�)����I��;�R@�ĈHX���qdح��-�>��+&,
#�Xh�?�zD�H�s� �Αxg�L��w8	B/������#��7G�A����+�qQV�ƌ���5��
���:x�h������W0�IN�`"BI���:�+P���h��'��̶�*�tn"/:)��c#X�=y���e�ϯ�{����8����W��`�Ө�,o]`��sN��Kj�&��x�A��T?Y"��j���~a�Tu�Gt�o{������S�Q$���f#� 6� vuOd&��Wvi����W��w�v.P�Dh���B%R4��pU�~��f����ߩ�f��d�0`}�7�WZ�򱜋�<j���K8ᷭ{@���2�}T{L��U<���V"t�����,|���+�W�6���-|��cc�U��+9t^��[+Zz!� ��7I��\߮sY���%#w]O����P
�*�`�o�Jghw����Qg�ʎP�j�;����c� �����ơ�җ�*5��+Nӥ!���C��e-�o�>ǫ0�z�A'&�Zo��疧��ƫ���c����@����u$Pju��.��GZ�����Q�)5��V*��^D1s�9���Z��j�������]>i.74.n�N�<gէ�U7��-����4=̶��F�,M�\˺�_4�j�uZ��{7�:|��}���d=XO�k����cػFv���f�d)��	�Ў4��#��鈟�mK�2~{�`�q��9�61�E��.K��ȧ���\���xh���� �hD�S���W��_��<�jKG�7���=R��8���E|��M͖O�,>9Q|ct("8�v�n�:X���qF�Y�wB�G=e��U��⇍*�����Ҙm��N^dEI8��w��w��1�)v&pg)$���q�r>/5�⸋B���I�>���*8��~���i�0���z�94c����L��B�w���FYԥ�U�����t:�L�����*;���ī����~
��N:0�S���v#Z'�:'��z���*���|�{>N�C�72���E-A��f�JMٻ9�,�����ث`��|��rk�?��h�
|�D�%M�w *���ć���5����5�M`�GԽf�{��x���܅i�O�qM��هW4�����>������L��xkɫ���,Z��ډ |� g.Dh��D� ����~A_����L�ZoZf����ѫ����]fƍ�!�5
'���P8�X��)��7"H���1����e}�����
ئV���\�Z�au���?@�U����������������5��fC4��P��l*��j�F+`�}D��Y�P7a�)��M�w��F�ߌ�V��%�����&�և��I�W<��*@q):�l5����۳"�#���܆&�k�Y��Z���L0���w��W����5�S7�r����|��B˳�E
�:ϴ��2����}�[��-��g��u�ϧf#�l���srY���6��c(�t��������&;\tj5ܙ0�	gO��=e����:�獓�K�[��:�\����TF�uo ��G��{j��gvq���+��8T�H�*4�b]��U��r6�:�����=��;���S�eP`��;�q| �p���~7��Izh����`�$8l�%�<����Z�o5nQ�W��@�7��ub��iG���>����O�f+�l��+���j�+o�0m�_){f�y8Ae7�6��;�5c��^=4v��� ���<mu��
�n��>�Y�����9R��l,T��A`>��\�Cz�
-پ��~o���Z��*v�E�j��)K�]�R-א^�[�*�mp���@����u�2 |"���W�a���Ss��%)��E�(@�RwN����� �^sIb��]ʝ��U�^�_x���Պ�*�*��\�]�jT7��~��-ME�K� q<<��e�f=���!�̎U�w(T?����G����&��R���c�����
%}y�1��f�8��f�Lm �u��$���>��>�eQ�B�?��FC#[�!\+nP��E����_5������.I����c��.���Gj��߉���NZ3W�C�J-�أ��4{�$����Q﫪/$���[��6�$�Vͫt��Z�Q-�S�|��!H�E�(!J+�=o �M-H0�;:�j� |���c�Z��|y�Ef�Z��i}(�16M����L���o�e�yV����9_�K���8&d�=s��0)�bUR�quqN�9B�>λ�b h��$��_4cC���H�pOv�^��0"�"���{�|0�ٛ���޽�w��Lv�l�x����+��:�p�d���|�    ��h9��LjL#�oʩ���:�l�h]KS��Ul���/��YQ��SD�b�B�A������5������-��]�>�C�:��Yq�2� ����[o�Y}���Qb�6��ň�v1��H�r�r��r��pj��.��["P�C�.���3W+��È�JV��z�n] L��G��"]p�
X��t��b�
�t��c��8��>��/�u����%���	#���1�6�-�Ӹ�۹�n�x��XO�/#Z�o���l� -�VE%��
����F�L�4����e����cޞ��h�W}�0��.NSy,�)�H{t�]�J��V	�����xCܧcZ60c���J�zƋO�7�I�+ϐ�+�>?5Ӫ�Y�adPIqt�.��b��q�7;����p{� @g���:
����h��/���P?BL)XVX��x~m�K�Ղ��H����]��GG�C/FB].B�,�9&�#�4e1��i��A�xX��o��YT3�(˭�1�xD0�P�_�?b�v�V_�s�# )FTr��~Y AKD;7類_�j�-歧}T��o���_\�2���
�y>��Q2`���Lw	V(�wV�����[ި૑�9o/�p��b����v���<���[?���p�G��I݆	3���q��
��iĻ�[�����We��Z+)�L5 �Z�;t�/�i~`����o����<uC��}r����^���;g�
Jfe�5: `��n��eu���Wz3�����
H�V�J��V�ٸ��#ig���&�d�+��3�^��8.( ɓ�=���ъ0"ˌw)��kc�ߍ5ߙ�������%�� �G�֝ۚAR`L"fU~��=�ʄZ����`�W�U��1�u�F�zw�Q�S�o°��H �f��˃�ͅ-��@EYJ����d{����Y�9d���!x7>2��^���ɷ��;�C	7d�r�����+%}n�5w:?�%�)K\��y�Z ��#��f��}BH���y3^W�;��w�`9���S|UM7����!\���"
�s�kr�����#�?����HHnt����A,��}.l����?ވݻ*�~Ox�_�(�4�(��9;��茚,��a�x�"1�[5p� Ѷ? ��M�d�t %�E����P�Ҏ�0��7H���u��O����m�����z�E���1���^IC��t���&��<3�yK��7@�>��<fϭ�k� �YO㣮�C�M�i̗��2���c�P�,f�HN�6������~�<!V��0���!����x!$GGG�m� �=��oW����G����v_��}*����U�Kg;$��.^��1<|,���q:,6ޱ�iY�$�v���bS����8���f��v�\f��$�zU;x@�{R	�Ox[��E�y?��&e���w������t\�-�i9x�:b��G��Whp�C��\�����a�Ft��̜>hL�N#�)I����L|-
{+6C�V=rqO5l�3���^I�-������NlB������f�A/���K"B�d6�/^���[�V�@~IL�PC���*!�zS�ǴĪ�oS��~K���FDhЙkA��7]��F�vAL�"[U�]�����4����릑yY��`���g5��G�o�sa�`��Xe6O/+�f2x�W쨅Y��EmMWo�v�Lk���L�ㅇ�I#���]���a���~\�Zw��"�d�=Z�0�\�g���E3���	�gѨ��0��[9-+�+u4�s������
}���}����T��-&��~~����)��_��3{��*<k`D���	R��5��1m}�?3�%�RZ�,������7dv����(%J�n���SSY�{��8}ȿm}��)M9ؕ_�H+�O��`�ý*z��%�b�pg/ŔV��V�@X�����z_H�Y�I�Ϗ�ߩ��@���U��^�A� X���CU�0���|#�]� V{�5��).㡵���<ܽfs˧����옷�^��/Q����#���i/��/ck7����a��.�Sh3�+��6���I%��CᛆU^�3�}�0Ӆ\+�	H��՟o��Ӈkc��Ƌ�._0��~�
y�0�Q���⦌�k�D�B��4"B}������-�գ��)��p�?�?@_g�=s�C�tB�Ù�Y��-��˲��	��[~U��5��(�g�!�L�f\"�Y����`�3�������
W�hy�67��a�wf��7FnC�ȫ�.A��E�E���e��z.��A۩��b����fS�stX�\� p���/��n�����Սu��2��6�Ҫ%O�E�Шu�Zw7#Z`볞�6��_�}�XUvq�;h�K�+J��*`�v�á�����u͆4�!%�WӍ��ȓ�V��×u�_��XУ�/3���3��n��OH������|����!�[a
[]��㯵A�(������z�-���{:Iה5�Ȑ�0�Q���]4&w=S=�X�aV�%��
���r�G����+
�֝��]�c�dx��2k�?�L�e�����O����	�3s�'HyѶ�獴qpc[k�7$U���F�.�e�І3_k���V�
w�!`�M��>�KD�B'���H�s�3����7<ģ;�j�/�2y�X��"����V}x�q��jV8Ϫ�I��֫BR|�%v�ե���W)�/�j����{�6zR��X����?2�(���8�@�be�X
y�����ط��A$K����O^�;�>&����_��e�}����sg�t��Lsk���U* cQ��>�^�8�9�����c��M)��oV�ˊ��'U8��9��M�8ë7��5#̜ث>=C^k�ngN�N>��5$��UA����b�/=���o>~�k8�w��@�j��~�Wés�|]�M=3�#?��k�=�����&�M�P.�a�����Se�&�f�,Z]�"'��?B�|!�E"�t�*݊j.Ӈ�x����W��hа	����f������0�6(`�m��J�f٠7Bz�.Kh!@��aӟ����;V��^����/[qk��3=`|�3b9v��R��N&���+L�3�֚����+���~[��͛�T{ț�(�����6�����)��&����dn�� �5����t}��s=د�΃!}���[���C��4�,�F�U�<w�ɴ��J�oQAI��ʊ����r[i���2M������_�
5�a���ڇ��g�%N�hc�[#B�:�D��V��P�����a�֤����1����!�K���6�ڽȃ��k���i��� 	3����	�K{�&:cCj���1�P�5z;Wț&9	 ���:~�;�
������( *�,���UȈ3,ٺ&����7�W�7�� (l��
�$'��g���j�7\�er	.����3�k������,Y�����G}Ȇh����ŘndH�M�Z3�b�2��UE˘����:��=��xg���2��u�m�q�e�Y�:[�2Z���l"Hu"	�.�\(�%8HO^���(�];W��KF���o��tH��h�;��e%������X��n���ow���������(rȇ�T�lg����
�iv;�TR�N��o�`����XpR`�J�c��-'e��O�ϭs~�=FL��`�9�[xԕ�����3庣ϱ�h�>����
cn����U�1�5�V�+'���od��ͻa.j����p�tj@���*�=v5w=jCs8����
sD����k^��%�{�0��u�c�jփ"l�RR�Q�	ie|4-��9�v<]'qD#��fԳ�y�?���h1[����h�o��F����Gs6�X���º1�..��ã;	h��lp×��C" ��v�?���3�oKG�>cN�y>����D�h��s����D]�<�St S�SR�ʤ�} *���D﯈]� "A�����ɑ�=�Y8�L��}f�:Sg����x?��ND���%wt~�/Jvu��:k�mV����H    u߆jA��ԇp|v~�ԕv_���b��eS,��,Ό�Ő������!5�//%�h��?�W_�2��n��0eD9��0�4~���FSs��l�\�UB\nbJ�=�Z��	��=�ͬp�8�E�(��c�}��P�!�x�M`�j]�t�r���][a2�l�@|��S�G|�^BS��H���3.����>LY2z-�>��jè����v��5*�\���Ҙ��1H����6���������r����Oӳ��h����>���ə��r�Ak�W�O9�x���^Y��#�
��ێ��D"�D�%9��F~o�I��ɨ���*j�d�{e\��A)',��p<(�XN�E�\|6_���%�]�_g�L][=�3��Y�k	�0�h��[_�.ꢑR�_�N����*�c�S8�oj1y�|�����\�A%g�1u���:|���z��hp`3|��oF�<޸L�i�ׇr�p-+`\z�����{ց��X���������cF���7������iOʊ^5_o��I��A+��	,�.�`MT�4���G_�^e�A_X��R�M;���=�+=ڂވչ$yf�/X婹sr��~5]��+?��g�t���&w�[D�t�������5-@G����i��よJ�w(���m�`?�9�<�d_�Ź��v�L��{��3�f�I����f��8k+��:�P��䡚 Z�lgJ��@���7a�of+�sa��
k��ۋ��Q�˼��}~J��*�v�Z�r���.����i�f��>e������װ��S3ZL��U�`�J�� +���	dd��I�,��Zj�CPY�i�XN�h��h%1|���6�2x�c�kq�^�!]��çV:�Fy��E>���'�
q:�i׶����g��f�И��l[r���yx#���`ݮ��o������(����+^8V�F�Z��0�E�9�.y#3����M����(�>3��㉷Њ�������) �D���M��7�ǟzs����"���_��g���Z?��|.Q� �\���x��5�v���8+S���K��tPǥ���ř.}SW[�Il��bU+��:9�g�]�S_R�{'Ν��J;K��4�o^���2#��t�1gS��!:��o(T���"f>��9��"��p��V^���Gn䄏��<�&mN�r�b���F����x}��w�R�V]kl�h/x)c�p�t�2Ĕ�hP�)��-Ƙ���В:i;��]v*�K�~
E���ޘ����ۄ��o�Qi�K7��#��*uD��e��l��M���3�=	F9�>��`"�|�Y�٫�݆4��A�������.�	��/(�g��JF�Ж�|@h����jo4?+�X��y��t<�ﶔ�`��>�.$?�^���Vj��-��@������`f��|N�^�$�V>j�@�}�P��MR�$�^	s\�����D�t�9�0ˇw���A�&�)2y�j_���B�g)���3ۘ\&;��̱��e��&p�Յ���QG�]��	���e�d~�ި.h������M���9E[Bzz�P�!��o����.q�ʻ(�(ix�魸�{��6�3���,��N��PP$��,���Yk��[���du����̸�9z�ҭ�*E�$/�7q�Y�}���h3�O����r�!���G�_է��&L��ʽ���� �����y��7�.?`�d�LJ��{����=����b9J;��k��Of(��l�&g?f1B[�Ʈ��Z��yǂq�WG�̓�r��p��~f~���X.\Ju�}��9f�;�	��#�xi>NYcD@t� ���������l�'��,	|48��|����@w�Jw ��ߍ�>��o�h�����|oeVpR���I]��V���P?/~��Ψ���r��	3���IE�q�ֻ�Ir�Y��v$���ӹG-���/Ġ��]}�+��%i%���)yk�l�EZXb�����'S�(GV�=��q����;�Ի�� �$�X�� �BҴ[*2���e�����|v���۸��vؼ�%��xf������%�'��!�~�t�?z����_%I�v*���;��?��{�јߙ~�w��� o(��`{Q� Z���_�⤓ϣj�<�Av�J�JVs�F{��O;_ϟ��,�R�ְ�N��W�<��9���"����-��nK�,�pp��_gi>��j�C35ۺ�Bʪa�ƚ]B#���;���?�A������uB�36;����jH��++ayI�0�.���o�h�q�4�qu|
�jɏ��o�SnZ�Ts��wv�\	��>]/��#��s"�ݿ=S֥W0�z�������O�Y�i����9jZ?%�0RR6�����c�1��*{�U��l �	lȞ��c��-�ug�Y�Ue���5~A�ٲ89 �;�:�DR��O*�|�o]^3�o纤mG�R�R&�o}U�g�3�K��@xy6�&����VvPɢh�~������x�=5�hF ����;�th�^������l����(	�ד�����:f�D�w\���}ީ��h �����	��C={3������o֋�eɓ��ӿ����3�k� ����su'4x1�����Y�{��OQ�j}��g��E�����Bo�p�U�}lY�oNp%���i�s3�/�ի.���ES�q`� =�ׂ��X���vM�ja����ь��j����+���:E.*e�R$sB�@��`���S.�ku�]t� L4�\�.}՗_����-n������}�P]���BxעR��Wg�H�L�h�r,��d�tE�d�D_��3�O����S���V,��G+�����\7"+~!�O�:o1��c<XNIΝ��(.1ygA�&$
��S���g�0����^��|?�k�71�����L��̃sRDV>�Oxra�sYO�;Ry5�M�mq������Ns��k��uB���[������0�k�~ό���P�w��<B���EP��L�b	j�b,7;"�8�'كX�oi}	�?�q*�DGA��j���u�7Z�g�}�w�O:W�TGi�չ��1k�P0QVBc+1xE�=�G�(*��8#� �6��+��Ġ�*-w�8���$.�F�z`t��,�5��8�{�_�Ԣ,MX���!d.�.l	h����f�g�֜�Q��Jݵ����w��@�VO	LC
�����x���ꨎ���3�j�8���~�X�F�X���F{uo\E�)��8f��~&�2&��Us�����SԨ͗��w�]fQ&^��u>L�`,��|�-D;^-&In;&�gSq�Nf�6��4���H!���7��w&=.�;����X�wVh���W��������uf�c,�!�П@;`Ŧ�G���Ԯ�jk�����W]K����� Y�)���$�5I�Zg�*��+b�ǈ2:+�*�0�k\�d�ü.j�0�k��@�1�g�r�0!�c.��h35k45\�Ck	�>����=�Kz�d��<�OG���,�u�X�u!8Ebf�C��[cDͱ��,"3��m�m��Y_>�?!����ؖF���y{�|�m'��G�	�0 �ɘt� ��꤮������p�֩�o�%M�՚�3��+�>$��F(�_C��W!>�y�,�Mr|%cPM�yK��⬞ɦ"���h7wZ�E��qz�9�ާ��gp+eH4B��O�����U������|=��\�����������<��v�y;���\"o�I�K�5���&��!Z>���j��_��Z��8�Ig^��P��׫��n�s�l^�t�[?Y;�$��^�XY҉��Q���Y ���ay�t����{L�D�b�\LA%_��$�'��#��)����)װ�0]=�B]c��hTi���͢I]�6�{���S6%sVp�u�&T`~̭�E~��U�}�v\�8$�,�#��q�p+6�)��Ө��H�ԵbF�5|�������.v0dj�����`���[��h�[��P'���4�<�)Y��e$D���ڰ&�;����,��
�#��]s��)�� $  S�-���x"�g��T]�Ku@��S���7঎x�HN!�z)\s�R�������s�����􌊽?��O.io��q��V=w��|6��q�oH仫^GI��`�[J*�N������I�#hl��>l'�-��k�W�z�"���7{ )f�N�N�s6��F44[RJ�������c�G!�z��a��xz_�VO⦀�M?��!�~��;���V��B��:φ�[��������Rl�չ̾���d��b���y{����ˣh�BO� ��q��\T�Y�\Zq3K�m���l�e����)es0ܘ���1���I�a�m�oX�6hf}�},�X�����jٰ���,;�G������0���/漛��D����o����c-f�nM���57̌%*�2�����S5!�B�}����E�h����>u�K��,txɖV�ϋb���)G������@=FD�d}2_|����e ��dP����ڗy�)�2nX�T��͖�-K�-ǹ^�$�ǱɃ���	�K�Ӑ� Xf6\̰��+�<N�y�	ֱhi�YX���^����-�M�V�����
��H�$}�EOt��&�_�8��Mt#}\�Ѳ�0qܸ�)i�,��r��>�� X�fN�������`�s�1��z��3eP�M��'�gZ+��w�Bv��U\L=��a���BE
8�u��[�����4��0�!6�V�9���I�����l��������
��7'��s����&蛊��o~��?�T�fE2&�������?���?���?��%�      �      x�}\�r�ʑ]�}���BԀiY�H� � �V�v��otV���o�m�0NeM9g�TS5�:/�����ײ^����e�Ԡ�Z񏪴���V��RMuu���X���1�_��M���c�C[Y�TuW��/]��ڟ��c�G�Z�������4cW��X��>�ZY�TC�E�U3Tgwq����/)ek�ѕ�kD���N���Ni��9��c���n�h�mE�����i��ѯF��l�U��TE��ur��ͳ;.�ᙸ�?�z!>T�'�gw;�zV�um��Ε&h3�H_���7u�?���n�BX]O��=n��]>G��z�,ƪ��u+�c���tM?n�- f"��c�n��A�Ɉ&"�0/��Q��gD���d�!��#q�"]�X�8�Hc�SB�N7vs��AC7�ihS hbw� �e�@�I�2��;",�L`���P4��)j��=�M���e���V���c=:����tn����gl�d=ٻ#��g����m��Z���H�z��m���!�hϧ��!ة�s��q;]�y/^�_��Q�x��D6,��ǅ.y9�����\\�k�e������n��Ϭ�#3�k��n��DA�"���4�4�� �9�V��ue��&���H����O�lu�����g��8@�}�˸���룛۳l|\@������TPB�����0N]3�j�ICփ�k
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