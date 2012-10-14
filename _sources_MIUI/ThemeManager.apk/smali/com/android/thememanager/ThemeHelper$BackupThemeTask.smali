.class Lcom/android/thememanager/ThemeHelper$BackupThemeTask;
.super Landroid/os/AsyncTask;
.source "ThemeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/thememanager/ThemeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackupThemeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mProgress:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 971
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 972
    iput-object p1, p0, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->mContext:Landroid/content/Context;

    .line 973
    return-void
.end method

.method private backupRingtone(Ljava/util/zip/ZipOutputStream;ILjava/lang/String;)V
    .locals 3
    .parameter "out"
    .parameter "type"
    .parameter "targetPath"

    .prologue
    .line 985
    iget-object v2, p0, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->mContext:Landroid/content/Context;

    invoke-static {v2, p2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 986
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/miui/android/resourcebrowser/ResourceHelper;->getPathByUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 987
    .local v0, srcPath:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 988
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2, p3}, Lcom/android/thememanager/Helper;->zip(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)Z

    .line 990
    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 966
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 10
    .parameter "object"

    .prologue
    const/4 v8, -0x1

    const-string v6, "/data/system/wallpapers"

    const-string v6, "/data/system/theme"

    .line 994
    new-instance v3, Ljava/io/File;

    sget-object v6, Lcom/android/thememanager/ThemeHelper;->BACKUP_PATH:Ljava/lang/String;

    const-string v7, "backup.mtz1"

    invoke-direct {v3, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 996
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    const/16 v7, 0x1ff

    invoke-static {v6, v7, v8, v8}, Landroid/os/FileUtils;->mkdirs(Ljava/io/File;III)Z

    .line 999
    :try_start_0
    const-string v6, "%s/description.xml"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1000
    .local v0, descriptionPath:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x7f04

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/miui/android/resourcebrowser/ResourceHelper;->writeTo(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1004
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1005
    .local v2, f:Ljava/io/FileOutputStream;
    new-instance v4, Ljava/util/zip/ZipOutputStream;

    new-instance v6, Ljava/io/BufferedOutputStream;

    const/16 v7, 0x2000

    invoke-direct {v6, v2, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v4, v6}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1006
    .local v4, out:Ljava/util/zip/ZipOutputStream;
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/zip/ZipOutputStream;->setMethod(I)V

    .line 1008
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v7, "description.xml"

    invoke-static {v4, v6, v7}, Lcom/android/thememanager/Helper;->zip(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)Z

    .line 1009
    new-instance v6, Ljava/io/File;

    const-string v7, "/data/system/wallpapers"

    const-string v8, "wallpaper"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "wallpaper/default_wallpaper.jpg"

    invoke-static {v4, v6, v7}, Lcom/android/thememanager/Helper;->zip(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)Z

    .line 1010
    new-instance v6, Ljava/io/File;

    const-string v7, "/data/system/wallpapers"

    const-string v8, "lockscreen"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "wallpaper/default_lock_wallpaper.jpg"

    invoke-static {v4, v6, v7}, Lcom/android/thememanager/Helper;->zip(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)Z

    .line 1012
    const/4 v6, 0x1

    const-string v7, "ringtones/ringtone.mp3"

    invoke-direct {p0, v4, v6, v7}, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->backupRingtone(Ljava/util/zip/ZipOutputStream;ILjava/lang/String;)V

    .line 1013
    const/4 v6, 0x2

    const-string v7, "ringtones/notification.mp3"

    invoke-direct {p0, v4, v6, v7}, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->backupRingtone(Ljava/util/zip/ZipOutputStream;ILjava/lang/String;)V

    .line 1014
    const/4 v6, 0x4

    const-string v7, "ringtones/alarm.mp3"

    invoke-direct {p0, v4, v6, v7}, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->backupRingtone(Ljava/util/zip/ZipOutputStream;ILjava/lang/String;)V

    .line 1016
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/system/theme"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "audioeffect"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1017
    new-instance v6, Ljava/io/File;

    const-string v7, "/system/media/audio/ui"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v7, "audioeffect"

    invoke-static {v4, v6, v7}, Lcom/android/thememanager/Helper;->zip(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)Z

    .line 1020
    :cond_0
    new-instance v6, Ljava/io/File;

    const-string v7, "/data/system/theme"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v7, ""

    invoke-static {v4, v6, v7}, Lcom/android/thememanager/Helper;->zip(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)Z

    .line 1021
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 1023
    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/android/thememanager/ThemeHelper;->BACKUP_THEME_PATH:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1024
    .local v5, target:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 1025
    invoke-virtual {v3, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1030
    const/4 v6, 0x0

    return-object v6

    .line 1026
    .end local v0           #descriptionPath:Ljava/lang/String;
    .end local v2           #f:Ljava/io/FileOutputStream;
    .end local v4           #out:Ljava/util/zip/ZipOutputStream;
    .end local v5           #target:Ljava/io/File;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 1027
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1028
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6}, Ljava/lang/RuntimeException;-><init>()V

    throw v6
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 966
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "object"

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1036
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070009

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1041
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 977
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->mProgress:Landroid/app/ProgressDialog;

    .line 978
    iget-object v0, p0, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->mProgress:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 979
    iget-object v0, p0, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->mProgress:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->mContext:Landroid/content/Context;

    const v2, 0x7f070008

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 980
    iget-object v0, p0, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->mProgress:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 981
    iget-object v0, p0, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 982
    return-void
.end method
