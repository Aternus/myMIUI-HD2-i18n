.class public Lcom/android/settings/AccountPreference;
.super Landroid/preference/Preference;
.source "AccountPreference.java"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAuthorities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProviderIcon:Landroid/graphics/drawable/Drawable;

.field private mProviderIconView:Landroid/widget/ImageView;

.field private mStatus:I

.field private mSyncStatusIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "context"
    .parameter "account"
    .parameter "icon"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/accounts/Account;",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p4, authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 51
    iput-object p2, p0, Lcom/android/settings/AccountPreference;->mAccount:Landroid/accounts/Account;

    .line 52
    iput-object p4, p0, Lcom/android/settings/AccountPreference;->mAuthorities:Ljava/util/ArrayList;

    .line 53
    iput-object p3, p0, Lcom/android/settings/AccountPreference;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    .line 54
    const/high16 v1, 0x7f03

    invoke-virtual {p0, v1}, Lcom/android/settings/AccountPreference;->setLayoutResource(I)V

    .line 55
    iget-object v1, p0, Lcom/android/settings/AccountPreference;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/AccountPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 56
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/android/settings/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 58
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACCOUNT_SYNC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "account"

    iget-object v2, p0, Lcom/android/settings/AccountPreference;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 60
    invoke-virtual {p0, v0}, Lcom/android/settings/AccountPreference;->setIntent(Landroid/content/Intent;)V

    .line 61
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/AccountPreference;->setPersistent(Z)V

    .line 62
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/AccountPreference;->setSyncStatus(I)V

    .line 63
    return-void
.end method

.method private getSyncStatusIcon(I)I
    .locals 4
    .parameter "status"

    .prologue
    .line 119
    packed-switch p1, :pswitch_data_0

    .line 130
    const v0, 0x7f02000b

    .line 131
    .local v0, res:I
    const-string v1, "AccountPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown sync status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :goto_0
    return v0

    .line 121
    .end local v0           #res:I
    :pswitch_0
    const v0, 0x7f020009

    .line 122
    .restart local v0       #res:I
    goto :goto_0

    .line 124
    .end local v0           #res:I
    :pswitch_1
    const v0, 0x7f02000a

    .line 125
    .restart local v0       #res:I
    goto :goto_0

    .line 127
    .end local v0           #res:I
    :pswitch_2
    const v0, 0x7f02000b

    .line 128
    .restart local v0       #res:I
    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getSyncStatusMessage(I)I
    .locals 4
    .parameter "status"

    .prologue
    .line 100
    packed-switch p1, :pswitch_data_0

    .line 111
    const v0, 0x7f06001d

    .line 112
    .local v0, res:I
    const-string v1, "AccountPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown sync status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :goto_0
    return v0

    .line 102
    .end local v0           #res:I
    :pswitch_0
    const v0, 0x7f06001b

    .line 103
    .restart local v0       #res:I
    goto :goto_0

    .line 105
    .end local v0           #res:I
    :pswitch_1
    const v0, 0x7f06001c

    .line 106
    .restart local v0       #res:I
    goto :goto_0

    .line 108
    .end local v0           #res:I
    :pswitch_2
    const v0, 0x7f06001d

    .line 109
    .restart local v0       #res:I
    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 2
    .parameter "other"

    .prologue
    .line 138
    instance-of v0, p1, Lcom/android/settings/AccountPreference;

    if-nez v0, :cond_0

    .line 140
    const/4 v0, 0x1

    .line 142
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    check-cast p1, Lcom/android/settings/AccountPreference;

    .end local p1
    iget-object v1, p1, Lcom/android/settings/AccountPreference;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/AccountPreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public getAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public getAuthorities()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mAuthorities:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 76
    iget v0, p0, Lcom/android/settings/AccountPreference;->mStatus:I

    invoke-direct {p0, v0}, Lcom/android/settings/AccountPreference;->getSyncStatusMessage(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/AccountPreference;->setSummary(I)V

    .line 77
    const/high16 v0, 0x7f07

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/AccountPreference;->mProviderIconView:Landroid/widget/ImageView;

    .line 78
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mProviderIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/AccountPreference;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    const v0, 0x7f070001

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/AccountPreference;->mSyncStatusIcon:Landroid/widget/ImageView;

    .line 80
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mSyncStatusIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings/AccountPreference;->mStatus:I

    invoke-direct {p0, v1}, Lcom/android/settings/AccountPreference;->getSyncStatusIcon(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    return-void
.end method

.method public setProviderIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/settings/AccountPreference;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    .line 85
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mProviderIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mProviderIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    :cond_0
    return-void
.end method

.method public setSyncStatus(I)V
    .locals 2
    .parameter "status"

    .prologue
    .line 91
    iput p1, p0, Lcom/android/settings/AccountPreference;->mStatus:I

    .line 92
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mSyncStatusIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/settings/AccountPreference;->mSyncStatusIcon:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/android/settings/AccountPreference;->getSyncStatusIcon(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/AccountPreference;->getSyncStatusMessage(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/AccountPreference;->setSummary(I)V

    .line 96
    return-void
.end method
