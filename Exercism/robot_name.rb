# Instruções
# Gerenciar configurações de fábrica de robôs.

# Quando um robô sai da fábrica, ele não tem nome.

# Na primeira vez que você liga um robô, um nome aleatório é gerado no formato de duas letras maiúsculas seguidas de três dígitos, como RX837 ou BC811.

# De vez em quando, precisamos redefinir um robô para as configurações de fábrica, o que significa que seu nome é apagado. Na próxima vez que você perguntar, o robô responderá com um novo nome aleatório.

# Os nomes devem ser aleatórios: não devem seguir uma sequência previsível. Usar nomes aleatórios representa um risco de colisões. Sua solução deve garantir que cada robô existente tenha um nome único.

# Para facilitar o teste, sua solução precisará implementar um Robot.forgetmétodo que limpe qualquer estado compartilhado que possa existir para rastrear nomes de robôs duplicados.

