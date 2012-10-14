.class public Lcom/android/browser/util/LauncherUtil;
.super Ljava/lang/Object;
.source "LauncherUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/util/LauncherUtil$ProcessAliveLock;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "com.android.browser.util/LauncherUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method public static final addApplicationShortcutAtHome(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 20
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 21
    .local v1, shortcutLaunchIntent:Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    const-class v2, Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 24
    .local v0, addShortcutIntent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 25
    const-string v2, "android.intent.extra.shortcut.NAME"

    const v3, 0x7f090003

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v3, 0x7f020048

    invoke-static {p0, v3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 27
    const-string v2, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 29
    return-void
.end method

.method public static final alreadyHasApplicationShortcutAtHome(Landroid/content/Context;)Z
    .locals 14
    .parameter "context"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const-string v1, "error"

    const-string v1, "com.android.browser.util/LauncherUtil"

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 33
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 36
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    const-string v1, "content://com.android.launcher2.settings/favorites"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "intent"

    aput-object v4, v2, v3

    const-string v3, "title=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const v11, 0x7f090003

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 42
    if-nez v6, :cond_1

    .line 43
    const-string v1, "content://com.android.launcher.settings/favorites"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "intent"

    aput-object v4, v2, v3

    const-string v3, "title=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const v11, 0x7f090003

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    .line 49
    if-nez v6, :cond_1

    .line 75
    if-eqz v6, :cond_0

    .line 76
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move v1, v12

    .line 79
    :goto_0
    return v1

    .line 53
    :cond_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    if-eqz v1, :cond_5

    .line 55
    const/4 v1, 0x0

    :try_start_2
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v9

    .line 56
    .local v9, intent:Landroid/content/Intent;
    if-eqz v9, :cond_5

    .line 57
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    .line 58
    .local v8, info:Landroid/content/ComponentName;
    if-eqz v8, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-class v1, Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v10, v13

    .line 61
    .local v10, ret:Z
    :goto_1
    if-eqz v10, :cond_2

    .line 62
    const-string v1, "com.android.browser.util/LauncherUtil"

    const-string v2, "Found existing shortcut at launcher Home"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 75
    :cond_2
    if-eqz v6, :cond_3

    .line 76
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v1, v10

    goto :goto_0

    .end local v10           #ret:Z
    :cond_4
    move v10, v12

    .line 58
    goto :goto_1

    .line 66
    .end local v8           #info:Landroid/content/ComponentName;
    .end local v9           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    move-object v7, v1

    .line 67
    .local v7, e:Ljava/net/URISyntaxException;
    :try_start_3
    const-string v1, "com.android.browser.util/LauncherUtil"

    const-string v2, "error"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 75
    .end local v7           #e:Ljava/net/URISyntaxException;
    :cond_5
    if-eqz v6, :cond_6

    .line 76
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_2
    move v1, v12

    .line 79
    goto :goto_0

    .line 70
    :catch_1
    move-exception v1

    move-object v7, v1

    .line 71
    .local v7, e:Ljava/lang/SecurityException;
    :try_start_4
    const-string v1, "com.android.browser.util/LauncherUtil"

    const-string v2, "error"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 75
    if-eqz v6, :cond_6

    .line 76
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 72
    .end local v7           #e:Ljava/lang/SecurityException;
    :catch_2
    move-exception v1

    move-object v7, v1

    .line 73
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    :try_start_5
    const-string v1, "com.android.browser.util/LauncherUtil"

    const-string v2, "error"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 75
    if-eqz v6, :cond_6

    .line 76
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 75
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_7

    .line 76
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v1
.end method
