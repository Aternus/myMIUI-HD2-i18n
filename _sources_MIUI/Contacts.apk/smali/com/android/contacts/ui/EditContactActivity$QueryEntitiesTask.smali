.class Lcom/android/contacts/ui/EditContactActivity$QueryEntitiesTask;
.super Lcom/android/contacts/util/WeakAsyncTask;
.source "EditContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ui/EditContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryEntitiesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/util/WeakAsyncTask",
        "<",
        "Landroid/content/Intent;",
        "Ljava/lang/Void;",
        "Lcom/android/contacts/model/EntitySet;",
        "Lcom/android/contacts/ui/EditContactActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private mSelection:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/contacts/ui/EditContactActivity;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 268
    invoke-direct {p0, p1}, Lcom/android/contacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 269
    return-void
.end method


# virtual methods
.method protected varargs doInBackground(Lcom/android/contacts/ui/EditContactActivity;[Landroid/content/Intent;)Lcom/android/contacts/model/EntitySet;
    .locals 19
    .parameter "target"
    .parameter "params"

    .prologue
    .line 273
    const/4 v5, 0x0

    aget-object v13, p2, v5

    .line 274
    .local v13, intent:Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/ui/EditContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 277
    .local v3, resolver:Landroid/content/ContentResolver;
    invoke-virtual {v13}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 278
    .local v4, data:Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v9

    .line 279
    .local v9, authority:Ljava/lang/String;
    invoke-virtual {v13, v3}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v14

    .line 281
    .local v14, mimeType:Ljava/lang/String;
    const-string v5, "0"

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ui/EditContactActivity$QueryEntitiesTask;->mSelection:Ljava/lang/String;

    .line 282
    const-string v5, "com.android.contacts"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 283
    const-string v5, "vnd.android.cursor.item/contact"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 285
    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v11

    .line 286
    .local v11, contactId:J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contact_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ui/EditContactActivity$QueryEntitiesTask;->mSelection:Ljava/lang/String;

    .line 297
    .end local v11           #contactId:J
    :cond_0
    :goto_0
    sget-object v5, Lcom/android/contacts/ui/EditContactActivity$CustomQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 299
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_2

    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 300
    const/4 v5, 0x0

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 301
    .local v18, ringTone:Ljava/lang/String;
    if-eqz v18, :cond_1

    .line 302
    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v5

    #setter for: Lcom/android/contacts/ui/EditContactActivity;->mRingtoneUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/android/contacts/ui/EditContactActivity;->access$002(Lcom/android/contacts/ui/EditContactActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 304
    :cond_1
    const/4 v5, 0x1

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 305
    .local v15, photo:Ljava/lang/String;
    if-eqz v15, :cond_2

    .line 306
    move-object/from16 v0, p1

    move-object v1, v15

    #setter for: Lcom/android/contacts/ui/EditContactActivity;->mIncomingCallPhoto:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/contacts/ui/EditContactActivity;->access$102(Lcom/android/contacts/ui/EditContactActivity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    .end local v15           #photo:Ljava/lang/String;
    .end local v18           #ringTone:Ljava/lang/String;
    :cond_2
    if-eqz v10, :cond_3

    .line 311
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 314
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/ui/EditContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/EditContactActivity$QueryEntitiesTask;->mSelection:Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Lcom/android/contacts/model/EntitySet;->fromQuery(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntitySet;

    move-result-object v5

    return-object v5

    .line 287
    .end local v10           #c:Landroid/database/Cursor;
    :cond_4
    const-string v5, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 288
    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v16

    .line 289
    .local v16, rawContactId:J
    move-object v0, v3

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Lcom/android/contacts/ContactsUtils;->queryForContactId(Landroid/content/ContentResolver;J)J

    move-result-wide v11

    .line 290
    .restart local v11       #contactId:J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contact_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ui/EditContactActivity$QueryEntitiesTask;->mSelection:Ljava/lang/String;

    goto :goto_0

    .line 292
    .end local v11           #contactId:J
    .end local v16           #rawContactId:J
    :cond_5
    const-string v5, "contacts"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 293
    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v16

    .line 294
    .restart local v16       #rawContactId:J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "raw_contact_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ui/EditContactActivity$QueryEntitiesTask;->mSelection:Ljava/lang/String;

    goto/16 :goto_0

    .line 310
    .end local v16           #rawContactId:J
    .restart local v10       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v5

    if-eqz v10, :cond_6

    .line 311
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 310
    :cond_6
    throw v5
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 262
    check-cast p1, Lcom/android/contacts/ui/EditContactActivity;

    .end local p1
    check-cast p2, [Landroid/content/Intent;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/ui/EditContactActivity$QueryEntitiesTask;->doInBackground(Lcom/android/contacts/ui/EditContactActivity;[Landroid/content/Intent;)Lcom/android/contacts/model/EntitySet;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/contacts/ui/EditContactActivity;Lcom/android/contacts/model/EntitySet;)V
    .locals 11
    .parameter "target"
    .parameter "entitySet"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 319
    iget-object v8, p0, Lcom/android/contacts/ui/EditContactActivity$QueryEntitiesTask;->mSelection:Ljava/lang/String;

    iput-object v8, p1, Lcom/android/contacts/ui/EditContactActivity;->mQuerySelection:Ljava/lang/String;

    .line 322
    move-object v1, p1

    .line 323
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/model/Sources;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/Sources;

    move-result-object v6

    .line 326
    .local v6, sources:Lcom/android/contacts/model/Sources;
    invoke-virtual {p1}, Lcom/android/contacts/ui/EditContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 327
    .local v2, extras:Landroid/os/Bundle;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v8

    if-lez v8, :cond_2

    move v3, v10

    .line 328
    .local v3, hasExtras:Z
    :goto_0
    invoke-virtual {p2}, Lcom/android/contacts/model/EntitySet;->size()I

    move-result v8

    if-lez v8, :cond_3

    move v4, v10

    .line 329
    .local v4, hasState:Z
    :goto_1
    if-eqz v4, :cond_1

    .line 331
    invoke-virtual {p2, v9}, Lcom/android/contacts/model/EntitySet;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/model/EntityDelta;

    .line 332
    .local v7, state:Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v7}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v8

    const-string v9, "account_type"

    invoke-virtual {v8, v9}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, accountType:Ljava/lang/String;
    const/4 v8, 0x3

    invoke-virtual {v6, v0, v8}, Lcom/android/contacts/model/Sources;->getInflatedSource(Ljava/lang/String;I)Lcom/android/contacts/model/ContactsSource;

    move-result-object v5

    .line 336
    .local v5, source:Lcom/android/contacts/model/ContactsSource;
    if-eqz v3, :cond_0

    .line 337
    invoke-static {v1, v5, v7, v2}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Landroid/content/Context;Lcom/android/contacts/model/ContactsSource;Lcom/android/contacts/model/EntityDelta;Landroid/os/Bundle;)V

    .line 340
    :cond_0
    #calls: Lcom/android/contacts/ui/EditContactActivity;->ensureDefaultKindsExist(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource;)V
    invoke-static {v7, v5}, Lcom/android/contacts/ui/EditContactActivity;->access$200(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource;)V

    .line 343
    .end local v0           #accountType:Ljava/lang/String;
    .end local v5           #source:Lcom/android/contacts/model/ContactsSource;
    .end local v7           #state:Lcom/android/contacts/model/EntityDelta;
    :cond_1
    #setter for: Lcom/android/contacts/ui/EditContactActivity;->mState:Lcom/android/contacts/model/EntitySet;
    invoke-static {p1, p2}, Lcom/android/contacts/ui/EditContactActivity;->access$302(Lcom/android/contacts/ui/EditContactActivity;Lcom/android/contacts/model/EntitySet;)Lcom/android/contacts/model/EntitySet;

    .line 344
    const/4 v8, 0x0

    #setter for: Lcom/android/contacts/ui/EditContactActivity;->mEditor:Lcom/android/contacts/ui/widget/BaseContactEditorView;
    invoke-static {p1, v8}, Lcom/android/contacts/ui/EditContactActivity;->access$402(Lcom/android/contacts/ui/EditContactActivity;Lcom/android/contacts/ui/widget/BaseContactEditorView;)Lcom/android/contacts/ui/widget/BaseContactEditorView;

    .line 346
    invoke-virtual {p1}, Lcom/android/contacts/ui/EditContactActivity;->bindEditors()V

    .line 347
    return-void

    .end local v3           #hasExtras:Z
    .end local v4           #hasState:Z
    :cond_2
    move v3, v9

    .line 327
    goto :goto_0

    .restart local v3       #hasExtras:Z
    :cond_3
    move v4, v9

    .line 328
    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 262
    check-cast p1, Lcom/android/contacts/ui/EditContactActivity;

    .end local p1
    check-cast p2, Lcom/android/contacts/model/EntitySet;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/ui/EditContactActivity$QueryEntitiesTask;->onPostExecute(Lcom/android/contacts/ui/EditContactActivity;Lcom/android/contacts/model/EntitySet;)V

    return-void
.end method
