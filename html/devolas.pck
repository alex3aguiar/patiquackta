GDPC                 �                                                                         T   res://.godot/exported/133200997/export-362256a061aa8890e9a1e558b11e5ec3-node_2d.scn �       >      ^�Iw���80ꊕ�    ,   res://.godot/global_script_class_cache.cfg  �4             ��Р�8���8~$}P�    P   res://.godot/imported/devolas123-Sheet.png-1a79d0ef65baf8388a4964a6d940581c.ctex�            ��37�կ�C���⩒    D   res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex�      �      �̛�*$q�*�́     H   res://.godot/imported/idlet.png-0a9818e46b51423b1d7d174bda32ef28.ctex   P      �      n�篕�����pǪ�\�       res://.godot/uid_cache.bin  `8      q      ��C�4�5�M�(����H       res://CharacterBody2D.gd        �      y�8�@�_�:��
�    $   res://devolas123-Sheet.png.import   �      �       �r��9vb�R�0�|       res://icon.svg  �4      �      C��=U���^Qu��U3       res://icon.svg.import   �      �       ���zD3��77�v�
)       res://idlet.png.import          �       ���y��Ox;��a77��       res://node_2d.tscn.remap4      d       s�OR��0*�FC       res://project.binary�:      H      �T�,*�	+^��n0�1        extends CharacterBody2D


const SPEED = 600.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")
	$AnimatedSprite2D.flip_h = false
	if direction:
		print(direction)
		velocity.x = direction * SPEED
		$AnimatedSprite2D.play("run")
		if direction < 0:
			$AnimatedSprite2D.flip_h = true
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		$AnimatedSprite2D.play("idle")

	move_and_slide()
 GST2   �  /      ����               �/        �  RIFF�  WEBPVP8L�  /��g�4�dU����)�l������(��$)Rh|�{r"�0��ȶ�,n�KFFDHe�HІ!h�6.�:��I ��694�VXXB�}R�Wt�[=��,���W�?,��J_ؿ_в.��Ê������^��������a��!x�m+ocmۼ�Į��EڕK�%[��%����_�\ք�x/�E����H�$I�ި��i�93����ǬV���qV[��1+�Rڌ���U�VV�9�+��U[�ök���m�0&���Ph[.���	�a�\:���0���i�G�$���Ť�>�9F�2���+��e�10�EF�������50�sa�[o�0�X�0���J�)���]	>0����r_�D:X��v����J0-E�H�q��v�q�_��ڜ�E�w�v�e�S��M��c�{+aJB��4�V�<���AHS|:z��H%L�h
�]0��+���<��@>��8����X��BѴDowcE��ED����t �VSA��doy�\[M?��J�N`5�+�9���\�߷Z�hO��#,��~��L�Ц�3� �V6���ou��9#'����</��4����!�t�N����,ME�m���+�n��`ى'��4�%�Ԗj�J���AYE!봘�<I�����2�c�S�s�$�ܢL�@M[��u����)S�j�\�,���C=*���z��ͦ|0Ċ����-��R�d�i� �s���CQM2Sz+f
�=�4��/�i�*O�j�{k[9�U��[��J0��i��@̦9�W�y���A>�x	HeF�b��)��	Ȧ"��iP@�m%pٛ��V�dCo%L��<S�I016�����J���@�jX{C�O�����z �MS��]i�����|KD����t�\�y�W�X��J�
��>�e��-�����$3zc�z�{�i�u@XM_�`�(�ZM��8	��X��?�1����v�5��y�h���.8*_���(-2�hFf��ӂpw� +�Z���e:K*��b��M�Eߋm�=SA�)�1MUx�⋸̦��G�A!fS��i���pQL�7��x\t]��Ms�1�EA�������!�;����߹�x��2 ��Qt�{G��=���L��i�z&Ѵ�KYK3U��0]��`*������"�^�J���%0���lj���B����l�L�!`N#_T�0�G.yl������I��F3M�1U���@�ߚ��-������V�4����λa��j!�==Ѯ���n�J��t��'+[ �V���6��/�/�d�ӏ.�4L��Sσ�|�VjWK'��[	�M��G \�򹥘��ğTpLx��H�ŉ�!�n�H���yW9��	����v���m�� '����d'�xtѦa��sΩ��riu�2�C�� ���x�Lå�t]u��4��M)��W0�(M��Ա�*��>���#�$����D����ka&�z�R�O��ӓn
W�Ϲl�t���f5��6��1\��$�p�����o�i����$�p�M��l��#��]U>�
�
��Gc4�<�9����%�L2uާ(:��O2N=���
laW
'������M}ӷ�#��L7u���;�>R�t��*{�@���K~� �5���Ƒ����	cy��pL�3�Sv
��3���¼��\��������ɊM������#R�tS��3S�i%�j�=�S���d��Ӿ��+@1��8Ҧa�_��R��:���QVԤ�r'�`�������=���o�8�/ӷ7�w*5�bW���S���_�n��nD�b)a������ȘF�Sϋ������j:�I�0Љ��T�@����B�k5-��4X�
����)�☺`���p)t��f���c1AJ2�7�ip�U�~{W"p|}�w��P�)m����aI\"�PFz-e�5 ؜�ˢ��
����R���&�C���>�>�7�)��F�o�+���o%L뛆��d��v��M�|G�]��1��sL�	�됦Q���88ꌡ7�T����ئp��
M��D	�����U�q��r�L��1�za��ȁ�	)|�m�pRp�H2�7��a���)\M3J�W˄����W���"iJ�F�S���KOeH'���]`���<F�td��5�z�NSX#<N݉�˝r�MÎXcީg?(F�U
�iF�Y��M���U�~��������ej�	+���8ON�dD��<� ��tl�xYQ3iʛ���:�,A�33x
��$�zc���Wk��cfj*����y��+�l����_�P�3�����K�)i$�O=z0Y���+�z+a:�jM��	�13���|�p�.�P���;�F�|�^<��Y���)$LU���M��M�>��K�����k���,�bS:��5�d�s/���8oza��ap�O2���c���4]�R�pΕ1��'����a��i}4:��kSy� _�~��i�'E�4�u]�W��5������q>V��udDG�of`W��E���3��4��Ȕǂ���b]C�y���b��L�Ӡ�L@�I����{g���_m��cfjK���"�P,�v��
izLk�ƒ.?M�o)�FDF��*|�	�>�#eJS����" �9ވ�jg�bJ���%Y,�@���A��3�o�ʔ���Ka�� �g� K��!|I4�ڧA�Z�����2�U�~�I��@�.yW�@$'dYLdԕ��AM��i�,u�2�$��*w���e���S#o��T,@�W�L}[��W@���4VB?&S�4��%DM��Ddr�7�M�:Sq;�<@�<�����A�lc0ꦍ�_�i%�X��D�5�Y"�Yw�t�>�O�vF^�>l�ƸB��j���ThK_��l�@��a��i����PS��LSIݽ�q�f�O���ؙ��V E܋�,W5��a�Ӛ�!۹:��7��S=��M�$Wݛ¿�|]��G�"��=bA)�1r�I�k��ݛ�ߋ�       [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://ded6g6yrk8a6a"
path="res://.godot/imported/devolas123-Sheet.png-1a79d0ef65baf8388a4964a6d940581c.ctex"
metadata={
"vram_texture": false
}
    GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�H�$�n윦���z�x����դ�<����q����F��Z��?&,
ScI_L �;����In#Y��0�p~��Z��m[��N����R,��#"� )���d��mG�������ڶ�$�ʹ���۶�=���mϬm۶mc�9��z��T��7�m+�}�����v��ح�m�m������$$P�����එ#���=�]��SnA�VhE��*JG�
&����^x��&�+���2ε�L2�@��		��S�2A�/E���d"?���Dh�+Z�@:�Gk�FbWd�\�C�Ӷg�g�k��Vo��<c{��4�;M�,5��ٜ2�Ζ�yO�S����qZ0��s���r?I��ѷE{�4�Ζ�i� xK�U��F�Z�y�SL�)���旵�V[�-�1Z�-�1���z�Q�>�tH�0��:[RGň6�=KVv�X�6�L;�N\���J���/0u���_��U��]���ǫ)�9��������!�&�?W�VfY�2���༏��2kSi����1!��z+�F�j=�R�O�{�
ۇ�P-�������\����y;�[ ���lm�F2K�ޱ|��S��d)é�r�BTZ)e�� ��֩A�2�����X�X'�e1߬���p��-�-f�E�ˊU	^�����T�ZT�m�*a|	׫�:V���G�r+�/�T��@U�N׼�h�+	*�*sN1e�,e���nbJL<����"g=O��AL�WO!��߈Q���,ɉ'���lzJ���Q����t��9�F���A��g�B-����G�f|��x��5�'+��O��y��������F��2�����R�q�):VtI���/ʎ�UfěĲr'�g�g����5�t�ۛ�F���S�j1p�)�JD̻�ZR���Pq�r/jt�/sO�C�u����i�y�K�(Q��7őA�2���R�ͥ+lgzJ~��,eA��.���k�eQ�,l'Ɨ�2�,eaS��S�ԟe)��x��ood�d)����h��ZZ��`z�պ��;�Cr�rpi&��՜�Pf��+���:w��b�DUeZ��ڡ��iA>IN>���܋�b�O<�A���)�R�4��8+��k�Jpey��.���7ryc�!��M�a���v_��/�����'��t5`=��~	`�����p\�u����*>:|ٻ@�G�����wƝ�����K5�NZal������LH�]I'�^���+@q(�q2q+�g�}�o�����S߈:�R�݉C������?�1�.��
�ڈL�Fb%ħA ����Q���2�͍J]_�� A��Fb�����ݏ�4o��'2��F�  ڹ���W�L |����YK5�-�E�n�K�|�ɭvD=��p!V3gS��`�p|r�l	F�4�1{�V'&����|pj� ߫'ş�pdT�7`&�
�1g�����@D�˅ �x?)~83+	p �3W�w��j"�� '�J��CM�+ �Ĝ��"���4� ����nΟ	�0C���q'�&5.��z@�S1l5Z��]�~L�L"�"�VS��8w.����H�B|���K(�}
r%Vk$f�����8�ڹ���R�dϝx/@�_�k'�8���E���r��D���K�z3�^���Vw��ZEl%~�Vc���R� �Xk[�3��B��Ğ�Y��A`_��fa��D{������ @ ��dg�������Mƚ�R�`���s����>x=�����	`��s���H���/ū�R�U�g�r���/����n�;�SSup`�S��6��u���⟦;Z�AN3�|�oh�9f�Pg�����^��g�t����x��)Oq�Q�My55jF����t9����,�z�Z�����2��#�)���"�u���}'�*�>�����ǯ[����82һ�n���0�<v�ݑa}.+n��'����W:4TY�����P�ר���Cȫۿ�Ϗ��?����Ӣ�K�|y�@suyo�<�����{��x}~�����~�AN]�q�9ޝ�GG�����[�L}~�`�f%4�R!1�no���������v!�G����Qw��m���"F!9�vٿü�|j�����*��{Ew[Á��������u.+�<���awͮ�ӓ�Q �:�Vd�5*��p�ioaE��,�LjP��	a�/�˰!{g:���3`=`]�2��y`�"��N�N�p���� ��3�Z��䏔��9"�ʞ l�zP�G�ߙj��V�>���n�/��׷�G��[���\��T��Ͷh���ag?1��O��6{s{����!�1�Y�����91Qry��=����y=�ٮh;�����[�tDV5�chȃ��v�G ��T/'XX���~Q�7��+[�e��Ti@j��)��9��J�hJV�#�jk�A�1�^6���=<ԧg�B�*o�߯.��/�>W[M���I�o?V���s��|yu�xt��]�].��Yyx�w���`��C���pH��tu�w�J��#Ef�Y݆v�f5�e��8��=�٢�e��W��M9J�u�}]釧7k���:�o�����Ç����ս�r3W���7k���e�������ϛk��Ϳ�_��lu�۹�g�w��~�ߗ�/��ݩ�-�->�I�͒���A�	���ߥζ,�}�3�UbY?�Ӓ�7q�Db����>~8�]
� ^n׹�[�o���Z-�ǫ�N;U���E4=eȢ�vk��Z�Y�j���k�j1�/eȢK��J�9|�,UX65]W����lQ-�"`�C�.~8ek�{Xy���d��<��Gf�ō�E�Ӗ�T� �g��Y�*��.͊e��"�]�d������h��ڠ����c�qV�ǷN��6�z���kD�6�L;�N\���Y�����
�O�ʨ1*]a�SN�=	fH�JN�9%'�S<C:��:`�s��~��jKEU�#i����$�K�TQD���G0H�=�� �d�-Q�H�4�5��L�r?����}��B+��,Q�yO�H�jD�4d�����0*�]�	~�ӎ�.�"����%
��d$"5zxA:�U��H���H%jس{���kW��)�	8J��v�}�rK�F�@�t)FXu����G'.X�8�KH;���[             [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://cc4v8eqk0o22l"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}
                GST2   .   #      ����               . #        x  RIFFp  WEBPVP8Ld  /-��` ���`4�C&�I���H���p��s@N�[B��m#�dH���i,�[�?Z �_P�	�N�O��>�1��U7�7!@�m�
�*�S��͒� ����;r�6��df���g��0�L�i�gs�p�x:�� rQ|Ό��R|.z������D�?� R������M��k44����<�4(���c�:��9���NI��R�_��̕�IO��ݱ��Po�S+t�����b<���s�,��x�a�<��@��7Y!�:�?�֚
KrH��5���o�9\s���ZΈWk�b�ŮF5���G������	Ts6��QNn�?A�*9h�ٶ��@��RZ�� �����k(lHr�[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://cu1bjje8nrhu"
path="res://.godot/imported/idlet.png-0a9818e46b51423b1d7d174bda32ef28.ctex"
metadata={
"vram_texture": false
}
                RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    radius    height    script    atlas    region    margin    filter_clip    animations    size 	   _bundled       Script    res://CharacterBody2D.gd ��������
   Texture2D    res://devolas123-Sheet.png �@�/�\g      local://CapsuleShape2D_luqt7 �         local://AtlasTexture_m0iph *         local://AtlasTexture_4eca4 o         local://AtlasTexture_djeys �         local://AtlasTexture_jc5pf �         local://AtlasTexture_5oug1 >         local://AtlasTexture_64qpi �         local://AtlasTexture_tml8q �         local://AtlasTexture_8owen          local://AtlasTexture_ea4ux R         local://AtlasTexture_p6tlr �         local://AtlasTexture_58tth �         local://AtlasTexture_psd5n !         local://AtlasTexture_c22n7 f         local://AtlasTexture_hjihy �         local://AtlasTexture_dp6qm �         local://AtlasTexture_wp4uy 5	         local://AtlasTexture_encnx z	         local://AtlasTexture_1bgao �	         local://SpriteFrames_yyhe5 
         local://RectangleShape2D_oro5b �         local://PackedScene_syelt �         CapsuleShape2D            B        ,C         AtlasTexture                        �C      HB  <B         AtlasTexture                        �C      HB  <B         AtlasTexture                        �C      HB  <B         AtlasTexture                       �	D      HB  <B         AtlasTexture                        D      HB  <B         AtlasTexture                       �"D      HB  <B         AtlasTexture                        /D      HB  <B         AtlasTexture                       �;D      HB  <B         AtlasTexture                        HD      HB  <B         AtlasTexture                       �TD      HB  <B         AtlasTexture                        �C      HB  <B         AtlasTexture                        �C      HB  <B         AtlasTexture                                HB  <B         AtlasTexture                        HB      HB  <B         AtlasTexture                        �B      HB  <B         AtlasTexture                        C      HB  <B         AtlasTexture                        HC      HB  <B         AtlasTexture                        zC      HB  <B         SpriteFrames    
                     name ,      atack       speed      �@      loop             frames    
               texture             	   duration      �?            texture             	   duration      �?            texture             	   duration      �?            texture             	   duration      �?            texture             	   duration      �?            texture             	   duration      �?            texture             	   duration      �?            texture             	   duration      �?            texture       	      	   duration      �?            texture       
      	   duration      �?            name ,      idle       speed      �@      loop             frames                   texture             	   duration      �?            texture             	   duration      �?            name ,      run       speed      �@      loop             frames                   texture             	   duration      �?            texture             	   duration      �?            texture             	   duration      �?            texture             	   duration      �?            texture             	   duration      �?            texture             	   duration      �?         RectangleShape2D       
    ��D  �A         PackedScene          	         names "         Node2D 	   position    CharacterBody2D    script    CollisionShape2D    shape    AnimatedSprite2D 	   rotation    scale    sprite_frames 
   animation    frame_progress    StaticBody2D    	   variants       
    ��C  �C          
     @@  ��          
   ��?@  |�   ���
   �`-@�dB@         ,      idle    gE�>
    � C  �A               node_count             nodes     B   ��������        ����                            ����                          ����                                ����                     	      
         	                     ����                     ����      
                   conn_count              conns               node_paths              editable_instances              version             RSRC  [remap]

path="res://.godot/exported/133200997/export-362256a061aa8890e9a1e558b11e5ec3-node_2d.scn"
            list=Array[Dictionary]([])
     <svg height="128" width="128" xmlns="http://www.w3.org/2000/svg"><rect x="2" y="2" width="124" height="124" rx="14" fill="#363d52" stroke="#212532" stroke-width="4"/><g transform="scale(.101) translate(122 122)"><g fill="#fff"><path d="M105 673v33q407 354 814 0v-33z"/><path fill="#478cbf" d="m105 673 152 14q12 1 15 14l4 67 132 10 8-61q2-11 15-15h162q13 4 15 15l8 61 132-10 4-67q3-13 15-14l152-14V427q30-39 56-81-35-59-83-108-43 20-82 47-40-37-88-64 7-51 8-102-59-28-123-42-26 43-46 89-49-7-98 0-20-46-46-89-64 14-123 42 1 51 8 102-48 27-88 64-39-27-82-47-48 49-83 108 26 42 56 81zm0 33v39c0 276 813 276 813 0v-39l-134 12-5 69q-2 10-14 13l-162 11q-12 0-16-11l-10-65H447l-10 65q-4 11-16 11l-162-11q-12-3-14-13l-5-69z"/><path d="M483 600c3 34 55 34 58 0v-86c-3-34-55-34-58 0z"/><circle cx="725" cy="526" r="90"/><circle cx="299" cy="526" r="90"/></g><g fill="#414042"><circle cx="307" cy="532" r="60"/><circle cx="717" cy="532" r="60"/></g></g></svg>
             �@�/�\g   res://devolas123-Sheet.png͂�ذE   res://icon.svg����h�   res://idlet.png��~[~�I   res://node_2d.tscn�d,��%   res://html/devolas.icon.png�C�3hd'   res://html/devolas.apple-touch-icon.png$�Ի<ݝ3   res://html/devolas.png)&�v�ٕk   res://html/devolas.144x144.png�9nw��   res://html/devolas.180x180.png-��&sl�C   res://html/devolas.512x512.png�@�%Hʩ6   res://html/devolas.icon.png%��,D�
   res://html/devolas.180x180.png��5���s   res://html/devolas.512x512.png9��sB�:   res://html/devolas.png�r�I��   res://html/devolas.144x144.png�D��3'   res://html/devolas.apple-touch-icon.png               ECFG	      application/config/name         devolas    application/run/main_scene         res://node_2d.tscn     application/config/features(   "         4.2    GL Compatibility       application/config/icon         res://icon.svg     input/ui_left�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device         	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode     @    physical_keycode       	   key_label             unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script            InputEventJoypadMotion        resource_local_to_scene           resource_name             device            axis       
   axis_value       ��   script            InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   A   	   key_label             unicode    a      echo          script         input/ui_right�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device         	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode     @    physical_keycode       	   key_label             unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script            InputEventJoypadMotion        resource_local_to_scene           resource_name             device            axis       
   axis_value       �?   script            InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   D   	   key_label             unicode    d      echo          script      9   rendering/textures/canvas_textures/default_texture_filter         #   rendering/renderer/rendering_method         gl_compatibility*   rendering/renderer/rendering_method.mobile         gl_compatibility        