PGDMP     6                    x            NIC    12.2    12.2                 0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            !           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            "           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            #           1262    20847    NIC    DATABASE     �   CREATE DATABASE "NIC" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE "NIC";
                postgres    false            -           1259    21806    notification    TABLE     -  CREATE TABLE public.notification (
    audience_id character varying(5) NOT NULL,
    notification_head character varying(50) NOT NULL,
    notification_text text NOT NULL,
    active_status numeric(1,0) NOT NULL,
    notification_id_pk bigint NOT NULL,
    inserted_at timestamp without time zone
);
     DROP TABLE public.notification;
       public         heap    postgres    false            .           1259    28518 #   notification_notification_id_pk_seq    SEQUENCE     �   CREATE SEQUENCE public.notification_notification_id_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.notification_notification_id_pk_seq;
       public          postgres    false    301            $           0    0 #   notification_notification_id_pk_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.notification_notification_id_pk_seq OWNED BY public.notification.notification_id_pk;
          public          postgres    false    302            �           2604    28520    notification notification_id_pk    DEFAULT     �   ALTER TABLE ONLY public.notification ALTER COLUMN notification_id_pk SET DEFAULT nextval('public.notification_notification_id_pk_seq'::regclass);
 N   ALTER TABLE public.notification ALTER COLUMN notification_id_pk DROP DEFAULT;
       public          postgres    false    302    301                      0    21806    notification 
   TABLE DATA                 public          postgres    false    301          %           0    0 #   notification_notification_id_pk_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.notification_notification_id_pk_seq', 22, true);
          public          postgres    false    302            �           2606    28528    notification notification_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.notification
    ADD CONSTRAINT notification_pkey PRIMARY KEY (notification_id_pk);
 H   ALTER TABLE ONLY public.notification DROP CONSTRAINT notification_pkey;
       public            postgres    false    301               �   x�Ő=k�0�w��ws��+S�F���.�r,0� ���Q��4J��pq<�\���{���;�f�m���^��JR�x+��
/!K�8	�ٮ.�� \�A���X�o��#q�Y���r�A����~�2��n�z���7�N�����1����8���e�:_8j1K�|�I�:��P�1�i��'��R��f��P�����s���r�en����_�4���*8L�i1Kq�^!��B�i��"     