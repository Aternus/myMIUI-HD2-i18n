.class public final Lcom/miui/antispam/firewall/FwlogGroupListAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "FwlogGroupListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antispam/firewall/FwlogGroupListAdapter$ListViews;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mQueryTarget:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "queryTarget"

    .prologue
    .line 27
    const v0, 0x7f03000e

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 29
    iput-object p1, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter;->mContext:Landroid/content/Context;

    .line 30
    iput p2, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter;->mQueryTarget:I

    .line 31
    return-void
.end method

.method private setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "tv"
    .parameter "text"

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v9, 0x3

    const/4 v10, 0x1

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$ListViews;

    .line 36
    .local v4, main:Lcom/miui/antispam/firewall/FwlogGroupListAdapter$ListViews;
    invoke-virtual {v4}, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$ListViews;->setGone()V

    .line 37
    invoke-static {p3}, Lcom/miui/antispam/firewall/FirewallLog;->getNumber(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    .line 38
    .local v6, number:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    invoke-interface {p3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 42
    .local v7, type:I
    if-eq v7, v10, :cond_2

    const/4 v8, 0x2

    if-eq v7, v8, :cond_2

    if-ne v7, v9, :cond_0

    .line 48
    :cond_2
    const/4 v8, 0x0

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$ListViews;->_id:J

    .line 51
    iget-object v8, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8, v6}, Lcom/miui/antispam/firewall/FirewallLog;->queryNameFromNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 52
    .local v5, name:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 53
    iget-object v8, v4, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$ListViews;->title:Landroid/widget/TextView;

    invoke-direct {p0, v8, v6}, Lcom/miui/antispam/firewall/FwlogGroupListAdapter;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 60
    :goto_1
    const/16 v8, 0x8

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 61
    .local v0, count:J
    const-wide/16 v8, 0x1

    cmp-long v8, v0, v8

    if-lez v8, :cond_3

    .line 62
    iget-object v8, v4, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$ListViews;->count:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/miui/antispam/firewall/FirewallLog;->getCountString(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/miui/antispam/firewall/FwlogGroupListAdapter;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 66
    :cond_3
    if-ne v7, v10, :cond_6

    .line 67
    iget-object v8, v4, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$ListViews;->data1:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9, p3}, Lcom/miui/antispam/firewall/FirewallLog;->formatCallData(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/miui/antispam/firewall/FwlogGroupListAdapter;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 69
    invoke-static {p3}, Lcom/miui/antispam/firewall/FirewallLog;->isMute(Landroid/database/Cursor;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 70
    iget-object v8, v4, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$ListViews;->data2:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f070045

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/miui/antispam/firewall/FwlogGroupListAdapter;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 55
    .end local v0           #count:J
    :cond_4
    iget-object v8, v4, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$ListViews;->title:Landroid/widget/TextView;

    invoke-direct {p0, v8, v5}, Lcom/miui/antispam/firewall/FwlogGroupListAdapter;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 56
    iget-object v8, v4, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$ListViews;->subtitle:Landroid/widget/TextView;

    invoke-direct {p0, v8, v6}, Lcom/miui/antispam/firewall/FwlogGroupListAdapter;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 72
    .restart local v0       #count:J
    :cond_5
    iget-object v8, v4, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$ListViews;->data2:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f070046

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/miui/antispam/firewall/FwlogGroupListAdapter;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 76
    :cond_6
    iget-object v8, p0, Lcom/miui/antispam/firewall/FwlogGroupListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8, p3}, Lcom/miui/antispam/firewall/FirewallLog;->getDate(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, dateStr:Ljava/lang/String;
    const/4 v8, 0x5

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, data1:Ljava/lang/String;
    iget-object v8, v4, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$ListViews;->data1:Landroid/widget/TextView;

    invoke-direct {p0, v8, v2}, Lcom/miui/antispam/firewall/FwlogGroupListAdapter;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 80
    iget-object v8, v4, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$ListViews;->data2:Landroid/widget/TextView;

    invoke-direct {p0, v8, v3}, Lcom/miui/antispam/firewall/FwlogGroupListAdapter;->setTextView(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 86
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 87
    .local v0, view:Landroid/view/View;
    new-instance v1, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$ListViews;

    invoke-direct {v1, v0}, Lcom/miui/antispam/firewall/FwlogGroupListAdapter$ListViews;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 88
    return-object v0
.end method
