.class public Lcom/android/settings/vpn/VpnEditor;
.super Landroid/preference/PreferenceActivity;
.source "VpnEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/vpn/VpnEditor$4;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAddingProfile:Z

.field private mOriginalProfileData:[B

.field private mProfileEditor:Lcom/android/settings/vpn/VpnProfileEditor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/android/settings/vpn/VpnEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/vpn/VpnEditor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 194
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/vpn/VpnEditor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnEditor;->validateAndSetResult()Z

    move-result v0

    return v0
.end method

.method private getEditor(Landroid/net/vpn/VpnProfile;)Lcom/android/settings/vpn/VpnProfileEditor;
    .locals 2
    .parameter "p"

    .prologue
    .line 177
    sget-object v0, Lcom/android/settings/vpn/VpnEditor$4;->$SwitchMap$android$net$vpn$VpnType:[I

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getType()Landroid/net/vpn/VpnType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/vpn/VpnType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 194
    new-instance v0, Lcom/android/settings/vpn/VpnProfileEditor;

    invoke-direct {v0, p1}, Lcom/android/settings/vpn/VpnProfileEditor;-><init>(Landroid/net/vpn/VpnProfile;)V

    .end local p1
    :goto_0
    return-object v0

    .line 179
    .restart local p1
    :pswitch_0
    new-instance v0, Lcom/android/settings/vpn/L2tpIpsecEditor;

    check-cast p1, Landroid/net/vpn/L2tpIpsecProfile;

    .end local p1
    invoke-direct {v0, p1}, Lcom/android/settings/vpn/L2tpIpsecEditor;-><init>(Landroid/net/vpn/L2tpIpsecProfile;)V

    goto :goto_0

    .line 182
    .restart local p1
    :pswitch_1
    new-instance v0, Lcom/android/settings/vpn/L2tpIpsecPskEditor;

    check-cast p1, Landroid/net/vpn/L2tpIpsecPskProfile;

    .end local p1
    invoke-direct {v0, p1}, Lcom/android/settings/vpn/L2tpIpsecPskEditor;-><init>(Landroid/net/vpn/L2tpIpsecPskProfile;)V

    goto :goto_0

    .line 185
    .restart local p1
    :pswitch_2
    new-instance v0, Lcom/android/settings/vpn/L2tpEditor;

    check-cast p1, Landroid/net/vpn/L2tpProfile;

    .end local p1
    invoke-direct {v0, p1}, Lcom/android/settings/vpn/L2tpEditor;-><init>(Landroid/net/vpn/L2tpProfile;)V

    goto :goto_0

    .line 188
    .restart local p1
    :pswitch_3
    new-instance v0, Lcom/android/settings/vpn/OpenvpnEditor;

    check-cast p1, Landroid/net/vpn/OpenvpnProfile;

    .end local p1
    invoke-direct {v0, p1}, Lcom/android/settings/vpn/OpenvpnEditor;-><init>(Landroid/net/vpn/OpenvpnProfile;)V

    goto :goto_0

    .line 191
    .restart local p1
    :pswitch_4
    new-instance v0, Lcom/android/settings/vpn/PptpEditor;

    check-cast p1, Landroid/net/vpn/PptpProfile;

    .end local p1
    invoke-direct {v0, p1}, Lcom/android/settings/vpn/PptpEditor;-><init>(Landroid/net/vpn/PptpProfile;)V

    goto :goto_0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getProfile()Landroid/net/vpn/VpnProfile;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/settings/vpn/VpnEditor;->mProfileEditor:Lcom/android/settings/vpn/VpnProfileEditor;

    invoke-virtual {v0}, Lcom/android/settings/vpn/VpnProfileEditor;->getProfile()Landroid/net/vpn/VpnProfile;

    move-result-object v0

    return-object v0
.end method

.method private initViewFor(Landroid/net/vpn/VpnProfile;)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnEditor;->setTitle(Landroid/net/vpn/VpnProfile;)V

    .line 143
    iget-object v0, p0, Lcom/android/settings/vpn/VpnEditor;->mProfileEditor:Lcom/android/settings/vpn/VpnProfileEditor;

    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/vpn/VpnProfileEditor;->loadPreferencesTo(Landroid/preference/PreferenceGroup;)V

    .line 144
    return-void
.end method

.method private profileChanged()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 244
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 245
    .local v3, newParcel:Landroid/os/Parcel;
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnEditor;->getProfile()Landroid/net/vpn/VpnProfile;

    move-result-object v4

    invoke-virtual {v4, v3, v6}, Landroid/net/vpn/VpnProfile;->writeToParcel(Landroid/os/Parcel;I)V

    .line 246
    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    .line 247
    .local v2, newData:[B
    iget-object v4, p0, Lcom/android/settings/vpn/VpnEditor;->mOriginalProfileData:[B

    array-length v4, v4

    array-length v5, v2

    if-ne v4, v5, :cond_2

    .line 248
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v4, p0, Lcom/android/settings/vpn/VpnEditor;->mOriginalProfileData:[B

    array-length v1, v4

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 249
    iget-object v4, p0, Lcom/android/settings/vpn/VpnEditor;->mOriginalProfileData:[B

    aget-byte v4, v4, v0

    aget-byte v5, v2, v0

    if-eq v4, v5, :cond_0

    move v4, v7

    .line 253
    .end local v0           #i:I
    .end local v1           #n:I
    :goto_1
    return v4

    .line 248
    .restart local v0       #i:I
    .restart local v1       #n:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v4, v6

    .line 251
    goto :goto_1

    .end local v0           #i:I
    .end local v1           #n:I
    :cond_2
    move v4, v7

    .line 253
    goto :goto_1
.end method

.method private setResult(Landroid/net/vpn/VpnProfile;)V
    .locals 2
    .parameter

    .prologue
    .line 171
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/vpn/VpnSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    const-string v1, "vpn_profile"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 173
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/vpn/VpnEditor;->setResult(ILandroid/content/Intent;)V

    .line 174
    return-void
.end method

.method private setTitle(Landroid/net/vpn/VpnProfile;)V
    .locals 4
    .parameter "profile"

    .prologue
    .line 147
    iget-boolean v1, p0, Lcom/android/settings/vpn/VpnEditor;->mAddingProfile:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0903a4

    invoke-virtual {p0, v1}, Lcom/android/settings/vpn/VpnEditor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 150
    .local v0, formatString:Ljava/lang/String;
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/net/vpn/VpnProfile;->getType()Landroid/net/vpn/VpnType;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/vpn/VpnType;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/vpn/VpnEditor;->setTitle(Ljava/lang/CharSequence;)V

    .line 152
    return-void

    .line 147
    .end local v0           #formatString:Ljava/lang/String;
    :cond_0
    const v1, 0x7f0903a5

    invoke-virtual {p0, v1}, Lcom/android/settings/vpn/VpnEditor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method private showBackConfirmDialog()V
    .locals 3

    .prologue
    .line 217
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/vpn/VpnEditor;->mAddingProfile:Z

    if-eqz v1, :cond_0

    const v1, 0x7f090397

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090386

    new-instance v2, Lcom/android/settings/vpn/VpnEditor$3;

    invoke-direct {v2, p0}, Lcom/android/settings/vpn/VpnEditor$3;-><init>(Lcom/android/settings/vpn/VpnEditor;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090389

    new-instance v2, Lcom/android/settings/vpn/VpnEditor$2;

    invoke-direct {v2, p0}, Lcom/android/settings/vpn/VpnEditor$2;-><init>(Lcom/android/settings/vpn/VpnEditor;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 237
    return-void

    .line 217
    :cond_0
    const v1, 0x7f090398

    goto :goto_0
.end method

.method private showCancellationConfirmDialog()V
    .locals 3

    .prologue
    .line 199
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/vpn/VpnEditor;->mAddingProfile:Z

    if-eqz v1, :cond_0

    const v1, 0x7f090395

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090386

    new-instance v2, Lcom/android/settings/vpn/VpnEditor$1;

    invoke-direct {v2, p0}, Lcom/android/settings/vpn/VpnEditor$1;-><init>(Lcom/android/settings/vpn/VpnEditor;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090389

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 213
    return-void

    .line 199
    :cond_0
    const v1, 0x7f090396

    goto :goto_0
.end method

.method private validateAndSetResult()Z
    .locals 2

    .prologue
    .line 159
    iget-object v1, p0, Lcom/android/settings/vpn/VpnEditor;->mProfileEditor:Lcom/android/settings/vpn/VpnProfileEditor;

    invoke-virtual {v1}, Lcom/android/settings/vpn/VpnProfileEditor;->validate()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, errorMsg:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 162
    invoke-static {p0, v0}, Lcom/android/settings/vpn/Util;->showErrorMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 163
    const/4 v1, 0x0

    .line 167
    :goto_0
    return v1

    .line 166
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnEditor;->profileChanged()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/vpn/VpnEditor;->getProfile()Landroid/net/vpn/VpnProfile;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/vpn/VpnEditor;->setResult(Landroid/net/vpn/VpnProfile;)V

    .line 167
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 87
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ON ACTIVITY RESULT req="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 88
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 89
    :cond_0
    sget-object v0, Lcom/android/settings/vpn/VpnEditor;->TAG:Ljava/lang/String;

    const-string v1, "no result returned by editor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/android/settings/vpn/VpnEditor;->mProfileEditor:Lcom/android/settings/vpn/VpnProfileEditor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/vpn/VpnProfileEditor;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "vpn_profile"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v0, v2

    :goto_0
    check-cast v0, Landroid/net/vpn/VpnProfile;

    .line 64
    .local v0, p:Landroid/net/vpn/VpnProfile;
    invoke-direct {p0, v0}, Lcom/android/settings/vpn/VpnEditor;->getEditor(Landroid/net/vpn/VpnProfile;)Lcom/android/settings/vpn/VpnProfileEditor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/vpn/VpnEditor;->mProfileEditor:Lcom/android/settings/vpn/VpnProfileEditor;

    .line 65
    invoke-virtual {v0}, Landroid/net/vpn/VpnProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/vpn/VpnEditor;->mAddingProfile:Z

    .line 68
    const v2, 0x7f04003c

    invoke-virtual {p0, v2}, Lcom/android/settings/vpn/VpnEditor;->addPreferencesFromResource(I)V

    .line 70
    invoke-direct {p0, v0}, Lcom/android/settings/vpn/VpnEditor;->initViewFor(Landroid/net/vpn/VpnProfile;)V

    .line 72
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 73
    .local v1, parcel:Landroid/os/Parcel;
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/vpn/VpnProfile;->writeToParcel(Landroid/os/Parcel;I)V

    .line 74
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/vpn/VpnEditor;->mOriginalProfileData:[B

    .line 75
    return-void

    .line 61
    .end local v0           #p:Landroid/net/vpn/VpnProfile;
    .end local v1           #parcel:Landroid/os/Parcel;
    :cond_0
    const-string v2, "profile"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 97
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 98
    const v0, 0x7f09038a

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 100
    iget-boolean v0, p0, Lcom/android/settings/vpn/VpnEditor;->mAddingProfile:Z

    if-eqz v0, :cond_0

    const v0, 0x7f09038b

    :goto_0
    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 104
    iget-object v0, p0, Lcom/android/settings/vpn/VpnEditor;->mProfileEditor:Lcom/android/settings/vpn/VpnProfileEditor;

    invoke-virtual {v0, p1, v4}, Lcom/android/settings/vpn/VpnProfileEditor;->onCreateOptionsMenu(Landroid/view/Menu;I)V

    .line 105
    return v3

    .line 100
    :cond_0
    const v0, 0x7f09038c

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 131
    packed-switch p1, :pswitch_data_0

    .line 138
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 133
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnEditor;->profileChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnEditor;->showBackConfirmDialog()V

    .line 135
    const/4 v0, 0x1

    goto :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 110
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 123
    iget-object v0, p0, Lcom/android/settings/vpn/VpnEditor;->mProfileEditor:Lcom/android/settings/vpn/VpnProfileEditor;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/vpn/VpnProfileEditor;->onOptionsItemSelected(Landroid/preference/PreferenceActivity;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 126
    :goto_0
    return v0

    .line 112
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnEditor;->validateAndSetResult()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnEditor;->finish()V

    :cond_0
    move v0, v1

    .line 113
    goto :goto_0

    .line 116
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnEditor;->profileChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    invoke-direct {p0}, Lcom/android/settings/vpn/VpnEditor;->showCancellationConfirmDialog()V

    :goto_1
    move v0, v1

    .line 121
    goto :goto_0

    .line 119
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnEditor;->finish()V

    goto :goto_1

    .line 126
    :cond_2
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected declared-synchronized onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/vpn/VpnEditor;->mProfileEditor:Lcom/android/settings/vpn/VpnProfileEditor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 82
    :goto_0
    monitor-exit p0

    return-void

    .line 81
    :cond_0
    :try_start_1
    const-string v0, "profile"

    invoke-direct {p0}, Lcom/android/settings/vpn/VpnEditor;->getProfile()Landroid/net/vpn/VpnProfile;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
