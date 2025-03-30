FROM odoo:18.0  # Versión base de Odoo

# Copiar los archivos personalizados
COPY . /mnt/extra-addons

# Configurar permisos y dependencias
RUN chown -R odoo /mnt/extra-addons

# Exponer el puerto de Odoo
EXPOSE 8069

# Comando para iniciar Odoo
CMD ["odoo", "--addons-path=/mnt/extra-addons"]
