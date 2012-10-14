.class Lcom/miui/antispam/firewall/FirewallLog$1;
.super Ljava/lang/Object;
.source "FirewallLog.java"

# interfaces
.implements Landroid/widget/EditableListActionBar$OnButtonBarClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antispam/firewall/FirewallLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/antispam/firewall/FirewallLog;


# direct methods
.method constructor <init>(Lcom/miui/antispam/firewall/FirewallLog;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/miui/antispam/firewall/FirewallLog$1;->this$0:Lcom/miui/antispam/firewall/FirewallLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Landroid/widget/EditableListView$EditableListViewCheckable;)V
    .locals 13
    .parameter "v"
    .parameter "checkable"

    .prologue
    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    const v8, 0x7f09000c

    if-ne v7, v8, :cond_3

    .line 88
    invoke-interface {p2}, Landroid/widget/EditableListView$EditableListViewCheckable;->getCheckedItemInPositions()Ljava/util/HashSet;

    move-result-object v6

    .line 90
    .local v6, positions:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 92
    .local v5, position:Ljava/lang/Integer;
    iget-object v7, p0, Lcom/miui/antispam/firewall/FirewallLog$1;->this$0:Lcom/miui/antispam/firewall/FirewallLog;

    #getter for: Lcom/miui/antispam/firewall/FirewallLog;->mListAdapter:Landroid/widget/ResourceCursorAdapter;
    invoke-static {v7}, Lcom/miui/antispam/firewall/FirewallLog;->access$000(Lcom/miui/antispam/firewall/FirewallLog;)Landroid/widget/ResourceCursorAdapter;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ResourceCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 93
    .local v2, cursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/miui/antispam/firewall/FirewallLog;->getOrigianlNumber(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    .line 95
    .local v4, originalNumber:Ljava/lang/String;
    iget-object v7, p0, Lcom/miui/antispam/firewall/FirewallLog$1;->this$0:Lcom/miui/antispam/firewall/FirewallLog;

    #calls: Lcom/miui/antispam/firewall/FirewallLog;->inConversionMode()Z
    invoke-static {v7}, Lcom/miui/antispam/firewall/FirewallLog;->access$100(Lcom/miui/antispam/firewall/FirewallLog;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 96
    iget-object v7, p0, Lcom/miui/antispam/firewall/FirewallLog$1;->this$0:Lcom/miui/antispam/firewall/FirewallLog;

    #getter for: Lcom/miui/antispam/firewall/FirewallLog;->mQueryTarget:I
    invoke-static {v7}, Lcom/miui/antispam/firewall/FirewallLog;->access$200(Lcom/miui/antispam/firewall/FirewallLog;)I

    move-result v7

    const/16 v8, 0x65

    if-ne v7, v8, :cond_0

    .line 97
    iget-object v7, p0, Lcom/miui/antispam/firewall/FirewallLog$1;->this$0:Lcom/miui/antispam/firewall/FirewallLog;

    invoke-virtual {v7}, Lcom/miui/antispam/firewall/FirewallLog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/Telephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    const-string v9, "type=? AND number=?"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v4, v10, v11

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 105
    :cond_0
    iget-object v7, p0, Lcom/miui/antispam/firewall/FirewallLog$1;->this$0:Lcom/miui/antispam/firewall/FirewallLog;

    invoke-virtual {v7}, Lcom/miui/antispam/firewall/FirewallLog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/Telephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    const-string v9, "(type=? OR type=?) AND number=?"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x3

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x2

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    aput-object v4, v10, v11

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 116
    :cond_1
    const/4 v7, 0x0

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 117
    .local v0, _id:J
    iget-object v7, p0, Lcom/miui/antispam/firewall/FirewallLog$1;->this$0:Lcom/miui/antispam/firewall/FirewallLog;

    invoke-virtual {v7}, Lcom/miui/antispam/firewall/FirewallLog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/Telephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 123
    .end local v0           #_id:J
    .end local v2           #cursor:Landroid/database/Cursor;
    .end local v4           #originalNumber:Ljava/lang/String;
    .end local v5           #position:Ljava/lang/Integer;
    :cond_2
    iget-object v7, p0, Lcom/miui/antispam/firewall/FirewallLog$1;->this$0:Lcom/miui/antispam/firewall/FirewallLog;

    #getter for: Lcom/miui/antispam/firewall/FirewallLog;->mListView:Landroid/widget/EditableListView;
    invoke-static {v7}, Lcom/miui/antispam/firewall/FirewallLog;->access$300(Lcom/miui/antispam/firewall/FirewallLog;)Landroid/widget/EditableListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditableListView;->exitEditMode()V

    .line 124
    iget-object v7, p0, Lcom/miui/antispam/firewall/FirewallLog$1;->this$0:Lcom/miui/antispam/firewall/FirewallLog;

    #calls: Lcom/miui/antispam/firewall/FirewallLog;->startQuery()V
    invoke-static {v7}, Lcom/miui/antispam/firewall/FirewallLog;->access$400(Lcom/miui/antispam/firewall/FirewallLog;)V

    .line 126
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #positions:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_3
    return-void
.end method
