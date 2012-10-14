.class Lcom/miui/notes/ui/NotesListActivity$9;
.super Landroid/os/AsyncTask;
.source "NotesListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/notes/ui/NotesListActivity;->exportNoteToText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/notes/ui/NotesListActivity;

.field final synthetic val$backup:Lcom/miui/notes/tool/BackupUtils;


# direct methods
.method constructor <init>(Lcom/miui/notes/ui/NotesListActivity;Lcom/miui/notes/tool/BackupUtils;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1012
    iput-object p1, p0, Lcom/miui/notes/ui/NotesListActivity$9;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    iput-object p2, p0, Lcom/miui/notes/ui/NotesListActivity$9;->val$backup:Lcom/miui/notes/tool/BackupUtils;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 1
    .parameter "unused"

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity$9;->val$backup:Lcom/miui/notes/tool/BackupUtils;

    invoke-virtual {v0}, Lcom/miui/notes/tool/BackupUtils;->exportToText()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1012
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/notes/ui/NotesListActivity$9;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 8
    .parameter "result"

    .prologue
    const v3, 0x7f08003b

    const/4 v7, 0x0

    const v6, 0x104000a

    .line 1021
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    .line 1022
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity$9;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1023
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity$9;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    invoke-virtual {v1, v3}, Lcom/miui/notes/ui/NotesListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1025
    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity$9;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    const v2, 0x7f080035

    invoke-virtual {v1, v2}, Lcom/miui/notes/ui/NotesListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1027
    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1028
    sget-object v1, Landroid/app/AlertDialog$Indicator;->Warning:Landroid/app/AlertDialog$Indicator;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIndicator(Landroid/app/AlertDialog$Indicator;)Landroid/app/AlertDialog$Builder;

    .line 1029
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1050
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    :goto_0
    return-void

    .line 1030
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 1031
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity$9;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1032
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity$9;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    const v2, 0x7f08003a

    invoke-virtual {v1, v2}, Lcom/miui/notes/ui/NotesListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1034
    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity$9;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    const v2, 0x7f08003c

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/notes/ui/NotesListActivity$9;->val$backup:Lcom/miui/notes/tool/BackupUtils;

    invoke-virtual {v5}, Lcom/miui/notes/tool/BackupUtils;->getExportedTextFileName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/miui/notes/ui/NotesListActivity$9;->val$backup:Lcom/miui/notes/tool/BackupUtils;

    invoke-virtual {v5}, Lcom/miui/notes/tool/BackupUtils;->getExportedTextFileDir()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/miui/notes/ui/NotesListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1037
    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1038
    sget-object v1, Landroid/app/AlertDialog$Indicator;->Info:Landroid/app/AlertDialog$Indicator;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIndicator(Landroid/app/AlertDialog$Indicator;)Landroid/app/AlertDialog$Builder;

    .line 1039
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 1040
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1041
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity$9;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1042
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity$9;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    invoke-virtual {v1, v3}, Lcom/miui/notes/ui/NotesListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1044
    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity$9;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    const v2, 0x7f080036

    invoke-virtual {v1, v2}, Lcom/miui/notes/ui/NotesListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1046
    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1047
    sget-object v1, Landroid/app/AlertDialog$Indicator;->Warning:Landroid/app/AlertDialog$Indicator;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIndicator(Landroid/app/AlertDialog$Indicator;)Landroid/app/AlertDialog$Builder;

    .line 1048
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1012
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/notes/ui/NotesListActivity$9;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
