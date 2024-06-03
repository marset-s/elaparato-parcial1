# 📚 Proyecto Académico de Seguridad con Spring Boot y Keycloak

¡Bienvenid@ a mi proyecto sobre seguridad! 🚀 Este proyecto utiliza Spring Boot con Java y Keycloak como solución IAM (Identity and Access Management). A continuación, encontrarás una descripción de las dependencias utilizadas, las configuraciones del gateway, la aplicación principal "elaparato" y la gestión de usuarios.

## 🛠️ Dependencias

### 🌐 Gateway

- `spring-boot-starter-oauth2-client` 🛡️: Soporte para clientes OAuth2.
- `spring-cloud-starter-gateway` 🌉: Proporciona características de gateway API.

### 📱 Aplicación "elaparato"

- `spring-boot-starter-data-jpa` 🗄️: Proporciona soporte para JPA (Java Persistence API).
- `spring-boot-starter-web` 🌐: Soporte para aplicaciones web, incluyendo RESTful.
- `spring-boot-starter-security` 🔐: Proporciona soporte de seguridad para Spring Boot.
- `spring-boot-starter-oauth2-resource-server` 🛡️: Soporte para servidores de recursos OAuth2.
- `mysql-connector-j` 🛢️: Conector JDBC para MySQL.
- `lombok` ✨: Biblioteca para reducir el código boilerplate en Java.

### 👥 Gestión de Usuarios

- `keycloak-admin-client` 🔑: Integración con Keycloak.
- `spring-boot-starter-security` 🔐: Proporciona soporte de seguridad para Spring Boot.
- `spring-boot-starter-oauth2-resource-server` 🛡️: Soporte para servidores de recursos OAuth2.
- `spring-boot-starter-web` 🌐: Soporte para aplicaciones web, incluyendo RESTful.
- `lombok` ✨: Biblioteca para reducir el código boilerplate en Java.


## ⚙️ Configuración de Keycloak

1. **Instalación de Keycloak**: Descarga e instala Keycloak a través de un contenedor de Docker. Ejecuta el siguiente comando: docker run -p 8080:8080 -e KEYCLOAK_ADMIN=admin -e KEYCLOAK_ADMIN_PASSWORD=admin quay.io/keycloak/keycloak:21.0.1 start-dev 🖥️
2. **Crear un Realm**: Configura un realm llamado `el-aparato-serrana-marset`. 🌐
3. **Crear Cliente**: Añade dos clientes:
   - `Client ID`: `api-gateway-client`
   - `Client ID`: `api-internal-users-client`
4. **Configurar las Credenciales**: Establece un secreto para cada cliente.
5. **Configurar los Roles y Usuarios**: Define los roles necesarios y asigna usuarios a esos roles. 👥
6. **Roles**: Define los roles:
   - `app_administrador`
   - `app_repositor`
   - `app_vendedor `
7. **Crear usuarios y asignar Roles**: Usuarios:
   - `administrador.elaparato`
   - `repositor.elaparato`
   - `vendedor.elaparato `

## 🎉 Conclusión
Este proyecto ha sido una experiencia increíble y me ha permitido aprender muchísimo sobre la implementación de soluciones de seguridad utilizando Spring Boot y Keycloak. 🚀 La integración de estas tecnologías no solo proporciona una gestión de identidades y accesos robusta y segura, sino que también abre las puertas a desarrollar aplicaciones escalables y seguras.

El tema de la seguridad es fascinante y estoy entusiasmada por haber tenido la oportunidad de explorarlo en profundidad. Cada desafío enfrentado y resuelto ha sido una lección valiosa. ✨

