rm -rf temp
mkdir temp

echo "KeyStrPress Control_L KeyStrPress Tab KeyStrRelease Tab KeyStrRelease Control_L" > temp/alternar.txt

echo "KeyStrPress Control_L KeyStrPress l KeyStrRelease l KeyStrRelease Control_L" > temp/limpar.txt

echo "KeyStrPress Control_L KeyStrPress Shift_L KeyStrPress equal KeyStrRelease equal KeyStrRelease Shift_L KeyStrRelease Control_L " > temp/zoom.txt

echo "KeyStrPress Control_L KeyStrPress Shift_L KeyStrPress e KeyStrRelease e KeyStrRelease Control_L KeyStrRelease Shift_L" > temp/ctrl_e.txt

echo "KeyStrPress Control_L KeyStrPress Shift_L KeyStrPress Left KeyStrRelease Left KeyStrRelease Shift_L KeyStrRelease Control_L" > temp/left.txt

echo "KeyStrPress Control_L KeyStrPress Shift_L KeyStrPress Right KeyStrRelease Right KeyStrRelease Shift_L KeyStrRelease Control_L" > temp/right.txt

echo "KeyStrPress Control_L KeyStrPress c KeyStrRelease c KeyStrRelease Control_L" > temp/ctrl_c.txt

echo "KeyStrPress Escape KeyStrRelease Escape" > temp/esc.txt

cat << EOF > temp/newlinebelow.txt
String o
EOF

cat << EOF > temp/ps1.txt
String PS1="$ "
KeyStrPress Return KeyStrRelease Return
String clear
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/deletalinha3.txt
KeyStrPress Shift_L KeyStrPress semicolon KeyStrRelease semicolon KeyStrRelease Shift_L
String 3d
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/deleteall.txt
KeyStrPress Shift_L KeyStrPress semicolon KeyStrRelease semicolon KeyStrRelease Shift_L
String 1,
KeyStrPress Shift_R KeyStrPress 4 KeyStrRelease 4 KeyStrRelease Shift_R
String d
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/delete_line.txt
String dd
EOF

cat << EOF > temp/delete_one.txt
KeyStrPress Delete KeyStrRelease Delete
EOF

cat << EOF > temp/salvarfechar.txt
KeyStrPress Escape KeyStrRelease Escape
String :wq
KeyStrPress Return KeyStrRelease Return
EOF

echo "String i" > temp/edit.txt

cat << EOF > temp/enter_home.txt
String cd 
KeyStrPress dead_tilde KeyStrRelease dead_tilde KeyStrPress dead_tilde KeyStrRelease dead_tilde
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/remove_teste.txt
String rm -rf 
KeyStrPress dead_tilde KeyStrRelease dead_tilde KeyStrPress dead_tilde KeyStrRelease dead_tilde
String /teste
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/criar_pasta_teste.txt
String mkdir teste; cd teste
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/clone.txt
String git clone https://github.com/rg3915/drf-tutorial-grupy-sp.git
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/copy.txt
String cp -r 
KeyStrPress dead_tilde KeyStrRelease dead_tilde KeyStrPress dead_tilde KeyStrRelease dead_tilde
String /bkp/drf-tutorial-grupy-sp/ .
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/listar.txt
String ls -la drf-tutorial-grupy-sp
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/ls-la.txt
String ls -la
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/move_manage.txt
String mv drf-tutorial-grupy-sp/manage.py .
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/move_requirements.txt
String mv drf-tutorial-grupy-sp/requirements.txt .
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/move_myproject.txt
String mv drf-tutorial-grupy-sp/myproject .
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/delete_folder.txt
String rm -rf drf-tutorial-grupy-sp/
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/venv.txt
String python -m venv .venv
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/activate.txt
String source .venv/bin/activate
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/activate_temp.txt
String source 
KeyStrPress dead_tilde KeyStrRelease dead_tilde KeyStrPress dead_tilde KeyStrRelease dead_tilde
String /bkp/.venv/bin/activate
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/pa.txt
String pa
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/install.txt
String pip install -r requirements.txt; pip install -U pip
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/migrate.txt
String python manage.py makemigrations core; python manage.py migrate
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/createsuperuser.txt
String python manage.py createsuperuser --username='admin' --email='admin@django.com'
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/createsuperuser_regis.txt
String python manage.py createsuperuser --username='regis' --email='regis@example.com'
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/createsuperuser_willian.txt
String python manage.py createsuperuser --username='willian' --email='willian@example.com'
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/password.txt
String demodemo
KeyStrPress Return KeyStrRelease Return
EOF


cat << EOF > temp/shell.txt
String python manage.py shell
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/import.txt
String from myproject.core.models import Person
KeyStrPress Return KeyStrRelease Return
String from myproject.core.serializers import PersonSerializer
KeyStrPress Return KeyStrRelease Return
String from rest_framework.renderers import JSONRenderer
KeyStrPress Return KeyStrRelease Return
String from rest_framework.parsers import JSONParser
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/person1.txt
String Person.objects.create(first_name='Guido', last_name='Van Rossum', email='guido@email.com')
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/person2.txt
String Person.objects.create(first_name='Adrian', last_name='Holovaty', email='adrian@email.com')
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/person3.txt
String Person.objects.create(first_name='Jacob', last_name='Kaplan Moss', email='jacob@email.com')
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/exit_shell.txt
String exit()
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/mostrar_views.txt
String vim myproject/core/views.py
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/goto_line5.txt
KeyStrPress Shift_L KeyStrPress semicolon KeyStrRelease semicolon KeyStrRelease Shift_L
String 5
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/goto_line6.txt
KeyStrPress Shift_L KeyStrPress semicolon KeyStrRelease semicolon KeyStrRelease Shift_L
String 6
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/goto_line8.txt
KeyStrPress Shift_L KeyStrPress semicolon KeyStrRelease semicolon KeyStrRelease Shift_L
String 8
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/goto_line9.txt
KeyStrPress Shift_L KeyStrPress semicolon KeyStrRelease semicolon KeyStrRelease Shift_L
String 9
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/goto_line11.txt
KeyStrPress Shift_L KeyStrPress semicolon KeyStrRelease semicolon KeyStrRelease Shift_L
String 11
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/goto_line12.txt
KeyStrPress Shift_L KeyStrPress semicolon KeyStrRelease semicolon KeyStrRelease Shift_L
String 12
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/goto_line13.txt
KeyStrPress Shift_L KeyStrPress semicolon KeyStrRelease semicolon KeyStrRelease Shift_L
String 13
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/goto_line15.txt
KeyStrPress Shift_L KeyStrPress semicolon KeyStrRelease semicolon KeyStrRelease Shift_L
String 15
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/goto_line16.txt
KeyStrPress Shift_L KeyStrPress semicolon KeyStrRelease semicolon KeyStrRelease Shift_L
String 16
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/goto_line21.txt
KeyStrPress Shift_L KeyStrPress semicolon KeyStrRelease semicolon KeyStrRelease Shift_L
String 21
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/goto_line22.txt
KeyStrPress Shift_L KeyStrPress semicolon KeyStrRelease semicolon KeyStrRelease Shift_L
String 22
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/goto_line33.txt
KeyStrPress Shift_L KeyStrPress semicolon KeyStrRelease semicolon KeyStrRelease Shift_L
String 33
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/goto_line40.txt
KeyStrPress Shift_L KeyStrPress semicolon KeyStrRelease semicolon KeyStrRelease Shift_L
String 40
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/typePersonViewSet.txt
KeyStrPress Return KeyStrRelease Return
String class PersonViewSet(viewsets.ModelViewSet):
KeyStrPress Return KeyStrRelease Return
String     queryset = Person.objects.all()
KeyStrPress Return KeyStrRelease Return
String     serializer_class = PersonSerializer
KeyStrPress Return KeyStrRelease Return
EOF


cat << EOF > temp/msg_rodar_app.txt
KeyStrPress Shift_R KeyStrPress 3 KeyStrRelease Shift_R KeyStrRelease 3
String  rodar a app
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/runserver.txt
String ./manage.py runserver
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/http_users.txt
String http http://127.0.0.1:8000/users/
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/http_persons.txt
String http http://127.0.0.1:8000/api/persons/
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/curl_persons.txt
String curl http://127.0.0.1:8000/api/persons/
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/open_urls.txt
String vim myproject/urls.py
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/goto_line12.txt
KeyStrPress Shift_L KeyStrPress semicolon KeyStrRelease semicolon KeyStrRelease Shift_L
String 12
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/type_api_url.txt
KeyStrPress Shift_R KeyStrPress 3 KeyStrRelease Shift_R KeyStrRelease 3
EOF

cat << EOF > temp/type_url_router.txt
String router.register(r'persons', views.PersonViewSet)
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/msg_usando_mixins.txt
KeyStrPress Shift_R KeyStrPress 3 KeyStrRelease Shift_R KeyStrRelease 3
String  Usando Mixins
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/exit.txt
String exit
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/comentar.txt
KeyStrPress Shift_R KeyStrPress 3 KeyStrRelease Shift_R KeyStrRelease 3
EOF

cat << EOF > temp/type_view_generics.txt
String from rest_framework import generics
KeyStrPress Return KeyStrRelease Return
String from rest_framework import mixins
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/type_mixins.txt
String class PersonList(mixins.ListModelMixin,
KeyStrPress Return KeyStrRelease Return
String                  mixins.CreateModelMixin,
KeyStrPress Return KeyStrRelease Return
String                  generics.GenericAPIView):
KeyStrPress Return KeyStrRelease Return
String     queryset = Person.objects.all()
KeyStrPress Return KeyStrRelease Return
String     serializer_class = PersonSerializer
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String     def get(self, request, *args, **kwargs):
KeyStrPress Return KeyStrRelease Return
String         return self.list(request, *args, **kwargs)
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String     def post(self, request, *args, **kwargs):
KeyStrPress Return KeyStrRelease Return
String         return self.create(request, *args, **kwargs)
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String class PersonDetail(mixins.RetrieveModelMixin,
KeyStrPress Return KeyStrRelease Return
String                    mixins.UpdateModelMixin,
KeyStrPress Return KeyStrRelease Return
String                    mixins.DestroyModelMixin,
KeyStrPress Return KeyStrRelease Return
String                    generics.GenericAPIView):
KeyStrPress Return KeyStrRelease Return
String     queryset = Person.objects.all()
KeyStrPress Return KeyStrRelease Return
String     serializer_class = PersonSerializer
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String     def get(self, request, *args, **kwargs):
KeyStrPress Return KeyStrRelease Return
String         return self.retrieve(request, *args, **kwargs)
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String     def put(self, request, *args, **kwargs):
KeyStrPress Return KeyStrRelease Return
String         return self.update(request, *args, **kwargs)
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
String     def delete(self, request, *args, **kwargs):
KeyStrPress Return KeyStrRelease Return
String         return self.destroy(request, *args, **kwargs)
KeyStrPress Return KeyStrRelease Return
EOF


cat << EOF > temp/open_core_urls.txt
String vim myproject/core/urls.py
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/open_core_serializers.txt
String vim myproject/core/serializers.py
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/goto_end_line.txt
String A
EOF

cat << EOF > temp/backspace.txt
KeyStrPress BackSpace KeyStrRelease BackSpace
EOF


cat << EOF > temp/typePersonList.txt
String PersonList.as_view()),
EOF

cat << EOF > temp/move_down.txt
String j
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/move_right.txt
String l
EOF

cat << EOF > temp/move_up.txt
String k
EOF

cat << EOF > temp/typePersonDetail.txt
String PersonDetail.as_view()),
EOF

cat << EOF > temp/http_update.txt
String http PUT http://127.0.0.1:8000/api/persons/1/ first_name='Ada' last_name='Lovelace' email='ada@email.com'
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/msg_cbv.txt
KeyStrPress Shift_R KeyStrPress 3 KeyStrRelease Shift_R KeyStrRelease 3
String  Class Based View
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/type_ListCreateAPIView.txt
String class PersonList(generics.ListCreateAPIView):
EOF

cat << EOF > temp/type_RetrieveUpdateDestroyAPIView.txt
String class PersonDetail(generics.RetrieveUpdateDestroyAPIView):
EOF

cat << EOF > temp/msg_fim.txt
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
KeyStrPress Shift_R KeyStrPress 3 KeyStrRelease Shift_R KeyStrRelease 3
String  FIM
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
KeyStrPress Shift_R KeyStrPress 3 KeyStrRelease Shift_R KeyStrRelease 3
String  github.com/rg3915/drf-tutorial-python-day
KeyStrPress Return KeyStrRelease Return
KeyStrPress Return KeyStrRelease Return
KeyStrPress Shift_R KeyStrPress 3 KeyStrRelease Shift_R KeyStrRelease 3
String  github.com/grupy-sp/encontros
KeyStrPress Return KeyStrRelease Return
EOF

# xmacroplay ----------------------------------------------
answer="s"

continuar(){
    read -p "Deseja continuar? (S/n): " answer
    answer=${answer:-s}
    if [ "$answer" == "s" ]; then
        continue;
        xmacroplay -d 3 < temp/alternar.txt
    fi
}

continuar2(){
    read -p "Deseja continuar? (S/n): " answer
    answer=${answer:-s}
    if [ "$answer" == "s" ]; then
        continue;
        xmacroplay -d 3 < temp/alternar.txt
        xmacroplay -d 3 < temp/alternar.txt
    fi
}

xmacroplay -d 3 < temp/alternar.txt
sleep 1

xmacroplay -d 15 < temp/enter_home.txt # velocity 15
sleep 0.5
xmacroplay -d 5 < temp/remove_teste.txt
sleep 0.5
xmacroplay -d 15 < temp/criar_pasta_teste.txt # velocity 15
xmacroplay -d 3 < temp/alternar.txt

continuar

# xmacroplay -d 30 < temp/clone.txt # velocity 30
xmacroplay -d 30 < temp/copy.txt # velocity 30 # TEMP
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 15 < temp/limpar.txt
xmacroplay -d 15 < temp/listar.txt # velocity 15
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 30 < temp/move_manage.txt # velocity 30
sleep 0.5
xmacroplay -d 30 < temp/move_requirements.txt # velocity 30
sleep 0.5
xmacroplay -d 30 < temp/move_myproject.txt # velocity 30
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 15 < temp/limpar.txt
xmacroplay -d 15 < temp/ls-la.txt # velocity 15
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 15 < temp/delete_folder.txt # velocity 15
xmacroplay -d 3 < temp/alternar.txt

continuar

# xmacroplay -d 15 < temp/venv.txt # velocity 15
# xmacroplay -d 3 < temp/alternar.txt

# continuar

# xmacroplay -d 15 < temp/activate.txt # velocity 15
xmacroplay -d 15 < temp/activate_temp.txt # velocity 15
xmacroplay -d 15 < temp/pa.txt # velocity 15
xmacroplay -d 3 < temp/alternar.txt

continuar

# xmacroplay -d 15 < temp/install.txt # velocity 15
# xmacroplay -d 3 < temp/alternar.txt

# continuar

xmacroplay -d 15 < temp/limpar.txt # velocity 15
xmacroplay -d 15 < temp/migrate.txt # velocity 15
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 15 < temp/limpar.txt
xmacroplay -d 15 < temp/createsuperuser.txt # velocity 15
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 15 < temp/password.txt # velocity 15
sleep 0.5
xmacroplay -d 15 < temp/password.txt # velocity 15
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 15 < temp/createsuperuser_regis.txt # velocity 15
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 15 < temp/password.txt # velocity 15
sleep 0.5
xmacroplay -d 15 < temp/password.txt # velocity 15
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 15 < temp/createsuperuser_willian.txt # velocity 15
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 15 < temp/password.txt # velocity 15
sleep 0.5
xmacroplay -d 15 < temp/password.txt # velocity 15
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 15 < temp/shell.txt # velocity 15
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 15 < temp/limpar.txt
xmacroplay -d 30 < temp/import.txt # velocity 30
sleep 0.5
xmacroplay -d 30 < temp/person1.txt # velocity 30
sleep 0.5
xmacroplay -d 30 < temp/person2.txt # velocity 30
sleep 0.5
xmacroplay -d 30 < temp/person3.txt # velocity 30
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 15 < temp/exit_shell.txt # velocity 15
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 15 < temp/msg_rodar_app.txt
sleep 0.5
xmacroplay -d 15 < temp/runserver.txt
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 3 < temp/ctrl_e.txt
sleep 2
xmacroplay -d 15 < temp/ps1.txt
# aumentar a fonte
for i in $(seq 1 5); do xmacroplay -d 3 < temp/zoom.txt; done
# limpar a tela
xmacroplay -d 3 < temp/limpar.txt
sleep 2
xmacroplay -d 60 < temp/http_users.txt
xmacroplay -d 3 < temp/alternar.txt

continuar2

xmacroplay -d 3 < temp/limpar.txt
sleep 0.5
xmacroplay -d 60 < temp/http_persons.txt
xmacroplay -d 3 < temp/alternar.txt

continuar2

xmacroplay -d 3 < temp/limpar.txt
sleep 0.5
xmacroplay -d 60 < temp/curl_persons.txt
xmacroplay -d 3 < temp/alternar.txt

continuar2

xmacroplay -d 25 < temp/exit.txt
sleep 1
xmacroplay -d 25 < temp/ctrl_c.txt
xmacroplay -d 25 < temp/limpar.txt
sleep 2
xmacroplay -d 20 < temp/mostrar_views.txt # velocity 20
xmacroplay -d 15 < temp/goto_line40.txt
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 15 < temp/goto_line22.txt
# delete_line 40x
for i in $(seq 1 40); do xmacroplay -d 15 < temp/delete_line.txt; done
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 3 < temp/edit.txt
xmacroplay -d 45 < temp/typePersonViewSet.txt # velocity 45
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 15 < temp/salvarfechar.txt
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 45 < temp/open_urls.txt # velocity 45
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 45 < temp/goto_line12.txt # velocity 45
xmacroplay -d 3 < temp/edit.txt
xmacroplay -d 45 < temp/type_api_url.txt # velocity 45
xmacroplay -d 15 < temp/esc.txt
xmacroplay -d 45 < temp/goto_line8.txt # velocity 45
xmacroplay -d 3 < temp/newlinebelow.txt
xmacroplay -d 45 < temp/type_url_router.txt # velocity 45
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 15 < temp/salvarfechar.txt
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 15 < temp/msg_usando_mixins.txt
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 20 < temp/mostrar_views.txt # velocity 20
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 5 < temp/goto_line11.txt
sleep 0.5
xmacroplay -d 5 < temp/edit.txt
xmacroplay -d 15 < temp/type_view_generics.txt # velocity 45
xmacroplay -d 3 < temp/esc.txt
xmacroplay -d 5 < temp/goto_line15.txt
# delete_line 13x
for i in $(seq 1 13); do xmacroplay -d 15 < temp/delete_line.txt; done
xmacroplay -d 5 < temp/edit.txt
xmacroplay -d 5 < temp/type_mixins.txt # velocity 45
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 15 < temp/salvarfechar.txt
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 45 < temp/open_urls.txt # velocity 45
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 45 < temp/goto_line9.txt
sleep 1
xmacroplay -d 45 < temp/delete_line.txt
sleep 1
xmacroplay -d 45 < temp/goto_line13.txt
sleep 1
xmacroplay -d 45 < temp/delete_one.txt
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 15 < temp/salvarfechar.txt
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 45 < temp/open_core_urls.txt
xmacroplay -d 45 < temp/goto_line5.txt
xmacroplay -d 45 < temp/goto_end_line.txt
sleep 1
# backspace 13x
for i in $(seq 1 13); do xmacroplay -d 30 < temp/backspace.txt; done
xmacroplay -d 45 < temp/typePersonList.txt
xmacroplay -d 5 < temp/esc.txt
xmacroplay -d 45 < temp/move_down.txt
xmacroplay -d 45 < temp/goto_end_line.txt
# backspace 17x
for i in $(seq 1 17); do xmacroplay -d 30 < temp/backspace.txt; done
xmacroplay -d 45 < temp/typePersonDetail.txt
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 15 < temp/salvarfechar.txt
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 45 < temp/open_core_serializers.txt
xmacroplay -d 15 < temp/goto_line33.txt
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 15 < temp/goto_line21.txt
# delete_line 19x
for i in $(seq 1 19); do xmacroplay -d 15 < temp/delete_line.txt; done
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 15 < temp/salvarfechar.txt
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 15 < temp/msg_rodar_app.txt
sleep 0.5
xmacroplay -d 15 < temp/runserver.txt
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 3 < temp/ctrl_e.txt
sleep 2
xmacroplay -d 15 < temp/ps1.txt
# aumentar a fonte
for i in $(seq 1 5); do xmacroplay -d 3 < temp/zoom.txt; done
# limpar a tela
xmacroplay -d 3 < temp/limpar.txt
sleep 2
xmacroplay -d 60 < temp/http_update.txt
xmacroplay -d 3 < temp/alternar.txt

continuar2

xmacroplay -d 25 < temp/exit.txt
sleep 1
xmacroplay -d 25 < temp/ctrl_c.txt
xmacroplay -d 25 < temp/limpar.txt
sleep 2
xmacroplay -d 15 < temp/msg_cbv.txt
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 20 < temp/mostrar_views.txt # velocity 20
xmacroplay -d 30 < temp/goto_line15.txt
for i in $(seq 1 3); do sleep 0.5; xmacroplay -d 30 < temp/delete_line.txt; done
xmacroplay -d 30 < temp/move_up.txt
xmacroplay -d 30 < temp/edit.txt
xmacroplay -d 45 < temp/type_ListCreateAPIView.txt # velocity 45
sleep 0.5
xmacroplay -d 30 < temp/esc.txt
sleep 0.5
# move_down
for i in $(seq 1 2); do xmacroplay -d 30 < temp/move_down.txt; done
sleep 1
# delete_line 5x
for i in $(seq 1 5); do xmacroplay -d 15 < temp/delete_line.txt; done
# move_down
xmacroplay -d 30 < temp/move_down.txt
sleep 1
# delete_line 4x
for i in $(seq 1 4); do xmacroplay -d 15 < temp/delete_line.txt; done
xmacroplay -d 30 < temp/move_up.txt
xmacroplay -d 30 < temp/edit.txt
sleep 1
xmacroplay -d 45 < temp/type_RetrieveUpdateDestroyAPIView.txt # velocity 45
sleep 0.5
xmacroplay -d 30 < temp/esc.txt
sleep 0.5
# move_down
for i in $(seq 1 2); do xmacroplay -d 30 < temp/move_down.txt; done
sleep 1
# delete_line 9x
for i in $(seq 1 9); do xmacroplay -d 15 < temp/delete_line.txt; done
for i in $(seq 1 5); do xmacroplay -d 30 < temp/move_down.txt; done
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 15 < temp/salvarfechar.txt
xmacroplay -d 15 < temp/ps1.txt
xmacroplay -d 15 < temp/limpar.txt
sleep 1
xmacroplay -d 20 < temp/msg_fim.txt