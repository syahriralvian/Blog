<?php
session_start();

include('../config/config.php');
include('../lib/app.lib.php');

userIsConnected('ROLE_ADMIN');

$vue='addUser';
$title = 'Add user';

//Initialisation des erreurs à false
$erreur = '';

//Tableau correspondant aux valeurs à récupérer dans le formulaire (hors fichiers)
$values = [
'nom'=>'',
'prenom'=>'',
'email'=>'',
'password'=>'',
'bio'=>'',
'role'=>''];

$tab_erreur =
[
'nom'=>'Name must be filled !',
'prenom'=>'First name must be filled !',
'email'=>'L\'email must be completed !',
'password'=>'Password cannot be empty'
];

try
{
    if(array_key_exists('nom',$_POST))
    {
        //On valide que tous les champs ne sont pas vides sinon on référence un erreur !
        foreach($values as $champ => $value)
        {
            if(isset($_POST[$champ]) && trim($_POST[$champ])!='')
                $values[$champ] = $_POST[$champ];
            elseif(isset($tab_erreur[$champ]))   
                $erreur.= '<br>'.$tab_erreur[$champ];
            else
                $values[$champ] = NULL;
        }

        //On valide l'égalité des 2 mots de passe !
        if($values['password'] != $_POST['passwordConf'])
            $erreur.= '<br> Password confirmation error';

        //On valide le champ email spécifique
        if(!filter_var($values['email'],FILTER_VALIDATE_EMAIL))
            $erreur.= '<br> Wrong email !';

        /**PAS DEUX EMAILS IDENTIQUES DANS LA BASE 
         * On vérifie qu'un utilisateur avec cet email n'est pas déjà rentré dans la base
        */
        $dbh = connexion();
        $sth = $dbh->prepare('SELECT user_email FROM user WHERE user_email = :email');
        $sth->execute(array('email'=>$values['email']));
        $user = $sth->fetch(PDO::FETCH_ASSOC);
        if($user != false)
            $erreur.= '<br> Un utilisateur existe déjà avec cet email.';


        /** SI pas d'erreurs on fini la préparation des données et on save ! */
        if($erreur =='')
        {
            //Hashage du mot de passe et affectation de la date d'enregistrement
            $values['password']     = password_hash($_POST['password'],PASSWORD_DEFAULT);
            $values['dateCreated']  = date('Y-m-d h:i:s');
            
            //On déplace le fichier transmis pour l'avatar dans le répertoire upload/users/ 
            if (isset($_FILES["avatar"]) && $_FILES["avatar"]["error"] == UPLOAD_ERR_OK) 
            {
                $tmp_name = $_FILES["avatar"]["tmp_name"];
                $name = basename(time().'_'.$_FILES["avatar"]["name"]);
                if(move_uploaded_file($tmp_name, REP_BLOG.REP_UPLOAD.'users/'.$name))
                    $values['avatar'] = $name;
                else
                    $values['avatar'] = NULL;
            }
            else
                $values['avatar'] = NULL;

            /**2 : Prépare ma requête SQL */
            $sth = $dbh->prepare('INSERT INTO user VALUES (NULL,:email,:password,:prenom,:nom,:dateCreated,:bio,:avatar,:role)');
            var_dump($values);
            /** 3 : executer la requête */
            $sth->execute($values);
            
            /** FLASHBAG
             * On ajoute un flashbag pour informé de l'ajout d'un utilisateur sur la page listUser
             * Le flashBag (notion connue avec le framework symfony) est une variable session qui accueille des messages 
             * à afficher lors de la prochaine requête (souvent automatique avec une redirection). Lors de l'affichage de la prochaine vue le flashbag sera analysé
             * puis son contenu affiché et enfin il sera vidé ! 
             * */
            addFlashBag('User successfully added !');

            header('Location:listUser.php');
            exit();
        }
    }
}
catch(PDOException $e)
{
    $erreur.='A connection error has occurred :'.$e->getMessage();
}


include('tpl/layout.phtml');

