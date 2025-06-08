import tkinter as tk
import mysql.connector
import datetime
import pandas as pd
from sqlalchemy import create_engine
import random
from tkinter import ttk
from tkinter import messagebox


dataframe_caserne = None
dataframe_grade = None
dataframe_typeengin = None
dataframe_pompier = None
dataframe_engin = None
dataframe_affecter = None
dataframe_fonction = None
dataframe_sinistre = None
dataframe_posseder = None
dataframe_lier = None
dataframe_mobiliser = None
db = None
cursor = None

def importer_table():
    global dataframe_caserne, dataframe_grade, dataframe_typeengin, dataframe_pompier
    global dataframe_engin, dataframe_affecter, dataframe_fonction, dataframe_sinistre
    global dataframe_posseder, dataframe_lier, dataframe_mobiliser, db, cursor

        # Lire le fichier CSV et créer un DataFrame
    dataframe_caserne = pd.read_csv("caserne.csv", sep=",", encoding="utf-8", header=None, skiprows=1)
    dataframe_caserne[['ID_Caserne', 'Libellé']] = dataframe_caserne[0].str.split(';', expand=True)
    dataframe_caserne = dataframe_caserne.drop(columns=[0])

    # Lire le fichier CSV et créer un DataFrame
    dataframe_grade = pd.read_csv("grade.csv", sep=",", encoding="ISO-8859-1", header=None, skiprows=1)
    dataframe_grade[['ID_TypePompier', 'Libellé']] = dataframe_grade[0].str.split(';', expand=True)
    dataframe_grade = dataframe_grade.drop(columns=[0])

    dataframe_typeengin = pd.read_csv("typeengin.csv", sep=",", encoding="utf-8", header=None, skiprows=1)
    dataframe_typeengin[['ID_Type_Engin', 'Libellé']] = dataframe_typeengin[0].str.split(';', expand=True)
    dataframe_typeengin = dataframe_typeengin.drop(columns=[0])

    dataframe_pompier = pd.read_csv("pompier.csv", sep=",", encoding="ISO-8859-1", header=None, skiprows=1)
    dataframe_pompier[['Matricule', 'Nom', 'Prenom', 'DateNaissance', 'Sexe', 'Telephone', 'NumBIP', 'Date_Embauche', 'Dernier_Indice_Traitement', 'ID_TypePompier', 'ID_Employeur']] = dataframe_pompier[0].str.split(';', expand=True)
    dataframe_pompier = dataframe_pompier.drop(columns=[0])

    dataframe_engin = pd.read_csv("engin.csv", sep=",", encoding="ISO-8859-1", header=None, skiprows=1)
    dataframe_engin[['ID_Type_Engin', 'Numero_Ordre', 'ID_Caserne']] = dataframe_engin[0].str.split(';', expand=True)
    dataframe_engin = dataframe_engin.drop(columns=[0])

    dataframe_affecter = pd.read_csv("affectation.csv", sep=",", encoding="ISO-8859-1", header=None, skiprows=1)
    dataframe_affecter[['Matricule', 'Nom', 'Prenom', 'Date_Affectation', 'ID_Caserne']] = dataframe_affecter[0].str.split(';', expand=True)
    dataframe_affecter = dataframe_affecter.drop(columns=[0])

    dataframe_fonction = pd.read_csv("fonction.csv", sep=",", encoding="utf-8", header=None, skiprows=1)
    dataframe_fonction[['ID_Habilitation', 'Libellé']] = dataframe_fonction[0].str.split(';', expand=True)
    dataframe_fonction = dataframe_fonction.drop(columns=[0])

    dataframe_mobiliser = pd.read_csv("mobiliser_moyens_humains.csv", sep=",", encoding="utf-8", header=None, skiprows=1)
    dataframe_mobiliser[['ID_Habilitation', 'ID_Type_Engin', 'Nb_Personnes']] = dataframe_mobiliser[0].str.split(';', expand=True)
    dataframe_mobiliser = dataframe_mobiliser.drop(columns=[0])

    dataframe_sinistre = pd.read_csv("situation.csv", sep=",", encoding="ISO-8859-1", header=None, skiprows=1)
    dataframe_sinistre[['ID_Sinistre', 'Libellé', 'Engin1', 'Engin2', 'Engin3']] = dataframe_sinistre[0].str.split(';', expand=True)
    dataframe_sinistre = dataframe_sinistre.drop(columns=[0])

    dataframe_posseder = pd.read_csv("habilitation.csv", sep=",", encoding="ISO-8859-1", header=None, skiprows=1)
    dataframe_posseder[['Matricule', 'nom', 'prenom', 'habilitation1', 'dateObtention1', 'habilitation2', 'dateObtention2' , 'habilitation3', 'dateObtention3', 'habilitation4', 'dateObtention4', 'habilitation5', 'dateObtention5', 'habilitation6', 'dateObtention6', 'habilitation7', 'dateObtention7', 'habilitation8', 'dateObtention8', 'habilitation9', 'dateObtention9', 'habilitation10', 'dateObtention10']] = dataframe_posseder[0].str.split(';', expand=True)
    dataframe_posseder = dataframe_posseder.drop(columns=[0])

    dataframe_lier = pd.read_csv("situation.csv", sep=",", encoding="ISO-8859-1", header=None, skiprows=1)
    dataframe_lier[['ID_Sinistre', 'Libellé', 'Engin1', 'Engin2', 'Engin3']] = dataframe_lier[0].str.split(';', expand=True)
    dataframe_lier = dataframe_lier.drop(columns=[0])

    # Ouvrir le fichier texte contenant les requêtes SQL
    with open('sdis79.sql', 'r', encoding='utf-8') as f:
        requetes = f.read().split(';')

    with open('sdis79_insert.sql', 'r', encoding='utf-8') as f:
        requetes2 = f.read().split(';')

    # Se connecter au serveur MySQL
    db = mysql.connector.connect(host="localhost", user="root", password="")

    # Créer un curseur
    cursor = db.cursor()

    # Vérifier si la base de données existe déjà
    cursor.execute("SHOW DATABASES LIKE 'sdis79'")
    result = cursor.fetchone()

    if result:
        # Supprimer la base de données existante
        cursor.execute("DROP DATABASE sdis79")

    # Créer une nouvelle base de données
    cursor.execute("CREATE DATABASE sdis79")

    # Se connecter à la base de données sdis79
    db = mysql.connector.connect(host="localhost", user="root", password="", database="sdis79")
    cursor = db.cursor()

    # Exécuter les requêtes
    for requete in requetes:
        if requete.strip():
            cursor.execute(requete)
    for requete in requetes2:
        if requete.strip():
            cursor.execute(requete)

    # Commiter les modifications
    db.commit()
    global importation_lancee
    importation_lancee = True


def importer_données(dataframe_caserne, dataframe_grade, dataframe_typeengin, dataframe_pompier, dataframe_engin, dataframe_affecter, dataframe_fonction, dataframe_sinistre, dataframe_posseder,dataframe_lier,dataframe_mobiliser,db,cursor) : 
    # Créer un moteur SQLAlchemy
    engine = create_engine('mysql+mysqlconnector://root:@localhost/sdis79')

    # Insérer les données du DataFrame dans la table Caserne
    dataframe_caserne.to_sql('caserne', con=engine, if_exists='append', index=False)
    dataframe_grade.to_sql('type_pompier', con=engine, if_exists='append', index=False)
    dataframe_typeengin.to_sql('type_engin', con=engine, if_exists='append', index=False)

    dataframe_pompier['ID_TypePompier'] = dataframe_pompier['ID_TypePompier'].str.upper().str[:2]
    dataframe_pompier = dataframe_pompier.drop('ID_Employeur', axis=1)
    dataframe_pompier['DateNaissance'] = pd.to_datetime(dataframe_pompier['DateNaissance'], format='%d/%m/%Y', errors='coerce')
    dataframe_pompier['Date_Embauche'] = pd.to_datetime(dataframe_pompier['Date_Embauche'], format='%d/%m/%Y', errors='coerce')
    dataframe_pompier.to_sql('pompier', con=engine, if_exists='append', index=False)

    caserne_mapping = dict(zip(dataframe_caserne['Libellé'], dataframe_caserne['ID_Caserne']))
    dataframe_engin['ID_Caserne'] = dataframe_engin['ID_Caserne'].map(caserne_mapping)
    dataframe_engin.to_sql('engin', con=engine, if_exists='append', index=False)

    dataframe_affecter = dataframe_affecter.drop('Nom', axis=1)
    dataframe_affecter = dataframe_affecter.drop('Prenom', axis=1)
    dataframe_affecter['Date_Affectation'] = pd.to_datetime(dataframe_affecter['Date_Affectation'], format='%d/%m/%Y', errors='coerce')
    affecter_mapping = dict(zip(dataframe_caserne['Libellé'], dataframe_caserne['ID_Caserne']))
    dataframe_affecter['ID_Caserne'] = dataframe_affecter['ID_Caserne'].map(affecter_mapping)
    dataframe_affecter.to_sql('affecter', con=engine, if_exists='append', index=False)

    dataframe_fonction.to_sql('habilitation', con=engine, if_exists='append', index=False)
    dataframe_mobiliser.to_sql('mobiliser', con=engine, if_exists='append', index=False)

    dataframe_sinistre = dataframe_sinistre.drop('Engin1', axis=1)
    dataframe_sinistre = dataframe_sinistre.drop('Engin2', axis=1)
    dataframe_sinistre = dataframe_sinistre.drop('Engin3', axis=1)
    dataframe_sinistre.to_sql('type_sinistre', con=engine, if_exists='append', index=False)

    dataframe_posseder = dataframe_posseder.drop('nom', axis=1)
    dataframe_posseder = dataframe_posseder.drop('prenom', axis=1)
    habilitation_values = dataframe_fonction['ID_Habilitation'].unique()

    for i in range(1, 9):
        habilitation_col = f'habilitation{i}'
        date_col = f'dateObtention{i}'
        if habilitation_col in dataframe_posseder.columns and date_col in dataframe_posseder.columns:
            habilitation_data = dataframe_posseder[['Matricule', habilitation_col, date_col]].copy()
            habilitation_data.rename(columns={habilitation_col: 'ID_Habilitation', date_col: 'Date_Obtention'}, inplace=True)
            habilitation_data.dropna(subset=['ID_Habilitation'], inplace=True)
            habilitation_data['Date_Obtention'] = pd.to_datetime(habilitation_data['Date_Obtention'], format='%d/%m/%Y', errors='coerce')
            habilitation_data = habilitation_data[habilitation_data['ID_Habilitation'].isin(habilitation_values)]
            habilitation_data.to_sql('posséder', con=engine, if_exists='append', index=False)

    dataframe_lier = dataframe_lier.drop('Libellé', axis=1)
    for i in range(1, 3):
        engin_col = f'Engin{i}'
        if engin_col in dataframe_lier.columns:
            lier_data = dataframe_lier[[engin_col, 'ID_Sinistre']].copy()
            lier_data.rename(columns={engin_col: 'ID_Type_Engin'}, inplace=True)
            lier_data.dropna(subset=['ID_Type_Engin'], inplace=True)
            lier_data = lier_data[lier_data['ID_Type_Engin'] != '']
            lier_data.to_sql('lier', con=engine, if_exists='append', index=False)


def deplacer_bouton_test():
    bouton_données.place_forget()
    bouton_données.place(x=random.randint(0, fenetre.winfo_width() - 100), y=random.randint(0, fenetre.winfo_height() - 50))

def verifier_importation():
    if importation_lancee:
        # Exécuter le code pour le bouton "Test"
        importer_données(dataframe_caserne, dataframe_grade, dataframe_typeengin, dataframe_pompier, dataframe_engin, dataframe_affecter, dataframe_fonction, dataframe_sinistre, dataframe_posseder,dataframe_lier,dataframe_mobiliser,db,cursor)
        ouvrir_fenetre_menu()  # Ouvrir la fenêtre avec le menu bar
    else:
        # Déplacer le bouton "Test" aléatoirement dans la fenêtre
        deplacer_bouton_test()

# Créer une fenêtre Tkinter
fenetre = tk.Tk()
fenetre.title("Importation des données")
fenetre.geometry("800x600")

# Créer une variable pour suivre l'état du bouton "Lancer l'importation"
importation_lancee = False

# Créer un bouton pour lancer le programme
bouton_tables = tk.Button(fenetre, text="Lancer la création de la base de données", command=importer_table)
bouton_tables.pack()

# Créer un bouton "Test"
bouton_données = tk.Button(fenetre, text="Lancer l'importation des données", command=verifier_importation)
bouton_données.place(x=100, y=100)

def recuperer_donnees(requete):
    cursor.execute(requete)

    # Récupérer les noms de colonnes à partir de la base de données
    column_names = [desc[0] for desc in cursor.description]

    # Récupérer les données de la base de données
    rows = cursor.fetchall()

    return column_names, rows

def executer_requete(requete, parent_tab):
    print(f"Débogage : La fonction executer_requete est appelée avec la requête : {requete}")

    try:
        # Exécuter la requête
        cursor.execute(requete)

        # Vérifier si la requête est une requête SELECT
        if requete.lower().startswith("select"):
            # Récupérer les noms de colonnes
            column_names = [desc[0] for desc in cursor.description]

            # Récupérer les données
            rows = cursor.fetchall()

            # Créer une nouvelle fenêtre pour afficher les résultats
            fenetre_resultats = tk.Toplevel(parent_tab)
            fenetre_resultats.title("Résultats de la requête")

            # Créer un widget Treeview dans la nouvelle fenêtre
            treeview = ttk.Treeview(fenetre_resultats, columns=column_names, show="headings")
            treeview.pack()

            # Ajouter les colonnes au widget Treeview
            for column in column_names:
                treeview.heading(column, text=column)
                treeview.column(column, width=100)

            # Ajouter les données au widget Treeview
            for row in rows:
                treeview.insert("", "end", values=row)

        else:
            # Afficher un message de succès
            messagebox.showinfo("Succès", "La requête a été exécutée avec succès.")

    except Exception as e:
        print(f"Erreur lors de l'exécution de la requête : {e}")
        print(f"Requête : {requete}")

        # Afficher un message d'erreur
        messagebox.showerror("Erreur", "Une erreur s'est produite lors de l'exécution de la requête.")



def afficher_donnees(treeview, column_names, rows):
    # Supprimer tous les éléments existants dans le widget Treeview
    for child in treeview.winfo_children():
        child.destroy()

    # Définir les colonnes du widget Treeview
    for column in column_names:
        treeview.heading(column, text=column)
        treeview.column(column, width=100, anchor='center')

    # Insérer les données dans le widget Treeview
    for row in rows:
        treeview.insert('', 'end', values=row)

def ouvrir_fenetre_requetes(parent_window):
    fenetre_requetes = tk.Toplevel(parent_window)
    fenetre_requetes.title("Requêtes")
    fenetre_requetes.geometry("800x600")

    # Créer un menu déroulant pour les requêtes
    requetes_menu = tk.Menu(fenetre_requetes, tearoff=0)

    # Chargez les requêtes à partir du fichier SQL
    requetes = lire_requetes('sdis79_req.sql')

    for i, requete in enumerate(requetes):
        # Ajouter une commande pour chaque requête dans le menu déroulant
        requetes_menu.add_command(label=f"Requête {i + 1}", command=lambda req=requete: executer_requete(req, fenetre_requetes))

    # Créer un bouton pour ouvrir le menu déroulant
    bouton_requetes = tk.Button(fenetre_requetes, text="Sélectionner une requête", command=lambda: requetes_menu.post(fenetre_requetes.winfo_pointerx(), fenetre_requetes.winfo_pointery()))
    bouton_requetes.pack(pady=10)



def ouvrir_fenetre_menu():
    global fenetre_menu
    fenetre.withdraw()  # Cacher la fenêtre principale
    fenetre_menu = tk.Tk()  # Créer une nouvelle fenêtre principale
    fenetre_menu.title("Menu")
    fenetre_menu.geometry("800x600")

    nouveaux_noms_requetes = [
        "Liste des pompiers professionnels avec leur dernière affectation",
        "Nombre de pompiers volontaires par caserne",
        "Employeurs ayant plus de 5 pompiers volontaires",
        "Liste des habilitations des pompiers",
        "Liste des engins par caserne",
        "Sinistres nécessitant plus de 2 engins",
        "Nombre de pompiers par type",
        "Liste des pompiers affectés récemment",
        "Ajouter un nouvel engin",
        "Supprimer une affectation",
        "Vue des casernes avec le nombre de sapeurs-pompiers",
        "Liste des casernes ayant plus de deux sapeurs-pompiers, classées par ordre décroissant"
    ]

    # Créer un menu bar
    menu_bar = tk.Menu(fenetre_menu)

    # Créer un menu déroulant pour les tables
    tables_menu = tk.Menu(menu_bar, tearoff=0)

    # Ajouter le menu déroulant pour les tables au menu bar
    menu_bar.add_cascade(label="Tables", menu=tables_menu)

    # Créer un menu déroulant pour les requêtes
    requetes_menu = tk.Menu(menu_bar, tearoff=0)

    # Ajouter le menu déroulant pour les requêtes au menu bar
    menu_bar.add_cascade(label="Requêtes", menu=requetes_menu)

    cursor.execute("SHOW TABLES")
    table_names = [table[0] for table in cursor.fetchall()]

    # Ajouter des commandes pour chaque table dans le menu déroulant
    for table_name in table_names:
        tables_menu.add_command(label=table_name, command=lambda table_name=table_name: afficher_donnees_table(table_name, fenetre_menu))

    # Chargez les requêtes à partir du fichier SQL
    requetes = lire_requetes('requetes.sql')

    # Vérifier que le nombre de nouveaux noms de requêtes correspond au nombre de requêtes
    if len(nouveaux_noms_requetes) != len(requetes):
        print("Erreur : Le nombre de nouveaux noms de requêtes ne correspond pas au nombre de requêtes.")
    else:
        # Ajouter des commandes pour chaque requête dans le menu déroulant
        for i, (nom_requete, requete) in enumerate(zip(nouveaux_noms_requetes, requetes)):
            requetes_menu.add_command(label=nom_requete, command=lambda req=requete: executer_requete(req, fenetre_menu))

    # Ajouter le menu bar à la fenêtre
    fenetre_menu.config(menu=menu_bar)


def verifier_importation():
    if importation_lancee:
        # Exécuter le code pour le bouton "Test"
        importer_données(dataframe_caserne, dataframe_grade, dataframe_typeengin, dataframe_pompier, dataframe_engin, dataframe_affecter, dataframe_fonction, dataframe_sinistre, dataframe_posseder,dataframe_lier,dataframe_mobiliser,db,cursor)
        ouvrir_fenetre_menu()  # Ouvrir la fenêtre avec le menu bar
    else:
        # Déplacer le bouton "Test" aléatoirement dans la fenêtre
        deplacer_bouton_test()

# ... (le reste du code) ...

def afficher_donnees_table(table_name, parent_window):
    # Récupérer les données de la table
    query = f"SELECT * FROM {table_name}"
    cursor.execute(query)

    # Récupérer les noms de colonnes à partir de la base de données
    column_names = [desc[0] for desc in cursor.description]

    # Récupérer les données de la table
    rows = cursor.fetchall()

    # Créer une fenêtre pour afficher les données
    fenetre_donnees = tk.Toplevel(parent_window)
    fenetre_donnees.title(f"Données de la table {table_name}")

    # Créer un widget Treeview pour afficher les données
    treeview = ttk.Treeview(fenetre_donnees, columns=column_names, show="headings")
    treeview.pack()

    # Ajouter les colonnes au widget Treeview
    for column in column_names:
        treeview.heading(column, text=column)
        treeview.column(column, width=100)

    # Ajouter les données au widget Treeview
    for row in rows:
        values = [str(val) if val is not None else '' for val in row]
        treeview.insert("", "end", values=values)

    # Appeler la fonction afficher_donnees avec les bons arguments
    afficher_donnees(treeview, column_names, rows)


def afficher_donnees_requete(treeview, column_names, rows):
    # Supprimer tous les éléments existants dans le widget Treeview
    for child in treeview.winfo_children():
        child.destroy()

    # Définir les colonnes du widget Treeview
    for column in column_names:
        treeview.heading(column, text=column)
        treeview.column(column, width=100, anchor='center')

    # Insérer les données dans le widget Treeview
    for row in rows:
        treeview.insert('', 'end', values=row)

# ... (le reste du code) ...


def lire_requetes(file_path):
    requetes = []

    with open('sdis79_req.sql', 'r', encoding='utf-8') as file:
        sql_content = file.read()
        queries = sql_content.split(';')

        for query in queries:
            query = query.strip()
            if query:
                requetes.append(query)

    return requetes

# Lancer la boucle principale de Tkinter
fenetre.mainloop()

# Fermer le curseur et la connexion
cursor.close()
db.close()