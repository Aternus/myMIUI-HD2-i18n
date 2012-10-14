.class public final Lcom/android/contacts/ui/ShowOrCreateActivity;
.super Landroid/app/Activity;
.source "ShowOrCreateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;


# static fields
.field static final CONTACTS_PROJECTION:[Ljava/lang/String;

.field static final PHONES_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mCreateDescrip:Ljava/lang/String;

.field private mCreateExtras:Landroid/os/Bundle;

.field private mCreateForce:Z

.field private mQueryHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/contacts/ui/ShowOrCreateActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    .line 72
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/contacts/ui/ShowOrCreateActivity;->CONTACTS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/android/contacts/ui/ShowOrCreateActivity;->finish()V

    .line 264
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 234
    const/4 v0, 0x0

    .line 235
    .local v0, intent:Landroid/content/Intent;
    if-nez p2, :cond_2

    .line 237
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 244
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 245
    iget-object v1, p0, Lcom/android/contacts/ui/ShowOrCreateActivity;->mCreateExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 246
    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/ShowOrCreateActivity;->startActivity(Landroid/content/Intent;)V

    .line 249
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/ui/ShowOrCreateActivity;->finish()V

    .line 250
    return-void

    .line 238
    :cond_2
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 240
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 241
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    const/16 v1, 0x2a

    const/4 v2, 0x0

    .line 90
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    iget-object v0, p0, Lcom/android/contacts/ui/ShowOrCreateActivity;->mQueryHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    if-nez v0, :cond_3

    .line 94
    new-instance v0, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    invoke-direct {v0, p0, p0}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;-><init>(Landroid/content/Context;Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;)V

    iput-object v0, p0, Lcom/android/contacts/ui/ShowOrCreateActivity;->mQueryHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    .line 99
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/ui/ShowOrCreateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 100
    .local v9, intent:Landroid/content/Intent;
    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 103
    .local v8, data:Landroid/net/Uri;
    const/4 v11, 0x0

    .line 104
    .local v11, scheme:Ljava/lang/String;
    const/4 v12, 0x0

    .line 105
    .local v12, ssp:Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 106
    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    .line 107
    invoke-virtual {v8}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v12

    .line 111
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ui/ShowOrCreateActivity;->mCreateExtras:Landroid/os/Bundle;

    .line 112
    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 113
    .local v10, originalExtras:Landroid/os/Bundle;
    if-eqz v10, :cond_1

    .line 114
    iget-object v0, p0, Lcom/android/contacts/ui/ShowOrCreateActivity;->mCreateExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 118
    :cond_1
    const-string v0, "com.android.contacts.action.CREATE_DESCRIPTION"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ui/ShowOrCreateActivity;->mCreateDescrip:Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/android/contacts/ui/ShowOrCreateActivity;->mCreateDescrip:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 120
    iput-object v12, p0, Lcom/android/contacts/ui/ShowOrCreateActivity;->mCreateDescrip:Ljava/lang/String;

    .line 124
    :cond_2
    const-string v0, "com.android.contacts.action.FORCE_CREATE"

    const/4 v4, 0x0

    invoke-virtual {v9, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/ui/ShowOrCreateActivity;->mCreateForce:Z

    .line 127
    const-string v0, "mailto"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 128
    iget-object v0, p0, Lcom/android/contacts/ui/ShowOrCreateActivity;->mCreateExtras:Landroid/os/Bundle;

    const-string v4, "email"

    invoke-virtual {v0, v4, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v12}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 131
    .local v3, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/contacts/ui/ShowOrCreateActivity;->mQueryHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    sget-object v4, Lcom/android/contacts/ui/ShowOrCreateActivity;->CONTACTS_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .end local v3           #uri:Landroid/net/Uri;
    :goto_1
    return-void

    .line 96
    .end local v8           #data:Landroid/net/Uri;
    .end local v9           #intent:Landroid/content/Intent;
    .end local v10           #originalExtras:Landroid/os/Bundle;
    .end local v11           #scheme:Ljava/lang/String;
    .end local v12           #ssp:Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/ui/ShowOrCreateActivity;->mQueryHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;->cancelOperation(I)V

    goto :goto_0

    .line 133
    .restart local v8       #data:Landroid/net/Uri;
    .restart local v9       #intent:Landroid/content/Intent;
    .restart local v10       #originalExtras:Landroid/os/Bundle;
    .restart local v11       #scheme:Ljava/lang/String;
    .restart local v12       #ssp:Ljava/lang/String;
    :cond_4
    const-string v0, "tel"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 134
    iget-object v0, p0, Lcom/android/contacts/ui/ShowOrCreateActivity;->mCreateExtras:Landroid/os/Bundle;

    const-string v4, "phone"

    invoke-virtual {v0, v4, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v0, v12}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 137
    .restart local v3       #uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/contacts/ui/ShowOrCreateActivity;->mQueryHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    sget-object v4, Lcom/android/contacts/ui/ShowOrCreateActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 140
    .end local v3           #uri:Landroid/net/Uri;
    :cond_5
    const-string v0, "ShowOrCreateActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/ui/ShowOrCreateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {p0}, Lcom/android/contacts/ui/ShowOrCreateActivity;->finish()V

    goto :goto_1
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .parameter "id"
    .parameter "bundle"

    .prologue
    .line 208
    packed-switch p1, :pswitch_data_0

    .line 225
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v3

    :goto_0
    return-object v3

    .line 210
    :pswitch_0
    const/4 v3, 0x3

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const v4, 0x7f0b0035

    invoke-virtual {p0, v4}, Lcom/android/contacts/ui/ShowOrCreateActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const v4, 0x7f0b0034

    invoke-virtual {p0, v4}, Lcom/android/contacts/ui/ShowOrCreateActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const v4, 0x7f0b0033

    invoke-virtual {p0, v4}, Lcom/android/contacts/ui/ShowOrCreateActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 216
    .local v2, choices:[Ljava/lang/String;
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v3, 0x1090003

    invoke-direct {v0, p0, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 219
    .local v0, adapter:Landroid/widget/ListAdapter;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 220
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0b0069

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 221
    const/4 v3, -0x1

    invoke-virtual {v1, v0, v3, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 222
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 223
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v5, -0x1

    const/4 v4, 0x1

    .line 155
    if-nez p3, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/android/contacts/ui/ShowOrCreateActivity;->finish()V

    .line 204
    :goto_0
    return-void

    .line 165
    :cond_0
    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 166
    if-ne v0, v4, :cond_4

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 168
    const/4 v1, 0x0

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 171
    :goto_1
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 174
    if-ne v0, v4, :cond_1

    cmp-long v3, v1, v5

    if-eqz v3, :cond_1

    .line 176
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 177
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 178
    invoke-virtual {p0, v1}, Lcom/android/contacts/ui/ShowOrCreateActivity;->startActivity(Landroid/content/Intent;)V

    .line 179
    invoke-virtual {p0}, Lcom/android/contacts/ui/ShowOrCreateActivity;->finish()V

    goto :goto_0

    .line 171
    :catchall_0
    move-exception v0

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    throw v0

    .line 181
    :cond_1
    if-le v0, v4, :cond_2

    .line 183
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/contacts/ContactsListActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 185
    iget-object v1, p0, Lcom/android/contacts/ui/ShowOrCreateActivity;->mCreateExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 186
    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/ShowOrCreateActivity;->startActivity(Landroid/content/Intent;)V

    .line 187
    invoke-virtual {p0}, Lcom/android/contacts/ui/ShowOrCreateActivity;->finish()V

    goto :goto_0

    .line 191
    :cond_2
    iget-boolean v0, p0, Lcom/android/contacts/ui/ShowOrCreateActivity;->mCreateForce:Z

    if-eqz v0, :cond_3

    .line 193
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 194
    iget-object v1, p0, Lcom/android/contacts/ui/ShowOrCreateActivity;->mCreateExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 195
    const-string v1, "vnd.android.cursor.dir/raw_contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/ShowOrCreateActivity;->startActivity(Landroid/content/Intent;)V

    .line 198
    invoke-virtual {p0}, Lcom/android/contacts/ui/ShowOrCreateActivity;->finish()V

    goto :goto_0

    .line 201
    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/contacts/ui/ShowOrCreateActivity;->showDialog(I)V

    goto :goto_0

    :cond_4
    move-wide v1, v5

    goto :goto_1
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 147
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 148
    iget-object v0, p0, Lcom/android/contacts/ui/ShowOrCreateActivity;->mQueryHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/contacts/ui/ShowOrCreateActivity;->mQueryHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;->cancelOperation(I)V

    .line 151
    :cond_0
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 0
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 255
    if-eqz p4, :cond_0

    .line 256
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 260
    :goto_0
    return-void

    .line 258
    :cond_0
    invoke-static {p0, p1}, Lcom/android/contacts/ContactsSearchManager;->startSearch(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
