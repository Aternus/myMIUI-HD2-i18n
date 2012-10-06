.class public Lcom/android/thememanager/ThemeResourceTabActivity;
.super Lcom/miui/android/resourcebrowser/ResourceTabActivity;
.source "ThemeResourceTabActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/miui/android/resourcebrowser/ResourceTabActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected buildDefaultMetaData(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .parameter "metaData"
    .parameter "action"

    .prologue
    .line 11
    invoke-static {p1, p2, p0}, Lcom/android/thememanager/UIHelper;->buildDefaultMetaData(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p1

    .line 12
    invoke-super {p0, p1, p2}, Lcom/miui/android/resourcebrowser/ResourceTabActivity;->buildDefaultMetaData(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
