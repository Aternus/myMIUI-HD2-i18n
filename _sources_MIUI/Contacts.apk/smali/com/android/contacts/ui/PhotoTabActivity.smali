.class public Lcom/android/contacts/ui/PhotoTabActivity;
.super Lcom/miui/android/resourcebrowser/ResourceTabActivity;
.source "PhotoTabActivity.java"


# static fields
.field public static DISPLAY_NAME_EXTRA:Ljava/lang/String;

.field private static LOCAL_PHOTO_PATH:[Ljava/lang/String;

.field private static RESOURCE_SET_CODE:Ljava/lang/String;

.field private static RESOURCE_SET_PACKAGE:Ljava/lang/String;

.field private static RESOURCE_TYPE_PARAMETER:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    const-string v0, "display_name"

    sput-object v0, Lcom/android/contacts/ui/PhotoTabActivity;->DISPLAY_NAME_EXTRA:Ljava/lang/String;

    .line 12
    const-string v0, "com.android.contacts"

    sput-object v0, Lcom/android/contacts/ui/PhotoTabActivity;->RESOURCE_SET_PACKAGE:Ljava/lang/String;

    .line 13
    const-string v0, "photo"

    sput-object v0, Lcom/android/contacts/ui/PhotoTabActivity;->RESOURCE_SET_CODE:Ljava/lang/String;

    .line 14
    const-string v0, "4"

    sput-object v0, Lcom/android/contacts/ui/PhotoTabActivity;->RESOURCE_TYPE_PARAMETER:Ljava/lang/String;

    .line 16
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/system/media/photo"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/data/media/photo"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/sdcard/MIUI/photo"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/ui/PhotoTabActivity;->LOCAL_PHOTO_PATH:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/miui/android/resourcebrowser/ResourceTabActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected buildDefaultMetaData(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 22
    const-string v0, "com.miui.android.resourcebrowser.RESOURCE_SET_PACKAGE"

    sget-object v1, Lcom/android/contacts/ui/PhotoTabActivity;->RESOURCE_SET_PACKAGE:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string v0, "com.miui.android.resourcebrowser.RESOURCE_SET_CODE"

    sget-object v1, Lcom/android/contacts/ui/PhotoTabActivity;->RESOURCE_SET_CODE:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string v0, "com.miui.android.resourcebrowser.RESOURCE_SET_NAME"

    const v1, 0x7f0b017f

    invoke-virtual {p0, v1}, Lcom/android/contacts/ui/PhotoTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string v0, "com.miui.android.resourcebrowser.DISPLAY_TYPE"

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 26
    const-string v0, "com.miui.android.resourcebrowser.RESOURCE_TYPE_PARAMETER"

    sget-object v1, Lcom/android/contacts/ui/PhotoTabActivity;->RESOURCE_TYPE_PARAMETER:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v0, "com.miui.android.resourcebrowser.RESOURCE_SET_CATEGORY"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 28
    const-string v0, "com.miui.android.resourcebrowser.VERSION_SUPPORTED"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 29
    const-string v0, "com.miui.android.resourcebrowser.SOURCE_FOLDERS"

    sget-object v1, Lcom/android/contacts/ui/PhotoTabActivity;->LOCAL_PHOTO_PATH:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 30
    const-string v0, "com.miui.android.resourcebrowser.CACHE_LIST_FOLDER"

    invoke-virtual {p0}, Lcom/android/contacts/ui/PhotoTabActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v0, "com.miui.android.resourcebrowser.DETAIL_ACTIVITY_PACKAGE"

    sget-object v1, Lcom/android/contacts/ui/PhotoTabActivity;->RESOURCE_SET_PACKAGE:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v0, "com.miui.android.resourcebrowser.DETAIL_ACTIVITY_CLASS"

    const-class v1, Lcom/android/contacts/ui/PhotoDetailActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-super {p0, p1, p2}, Lcom/miui/android/resourcebrowser/ResourceTabActivity;->buildDefaultMetaData(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected buildLocalResourceListMetaData(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-super {p0, p1, p2}, Lcom/miui/android/resourcebrowser/ResourceTabActivity;->buildLocalResourceListMetaData(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 39
    const-string v1, "android.intent.action.PICK_RESOURCE"

    invoke-virtual {p0}, Lcom/android/contacts/ui/PhotoTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    const-string v1, "com.miui.android.resourcebrowser.DETAIL_ACTIVITY_CLASS"

    const-class v2, Lcom/android/contacts/ui/LocalPhotosActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_0
    return-object v0
.end method
