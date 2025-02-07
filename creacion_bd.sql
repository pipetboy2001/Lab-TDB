PGDMP         6        	    	    z           voluntariado    12.12    12.6 %    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    17887    voluntariado    DATABASE     j   CREATE DATABASE voluntariado WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C' LC_CTYPE = 'C';
    DROP DATABASE voluntariado;
                postgres    false            �            1259    17888    eme_habilidad    TABLE     �   CREATE TABLE public.eme_habilidad (
    id numeric(8,0) NOT NULL,
    id_emergencia numeric(6,0),
    id_habilidad numeric(4,0)
);
 !   DROP TABLE public.eme_habilidad;
       public         heap    postgres    false            �            1259    17891 
   emergencia    TABLE     �   CREATE TABLE public.emergencia (
    id numeric(6,0) NOT NULL,
    nombre character varying(100),
    descrip character varying(400),
    finicio date,
    ffin date,
    id_institucion numeric(4,0)
);
    DROP TABLE public.emergencia;
       public         heap    postgres    false            �            1259    17897    estado_tarea    TABLE     f   CREATE TABLE public.estado_tarea (
    id numeric(2,0) NOT NULL,
    descrip character varying(20)
);
     DROP TABLE public.estado_tarea;
       public         heap    postgres    false            �            1259    17900 	   habilidad    TABLE     d   CREATE TABLE public.habilidad (
    id numeric(4,0) NOT NULL,
    descrip character varying(100)
);
    DROP TABLE public.habilidad;
       public         heap    postgres    false            �            1259    17903    institucion    TABLE     �   CREATE TABLE public.institucion (
    id numeric(4,0) NOT NULL,
    nombre character varying(100),
    descrip character varying(400)
);
    DROP TABLE public.institucion;
       public         heap    postgres    false            �            1259    17909    ranking    TABLE     �   CREATE TABLE public.ranking (
    id numeric(8,0) NOT NULL,
    id_voluntario numeric(8,0),
    id_tarea numeric(8,0),
    puntaje numeric(3,0),
    flg_invitado numeric(1,0),
    flg_participa numeric(1,0)
);
    DROP TABLE public.ranking;
       public         heap    postgres    false            �           0    0    TABLE ranking    COMMENT     u   COMMENT ON TABLE public.ranking IS 'los flgInvitado, flgParticipa 1 si la respuesta es si, 2 si la respuesta es no';
          public          postgres    false    207            �            1259    17912    tarea    TABLE     *  CREATE TABLE public.tarea (
    id numeric(8,0) NOT NULL,
    nombre character varying(60),
    descrip character varying(300),
    cant_vol_requeridos numeric(4,0),
    cant_vol_inscritos numeric(4,0),
    id_emergencia numeric(6,0),
    finicio date,
    ffin date,
    id_estado numeric(2,0)
);
    DROP TABLE public.tarea;
       public         heap    postgres    false            �            1259    17915    requeridos_emergencia    VIEW     '  CREATE VIEW public.requeridos_emergencia AS
 SELECT emergencia.id AS emergencia,
    sum(tarea.cant_vol_requeridos) AS requeridos
   FROM public.tarea,
    public.emergencia
  WHERE (tarea.id_emergencia = emergencia.id)
  GROUP BY emergencia.id
  ORDER BY (sum(tarea.cant_vol_requeridos)) DESC;
 (   DROP VIEW public.requeridos_emergencia;
       public          postgres    false    208    208    203            �            1259    17919    tarea_habilidad    TABLE     }   CREATE TABLE public.tarea_habilidad (
    id numeric(8,0) NOT NULL,
    id_emehab numeric(8,0),
    id_tarea numeric(8,0)
);
 #   DROP TABLE public.tarea_habilidad;
       public         heap    postgres    false            �            1259    17922    vol_habilidad    TABLE     �   CREATE TABLE public.vol_habilidad (
    id numeric(8,0) NOT NULL,
    id_voluntario numeric(8,0),
    id_habilidad numeric(8,0)
);
 !   DROP TABLE public.vol_habilidad;
       public         heap    postgres    false            �            1259    17925 
   voluntario    TABLE     z   CREATE TABLE public.voluntario (
    id numeric(8,0) NOT NULL,
    nombre character varying(100),
    fnacimiento date
);
    DROP TABLE public.voluntario;
       public         heap    postgres    false            �           2606    17929     eme_habilidad eme_habilidad_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.eme_habilidad
    ADD CONSTRAINT eme_habilidad_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.eme_habilidad DROP CONSTRAINT eme_habilidad_pkey;
       public            postgres    false    202            �           2606    17931    emergencia emergencia_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.emergencia
    ADD CONSTRAINT emergencia_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.emergencia DROP CONSTRAINT emergencia_pkey;
       public            postgres    false    203            �           2606    17933    estado_tarea estado_tarea_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.estado_tarea
    ADD CONSTRAINT estado_tarea_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.estado_tarea DROP CONSTRAINT estado_tarea_pkey;
       public            postgres    false    204            �           2606    17935    habilidad habilidad_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.habilidad
    ADD CONSTRAINT habilidad_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.habilidad DROP CONSTRAINT habilidad_pkey;
       public            postgres    false    205            �           2606    17937    institucion institucion_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.institucion
    ADD CONSTRAINT institucion_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.institucion DROP CONSTRAINT institucion_pkey;
       public            postgres    false    206            �           2606    17939    ranking ranking_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.ranking
    ADD CONSTRAINT ranking_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.ranking DROP CONSTRAINT ranking_pkey;
       public            postgres    false    207            �           2606    17941 $   tarea_habilidad tarea_habilidad_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.tarea_habilidad
    ADD CONSTRAINT tarea_habilidad_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.tarea_habilidad DROP CONSTRAINT tarea_habilidad_pkey;
       public            postgres    false    210            �           2606    17943    tarea tarea_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.tarea
    ADD CONSTRAINT tarea_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.tarea DROP CONSTRAINT tarea_pkey;
       public            postgres    false    208            �           2606    17945     vol_habilidad vol_habilidad_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.vol_habilidad
    ADD CONSTRAINT vol_habilidad_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.vol_habilidad DROP CONSTRAINT vol_habilidad_pkey;
       public            postgres    false    211            �           2606    17947    voluntario voluntario_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.voluntario
    ADD CONSTRAINT voluntario_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.voluntario DROP CONSTRAINT voluntario_pkey;
       public            postgres    false    212            �           2606    17948 "   eme_habilidad fk_emehab_emergencia    FK CONSTRAINT     �   ALTER TABLE ONLY public.eme_habilidad
    ADD CONSTRAINT fk_emehab_emergencia FOREIGN KEY (id_emergencia) REFERENCES public.emergencia(id);
 L   ALTER TABLE ONLY public.eme_habilidad DROP CONSTRAINT fk_emehab_emergencia;
       public          postgres    false    3047    203    202            �           2606    17953 !   eme_habilidad fk_emehab_habilidad    FK CONSTRAINT     �   ALTER TABLE ONLY public.eme_habilidad
    ADD CONSTRAINT fk_emehab_habilidad FOREIGN KEY (id_habilidad) REFERENCES public.habilidad(id);
 K   ALTER TABLE ONLY public.eme_habilidad DROP CONSTRAINT fk_emehab_habilidad;
       public          postgres    false    205    202    3051            �           2606    17958 $   emergencia fk_emergencia_institucion    FK CONSTRAINT     �   ALTER TABLE ONLY public.emergencia
    ADD CONSTRAINT fk_emergencia_institucion FOREIGN KEY (id_institucion) REFERENCES public.institucion(id);
 N   ALTER TABLE ONLY public.emergencia DROP CONSTRAINT fk_emergencia_institucion;
       public          postgres    false    3053    206    203            �           2606    17963    ranking fk_ranking_tarea    FK CONSTRAINT     x   ALTER TABLE ONLY public.ranking
    ADD CONSTRAINT fk_ranking_tarea FOREIGN KEY (id_tarea) REFERENCES public.tarea(id);
 B   ALTER TABLE ONLY public.ranking DROP CONSTRAINT fk_ranking_tarea;
       public          postgres    false    207    208    3057            �           2606    17968    ranking fk_ranking_voluntario    FK CONSTRAINT     �   ALTER TABLE ONLY public.ranking
    ADD CONSTRAINT fk_ranking_voluntario FOREIGN KEY (id_voluntario) REFERENCES public.voluntario(id);
 G   ALTER TABLE ONLY public.ranking DROP CONSTRAINT fk_ranking_voluntario;
       public          postgres    false    3063    207    212            �           2606    17973    tarea fk_tarea_emergencia    FK CONSTRAINT     �   ALTER TABLE ONLY public.tarea
    ADD CONSTRAINT fk_tarea_emergencia FOREIGN KEY (id_emergencia) REFERENCES public.emergencia(id);
 C   ALTER TABLE ONLY public.tarea DROP CONSTRAINT fk_tarea_emergencia;
       public          postgres    false    3047    208    203            �           2606    17978    tarea fk_tarea_estadotarea    FK CONSTRAINT     �   ALTER TABLE ONLY public.tarea
    ADD CONSTRAINT fk_tarea_estadotarea FOREIGN KEY (id_estado) REFERENCES public.estado_tarea(id);
 D   ALTER TABLE ONLY public.tarea DROP CONSTRAINT fk_tarea_estadotarea;
       public          postgres    false    3049    204    208            �           2606    17983 "   tarea_habilidad fk_tareahab_emehab    FK CONSTRAINT     �   ALTER TABLE ONLY public.tarea_habilidad
    ADD CONSTRAINT fk_tareahab_emehab FOREIGN KEY (id_emehab) REFERENCES public.eme_habilidad(id);
 L   ALTER TABLE ONLY public.tarea_habilidad DROP CONSTRAINT fk_tareahab_emehab;
       public          postgres    false    3045    210    202                        2606    17988 !   tarea_habilidad fk_tareahab_tarea    FK CONSTRAINT     �   ALTER TABLE ONLY public.tarea_habilidad
    ADD CONSTRAINT fk_tareahab_tarea FOREIGN KEY (id_tarea) REFERENCES public.tarea(id);
 K   ALTER TABLE ONLY public.tarea_habilidad DROP CONSTRAINT fk_tareahab_tarea;
       public          postgres    false    210    3057    208                       2606    17993 !   vol_habilidad fk_volhab_habilidad    FK CONSTRAINT     �   ALTER TABLE ONLY public.vol_habilidad
    ADD CONSTRAINT fk_volhab_habilidad FOREIGN KEY (id_habilidad) REFERENCES public.habilidad(id);
 K   ALTER TABLE ONLY public.vol_habilidad DROP CONSTRAINT fk_volhab_habilidad;
       public          postgres    false    211    3051    205                       2606    17998 "   vol_habilidad fk_volhab_voluntario    FK CONSTRAINT     �   ALTER TABLE ONLY public.vol_habilidad
    ADD CONSTRAINT fk_volhab_voluntario FOREIGN KEY (id_voluntario) REFERENCES public.voluntario(id);
 L   ALTER TABLE ONLY public.vol_habilidad DROP CONSTRAINT fk_volhab_voluntario;
       public          postgres    false    211    212    3063           