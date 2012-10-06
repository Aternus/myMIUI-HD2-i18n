.class public final Lcom/google/android/apps/uploader/s;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/app/NotificationManager;

.field private c:Z

.field private d:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/uploader/s;->a:Landroid/content/Context;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/google/android/apps/uploader/s;->b:Landroid/app/NotificationManager;

    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/apps/uploader/s;->d:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/apps/uploader/s;->a:Landroid/content/Context;

    const-class v2, Lcom/google/android/apps/uploader/ManagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/google/android/apps/uploader/s;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/s;->d:Landroid/app/PendingIntent;

    :cond_0
    new-instance v0, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, p1, p2, v1, v2}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget-object v1, p0, Lcom/google/android/apps/uploader/s;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/uploader/s;->d:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, p3, p4, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    if-eqz p5, :cond_1

    const/16 v1, 0x22

    iput v1, v0, Landroid/app/Notification;->flags:I

    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/uploader/s;->b:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->cancelAll()V

    iget-object v1, p0, Lcom/google/android/apps/uploader/s;->b:Landroid/app/NotificationManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :cond_1
    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 6

    const v4, 0x7f060037

    iget-boolean v0, p0, Lcom/google/android/apps/uploader/s;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/s;->b:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    :goto_0
    return-void

    :cond_0
    const v1, 0x7f02000f

    iget-object v0, p0, Lcom/google/android/apps/uploader/s;->a:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/apps/uploader/s;->a:Landroid/content/Context;

    const v3, 0x7f060036

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/apps/uploader/s;->a:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/uploader/s;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/apps/uploader/r;)V
    .locals 6

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/r;->a()Lcom/google/android/apps/uploader/F;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/uploader/s;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/F;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/r;->k()Ljava/lang/String;

    move-result-object v4

    const v1, 0x1080088

    sget-object v3, Lcom/google/android/apps/uploader/F;->g:Lcom/google/android/apps/uploader/F;

    if-eq v0, v3, :cond_0

    sget-object v3, Lcom/google/android/apps/uploader/F;->c:Lcom/google/android/apps/uploader/F;

    if-eq v0, v3, :cond_0

    sget-object v3, Lcom/google/android/apps/uploader/F;->e:Lcom/google/android/apps/uploader/F;

    if-ne v0, v3, :cond_1

    :cond_0
    const v0, 0x7f02000e

    move v1, v0

    :cond_1
    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/uploader/s;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/apps/uploader/s;->c:Z

    return-void
.end method

.method public final b()V
    .locals 6

    const v4, 0x7f060038

    const v1, 0x7f020010

    iget-object v0, p0, Lcom/google/android/apps/uploader/s;->a:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/apps/uploader/s;->a:Landroid/content/Context;

    const v3, 0x7f060036

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/apps/uploader/s;->a:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/uploader/s;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/s;->b:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    return-void
.end method
