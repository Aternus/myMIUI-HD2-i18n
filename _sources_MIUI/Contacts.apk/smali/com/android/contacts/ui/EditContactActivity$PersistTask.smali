.class public Lcom/android/contacts/ui/EditContactActivity$PersistTask;
.super Lcom/android/contacts/util/WeakAsyncTask;
.source "EditContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ui/EditContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PersistTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/util/WeakAsyncTask",
        "<",
        "Lcom/android/contacts/model/EntitySet;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Lcom/android/contacts/ui/EditContactActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private mContactLookupUri:Landroid/net/Uri;

.field private mProgress:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mSaveMode:I


# direct methods
.method public constructor <init>(Lcom/android/contacts/ui/EditContactActivity;I)V
    .locals 1
    .parameter "target"
    .parameter "saveMode"

    .prologue
    .line 1067
    invoke-direct {p0, p1}, Lcom/android/contacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 1064
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/ui/EditContactActivity$PersistTask;->mContactLookupUri:Landroid/net/Uri;

    .line 1068
    iput p2, p0, Lcom/android/contacts/ui/EditContactActivity$PersistTask;->mSaveMode:I

    .line 1069
    return-void
.end method

.method private getRawContactId(Lcom/android/contacts/model/EntitySet;Ljava/util/ArrayList;[Landroid/content/ContentProviderResult;)J
    .locals 9
    .parameter "state"
    .parameter
    .parameter "results"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/model/EntitySet;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;[",
            "Landroid/content/ContentProviderResult;",
            ")J"
        }
    .end annotation

    .prologue
    .local p2, diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-wide/16 v7, -0x1

    .line 1140
    invoke-virtual {p1}, Lcom/android/contacts/model/EntitySet;->findRawContactId()J

    move-result-wide v3

    .line 1141
    .local v3, rawContactId:J
    cmp-long v5, v3, v7

    if-eqz v5, :cond_0

    move-wide v5, v3

    .line 1155
    :goto_0
    return-wide v5

    .line 1146
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1147
    .local v0, diffSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1148
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentProviderOperation;

    .line 1149
    .local v2, operation:Landroid/content/ContentProviderOperation;
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation;->getType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1152
    aget-object v5, p3, v1

    iget-object v5, v5, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    goto :goto_0

    .line 1147
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2           #operation:Landroid/content/ContentProviderOperation;
    :cond_2
    move-wide v5, v7

    .line 1155
    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground(Lcom/android/contacts/ui/EditContactActivity;[Lcom/android/contacts/model/EntitySet;)Ljava/lang/Integer;
    .locals 21
    .parameter "target"
    .parameter "params"

    .prologue
    .line 1086
    move-object/from16 v4, p1

    .line 1087
    .local v4, context:Landroid/content/Context;
    invoke-virtual {v4}, Lcom/android/contacts/ui/EditContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 1089
    .local v11, resolver:Landroid/content/ContentResolver;
    const/16 v18, 0x0

    aget-object v15, p2, v18

    .line 1092
    .local v15, state:Lcom/android/contacts/model/EntitySet;
    invoke-static {v4}, Lcom/android/contacts/model/Sources;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/Sources;

    move-result-object v14

    .line 1093
    .local v14, sources:Lcom/android/contacts/model/Sources;
    invoke-static {v15, v14}, Lcom/android/contacts/model/EntityModifier;->trimEmpty(Lcom/android/contacts/model/EntitySet;Lcom/android/contacts/model/Sources;)V

    .line 1096
    const/16 v16, 0x0

    .line 1097
    .local v16, tries:I
    const/16 v18, 0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .local v12, result:Ljava/lang/Integer;
    move/from16 v17, v16

    .line 1098
    .end local v16           #tries:I
    .local v17, tries:I
    :goto_0
    add-int/lit8 v16, v17, 0x1

    .end local v17           #tries:I
    .restart local v16       #tries:I
    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    .line 1101
    :try_start_0
    invoke-virtual {v15}, Lcom/android/contacts/model/EntitySet;->buildDiff()Ljava/util/ArrayList;

    move-result-object v5

    .line 1103
    .local v5, diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v13, 0x0

    .line 1104
    .local v13, results:[Landroid/content/ContentProviderResult;
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_0

    .line 1105
    const-string v18, "com.android.contacts"

    move-object v0, v11

    move-object/from16 v1, v18

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v13

    .line 1108
    :cond_0
    move-object/from16 v0, p0

    move-object v1, v15

    move-object v2, v5

    move-object v3, v13

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/ui/EditContactActivity$PersistTask;->getRawContactId(Lcom/android/contacts/model/EntitySet;Ljava/util/ArrayList;[Landroid/content/ContentProviderResult;)J

    move-result-wide v8

    .line 1109
    .local v8, rawContactId:J
    const-wide/16 v18, -0x1

    cmp-long v18, v8, v18

    if-eqz v18, :cond_1

    .line 1110
    sget-object v18, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v18

    move-wide v1, v8

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 1114
    .local v10, rawContactUri:Landroid/net/Uri;
    invoke-static {v11, v10}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ui/EditContactActivity$PersistTask;->mContactLookupUri:Landroid/net/Uri;

    .line 1117
    .end local v10           #rawContactUri:Landroid/net/Uri;
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_3

    const/16 v18, 0x1

    :goto_1
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v12

    .line 1134
    .end local v5           #diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v8           #rawContactId:J
    .end local v13           #results:[Landroid/content/ContentProviderResult;
    :cond_2
    :goto_2
    return-object v12

    .line 1117
    .restart local v5       #diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v8       #rawContactId:J
    .restart local v13       #results:[Landroid/content/ContentProviderResult;
    :cond_3
    const/16 v18, 0x0

    goto :goto_1

    .line 1120
    .end local v5           #diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v8           #rawContactId:J
    .end local v13           #results:[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v18

    move-object/from16 v6, v18

    .line 1122
    .local v6, e:Landroid/os/RemoteException;
    const-string v18, "EditContactActivity"

    const-string v19, "Problem persisting user edits"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1125
    .end local v6           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v18

    move-object/from16 v6, v18

    .line 1127
    .local v6, e:Landroid/content/OperationApplicationException;
    const-string v18, "EditContactActivity"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Version consistency failed, re-parenting: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/ui/EditContactActivity;->mQuerySelection:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v0, v11

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/android/contacts/model/EntitySet;->fromQuery(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntitySet;

    move-result-object v7

    .line 1130
    .local v7, newState:Lcom/android/contacts/model/EntitySet;
    invoke-static {v7, v15}, Lcom/android/contacts/model/EntitySet;->mergeAfter(Lcom/android/contacts/model/EntitySet;Lcom/android/contacts/model/EntitySet;)Lcom/android/contacts/model/EntitySet;

    move-result-object v15

    move/from16 v17, v16

    .line 1131
    .end local v16           #tries:I
    .restart local v17       #tries:I
    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1053
    check-cast p1, Lcom/android/contacts/ui/EditContactActivity;

    .end local p1
    check-cast p2, [Lcom/android/contacts/model/EntitySet;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/ui/EditContactActivity$PersistTask;->doInBackground(Lcom/android/contacts/ui/EditContactActivity;[Lcom/android/contacts/model/EntitySet;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/contacts/ui/EditContactActivity;Ljava/lang/Integer;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1161
    .line 1162
    iget-object v0, p0, Lcom/android/contacts/ui/EditContactActivity$PersistTask;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    .line 1164
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/android/contacts/ui/EditContactActivity$PersistTask;->mSaveMode:I

    if-eq v1, v4, :cond_1

    iget v1, p0, Lcom/android/contacts/ui/EditContactActivity$PersistTask;->mSaveMode:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 1165
    const v1, 0x7f0b0046

    invoke-static {p1, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1170
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/android/contacts/ui/EditContactActivity;->dismissDialog(Landroid/app/Dialog;)V

    .line 1173
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/util/EmptyService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 1175
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v4, :cond_2

    move v0, v3

    :goto_1
    iget v1, p0, Lcom/android/contacts/ui/EditContactActivity$PersistTask;->mSaveMode:I

    iget-object v2, p0, Lcom/android/contacts/ui/EditContactActivity$PersistTask;->mContactLookupUri:Landroid/net/Uri;

    #calls: Lcom/android/contacts/ui/EditContactActivity;->onSaveCompleted(ZILandroid/net/Uri;)V
    invoke-static {p1, v0, v1, v2}, Lcom/android/contacts/ui/EditContactActivity;->access$1100(Lcom/android/contacts/ui/EditContactActivity;ZILandroid/net/Uri;)V

    .line 1176
    return-void

    .line 1166
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 1167
    const v1, 0x7f0b0047

    invoke-static {p1, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    move v0, v5

    .line 1175
    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1053
    check-cast p1, Lcom/android/contacts/ui/EditContactActivity;

    .end local p1
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/ui/EditContactActivity$PersistTask;->onPostExecute(Lcom/android/contacts/ui/EditContactActivity;Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute(Lcom/android/contacts/ui/EditContactActivity;)V
    .locals 3
    .parameter

    .prologue
    .line 1074
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    const v2, 0x7f0b0045

    invoke-virtual {p1, v2}, Lcom/android/contacts/ui/EditContactActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p1, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/contacts/ui/EditContactActivity$PersistTask;->mProgress:Ljava/lang/ref/WeakReference;

    .line 1080
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/util/EmptyService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1081
    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1053
    check-cast p1, Lcom/android/contacts/ui/EditContactActivity;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/ui/EditContactActivity$PersistTask;->onPreExecute(Lcom/android/contacts/ui/EditContactActivity;)V

    return-void
.end method
