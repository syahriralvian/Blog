<?php
session_start();

include('../config/config.php');
include('../lib/app.lib.php');

userIsConnected('ROLE_ADMIN');

$vue = 'delUser';
$erreur = false;
$users = array();

try
{
    /* Si on reçoit bien un id utilisateur à supprimer */
    if(array_key_exists('id',$_GET))
    {
        /* Attention on ne peut pas supprimer l'utilisateur en cours ;) */
        if($_GET['id'] != $_SESSION['user']['id'])
        {
            $dbh = connexion();

            /** On vérifie si l'utilisateur n'a pas d'article attaché !
             * S'il en a on ne peut pas le supprimer bien sûr
             */
            $sql  ='SELECT art_id FROM article WHERE art_user_id = :id';
            $sth = $dbh->prepare($sql);
            $sth->bindValue(':id',$_GET['id'],PDO::PARAM_INT);
            $sth->execute();
            if($sth->fetchColumn() > 0)
                addFlashBag('L\'user is currently the author of several articles on the blog. It is impossible to delete it (hey the developer is boring he could have offered to switch these articles to another author)!');
            else {
                /** On supprime d'abord le fichier Avatar lié à l'user
                 * En effet ne pas oublier de supprimer la photo sur le disque ;)
                 */
                $sql  ='SELECT user_avatar FROM user WHERE user_id = :id';
                $sth = $dbh->prepare($sql);
                $sth->bindValue(':id',$_GET['id'],PDO::PARAM_INT);
                $sth->execute();
                $user = $sth->fetch(PDO::FETCH_ASSOC);
                //Si le fichier existe sur le disque on le supprime !
                if($user && file_exists(REP_BLOG.REP_UPLOAD.'users/'.$user['user_avatar']))
                    unlink(REP_BLOG.REP_UPLOAD.'users/'.$user['user_avatar']);

                /** Puis on supprime l'utilisateur dans la bdd */
                $sql  ='DELETE FROM user WHERE user_id = :id';
                $sth = $dbh->prepare($sql);
                $sth->bindValue(':id',$_GET['id'],PDO::PARAM_INT);
                if($sth->execute())
                     addFlashBag('User deleted !');
                else
                     addFlashBag('An error prevented deleting l\'user !');
            }
        }
        else
        {
            addFlashBag('It is forbidden to delete yourself !');
        }
    }
    else
    {
        addFlashBag('You got lost !');
    }
}
catch(PDOException $e)
{
    addFlashBag('A connection error has occurred :'.$e->getMessage());
}

header('Location:listUser.php');