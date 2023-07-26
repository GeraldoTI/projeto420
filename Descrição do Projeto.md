Descrição do Projeto:

O projeto "Automação de Instalação e Configuração de Servidores Linux com Shell Scripts - por Geraldo Alves Analista DevOps" é um conjunto de scripts desenvolvidos por Geraldo Alves para automatizar o processo de instalação, configuração e gerenciamento de servidores Linux. Esses scripts são projetados para simplificar tarefas comuns de infraestrutura e agilizar o provisionamento e a manutenção de servidores, tornando-os mais eficientes, consistentes e seguros.

Objetivo:

O objetivo deste projeto é fornecer uma coleção de scripts Shell desenvolvidos por [Seu Nome] que facilitem a automação de tarefas relacionadas à configuração e manutenção de servidores Linux. Com esses scripts, é possível:

Instalar e configurar diversas ferramentas e serviços populares, como PHP, Apache, Git, Ansible, Prometheus e Grafana, entre outros.
Configurar o firewall e habilitar portas específicas para garantir a segurança do servidor.
Gerar backups automáticos de diretórios importantes para dispositivos externos, como pen-drives.
Configurar chaves SSH para acesso remoto seguro ao servidor.
Benefícios:

A automação de instalação e configuração de servidores Linux com os scripts desenvolvidos por Geraldo  traz inúmeros benefícios para a equipe de TI e para a infraestrutura da organização:

Eficiência: Os scripts automatizados reduzem o tempo e os esforços necessários para configurar e provisionar novos servidores e serviços, aumentando a produtividade da equipe de TI.

Consistência: Através da padronização e automação, os servidores são configurados de forma consistente, reduzindo erros e garantindo que todos os sistemas estejam alinhados com as melhores práticas.

Segurança: A configuração segura do firewall e a gestão de chaves SSH garantem que apenas usuários autorizados tenham acesso aos servidores, aumentando a segurança da infraestrutura.

Documentação: A documentação integrada nos scripts fornecidos por Geraldo  fornece informações claras sobre a finalidade, uso e requisitos dos comandos, facilitando a manutenção futura.

Agilidade: Com a automação, é possível implantar rapidamente novos serviços e realizar atualizações em escala, permitindo que a equipe de TI responda de forma ágil às demandas do negócio.

Conclusão:

O projeto "Automação de Instalação e Configuração de Servidores Linux com Shell Scripts - por [Seu Nome]" é uma valiosa adição ao portfólio de serviços de TI de Geraldo Alves, demonstrando habilidades em automação, infraestrutura como código (IaC) e práticas DevOps. Através desses scripts, a equipe de TI pode impulsionar a eficiência, segurança e agilidade na gestão de servidores Linux, contribuindo para o sucesso e a confiabilidade das operações de TI da organização.





Descrição dos Scripts:

install_php_java.sh: Instalação do PHP completo e Java SDK.
install_apache.sh: Instalação do servidor web Apache.
install_ansible.sh: Instalação do Ansible completo.
install_python.sh: Instalação do Python 3.9 e dependências.
install_prometheus_grafana.sh: Instalação do Prometheus e Grafana usando Docker Compose.
install_prometheus.sh: Instalação do Prometheus em segundo plano como um serviço.
install_git_debian.sh: Instalação completa do Git em sistemas Debian/Ubuntu.
enable_firewall_ports.sh: Habilitação de portas no firewall usando ufw.
configure_ssh.sh: Configuração de chaves SSH para acesso seguro e instalação do OpenSSH Server.
iptables_setup.sh: Configuração do iptables para proteção do firewall.
backup_to_pendrive.sh: Backup dos diretórios /home e /etc para um pen-drive.
Documentação:

Cada script terá um arquivo .md correspondente em "documentation", detalhando o propósito, uso, requisitos e outras informações relevantes sobre o script.

Considerações Finais:

Este projeto visa fornecer uma coleção de Shell Scripts prontos para facilitar a configuração e gerenciamento de sistemas Linux. Os scripts serão organizados e documentados para tornar a colaboração e a manutenção mais eficientes. Certifique-se de atualizar a documentação à medida que novos scripts forem adicionados ou modificações forem feitas nos scripts existentes.


Lembre-se de tornar os scripts executáveis usando o comando chmod +x nome_do_script.sh antes de executá-los. É importante notar que os scripts podem ser executados independentemente, mas a sequência correta é: install_update_system.sh, install_database.sh, install_netdata.sh, install_nextcloud.sh e, por último, install_cockpit.sh. Certifique-se de executá-los em ordem e conforme as instruções acima.


Lembre-se de tornar os scripts executáveis usando o comando chmod +x nome_do_script.sh antes de executá-los. Você pode executá-los em qualquer ordem, mas certifique-se de executá-los com permissões de administrador (root) ou utilizando o comando sudo.

Para o script install_microk8s.sh, eu habilitei automaticamente alguns recursos essenciais do MicroK8s, como DNS e armazenamento. Você pode adicionar ou remover recursos conforme suas necessidades específicas. Para mais detalhes sobre a instalação do MicroK8s, consulte a documentação oficial.

Lembrando sempre que, antes de executar qualquer script que instale ou configure software no sistema, é importante fazer uma verificação e entender o que cada comando faz, para evitar problemas ou incompatibilidades com outras configurações existentes no ambiente.


Lembre-se de tornar os scripts executáveis usando o comando chmod +x nome_do_script.sh antes de executá-los. Você pode executá-los em qualquer ordem, mas certifique-se de executá-los com permissões de administrador (root) ou utilizando o comando sudo.

O primeiro script, install_php_java.sh, instala o PHP completo e suas dependências mais comuns, como o PHP-FPM, além de instalar o Java SDK padrão.

O segundo script, install_apache.sh, instala o servidor web Apache e o configura para iniciar automaticamente na inicialização do sistema.

Novamente, é importante lembrar de verificar cada script e entender o que cada comando faz antes de executá-los em um ambiente de produção. Certifique-se de que essas instalações não entrem em conflito com outras configurações existentes no seu sistema.





##############################################################

Lembre-se de alterar a variável pendrive_mount para corresponder ao caminho correto do seu pen-drive montado.

Torne o script executável usando o comando chmod +x backup_to_pendrive.sh antes de executá-lo. Execute o script sem permissões de administrador (root) ou utilize o comando ./backup_to_pendrive.sh.

O script verifica se o pen-drive está montado e, em seguida, cria um diretório de backup com a data atual no pen-drive. Em seguida, utiliza o rsync para copiar os diretórios /home e /etc para o diretório de backup no pen-drive.

Lembre-se de executar o script somente quando o pen-drive estiver conectado, pois ele verificará se o pen-drive está montado antes de prosseguir com o backup. Além disso, é importante fazer backup regularmente para garantir a segurança dos dados.