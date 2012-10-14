.class public Lcom/android/contacts/util/AccountSelectionUtil;
.super Ljava/lang/Object;
.source "AccountSelectionUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/util/AccountSelectionUtil$ImportingFromAccountTask;,
        Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;
    }
.end annotation


# static fields
.field public static mPath:Landroid/net/Uri;

.field public static mVCardShare:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/util/AccountSelectionUtil;->mVCardShare:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    return-void
.end method

.method public static doImport(Landroid/content/Context;ILandroid/accounts/Account;)V
    .locals 4
    .parameter "context"
    .parameter "resId"
    .parameter "account"

    .prologue
    const/4 v3, 0x0

    .line 189
    packed-switch p1, :pswitch_data_0

    .line 197
    :goto_0
    return-void

    .line 191
    :pswitch_0
    new-instance v0, Lcom/android/contacts/util/AccountSelectionUtil$ImportingFromAccountTask;

    invoke-direct {v0, p0}, Lcom/android/contacts/util/AccountSelectionUtil$ImportingFromAccountTask;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/accounts/Account;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/contacts/util/AccountSelectionUtil$ImportingFromAccountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 189
    :pswitch_data_0
    .packed-switch 0x7f0b0120
        :pswitch_0
    .end packed-switch
.end method

.method public static doImport(Landroid/content/Context;I[Landroid/accounts/Account;)V
    .locals 0
    .parameter "context"
    .parameter "resId"
    .parameter "accounts"

    .prologue
    .line 173
    packed-switch p1, :pswitch_data_0

    .line 185
    :goto_0
    return-void

    .line 175
    :pswitch_0
    invoke-static {p0, p2}, Lcom/android/contacts/util/AccountSelectionUtil;->doImportFromSim(Landroid/content/Context;[Landroid/accounts/Account;)V

    goto :goto_0

    .line 179
    :pswitch_1
    invoke-static {p0, p2}, Lcom/android/contacts/util/AccountSelectionUtil;->doImportFromSdCard(Landroid/content/Context;[Landroid/accounts/Account;)V

    goto :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x7f0b007a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static doImportFromSdCard(Landroid/content/Context;[Landroid/accounts/Account;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 213
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    .line 214
    array-length v0, p1

    move v1, v3

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 215
    invoke-static {v2, p0}, Lcom/android/contacts/model/GoogleSource;->createMyContactsIfNotExist(Landroid/accounts/Account;Landroid/content/Context;)V

    .line 214
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 219
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 221
    sget-boolean v1, Lcom/android/contacts/util/AccountSelectionUtil;->mVCardShare:Z

    if-eqz v1, :cond_1

    .line 222
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    sget-object v1, Lcom/android/contacts/util/AccountSelectionUtil;->mPath:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 225
    :cond_1
    sput-boolean v3, Lcom/android/contacts/util/AccountSelectionUtil;->mVCardShare:Z

    .line 226
    const/4 v1, 0x0

    sput-object v1, Lcom/android/contacts/util/AccountSelectionUtil;->mPath:Landroid/net/Uri;

    .line 227
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 228
    return-void
.end method

.method public static doImportFromSim(Landroid/content/Context;[Landroid/accounts/Account;)V
    .locals 7
    .parameter "context"
    .parameter "accounts"

    .prologue
    .line 200
    if-eqz p1, :cond_0

    array-length v5, p1

    if-eqz v5, :cond_0

    .line 201
    move-object v1, p1

    .local v1, arr$:[Landroid/accounts/Account;
    array-length v4, v1

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v1, v2

    .line 202
    .local v0, account:Landroid/accounts/Account;
    invoke-static {v0, p0}, Lcom/android/contacts/model/GoogleSource;->createMyContactsIfNotExist(Landroid/accounts/Account;Landroid/content/Context;)V

    .line 201
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 206
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #arr$:[Landroid/accounts/Account;
    .end local v2           #i$:I
    .end local v4           #len$:I
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    .local v3, importIntent:Landroid/content/Intent;
    const-string v5, "vnd.android.cursor.item/sim-contact"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    const-string v5, "com.android.phone"

    const-string v6, "com.android.phone.SimContacts"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 210
    return-void
.end method

.method public static getSelectAccountDialog(Landroid/content/Context;I)Landroid/app/Dialog;
    .locals 1
    .parameter "context"
    .parameter "resId"

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-static {p0, p1, v0, v0}, Lcom/android/contacts/util/AccountSelectionUtil;->getSelectAccountDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static getSelectAccountDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 11
    .parameter "context"
    .parameter "resId"
    .parameter "onClickListener"
    .parameter "onCancelListener"

    .prologue
    const v10, 0x7f0b0120

    const/4 v9, 0x1

    .line 104
    invoke-static {p0}, Lcom/android/contacts/model/Sources;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/Sources;

    move-result-object v5

    .line 105
    .local v5, sources:Lcom/android/contacts/model/Sources;
    invoke-virtual {v5, v9}, Lcom/android/contacts/model/Sources;->getAccounts(Z)Ljava/util/ArrayList;

    move-result-object v3

    .line 109
    .local v3, writableAccountList:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 111
    .local v4, dialogInflater:Landroid/view/LayoutInflater;
    new-instance v0, Lcom/android/contacts/util/AccountSelectionUtil$1;

    const v2, 0x1090004

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/util/AccountSelectionUtil$1;-><init>(Landroid/content/Context;ILjava/util/List;Landroid/view/LayoutInflater;Lcom/android/contacts/model/Sources;)V

    .line 143
    .local v0, accountAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Landroid/accounts/Account;>;"
    if-ne p1, v10, :cond_2

    .line 144
    const/4 v8, 0x0

    .line 145
    .local v8, removed:Z
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    sub-int v7, v1, v9

    .local v7, index:I
    :goto_0
    if-ltz v7, :cond_1

    .line 146
    const-string v2, "com.miui"

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    const/4 v8, 0x1

    .line 148
    invoke-interface {v3, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 145
    :cond_0
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 152
    :cond_1
    if-nez v8, :cond_2

    .line 153
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0123

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 162
    .end local v7           #index:I
    .end local v8           #removed:Z
    :goto_1
    return-object v1

    .line 160
    :cond_2
    new-instance v6, Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;

    invoke-direct {v6, p0, v3, p1}, Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 162
    .local v6, accountSelectedListener:Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-ne p1, v10, :cond_3

    const v2, 0x7f0b0121

    :goto_2
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_1

    :cond_3
    const v2, 0x7f0b00b2

    goto :goto_2
.end method

.method public static hideContacts(Landroid/content/Context;Landroid/accounts/Account;)V
    .locals 2
    .parameter "context"
    .parameter "account"

    .prologue
    .line 329
    const-string v0, "com.android.contacts"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 333
    return-void
.end method

.method public static moveContacts(Landroid/content/Context;Landroid/accounts/Account;Landroid/content/ContentValues;)V
    .locals 8
    .parameter "context"
    .parameter "fromAccount"
    .parameter "toAccount"

    .prologue
    const/4 v7, 0x1

    const-string v3, "sourceid"

    .line 311
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 312
    .local v0, newValues:Landroid/content/ContentValues;
    const-string v1, "sourceid"

    const-string v1, ""

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v1, "version"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 314
    const-string v1, "sourceid"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 315
    const-string v1, "sync1"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 316
    const-string v1, "sync2"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 317
    const-string v1, "sync3"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "%s=\'%s\' AND %s=\'%s\'"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "account_name"

    aput-object v6, v4, v5

    iget-object v5, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v4, v7

    const/4 v5, 0x2

    const-string v6, "account_type"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 326
    return-void
.end method

.method public static moveGroups(Landroid/content/Context;Landroid/accounts/Account;Landroid/content/ContentValues;)V
    .locals 8
    .parameter "context"
    .parameter "fromAccount"
    .parameter "toAccount"

    .prologue
    const/4 v7, 0x1

    const-string v3, "sourceid"

    .line 288
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 289
    .local v0, newValues:Landroid/content/ContentValues;
    const-string v1, "sourceid"

    const-string v1, ""

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v1, "version"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 291
    const-string v1, "group_visible"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 292
    const-string v1, "sourceid"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 293
    const-string v1, "sync1"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 294
    const-string v1, "sync2"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 295
    const-string v1, "sync3"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "%s=\'%s\' AND %s=\'%s\'"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "account_name"

    aput-object v6, v4, v5

    iget-object v5, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v4, v7

    const/4 v5, 0x2

    const-string v6, "account_type"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 304
    return-void
.end method
