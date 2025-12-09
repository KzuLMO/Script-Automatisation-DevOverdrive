# 🛠️ Basculeur DevOverrideEnable (Sony Vegas / Valorant)

Un script Batch Windows simple conçu pour basculer rapidement la valeur de registre `DevOverrideEnable`, résolvant ainsi les conflits courants entre des logiciels comme **Sony Vegas** et le système anti-triche **Vanguard** utilisé par des jeux comme **Valorant**.

## 🧐 Qu'est-ce que DevOverrideEnable ?

La valeur de registre `DevOverrideEnable`, lorsqu'elle est définie sur `1` dans la clé `Image File Execution Options`, est parfois utilisée par les développeurs ou certains logiciels pour activer des fonctionnalités de débogage ou des modes de compatibilité.

**Problème :** Le système anti-triche **Vanguard** de Riot considère souvent cette valeur de registre définie sur `1` comme un risque de sécurité potentiel ou un mécanisme de triche, empêchant ainsi des jeux comme **Valorant** de se lancer ou de fonctionner correctement.

## 🚀 Utilisation

Ce script nécessite des **privilèges d'administrateur** pour modifier la base de registre Windows et redémarrer le service Vanguard.

1.  **Sauvegardez le code :** Enregistrez le code fourni sous forme de fichier `.bat` (par exemple, `DevSwitch.bat`).
2.  **Exécutez en tant qu'administrateur :** Faites un clic droit sur le fichier et sélectionnez **"Exécuter en tant qu'administrateur"**.
3.  **Suivez le menu :** Choisissez le mode souhaité dans le menu :

### ⚙️ Options du Menu

| Option | Mode | Action | Résultat |
| :---: | :--- | :--- | :--- |
| **1** | **Mode Sony Vegas** | Définit `DevOverrideEnable` sur **1** | Permet à **Sony Vegas** (ou à d'autres logiciels en conflit) de se lancer. |
| **2** | **Mode Valorant** | Définit `DevOverrideEnable` sur **0** et **redémarre le service Vanguard (vgc)** | Rétablit la compatibilité du système avec **Vanguard** et permet à **Valorant** de se lancer.

⚠️ Transparence et Utilisation Libre
Étant donné qu'il s'agit d'un simple fichier Batch (.bat), le code est entièrement transparent et n'est pas obfusqué.
Vous avez un accès direct à chaque ligne de commande et êtes libre d'inspecter, d'utiliser, de modifier et d'adapter ce script à vos besoins spécifiques.

⚠️ Avertissement
La manipulation des clés de registre Windows comporte des risques. Utilisez ce script à vos propres risques et périls. Il est conçu comme un outil de commodité pour les utilisateurs qui passent fréquemment d'un logiciel à un autre en conflit avec l'anti-triche Vanguard.
