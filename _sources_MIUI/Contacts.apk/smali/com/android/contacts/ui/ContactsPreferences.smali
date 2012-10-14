.class public final Lcom/android/contacts/ui/ContactsPreferences;
.super Ljava/lang/Object;
.source "ContactsPreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ui/ContactsPreferences$SettingsObserver;
    }
.end annotation


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDisplayOrder:I

.field private mSettingsObserver:Lcom/android/contacts/ui/ContactsPreferences$SettingsObserver;

.field private mSortOrder:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, -0x1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v0, p0, Lcom/android/contacts/ui/ContactsPreferences;->mSortOrder:I

    .line 36
    iput v0, p0, Lcom/android/contacts/ui/ContactsPreferences;->mDisplayOrder:I

    .line 40
    iput-object p1, p0, Lcom/android/contacts/ui/ContactsPreferences;->mContext:Landroid/content/Context;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ui/ContactsPreferences;->mContentResolver:Landroid/content/ContentResolver;

    .line 43
    new-instance v0, Lcom/android/contacts/ui/ContactsPreferences$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/contacts/ui/ContactsPreferences$SettingsObserver;-><init>(Lcom/android/contacts/ui/ContactsPreferences;)V

    iput-object v0, p0, Lcom/android/contacts/ui/ContactsPreferences;->mSettingsObserver:Lcom/android/contacts/ui/ContactsPreferences$SettingsObserver;

    .line 44
    iget-object v0, p0, Lcom/android/contacts/ui/ContactsPreferences;->mSettingsObserver:Lcom/android/contacts/ui/ContactsPreferences$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/contacts/ui/ContactsPreferences$SettingsObserver;->register()V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/ui/ContactsPreferences;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/contacts/ui/ContactsPreferences;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/contacts/ui/ContactsPreferences;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Lcom/android/contacts/ui/ContactsPreferences;->mSortOrder:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/contacts/ui/ContactsPreferences;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Lcom/android/contacts/ui/ContactsPreferences;->mDisplayOrder:I

    return p1
.end method

.method private getDefaultDisplayOrder()I
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/contacts/ui/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const/4 v0, 0x1

    .line 89
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private getDefaultSortOrder()I
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/contacts/ui/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const/4 v0, 0x1

    .line 55
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method public getDisplayOrder()I
    .locals 3

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/android/contacts/ui/ContactsPreferences;->isDisplayOrderUserChangeable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/android/contacts/ui/ContactsPreferences;->getDefaultDisplayOrder()I

    move-result v1

    .line 106
    :goto_0
    return v1

    .line 98
    :cond_0
    iget v1, p0, Lcom/android/contacts/ui/ContactsPreferences;->mDisplayOrder:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/ui/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android.contacts.DISPLAY_ORDER"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/ui/ContactsPreferences;->mDisplayOrder:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :cond_1
    :goto_1
    iget v1, p0, Lcom/android/contacts/ui/ContactsPreferences;->mDisplayOrder:I

    goto :goto_0

    .line 102
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 103
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-direct {p0}, Lcom/android/contacts/ui/ContactsPreferences;->getDefaultDisplayOrder()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/ui/ContactsPreferences;->mDisplayOrder:I

    goto :goto_1
.end method

.method public getSortOrder()I
    .locals 3

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/contacts/ui/ContactsPreferences;->isSortOrderUserChangeable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    invoke-direct {p0}, Lcom/android/contacts/ui/ContactsPreferences;->getDefaultSortOrder()I

    move-result v1

    .line 72
    :goto_0
    return v1

    .line 64
    :cond_0
    iget v1, p0, Lcom/android/contacts/ui/ContactsPreferences;->mSortOrder:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/ui/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android.contacts.SORT_ORDER"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/ui/ContactsPreferences;->mSortOrder:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_1
    :goto_1
    iget v1, p0, Lcom/android/contacts/ui/ContactsPreferences;->mSortOrder:I

    goto :goto_0

    .line 68
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 69
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-direct {p0}, Lcom/android/contacts/ui/ContactsPreferences;->getDefaultSortOrder()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/ui/ContactsPreferences;->mSortOrder:I

    goto :goto_1
.end method

.method public isDisplayOrderUserChangeable()Z
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/contacts/ui/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isSortOrderUserChangeable()Z
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/contacts/ui/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method
