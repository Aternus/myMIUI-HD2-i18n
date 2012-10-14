.class Lcom/miui/antispam/firewall/FirewallLog$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "FirewallLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antispam/firewall/FirewallLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryHandler"
.end annotation


# instance fields
.field protected final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/antispam/firewall/FirewallLog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/antispam/firewall/FirewallLog;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 471
    invoke-virtual {p1}, Lcom/miui/antispam/firewall/FirewallLog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 472
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/antispam/firewall/FirewallLog$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 473
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 7
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const v6, 0x7f09000f

    const v5, 0x1020004

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 477
    iget-object v2, p0, Lcom/miui/antispam/firewall/FirewallLog$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/firewall/FirewallLog;

    .line 478
    .local v0, activity:Lcom/miui/antispam/firewall/FirewallLog;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/antispam/firewall/FirewallLog;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_2

    .line 479
    const/16 v2, 0x64

    if-ne p1, v2, :cond_0

    .line 480
    if-eqz p3, :cond_0

    .line 481
    #getter for: Lcom/miui/antispam/firewall/FirewallLog;->mListAdapter:Landroid/widget/ResourceCursorAdapter;
    invoke-static {v0}, Lcom/miui/antispam/firewall/FirewallLog;->access$000(Lcom/miui/antispam/firewall/FirewallLog;)Landroid/widget/ResourceCursorAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 483
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 484
    .local v1, count:I
    if-nez v1, :cond_1

    .line 485
    invoke-virtual {v0, v5}, Lcom/miui/antispam/firewall/FirewallLog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 486
    invoke-virtual {v0, v6}, Lcom/miui/antispam/firewall/FirewallLog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 492
    :goto_0
    #getter for: Lcom/miui/antispam/firewall/FirewallLog;->mQueryNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/antispam/firewall/FirewallLog;->access$500(Lcom/miui/antispam/firewall/FirewallLog;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 493
    #getter for: Lcom/miui/antispam/firewall/FirewallLog;->mCountView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/miui/antispam/firewall/FirewallLog;->access$600(Lcom/miui/antispam/firewall/FirewallLog;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    .end local v1           #count:I
    :cond_0
    :goto_1
    return-void

    .line 488
    .restart local v1       #count:I
    :cond_1
    invoke-virtual {v0, v5}, Lcom/miui/antispam/firewall/FirewallLog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 489
    invoke-virtual {v0, v6}, Lcom/miui/antispam/firewall/FirewallLog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 498
    .end local v1           #count:I
    :cond_2
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method
