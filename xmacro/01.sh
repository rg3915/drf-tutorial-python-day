rm -rf temp
mkdir temp

echo "KeyStrPress Control_L KeyStrPress Tab KeyStrRelease Tab KeyStrRelease Control_L" > temp/alternar.txt

echo "KeyStrPress Control_L KeyStrPress l KeyStrRelease l KeyStrRelease Control_L" > temp/limpar.txt

echo "KeyStrPress Control_L KeyStrPress Shift_L KeyStrPress equal KeyStrRelease equal KeyStrRelease Shift_L KeyStrRelease Control_L " > temp/zoom.txt

echo "KeyStrPress Control_L KeyStrPress Shift_L KeyStrPress e KeyStrRelease e KeyStrRelease Control_L KeyStrRelease Shift_L" > temp/ctrl_e.txt

echo "KeyStrPress Control_L KeyStrPress Shift_L KeyStrPress Left KeyStrRelease Left KeyStrRelease Shift_L KeyStrRelease Control_L" > temp/left.txt

echo "KeyStrPress Control_L KeyStrPress Shift_L KeyStrPress Right KeyStrRelease Right KeyStrRelease Shift_L KeyStrRelease Control_L" > temp/right.txt

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


echo "String i" > temp/edit.txt

cat << EOF > temp/enter_home.txt
String cd 
KeyStrPress dead_tilde KeyStrRelease dead_tilde KeyStrPress dead_tilde KeyStrRelease dead_tilde
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

cat << EOF > temp/createsuperuser_arthur.txt
String python manage.py createsuperuser --username='arthur' --email='arthur@example.com'
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
String person = Person(first_name='Guido', last_name='Van Rossum', email='guido@email.com')
KeyStrPress Return KeyStrRelease Return
String person.save()
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/person2.txt
String person = Person(first_name='Adrian', last_name='Holovaty', email='adrian@email.com')
KeyStrPress Return KeyStrRelease Return
String person.save()
KeyStrPress Return KeyStrRelease Return
EOF

cat << EOF > temp/person3.txt
String person = Person(first_name='Jacob', last_name='Kaplan Moss', email='jacob@email.com')
KeyStrPress Return KeyStrRelease Return
String person.save()
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
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 15 < temp/criar_pasta_teste.txt # velocity 15
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 30 < temp/clone.txt # velocity 30
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 15 < temp/limpar.txt
xmacroplay -d 15 < temp/listar.txt # velocity 15
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 30 < temp/move_manage.txt # velocity 30
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 30 < temp/move_requirements.txt # velocity 30
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 30 < temp/move_myproject.txt # velocity 30
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 15 < temp/limpar.txt
xmacroplay -d 15 < temp/ls-la.txt # velocity 15
xmacroplay -d 3 < temp/alternar.txt

continuar

# xmacroplay -d 15 < temp/delete_folder.txt # velocity 15
# xmacroplay -d 3 < temp/alternar.txt

# continuar

xmacroplay -d 15 < temp/venv.txt # velocity 15
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 15 < temp/activate.txt # velocity 15
xmacroplay -d 15 < temp/pa.txt # velocity 15
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 15 < temp/install.txt # velocity 15
xmacroplay -d 3 < temp/alternar.txt

continuar

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

xmacroplay -d 15 < temp/createsuperuser_arthur.txt # velocity 15
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
xmacroplay -d 45 < temp/import.txt # velocity 45
sleep 1
xmacroplay -d 45 < temp/person1.txt # velocity 45
sleep 1
xmacroplay -d 45 < temp/person2.txt # velocity 45
sleep 1
xmacroplay -d 45 < temp/person3.txt # velocity 45
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 15 < temp/exit_shell.txt # velocity 15
xmacroplay -d 3 < temp/alternar.txt

continuar

xmacroplay -d 15 < temp/mostrar_views.txt # velocity 15