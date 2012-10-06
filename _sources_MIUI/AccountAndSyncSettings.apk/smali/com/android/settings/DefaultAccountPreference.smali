.class public Lcom/android/settings/DefaultAccountPreference;
.super Landroid/preference/Preference;
.source "DefaultAccountPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mContactAccountTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIsChecked:Z

.field private mProviderIcon:Landroid/graphics/drawable/Drawable;

.field private mProviderIconView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;ZLjava/util/ArrayList;)V
    .locals 2
    .parameter "context"
    .parameter "account"
    .parameter "icon"
    .parameter "isDefault"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/accounts/Account;",
            "Landroid/graphics/drawable/Drawable;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, contactAccountTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/DefaultAccountPreference;->mIsChecked:Z

    .line 33
    iput-object v1, p0, Lcom/android/settings/DefaultAccountPreference;->mContext:Landroid/content/Context;

    .line 35
    iput-object v1, p0, Lcom/android/settings/DefaultAccountPreference;->mAccountManager:Landroid/accounts/AccountManager;

    .line 37
    iput-object v1, p0, Lcom/android/settings/DefaultAccountPreference;->mContactAccountTypes:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {p0, p0}, Lcom/android/settings/DefaultAccountPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 43
    iput-object p1, p0, Lcom/android/settings/DefaultAccountPreference;->mContext:Landroid/content/Context;

    .line 44
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DefaultAccountPreference;->mAccountManager:Landroid/accounts/AccountManager;

    .line 45
    iput-object p2, p0, Lcom/android/settings/DefaultAccountPreference;->mAccount:Landroid/accounts/Account;

    .line 46
    iput-object p3, p0, Lcom/android/settings/DefaultAccountPreference;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    .line 47
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/android/settings/DefaultAccountPreference;->setLayoutResource(I)V

    .line 48
    iget-object v0, p0, Lcom/android/settings/DefaultAccountPreference;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/DefaultAccountPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 49
    iput-boolean p4, p0, Lcom/android/settings/DefaultAccountPreference;->mIsChecked:Z

    .line 50
    iput-object p5, p0, Lcom/android/settings/DefaultAccountPreference;->mContactAccountTypes:Ljava/util/ArrayList;

    .line 51
    return-void
.end method

.method private getDefaultAccountCount()I
    .locals 8

    .prologue
    .line 90
    const/4 v3, 0x0

    .line 91
    .local v3, count:I
    iget-object v6, p0, Lcom/android/settings/DefaultAccountPreference;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v6}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 93
    .local v1, accounts:[Landroid/accounts/Account;
    move-object v2, v1

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v2, v4

    .line 94
    .local v0, account:Landroid/accounts/Account;
    iget-object v6, p0, Lcom/android/settings/DefaultAccountPreference;->mContactAccountTypes:Ljava/util/ArrayList;

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 95
    iget-object v6, p0, Lcom/android/settings/DefaultAccountPreference;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v6, v0}, Landroid/accounts/AccountManager;->isAccountDefault(Landroid/accounts/Account;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 96
    add-int/lit8 v3, v3, 0x1

    .line 93
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 101
    .end local v0           #account:Landroid/accounts/Account;
    :cond_1
    return v3
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 60
    const/high16 v0, 0x7f07

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/DefaultAccountPreference;->mProviderIconView:Landroid/widget/ImageView;

    .line 61
    iget-object v0, p0, Lcom/android/settings/DefaultAccountPreference;->mProviderIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/DefaultAccountPreference;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    const v0, 0x7f070007

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/DefaultAccountPreference;->mCheckBox:Landroid/widget/CheckBox;

    .line 64
    iget-object v0, p0, Lcom/android/settings/DefaultAccountPreference;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/settings/DefaultAccountPreference;->mIsChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 65
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preference"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 77
    iget-object v2, p0, Lcom/android/settings/DefaultAccountPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 79
    .local v0, checked:Z
    invoke-direct {p0}, Lcom/android/settings/DefaultAccountPreference;->getDefaultAccountCount()I

    move-result v1

    .line 80
    .local v1, count:I
    if-eqz v0, :cond_0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    move v2, v5

    .line 86
    :goto_0
    return v2

    .line 84
    :cond_0
    iget-object v2, p0, Lcom/android/settings/DefaultAccountPreference;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/DefaultAccountPreference;->mAccount:Landroid/accounts/Account;

    if-nez v0, :cond_1

    move v4, v6

    :goto_1
    invoke-virtual {v2, v3, v4}, Landroid/accounts/AccountManager;->setAccountAsDefault(Landroid/accounts/Account;Z)V

    .line 85
    iget-object v2, p0, Lcom/android/settings/DefaultAccountPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_2

    move v3, v6

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    move v2, v5

    .line 86
    goto :goto_0

    :cond_1
    move v4, v5

    .line 84
    goto :goto_1

    :cond_2
    move v3, v5

    .line 85
    goto :goto_2
.end method
