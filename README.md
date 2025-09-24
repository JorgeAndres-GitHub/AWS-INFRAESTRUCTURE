# 🚀 Creación y Configuración de un Servidor Nginx en AWS

Este proyecto consiste en **aprovisionar una máquina virtual (EC2 con Ubuntu 22.04 LTS) en AWS usando Terraform** y posteriormente **configurarla con Ansible** para que funcione como un servidor **Nginx con soporte para PHP**.  

---

## 📌 Requisitos de la Actividad
- Usar Terraform para aprovisionar la infraestructura (EC2 en AWS).  
- Usar Ansible para configurar la máquina como servidor Nginx con PHP.  
- Verificar acceso al servidor mediante **IP pública** (puerto 80).  
- Crear un archivo `index.php` para validar el despliegue.  

**Entregables:**
- Código IaC en Terraform para aprovisionar la máquina.  
- Código fuente de Ansible para configurar el servidor.  
- Código fuente de la aplicación de prueba en PHP.  
- Entrega comprimida en un único `.zip`.  

---

## 🔑 Creación de Llaves de Acceso
En primer lugar, se generan las llaves de acceso de la cuenta. Esto nos entrega un archivo **.pem**, el cual será utilizado tanto en **Terraform** como en **Ansible** para la conexión con la instancia.  

<img width="1876" height="242" alt="image" src="https://github.com/user-attachments/assets/6ffe60f2-6c16-4d7a-a4fa-a2963ad72afa" />
  
Se crea además la llave de acceso para la **AWS CLI**:  

<img width="1543" height="195" alt="image" src="https://github.com/user-attachments/assets/44c29f82-a7e2-4cc9-99f5-44b862116c7e" />

---

## ⚙️ Inicialización de Terraform
Ejecutamos la inicialización de Terraform para preparar el entorno:  

<img width="921" height="402" alt="image" src="https://github.com/user-attachments/assets/002fed33-3b9b-4418-a324-f7eafd455285" />  

---

## 📋 Ejecución del Plan de Terraform
Aplicamos los cambios planificados y verificamos cada uno de los pasos que se ejecutarán en AWS:  

<img width="921" height="462" alt="image" src="https://github.com/user-attachments/assets/34af61b6-636a-4cfa-83e5-a2684aa5b2f9" />
<img width="921" height="707" alt="image" src="https://github.com/user-attachments/assets/1b53d683-b398-4f74-9b4d-5e827076132d" /> 

Como resultado, se crea una **instancia EC2 en AWS**:  

<img width="921" height="147" alt="image" src="https://github.com/user-attachments/assets/eb6eb15e-381c-4e62-b0fd-aa6311a09b52" />

---

## 🔐 Conexión vía SSH
Verificamos la conexión a la instancia mediante **SSH** con el archivo `.pem`:  

<img width="921" height="641" alt="image" src="https://github.com/user-attachments/assets/488086b0-f19a-4948-b59c-af5124cc4ec4" />

Dentro de la instancia confirmamos la versión de Ubuntu instalada:  

<img width="756" height="180" alt="image" src="https://github.com/user-attachments/assets/b9a95a43-7206-4c0b-b569-14cb0ab6fdc5" />

---

## 🐧 Ejecución de Ansible desde WSL
Para la configuración usamos **Ansible desde WSL**. Iniciamos la distribución de Linux instalada:  

<img width="921" height="456" alt="image" src="https://github.com/user-attachments/assets/e4bb5bb2-26ae-423f-a7ef-b662e200983d" />

El archivo `.pem` debe copiarse también dentro de WSL para que Ansible pueda usarlo:  

<img width="921" height="25" alt="image" src="https://github.com/user-attachments/assets/7681d0d0-0daf-4149-b499-86ff7f4af7f1" /> 

Ejecutamos el código de Ansible:  

<img width="921" height="115" alt="image" src="https://github.com/user-attachments/assets/dddd3248-7052-4e6e-b2d3-870ce3b886fe" />
<img width="921" height="199" alt="image" src="https://github.com/user-attachments/assets/0271ec6b-bf60-4daa-be59-51dbaab3aa5c" /> 

Finalmente, el servidor **Nginx ya es accesible desde la IP pública**:  

<img width="921" height="464" alt="image" src="https://github.com/user-attachments/assets/7e79463f-83d1-4c4f-b1a5-7d9986e925b1" />

---

## 📝 Configuración de Nginx con PHP
Para mostrar un archivo `index.php`, configuramos Nginx editando los archivos correspondientes:  

<img width="921" height="24" alt="image" src="https://github.com/user-attachments/assets/da23e915-e51e-4fc4-9618-a57dbf516d4a" />

<img width="921" height="440" alt="image" src="https://github.com/user-attachments/assets/b03e7785-869e-4465-a7b4-8ef1df80ea27" />


<img width="921" height="436" alt="image" src="https://github.com/user-attachments/assets/1dee2588-09e0-43b0-bc02-c1ff3045f965" />

Posteriormente, reiniciamos Nginx para aplicar los cambios:  

<img width="822" height="39" alt="image" src="https://github.com/user-attachments/assets/4d1c9058-791d-4ed1-9d77-73fecb79836c" />

---

## 🌍 Acceso a la Página Web
Finalmente, accedemos a la aplicación PHP desde la **dirección IP pública de la instancia**:  

<img width="921" height="495" alt="image" src="https://github.com/user-attachments/assets/11478047-4e61-47e4-a38a-362bea015e9b" />

---

