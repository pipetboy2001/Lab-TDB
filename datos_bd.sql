PGDMP     #    6        	    	    z           voluntariado    12.12    12.6     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    17887    voluntariado    DATABASE     j   CREATE DATABASE voluntariado WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C' LC_CTYPE = 'C';
    DROP DATABASE voluntariado;
                postgres    false            �          0    17903    institucion 
   TABLE DATA           :   COPY public.institucion (id, nombre, descrip) FROM stdin;
    public          postgres    false    206   �       �          0    17891 
   emergencia 
   TABLE DATA           X   COPY public.emergencia (id, nombre, descrip, finicio, ffin, id_institucion) FROM stdin;
    public          postgres    false    203   N       �          0    17900 	   habilidad 
   TABLE DATA           0   COPY public.habilidad (id, descrip) FROM stdin;
    public          postgres    false    205   �       �          0    17888    eme_habilidad 
   TABLE DATA           H   COPY public.eme_habilidad (id, id_emergencia, id_habilidad) FROM stdin;
    public          postgres    false    202   �       �          0    17897    estado_tarea 
   TABLE DATA           3   COPY public.estado_tarea (id, descrip) FROM stdin;
    public          postgres    false    204          �          0    17912    tarea 
   TABLE DATA           �   COPY public.tarea (id, nombre, descrip, cant_vol_requeridos, cant_vol_inscritos, id_emergencia, finicio, ffin, id_estado) FROM stdin;
    public          postgres    false    208   K       �          0    17925 
   voluntario 
   TABLE DATA           =   COPY public.voluntario (id, nombre, fnacimiento) FROM stdin;
    public          postgres    false    212   E       �          0    17909    ranking 
   TABLE DATA           d   COPY public.ranking (id, id_voluntario, id_tarea, puntaje, flg_invitado, flg_participa) FROM stdin;
    public          postgres    false    207   �       �          0    17919    tarea_habilidad 
   TABLE DATA           B   COPY public.tarea_habilidad (id, id_emehab, id_tarea) FROM stdin;
    public          postgres    false    210   �       �          0    17922    vol_habilidad 
   TABLE DATA           H   COPY public.vol_habilidad (id, id_voluntario, id_habilidad) FROM stdin;
    public          postgres    false    211   �       �   �   x�-�1
�0��Y>�Oڴ=B ��t�"�%$;9W�ЋՁn��=�T�Rm���-(�٣���j5�,���*�B��ϸQ`�^�!�aʢ��*�T)SJ\P�tw��@z\�Y��?7\��(�=;Y���3      �   7  x�u�MR�0���)r�F�S��ܹi�v&U��	x���bv�l��������$Z��3�A��&�>��ߢ*�)�c�+�UI�I�jSk�Z�xU��,�$5�f��+^���oV��śޮx����q�@��br��,^P] �k5���*G�@$���b��� .xS��)�r�K-��9v�;X�zd���;�;�1DzQO���1���������%Hг�������e�8e�>D��A�f��y$�;�娊��\)���)������H{2�����a�y���0e��q���L�Q˷���,y�0      �   C   x�3����HL���LIL1�2F�s� sM�L9�3s��8�R�3�KR�JR��9�srS�b���� �g      �      x�3�4�4�2�f\�@Ҝ+F��� "�      �   '   x�3�L�S((�ON-��2���K��-�I-������ ��	X      �   �   x�}�;n�0D��)����>@
wҦ��M@@"��:>K.��>A�X �!93�K�g�:�-��@Xm�I�U�ۤQv���/g�0�ր�b=ԫ��5ԇ�^o~�3R����3U�N�t�1E�����y�)���c`����Z�.+��d�&�"�z��9��`�
y�+x+5�4�_�B��C/�.a&�,��x�쟨-_�Ҟ��s�
ii9�i���7`V~TJ�mX�-      �   8   x�3�J,��,����2�,H-H�4200�5��54�2��*M��4������qqq {�V      �   '   x�3�4�4�4��\�@ڄ�� �1
�p���1z\\\ l�      �      x������ � �      �   -   x��9 0��&�d�G�Q�kn��&�r)ٖ���;����     