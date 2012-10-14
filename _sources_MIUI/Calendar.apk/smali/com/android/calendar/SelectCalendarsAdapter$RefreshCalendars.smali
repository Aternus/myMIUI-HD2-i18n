.class Lcom/android/calendar/SelectCalendarsAdapter$RefreshCalendars;
.super Ljava/lang/Object;
.source "SelectCalendarsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/SelectCalendarsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshCalendars"
.end annotation


# instance fields
.field mAccount:Ljava/lang/String;

.field mAccountType:Ljava/lang/String;

.field mToken:I

.field final synthetic this$0:Lcom/android/calendar/SelectCalendarsAdapter;


# direct methods
.method public constructor <init>(Lcom/android/calendar/SelectCalendarsAdapter;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "token"
    .parameter "cookie"
    .parameter "accountType"

    .prologue
    .line 398
    iput-object p1, p0, Lcom/android/calendar/SelectCalendarsAdapter$RefreshCalendars;->this$0:Lcom/android/calendar/SelectCalendarsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    iput p2, p0, Lcom/android/calendar/SelectCalendarsAdapter$RefreshCalendars;->mToken:I

    .line 400
    iput-object p3, p0, Lcom/android/calendar/SelectCalendarsAdapter$RefreshCalendars;->mAccount:Ljava/lang/String;

    .line 401
    iput-object p4, p0, Lcom/android/calendar/SelectCalendarsAdapter$RefreshCalendars;->mAccountType:Ljava/lang/String;

    .line 402
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 405
    invoke-static {}, Lcom/android/calendar/SelectCalendarsAdapter;->access$400()Lcom/android/calendar/SelectCalendarsAdapter$AsyncCalendarsUpdater;

    move-result-object v0

    iget v1, p0, Lcom/android/calendar/SelectCalendarsAdapter$RefreshCalendars;->mToken:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/SelectCalendarsAdapter$AsyncCalendarsUpdater;->cancelOperation(I)V

    .line 407
    invoke-static {}, Lcom/android/calendar/SelectCalendarsAdapter;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/android/calendar/SelectCalendarsAdapter$RefreshCalendars;->this$0:Lcom/android/calendar/SelectCalendarsAdapter;

    #getter for: Lcom/android/calendar/SelectCalendarsAdapter;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/calendar/SelectCalendarsAdapter;->access$500(Lcom/android/calendar/SelectCalendarsAdapter;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/calendar/SelectCalendarsAdapter$RefreshCalendars;

    iget-object v2, p0, Lcom/android/calendar/SelectCalendarsAdapter$RefreshCalendars;->this$0:Lcom/android/calendar/SelectCalendarsAdapter;

    iget v3, p0, Lcom/android/calendar/SelectCalendarsAdapter$RefreshCalendars;->mToken:I

    iget-object v4, p0, Lcom/android/calendar/SelectCalendarsAdapter$RefreshCalendars;->mAccount:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/calendar/SelectCalendarsAdapter$RefreshCalendars;->mAccountType:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/calendar/SelectCalendarsAdapter$RefreshCalendars;-><init>(Lcom/android/calendar/SelectCalendarsAdapter;ILjava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 411
    :cond_0
    invoke-static {}, Lcom/android/calendar/SelectCalendarsAdapter;->access$400()Lcom/android/calendar/SelectCalendarsAdapter$AsyncCalendarsUpdater;

    move-result-object v0

    iget v1, p0, Lcom/android/calendar/SelectCalendarsAdapter$RefreshCalendars;->mToken:I

    iget-object v2, p0, Lcom/android/calendar/SelectCalendarsAdapter$RefreshCalendars;->mAccount:Ljava/lang/String;

    sget-object v3, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/calendar/SelectCalendarsAdapter;->access$600()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "_sync_account=? AND _sync_account_type=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/calendar/SelectCalendarsAdapter$RefreshCalendars;->mAccount:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/calendar/SelectCalendarsAdapter$RefreshCalendars;->mAccountType:Ljava/lang/String;

    aput-object v8, v6, v7

    const-string v7, "\"primary\" DESC,displayName COLLATE NOCASE"

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/SelectCalendarsAdapter$AsyncCalendarsUpdater;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    return-void
.end method
