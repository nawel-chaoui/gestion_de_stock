import tkinter
import mysql.connector

# Connexion à la base de données
mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="*********",
    database="boutique"
)

# Création de la fenêtre principale
root = tk.Tk()
root.title("Gestion de stock")


# Lancer la boucle principale
root.mainloop()







