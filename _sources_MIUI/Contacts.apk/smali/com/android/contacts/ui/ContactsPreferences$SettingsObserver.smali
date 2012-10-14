.class Lcom/android/contacts/ui/ContactsPreferences$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "ContactsPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ui/ContactsPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ui/ContactsPreferences;


# direct methods
.method public constructor <init>(Lcom/android/contacts/ui/ContactsPreferences;)V
    .locals 1
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/contacts/ui/ContactsPreferences$SettingsObserver;->this$0:Lcom/android/contacts/ui/ContactsPreferences;

    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 119
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    const/4 v1, -0x1

    .line 132
    iget-object v0, p0, Lcom/android/contacts/ui/ContactsPreferences$SettingsObserver;->this$0:Lcom/android/contacts/ui/ContactsPreferences;

    #setter for: Lcom/android/contacts/ui/ContactsPreferences;->mSortOrder:I
    invoke-static {v0, v1}, Lcom/android/contacts/ui/ContactsPreferences;->access$102(Lcom/android/contacts/ui/ContactsPreferences;I)I

    .line 133
    iget-object v0, p0, Lcom/android/contacts/ui/ContactsPreferences$SettingsObserver;->this$0:Lcom/android/contacts/ui/ContactsPreferences;

    #setter for: Lcom/android/contacts/ui/ContactsPreferences;->mDisplayOrder:I
    invoke-static {v0, v1}, Lcom/android/contacts/ui/ContactsPreferences;->access$202(Lcom/android/contacts/ui/ContactsPreferences;I)I

    .line 136
    return-void
.end method

.method public register()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 122
    iget-object v0, p0, Lcom/android/contacts/ui/ContactsPreferences$SettingsObserver;->this$0:Lcom/android/contacts/ui/ContactsPreferences;

    #getter for: Lcom/android/contacts/ui/ContactsPreferences;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/contacts/ui/ContactsPreferences;->access$000(Lcom/android/contacts/ui/ContactsPreferences;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android.contacts.SORT_ORDER"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 125
    iget-object v0, p0, Lcom/android/contacts/ui/ContactsPreferences$SettingsObserver;->this$0:Lcom/android/contacts/ui/ContactsPreferences;

    #getter for: Lcom/android/contacts/ui/ContactsPreferences;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/contacts/ui/ContactsPreferences;->access$000(Lcom/android/contacts/ui/ContactsPreferences;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android.contacts.DISPLAY_ORDER"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 128
    return-void
.end method
