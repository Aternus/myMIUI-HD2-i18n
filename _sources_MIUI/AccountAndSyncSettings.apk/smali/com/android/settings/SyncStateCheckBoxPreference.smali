.class public Lcom/android/settings/SyncStateCheckBoxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "SyncStateCheckBoxPreference.java"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAuthority:Ljava/lang/String;

.field private mFailed:Z

.field private mIsActive:Z

.field private mIsPending:Z

.field private mOneTimeSyncMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "account"
    .parameter "authority"

    .prologue
    const/4 v1, 0x0

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput-boolean v1, p0, Lcom/android/settings/SyncStateCheckBoxPreference;->mIsActive:Z

    .line 33
    iput-boolean v1, p0, Lcom/android/settings/SyncStateCheckBoxPreference;->mIsPending:Z

    .line 34
    iput-boolean v1, p0, Lcom/android/settings/SyncStateCheckBoxPreference;->mFailed:Z

    .line 42
    iput-boolean v1, p0, Lcom/android/settings/SyncStateCheckBoxPreference;->mOneTimeSyncMode:Z

    .line 53
    iput-object p2, p0, Lcom/android/settings/SyncStateCheckBoxPreference;->mAccount:Landroid/accounts/Account;

    .line 54
    iput-object p3, p0, Lcom/android/settings/SyncStateCheckBoxPreference;->mAuthority:Ljava/lang/String;

    .line 55
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/android/settings/SyncStateCheckBoxPreference;->setWidgetLayoutResource(I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput-boolean v0, p0, Lcom/android/settings/SyncStateCheckBoxPreference;->mIsActive:Z

    .line 33
    iput-boolean v0, p0, Lcom/android/settings/SyncStateCheckBoxPreference;->mIsPending:Z

    .line 34
    iput-boolean v0, p0, Lcom/android/settings/SyncStateCheckBoxPreference;->mFailed:Z

    .line 42
    iput-boolean v0, p0, Lcom/android/settings/SyncStateCheckBoxPreference;->mOneTimeSyncMode:Z

    .line 46
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/android/settings/SyncStateCheckBoxPreference;->setWidgetLayoutResource(I)V

    .line 47
    iput-object v1, p0, Lcom/android/settings/SyncStateCheckBoxPreference;->mAccount:Landroid/accounts/Account;

    .line 48
    iput-object v1, p0, Lcom/android/settings/SyncStateCheckBoxPreference;->mAuthority:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public getAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/settings/SyncStateCheckBoxPreference;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/settings/SyncStateCheckBoxPreference;->mAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public isOneTimeSyncMode()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/settings/SyncStateCheckBoxPreference;->mOneTimeSyncMode:Z

    return v0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 13
    .parameter "view"

    .prologue
    const/16 v9, 0x8

    const/4 v12, 0x0

    .line 60
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 61
    const v8, 0x1010001

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 62
    .local v5, syncActiveView:Landroid/widget/ImageView;
    const v8, 0x1010002

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 63
    .local v7, syncPendingView:Landroid/view/View;
    const/high16 v8, 0x101

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 65
    .local v6, syncFailedView:Landroid/view/View;
    iget-boolean v8, p0, Lcom/android/settings/SyncStateCheckBoxPreference;->mIsActive:Z

    if-eqz v8, :cond_0

    move v8, v12

    :goto_0
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 69
    .local v0, anim:Landroid/graphics/drawable/AnimationDrawable;
    iget-boolean v8, p0, Lcom/android/settings/SyncStateCheckBoxPreference;->mIsActive:Z

    if-eqz v8, :cond_1

    .line 70
    new-instance v8, Lcom/android/settings/SyncStateCheckBoxPreference$1;

    invoke-direct {v8, p0, v0}, Lcom/android/settings/SyncStateCheckBoxPreference$1;-><init>(Lcom/android/settings/SyncStateCheckBoxPreference;Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 75
    const/4 v3, 0x0

    .line 76
    .local v3, showPending:Z
    const/4 v2, 0x0

    .line 88
    .local v2, showError:Z
    :goto_1
    if-eqz v2, :cond_3

    move v8, v12

    :goto_2
    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 89
    if-eqz v3, :cond_4

    iget-boolean v8, p0, Lcom/android/settings/SyncStateCheckBoxPreference;->mIsActive:Z

    if-nez v8, :cond_4

    move v8, v12

    :goto_3
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 91
    const v8, 0x1020001

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 92
    .local v1, checkBox:Landroid/view/View;
    iget-boolean v8, p0, Lcom/android/settings/SyncStateCheckBoxPreference;->mOneTimeSyncMode:Z

    if-eqz v8, :cond_5

    .line 93
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 100
    const v8, 0x1020010

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 101
    .local v4, summary:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/SyncStateCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f06000d

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/SyncStateCheckBoxPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    .end local v4           #summary:Landroid/widget/TextView;
    :goto_4
    return-void

    .end local v0           #anim:Landroid/graphics/drawable/AnimationDrawable;
    .end local v1           #checkBox:Landroid/view/View;
    .end local v2           #showError:Z
    .end local v3           #showPending:Z
    :cond_0
    move v8, v9

    .line 65
    goto :goto_0

    .line 78
    .restart local v0       #anim:Landroid/graphics/drawable/AnimationDrawable;
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 79
    iget-boolean v8, p0, Lcom/android/settings/SyncStateCheckBoxPreference;->mIsPending:Z

    if-eqz v8, :cond_2

    .line 80
    const/4 v3, 0x1

    .line 81
    .restart local v3       #showPending:Z
    const/4 v2, 0x0

    .restart local v2       #showError:Z
    goto :goto_1

    .line 83
    .end local v2           #showError:Z
    .end local v3           #showPending:Z
    :cond_2
    const/4 v3, 0x0

    .line 84
    .restart local v3       #showPending:Z
    iget-boolean v2, p0, Lcom/android/settings/SyncStateCheckBoxPreference;->mFailed:Z

    .restart local v2       #showError:Z
    goto :goto_1

    :cond_3
    move v8, v9

    .line 88
    goto :goto_2

    :cond_4
    move v8, v9

    .line 89
    goto :goto_3

    .line 103
    .restart local v1       #checkBox:Landroid/view/View;
    :cond_5
    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/android/settings/SyncStateCheckBoxPreference;->mOneTimeSyncMode:Z

    if-nez v0, :cond_0

    .line 154
    invoke-super {p0}, Landroid/preference/CheckBoxPreference;->onClick()V

    .line 156
    :cond_0
    return-void
.end method

.method public setActive(Z)V
    .locals 0
    .parameter "isActive"

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/android/settings/SyncStateCheckBoxPreference;->mIsActive:Z

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/SyncStateCheckBoxPreference;->notifyChanged()V

    .line 114
    return-void
.end method

.method public setFailed(Z)V
    .locals 0
    .parameter "failed"

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/android/settings/SyncStateCheckBoxPreference;->mFailed:Z

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/SyncStateCheckBoxPreference;->notifyChanged()V

    .line 132
    return-void
.end method

.method public setOneTimeSyncMode(Z)V
    .locals 0
    .parameter "oneTimeSyncMode"

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/android/settings/SyncStateCheckBoxPreference;->mOneTimeSyncMode:Z

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/SyncStateCheckBoxPreference;->notifyChanged()V

    .line 140
    return-void
.end method

.method public setPending(Z)V
    .locals 0
    .parameter "isPending"

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/android/settings/SyncStateCheckBoxPreference;->mIsPending:Z

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/SyncStateCheckBoxPreference;->notifyChanged()V

    .line 123
    return-void
.end method
