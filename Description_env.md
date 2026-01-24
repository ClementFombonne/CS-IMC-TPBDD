L'environnement est configuré avec un devcontainer qui permet à github de créer un codespace adatpé.

Ce DevContainer configure en réalité 2 éléments:
1. L'environnement python: python3 ainsi que pip est venv sont installés afin de créer un venv dans lequel sera installé une liste de paquet défini dans `requirements.txt` pour faire fonctionner neo4j.
   On remarque aussi dans `devcontainer.json` que vscode est configuré pour activer le venv par défaut et installer les extensions python.
2. Microsoft SQL Serveur: le paquet `msodbcsql18` (ODBC Driver 18 for SQL Server) est installé. C'est le prérequis standard pour que Python (via des bibliothèques comme pyodbc) ou des outils CLI puissent parler à SQL Server.
   La cli mssql-tools18 est installé et ajouté au PATH. Cela permet d'utiliser des commandes comme `sqlcmd` et `bcp`
   
