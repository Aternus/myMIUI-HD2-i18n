.class public Lcom/miui/notes/ui/NotesPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "NotesPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/notes/ui/NotesPreferenceActivity$GTaskReceiver;
    }
.end annotation


# instance fields
.field private mAccountCategory:Landroid/preference/PreferenceCategory;

.field private mHasAddedAccount:Z

.field private mOriAccounts:[Landroid/accounts/Account;

.field private mReceiver:Lcom/miui/notes/ui/NotesPreferenceActivity$GTaskReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 357
    return-void
.end method

.method static synthetic access$100(Lcom/miui/notes/ui/NotesPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesPreferenceActivity;->showSelectAccountAlertDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/notes/ui/NotesPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesPreferenceActivity;->showChangeAccountConfirmAlertDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/notes/ui/NotesPreferenceActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/miui/notes/ui/NotesPreferenceActivity;->setSyncAccount(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/notes/ui/NotesPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesPreferenceActivity;->refreshUI()V

    return-void
.end method

.method static synthetic access$502(Lcom/miui/notes/ui/NotesPreferenceActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/miui/notes/ui/NotesPreferenceActivity;->mHasAddedAccount:Z

    return p1
.end method

.method static synthetic access$600(Lcom/miui/notes/ui/NotesPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesPreferenceActivity;->removeSyncAccount()V

    return-void
.end method

.method private getGoogleAccounts()[Landroid/accounts/Account;
    .locals 2

    .prologue
    .line 279
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 280
    .local v0, accountManager:Landroid/accounts/AccountManager;
    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    return-object v1
.end method

.method public static getLastSyncTime(Landroid/content/Context;)J
    .locals 4
    .parameter "context"

    .prologue
    .line 352
    const-string v1, "notes_preferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 354
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "pref_last_sync_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method public static getSyncAccountName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 338
    const-string v1, "notes_preferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 340
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "pref_key_account_name"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private loadAccountPreference()V
    .locals 3

    .prologue
    .line 107
    iget-object v2, p0, Lcom/miui/notes/ui/NotesPreferenceActivity;->mAccountCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 109
    new-instance v0, Lcom/miui/notes/ui/AccountPreference;

    invoke-direct {v0, p0}, Lcom/miui/notes/ui/AccountPreference;-><init>(Landroid/content/Context;)V

    .line 110
    .local v0, accountPref:Lcom/miui/notes/ui/AccountPreference;
    invoke-static {p0}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getSyncAccountName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, defaultAccount:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 112
    invoke-virtual {v0, v1}, Lcom/miui/notes/ui/AccountPreference;->setDefaultAccount(Ljava/lang/String;)V

    .line 114
    :cond_0
    const v2, 0x7f080049

    invoke-virtual {p0, v2}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/notes/ui/AccountPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 115
    const v2, 0x7f08004a

    invoke-virtual {p0, v2}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/notes/ui/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 116
    new-instance v2, Lcom/miui/notes/ui/NotesPreferenceActivity$1;

    invoke-direct {v2, p0, v1}, Lcom/miui/notes/ui/NotesPreferenceActivity$1;-><init>(Lcom/miui/notes/ui/NotesPreferenceActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/miui/notes/ui/AccountPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 137
    iget-object v2, p0, Lcom/miui/notes/ui/NotesPreferenceActivity;->mAccountCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 138
    return-void
.end method

.method private loadSyncButton()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 141
    const v4, 0x7f0b003d

    invoke-virtual {p0, v4}, Lcom/miui/notes/ui/NotesPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 142
    .local v3, syncButton:Landroid/widget/Button;
    const v4, 0x7f0b003e

    invoke-virtual {p0, v4}, Lcom/miui/notes/ui/NotesPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 145
    .local v2, lastSyncTimeView:Landroid/widget/TextView;
    invoke-static {}, Lcom/miui/notes/gtask/remote/GTaskSyncService;->isSyncing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 146
    const v4, 0x7f080052

    invoke-virtual {p0, v4}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 147
    new-instance v4, Lcom/miui/notes/ui/NotesPreferenceActivity$2;

    invoke-direct {v4, p0}, Lcom/miui/notes/ui/NotesPreferenceActivity$2;-><init>(Lcom/miui/notes/ui/NotesPreferenceActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    :goto_0
    invoke-static {p0}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getSyncAccountName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v6

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 165
    invoke-static {}, Lcom/miui/notes/gtask/remote/GTaskSyncService;->isSyncing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 166
    invoke-static {}, Lcom/miui/notes/gtask/remote/GTaskSyncService;->getProgressString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    :goto_2
    return-void

    .line 154
    :cond_0
    const v4, 0x7f080051

    invoke-virtual {p0, v4}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 155
    new-instance v4, Lcom/miui/notes/ui/NotesPreferenceActivity$3;

    invoke-direct {v4, p0}, Lcom/miui/notes/ui/NotesPreferenceActivity$3;-><init>(Lcom/miui/notes/ui/NotesPreferenceActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    move v4, v7

    .line 162
    goto :goto_1

    .line 169
    :cond_2
    invoke-static {p0}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getLastSyncTime(Landroid/content/Context;)J

    move-result-wide v0

    .line 170
    .local v0, lastSyncTime:J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-eqz v4, :cond_3

    .line 171
    const v4, 0x7f08004b

    new-array v5, v6, [Ljava/lang/Object;

    const v6, 0x7f08004c

    invoke-virtual {p0, v6}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 176
    :cond_3
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method private refreshUI()V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesPreferenceActivity;->loadAccountPreference()V

    .line 183
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesPreferenceActivity;->loadSyncButton()V

    .line 184
    return-void
.end method

.method private removeSyncAccount()V
    .locals 6

    .prologue
    const-string v5, "pref_last_sync_time"

    const-string v4, "pref_key_account_name"

    .line 315
    const-string v2, "notes_preferences"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 316
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 317
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_key_account_name"

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 318
    const-string v2, "pref_key_account_name"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 320
    :cond_0
    const-string v2, "pref_last_sync_time"

    invoke-interface {v1, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 321
    const-string v2, "pref_last_sync_time"

    invoke-interface {v0, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 323
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 326
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/miui/notes/ui/NotesPreferenceActivity$8;

    invoke-direct {v3, p0}, Lcom/miui/notes/ui/NotesPreferenceActivity$8;-><init>(Lcom/miui/notes/ui/NotesPreferenceActivity;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 335
    return-void
.end method

.method public static setLastSyncTime(Landroid/content/Context;J)V
    .locals 4
    .parameter "context"
    .parameter "time"

    .prologue
    .line 344
    const-string v2, "notes_preferences"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 346
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 347
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_last_sync_time"

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 348
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 349
    return-void
.end method

.method private setSyncAccount(Ljava/lang/String;)V
    .locals 5
    .parameter "account"

    .prologue
    const/4 v4, 0x0

    const-string v3, "pref_key_account_name"

    .line 284
    invoke-static {p0}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getSyncAccountName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 285
    const-string v2, "notes_preferences"

    invoke-virtual {p0, v2, v4}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 286
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 287
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_1

    .line 288
    const-string v2, "pref_key_account_name"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 292
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 295
    const-wide/16 v2, 0x0

    invoke-static {p0, v2, v3}, Lcom/miui/notes/ui/NotesPreferenceActivity;->setLastSyncTime(Landroid/content/Context;J)V

    .line 298
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/miui/notes/ui/NotesPreferenceActivity$7;

    invoke-direct {v3, p0}, Lcom/miui/notes/ui/NotesPreferenceActivity$7;-><init>(Lcom/miui/notes/ui/NotesPreferenceActivity;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 308
    const v2, 0x7f080058

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 312
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #settings:Landroid/content/SharedPreferences;
    :cond_0
    return-void

    .line 290
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v1       #settings:Landroid/content/SharedPreferences;
    :cond_1
    const-string v2, "pref_key_account_name"

    const-string v2, ""

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private showChangeAccountConfirmAlertDialog()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 247
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 249
    .local v0, dialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const/high16 v6, 0x7f03

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 250
    .local v4, titleView:Landroid/view/View;
    const/high16 v5, 0x7f0b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 251
    .local v3, titleTextView:Landroid/widget/TextView;
    const v5, 0x7f080053

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getSyncAccountName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, v5, v6}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    const v5, 0x7f0b0001

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 254
    .local v2, subtitleTextView:Landroid/widget/TextView;
    const v5, 0x7f080054

    invoke-virtual {p0, v5}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 257
    const/4 v5, 0x3

    new-array v1, v5, [Ljava/lang/CharSequence;

    const v5, 0x7f08004e

    invoke-virtual {p0, v5}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v9

    const v5, 0x7f08004f

    invoke-virtual {p0, v5}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v8

    const/4 v5, 0x2

    const v6, 0x7f080050

    invoke-virtual {p0, v6}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 262
    .local v1, menuItemArray:[Ljava/lang/CharSequence;
    new-instance v5, Lcom/miui/notes/ui/NotesPreferenceActivity$6;

    invoke-direct {v5, p0}, Lcom/miui/notes/ui/NotesPreferenceActivity$6;-><init>(Lcom/miui/notes/ui/NotesPreferenceActivity;)V

    invoke-virtual {v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 273
    const/16 v5, 0x50

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setGravity(I)Landroid/app/AlertDialog$Builder;

    .line 274
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setContextMenuMode(Z)Landroid/app/AlertDialog$Builder;

    .line 275
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 276
    return-void
.end method

.method private showSelectAccountAlertDialog()V
    .locals 24

    .prologue
    .line 187
    new-instance v11, Landroid/app/AlertDialog$Builder;

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 189
    .local v11, dialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v21

    const/high16 v22, 0x7f03

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    .line 190
    .local v20, titleView:Landroid/view/View;
    const/high16 v21, 0x7f0b

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 191
    .local v19, titleTextView:Landroid/widget/TextView;
    const v21, 0x7f080055

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    const v21, 0x7f0b0001

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 193
    .local v18, subtitleTextView:Landroid/widget/TextView;
    const v21, 0x7f080056

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    move-object v0, v11

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 196
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v0, v11

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 198
    invoke-direct/range {p0 .. p0}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getGoogleAccounts()[Landroid/accounts/Account;

    move-result-object v5

    .line 199
    .local v5, accounts:[Landroid/accounts/Account;
    invoke-static/range {p0 .. p0}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getSyncAccountName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 201
    .local v9, defAccount:Ljava/lang/String;
    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/notes/ui/NotesPreferenceActivity;->mOriAccounts:[Landroid/accounts/Account;

    .line 202
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/notes/ui/NotesPreferenceActivity;->mHasAddedAccount:Z

    .line 204
    move-object v0, v5

    array-length v0, v0

    move/from16 v21, v0

    if-lez v21, :cond_2

    .line 205
    move-object v0, v5

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    .line 206
    .local v16, items:[Ljava/lang/CharSequence;
    move-object/from16 v15, v16

    .line 207
    .local v15, itemMapping:[Ljava/lang/CharSequence;
    const/4 v8, -0x1

    .line 208
    .local v8, checkedItem:I
    const/4 v13, 0x0

    .line 209
    .local v13, index:I
    move-object v7, v5

    .local v7, arr$:[Landroid/accounts/Account;
    move-object v0, v7

    array-length v0, v0

    move/from16 v17, v0

    .local v17, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    move v14, v13

    .end local v13           #index:I
    .local v14, index:I
    :goto_0
    move v0, v12

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    aget-object v4, v7, v12

    .line 210
    .local v4, account:Landroid/accounts/Account;
    move-object v0, v4

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v9

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 211
    move v8, v14

    .line 213
    :cond_0
    add-int/lit8 v13, v14, 0x1

    .end local v14           #index:I
    .restart local v13       #index:I
    move-object v0, v4

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v16, v14

    .line 209
    add-int/lit8 v12, v12, 0x1

    move v14, v13

    .end local v13           #index:I
    .restart local v14       #index:I
    goto :goto_0

    .line 215
    .end local v4           #account:Landroid/accounts/Account;
    :cond_1
    new-instance v21, Lcom/miui/notes/ui/NotesPreferenceActivity$4;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lcom/miui/notes/ui/NotesPreferenceActivity$4;-><init>(Lcom/miui/notes/ui/NotesPreferenceActivity;[Ljava/lang/CharSequence;)V

    move-object v0, v11

    move-object/from16 v1, v16

    move v2, v8

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 226
    .end local v7           #arr$:[Landroid/accounts/Account;
    .end local v8           #checkedItem:I
    .end local v12           #i$:I
    .end local v14           #index:I
    .end local v15           #itemMapping:[Ljava/lang/CharSequence;
    .end local v16           #items:[Ljava/lang/CharSequence;
    .end local v17           #len$:I
    :cond_2
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v21

    const v22, 0x7f030001

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 227
    .local v6, addAccountView:Landroid/view/View;
    invoke-virtual {v11, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 228
    const/16 v21, 0x50

    move-object v0, v11

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setGravity(I)Landroid/app/AlertDialog$Builder;

    .line 229
    const/16 v21, 0x1

    move-object v0, v11

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setContextMenuMode(Z)Landroid/app/AlertDialog$Builder;

    .line 231
    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v10

    .line 232
    .local v10, dialog:Landroid/app/AlertDialog;
    new-instance v21, Lcom/miui/notes/ui/NotesPreferenceActivity$5;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lcom/miui/notes/ui/NotesPreferenceActivity$5;-><init>(Lcom/miui/notes/ui/NotesPreferenceActivity;Landroid/app/AlertDialog;)V

    move-object v0, v6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    .line 57
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const/high16 v2, 0x7f04

    invoke-virtual {p0, v2}, Lcom/miui/notes/ui/NotesPreferenceActivity;->addPreferencesFromResource(I)V

    .line 59
    const-string v2, "pref_sync_account_key"

    invoke-virtual {p0, v2}, Lcom/miui/notes/ui/NotesPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/miui/notes/ui/NotesPreferenceActivity;->mAccountCategory:Landroid/preference/PreferenceCategory;

    .line 60
    new-instance v2, Lcom/miui/notes/ui/NotesPreferenceActivity$GTaskReceiver;

    invoke-direct {v2, p0, v4}, Lcom/miui/notes/ui/NotesPreferenceActivity$GTaskReceiver;-><init>(Lcom/miui/notes/ui/NotesPreferenceActivity;Lcom/miui/notes/ui/NotesPreferenceActivity$1;)V

    iput-object v2, p0, Lcom/miui/notes/ui/NotesPreferenceActivity;->mReceiver:Lcom/miui/notes/ui/NotesPreferenceActivity$GTaskReceiver;

    .line 61
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 62
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.miui.notes.gtask.remote.gtask_sync_service"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    iget-object v2, p0, Lcom/miui/notes/ui/NotesPreferenceActivity;->mReceiver:Lcom/miui/notes/ui/NotesPreferenceActivity$GTaskReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/miui/notes/ui/NotesPreferenceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 65
    iput-object v4, p0, Lcom/miui/notes/ui/NotesPreferenceActivity;->mOriAccounts:[Landroid/accounts/Account;

    .line 66
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03000f

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 67
    .local v1, header:Landroid/view/View;
    invoke-virtual {p0}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v4, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 68
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/miui/notes/ui/NotesPreferenceActivity;->mReceiver:Lcom/miui/notes/ui/NotesPreferenceActivity$GTaskReceiver;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/miui/notes/ui/NotesPreferenceActivity;->mReceiver:Lcom/miui/notes/ui/NotesPreferenceActivity$GTaskReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/notes/ui/NotesPreferenceActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 103
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 104
    return-void
.end method

.method protected onResume()V
    .locals 12

    .prologue
    .line 72
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 76
    iget-boolean v10, p0, Lcom/miui/notes/ui/NotesPreferenceActivity;->mHasAddedAccount:Z

    if-eqz v10, :cond_1

    .line 77
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getGoogleAccounts()[Landroid/accounts/Account;

    move-result-object v2

    .line 78
    .local v2, accounts:[Landroid/accounts/Account;
    iget-object v10, p0, Lcom/miui/notes/ui/NotesPreferenceActivity;->mOriAccounts:[Landroid/accounts/Account;

    if-eqz v10, :cond_1

    array-length v10, v2

    iget-object v11, p0, Lcom/miui/notes/ui/NotesPreferenceActivity;->mOriAccounts:[Landroid/accounts/Account;

    array-length v11, v11

    if-le v10, v11, :cond_1

    .line 79
    move-object v3, v2

    .local v3, arr$:[Landroid/accounts/Account;
    array-length v8, v3

    .local v8, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    move v7, v6

    .end local v3           #arr$:[Landroid/accounts/Account;
    .end local v6           #i$:I
    .end local v8           #len$:I
    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_1

    aget-object v0, v3, v7

    .line 80
    .local v0, accountNew:Landroid/accounts/Account;
    const/4 v5, 0x0

    .line 81
    .local v5, found:Z
    iget-object v4, p0, Lcom/miui/notes/ui/NotesPreferenceActivity;->mOriAccounts:[Landroid/accounts/Account;

    .local v4, arr$:[Landroid/accounts/Account;
    array-length v9, v4

    .local v9, len$:I
    const/4 v6, 0x0

    .end local v7           #i$:I
    .restart local v6       #i$:I
    :goto_1
    if-ge v6, v9, :cond_0

    aget-object v1, v4, v6

    .line 82
    .local v1, accountOld:Landroid/accounts/Account;
    iget-object v10, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v11, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 83
    const/4 v5, 0x1

    .line 87
    .end local v1           #accountOld:Landroid/accounts/Account;
    :cond_0
    if-nez v5, :cond_3

    .line 88
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/miui/notes/ui/NotesPreferenceActivity;->setSyncAccount(Ljava/lang/String;)V

    .line 95
    .end local v0           #accountNew:Landroid/accounts/Account;
    .end local v2           #accounts:[Landroid/accounts/Account;
    .end local v4           #arr$:[Landroid/accounts/Account;
    .end local v5           #found:Z
    .end local v6           #i$:I
    .end local v9           #len$:I
    :cond_1
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesPreferenceActivity;->refreshUI()V

    .line 96
    return-void

    .line 81
    .restart local v0       #accountNew:Landroid/accounts/Account;
    .restart local v1       #accountOld:Landroid/accounts/Account;
    .restart local v2       #accounts:[Landroid/accounts/Account;
    .restart local v4       #arr$:[Landroid/accounts/Account;
    .restart local v5       #found:Z
    .restart local v6       #i$:I
    .restart local v9       #len$:I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 79
    .end local v1           #accountOld:Landroid/accounts/Account;
    :cond_3
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    .end local v6           #i$:I
    .restart local v7       #i$:I
    goto :goto_0
.end method
