.class public Lcom/android/contacts/ContactsPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "ContactsPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;,
        Lcom/android/contacts/ContactsPreferenceActivity$RawContactsQuery;
    }
.end annotation


# instance fields
.field private mNm:Landroid/app/NotificationManager;

.field private mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 347
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/ContactsPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/contacts/ContactsPreferenceActivity;->doShareVisibleContacts()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/ContactsPreferenceActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/contacts/ContactsPreferenceActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/contacts/ContactsPreferenceActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/contacts/ContactsPreferenceActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/contacts/ContactsPreferenceActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsPreferenceActivity;->notifyMergeContact(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/ContactsPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/contacts/ContactsPreferenceActivity;->notifyFinishMergeContact()V

    return-void
.end method

.method private displayImportExportDialog(Z)V
    .locals 7
    .parameter "importContact"

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/android/contacts/ContactsPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 167
    .local v4, res:Landroid/content/res/Resources;
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/android/contacts/ContactsPreferenceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 170
    .local v2, dialogInflater:Landroid/view/LayoutInflater;
    new-instance v0, Lcom/android/contacts/ContactsPreferenceActivity$1;

    const v5, 0x1090003

    invoke-direct {v0, p0, p0, v5, v2}, Lcom/android/contacts/ContactsPreferenceActivity$1;-><init>(Lcom/android/contacts/ContactsPreferenceActivity;Landroid/content/Context;ILandroid/view/LayoutInflater;)V

    .line 187
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/android/contacts/ContactsPreferenceActivity;->isXiaomiAccountAvailable()Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz p1, :cond_0

    .line 188
    const v5, 0x7f0b0120

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 191
    :cond_0
    if-eqz p1, :cond_1

    .line 192
    const v5, 0x7f0b015d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 195
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v3

    .line 196
    .local v3, hasSim:Z
    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    .line 197
    const v5, 0x7f0b007a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 199
    :cond_2
    const/high16 v5, 0x7f0a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz p1, :cond_3

    .line 200
    const v5, 0x7f0b007b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 202
    :cond_3
    if-eqz v3, :cond_4

    if-nez p1, :cond_4

    .line 203
    const v5, 0x7f0b0161

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 205
    :cond_4
    const v5, 0x7f0a0003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_5

    if-nez p1, :cond_5

    .line 206
    const v5, 0x7f0b007c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 208
    :cond_5
    const v5, 0x7f0a0004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_6

    if-nez p1, :cond_6

    .line 209
    const v5, 0x7f0b0080

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 212
    :cond_6
    new-instance v1, Lcom/android/contacts/ContactsPreferenceActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/android/contacts/ContactsPreferenceActivity$2;-><init>(Lcom/android/contacts/ContactsPreferenceActivity;Landroid/widget/ArrayAdapter;)V

    .line 252
    .local v1, clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_7

    const v6, 0x7f0b01c6

    :goto_0
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 255
    return-void

    .line 252
    :cond_7
    const v6, 0x7f0b01c7

    goto :goto_0
.end method

.method private doShareVisibleContacts()V
    .locals 14

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v13, 0x0

    .line 271
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 272
    .local v10, prefs:Landroid/content/SharedPreferences;
    const-string v0, "only_phones"

    invoke-interface {v10, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 276
    .local v9, mDisplayOnlyPhones:Z
    if-eqz v9, :cond_0

    const-string v0, "has_phone_number=1"

    move-object v3, v0

    .line 278
    .local v3, selection:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/ContactsPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "lookup"

    aput-object v5, v2, v13

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 282
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 283
    const v0, 0x7f0b00ab

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 305
    return-void

    .end local v3           #selection:Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_0
    move-object v3, v4

    .line 276
    goto :goto_0

    .line 287
    .restart local v3       #selection:Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_1
    :try_start_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    .local v12, uriListBuilder:Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 289
    .local v7, index:I
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 290
    if-eqz v7, :cond_2

    .line 291
    const/16 v0, 0x3a

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 292
    :cond_2
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    add-int/lit8 v7, v7, 0x1

    .line 289
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 303
    .end local v7           #index:I
    .end local v12           #uriListBuilder:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 295
    .restart local v7       #index:I
    .restart local v12       #uriListBuilder:Ljava/lang/StringBuilder;
    :cond_3
    :try_start_2
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_MULTI_VCARD_URI:Landroid/net/Uri;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 298
    .local v11, uri:Landroid/net/Uri;
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 299
    .local v8, intent:Landroid/content/Intent;
    const-string v0, "text/x-vcard"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v8, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 301
    invoke-virtual {p0, v8}, Lcom/android/contacts/ContactsPreferenceActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static handleImportRequest(ILandroid/content/Context;)V
    .locals 2
    .parameter "resId"
    .parameter "context"

    .prologue
    .line 309
    const v1, 0x7f0b0120

    if-ne v1, p0, :cond_0

    .line 310
    invoke-static {p1, p0}, Lcom/android/contacts/util/AccountSelectionUtil;->getSelectAccountDialog(Landroid/content/Context;I)Landroid/app/Dialog;

    .line 317
    :goto_0
    return-void

    .line 315
    :cond_0
    invoke-static {p1}, Lcom/android/contacts/ContactsUtils;->getDefaultAccount(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v0

    .line 316
    .local v0, accounts:[Landroid/accounts/Account;
    invoke-static {p1, p0, v0}, Lcom/android/contacts/util/AccountSelectionUtil;->doImport(Landroid/content/Context;I[Landroid/accounts/Account;)V

    goto :goto_0
.end method

.method private isXiaomiAccountAvailable()Z
    .locals 7

    .prologue
    .line 259
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 260
    .local v1, accounts:[Landroid/accounts/Account;
    if-eqz v1, :cond_1

    array-length v5, v1

    if-lez v5, :cond_1

    .line 261
    move-object v2, v1

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v2, v3

    .line 262
    .local v0, account:Landroid/accounts/Account;
    const-string v5, "com.miui"

    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 263
    const/4 v5, 0x1

    .line 267
    .end local v0           #account:Landroid/accounts/Account;
    .end local v2           #arr$:[Landroid/accounts/Account;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :goto_1
    return v5

    .line 261
    .restart local v0       #account:Landroid/accounts/Account;
    .restart local v2       #arr$:[Landroid/accounts/Account;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 267
    .end local v0           #account:Landroid/accounts/Account;
    .end local v2           #arr$:[Landroid/accounts/Account;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private notifyFinishMergeContact()V
    .locals 5

    .prologue
    const v3, 0x7f0b01ad

    const/16 v4, 0x2711

    .line 642
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 643
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/DialtactsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 644
    const/high16 v2, 0x800

    invoke-static {p0, v4, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 647
    iget v2, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/app/Notification;->defaults:I

    .line 648
    iget v2, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 649
    const v2, 0x7f0200ba

    iput v2, v0, Landroid/app/Notification;->icon:I

    .line 650
    invoke-virtual {p0, v3}, Lcom/android/contacts/ContactsPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 651
    invoke-virtual {p0, v3}, Lcom/android/contacts/ContactsPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v2, v3, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 653
    iget-object v1, p0, Lcom/android/contacts/ContactsPreferenceActivity;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v1, v4, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 654
    return-void
.end method

.method private notifyMergeContact(Ljava/lang/String;)V
    .locals 10
    .parameter "name"

    .prologue
    const/16 v8, 0x2711

    const v7, 0x7f0b01ac

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v9, ""

    .line 627
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 628
    .local v1, notification:Landroid/app/Notification;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 629
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x800

    invoke-static {p0, v8, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 632
    .local v2, pendingIntent:Landroid/app/PendingIntent;
    const v3, 0x7f0200ba

    iput v3, v1, Landroid/app/Notification;->icon:I

    .line 633
    iget v3, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 634
    iget v3, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 635
    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, ""

    aput-object v9, v3, v5

    invoke-virtual {p0, v7, v3}, Lcom/android/contacts/ContactsPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 636
    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, ""

    aput-object v9, v3, v5

    invoke-virtual {p0, v7, v3}, Lcom/android/contacts/ContactsPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {p0, v7, v4}, Lcom/android/contacts/ContactsPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p0, v3, v4, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 638
    iget-object v3, p0, Lcom/android/contacts/ContactsPreferenceActivity;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v3, v8, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 639
    return-void
.end method

.method private showMergeContactsDialog()V
    .locals 4

    .prologue
    .line 321
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 322
    .local v0, alertBuilder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b01ae

    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactsPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/contacts/ContactsPreferenceActivity$3;

    invoke-direct {v3, p0}, Lcom/android/contacts/ContactsPreferenceActivity$3;-><init>(Lcom/android/contacts/ContactsPreferenceActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 330
    return-void
.end method

.method private showRebuildT9IndexDialog()V
    .locals 4

    .prologue
    .line 602
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 603
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b01c4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b01c5

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0172

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0171

    new-instance v3, Lcom/android/contacts/ContactsPreferenceActivity$4;

    invoke-direct {v3, p0}, Lcom/android/contacts/ContactsPreferenceActivity$4;-><init>(Lcom/android/contacts/ContactsPreferenceActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 624
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    const v0, 0x7f050004

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsPreferenceActivity;->addPreferencesFromResource(I)V

    .line 109
    const-string v0, "pref_key_import_contact"

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 110
    const-string v0, "pref_key_export_contact"

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 111
    const-string v0, "pref_key_batch_set_contacts_photo"

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 112
    const-string v0, "pref_key_batch_remove_contacts_photo"

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 113
    const-string v0, "pref_key_remove_duplicate"

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 114
    const-string v0, "pref_key_rebuild_t9_index"

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 115
    const-string v0, "pref_key_wipe_data"

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 117
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsPreferenceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/contacts/ContactsPreferenceActivity;->mNm:Landroid/app/NotificationManager;

    .line 118
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 124
    iget-object v0, p0, Lcom/android/contacts/ContactsPreferenceActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/contacts/ContactsPreferenceActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/ContactsPreferenceActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 128
    :cond_0
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 133
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_key_import_contact"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-direct {p0, v5}, Lcom/android/contacts/ContactsPreferenceActivity;->displayImportExportDialog(Z)V

    move v0, v5

    .line 157
    :goto_0
    return v0

    .line 136
    :cond_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_key_export_contact"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    invoke-direct {p0, v2}, Lcom/android/contacts/ContactsPreferenceActivity;->displayImportExportDialog(Z)V

    move v0, v5

    .line 138
    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_key_batch_remove_contacts_photo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactPickerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    const-string v1, "com.android.contacts.action.PICK_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const-string v1, "extra_delete_photos"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 143
    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v5

    .line 144
    goto :goto_0

    .line 145
    :cond_2
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_key_remove_duplicate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 146
    invoke-direct {p0}, Lcom/android/contacts/ContactsPreferenceActivity;->showMergeContactsDialog()V

    move v0, v5

    .line 147
    goto :goto_0

    .line 148
    :cond_3
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_key_rebuild_t9_index"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 149
    invoke-direct {p0}, Lcom/android/contacts/ContactsPreferenceActivity;->showRebuildT9IndexDialog()V

    move v0, v5

    .line 150
    goto :goto_0

    .line 151
    :cond_4
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_key_wipe_data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 152
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v2, "package"

    const-string v3, "com.android.providers.contacts"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 154
    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v5

    .line 155
    goto :goto_0

    :cond_5
    move v0, v2

    .line 157
    goto :goto_0
.end method
