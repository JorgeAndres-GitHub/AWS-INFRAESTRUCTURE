En primer lugar se crean las llaves de acceso de la cuenta, esto nos dara un archivo .pem, el cual se estara utilizando para ejecutar los archivos de terraform y ansible:
<img width="1876" height="242" alt="image" src="https://github.com/user-attachments/assets/6ffe60f2-6c16-4d7a-a4fa-a2963ad72afa" />

Se crea la llave de acceso para la AWS CLI:
<img width="1543" height="195" alt="image" src="https://github.com/user-attachments/assets/44c29f82-a7e2-4cc9-99f5-44b862116c7e" />

Inicializamos terraform:
<img width="921" height="402" alt="image" src="https://github.com/user-attachments/assets/002fed33-3b9b-4418-a324-f7eafd455285" />

Realizamos los cambios planificados en terraform y evaluamos todos los pasos a realizar:
<img width="921" height="462" alt="image" src="https://github.com/user-attachments/assets/34af61b6-636a-4cfa-83e5-a2684aa5b2f9" />
<img width="921" height="707" alt="image" src="https://github.com/user-attachments/assets/1b53d683-b398-4f74-9b4d-5e827076132d" />

Como resultado podemos observar que ya se nos ha creado una instancia de EC2 en AWS:
<img width="921" height="147" alt="image" src="https://github.com/user-attachments/assets/eb6eb15e-381c-4e62-b0fd-aa6311a09b52" />

Tambien podemos verificarlo al conectarnos a la instancia por medio de ssh:
<img width="921" height="641" alt="image" src="https://github.com/user-attachments/assets/488086b0-f19a-4948-b59c-af5124cc4ec4" />

Y dentro de la instancia revisamos la version de Ubuntu creada:
<img width="756" height="180" alt="image" src="https://github.com/user-attachments/assets/b9a95a43-7206-4c0b-b569-14cb0ab6fdc5" />

Ahora, para ejecutar ansible, lo hacemos por medio de WSL, asique ejecutamos la distribución de linux creada:
<img width="921" height="456" alt="image" src="https://github.com/user-attachments/assets/e4bb5bb2-26ae-423f-a7ef-b662e200983d" />

El archivo .pem tambien debe estar dentro de WSL para que los ejecutables de ansible puedan utilizarlo, por lo tanto, se copia el archivo que esta en Windows a Ubuntu:
<img width="921" height="25" alt="image" src="https://github.com/user-attachments/assets/7681d0d0-0daf-4149-b499-86ff7f4af7f1" />

Ejecutamos nuestro codigo de ansible:
<img width="921" height="115" alt="image" src="https://github.com/user-attachments/assets/dddd3248-7052-4e6e-b2d3-870ce3b886fe" />
<img width="921" height="199" alt="image" src="https://github.com/user-attachments/assets/0271ec6b-bf60-4daa-be59-51dbaab3aa5c" />

Como se puede observar en la direccion Ip Publica de la maquina virtual ya se puede acceder al servidor de Nginx:
<img width="921" height="464" alt="image" src="https://github.com/user-attachments/assets/7e79463f-83d1-4c4f-b1a5-7d9986e925b1" />

Sin embargo, debemos configurar nginx para que muestre nuestro index.php:

<img width="921" height="24" alt="image" src="https://github.com/user-attachments/assets/da23e915-e51e-4fc4-9618-a57dbf516d4a" />

<img width="921" height="440" alt="image" src="https://github.com/user-attachments/assets/b03e7785-869e-4465-a7b4-8ef1df80ea27" />


<img width="921" height="436" alt="image" src="https://github.com/user-attachments/assets/1dee2588-09e0-43b0-bc02-c1ff3045f965" />

Y reiniciamos el sistema dentro de nginx:

<img width="822" height="39" alt="image" src="https://github.com/user-attachments/assets/4d1c9058-791d-4ed1-9d77-73fecb79836c" />

Y ahora si podemos acceder a nuestra pagina por medio de la dirección IP publica:
<img width="921" height="495" alt="image" src="https://github.com/user-attachments/assets/11478047-4e61-47e4-a38a-362bea015e9b" />

