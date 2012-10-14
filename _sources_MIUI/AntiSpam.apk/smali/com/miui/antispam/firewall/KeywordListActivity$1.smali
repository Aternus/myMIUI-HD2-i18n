.class Lcom/miui/antispam/firewall/KeywordListActivity$1;
.super Ljava/lang/Object;
.source "KeywordListActivity.java"

# interfaces
.implements Landroid/widget/EditableListActionBar$OnButtonBarClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antispam/firewall/KeywordListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/antispam/firewall/KeywordListActivity;


# direct methods
.method constructor <init>(Lcom/miui/antispam/firewall/KeywordListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/miui/antispam/firewall/KeywordListActivity$1;->this$0:Lcom/miui/antispam/firewall/KeywordListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Landroid/widget/EditableListView$EditableListViewCheckable;)V
    .locals 10
    .parameter "v"
    .parameter "checkable"

    .prologue
    const/4 v9, 0x0

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x7f09000c

    if-ne v6, v7, :cond_1

    .line 66
    invoke-interface {p2}, Landroid/widget/EditableListView$EditableListViewCheckable;->getCheckedItemInPositions()Ljava/util/HashSet;

    move-result-object v2

    .line 68
    .local v2, array:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 69
    .local v5, pos:Ljava/lang/Integer;
    iget-object v6, p0, Lcom/miui/antispam/firewall/KeywordListActivity$1;->this$0:Lcom/miui/antispam/firewall/KeywordListActivity;

    #getter for: Lcom/miui/antispam/firewall/KeywordListActivity;->mListAdapter:Landroid/widget/ResourceCursorAdapter;
    invoke-static {v6}, Lcom/miui/antispam/firewall/KeywordListActivity;->access$000(Lcom/miui/antispam/firewall/KeywordListActivity;)Landroid/widget/ResourceCursorAdapter;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ResourceCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/Cursor;

    .line 71
    .local v3, cursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 72
    .local v0, _id:J
    iget-object v6, p0, Lcom/miui/antispam/firewall/KeywordListActivity$1;->this$0:Lcom/miui/antispam/firewall/KeywordListActivity;

    invoke-virtual {v6}, Lcom/miui/antispam/firewall/KeywordListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/Telephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 77
    .end local v0           #_id:J
    .end local v3           #cursor:Landroid/database/Cursor;
    .end local v5           #pos:Ljava/lang/Integer;
    :cond_0
    iget-object v6, p0, Lcom/miui/antispam/firewall/KeywordListActivity$1;->this$0:Lcom/miui/antispam/firewall/KeywordListActivity;

    #getter for: Lcom/miui/antispam/firewall/KeywordListActivity;->mListView:Landroid/widget/EditableListView;
    invoke-static {v6}, Lcom/miui/antispam/firewall/KeywordListActivity;->access$100(Lcom/miui/antispam/firewall/KeywordListActivity;)Landroid/widget/EditableListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditableListView;->exitEditMode()V

    .line 78
    iget-object v6, p0, Lcom/miui/antispam/firewall/KeywordListActivity$1;->this$0:Lcom/miui/antispam/firewall/KeywordListActivity;

    #calls: Lcom/miui/antispam/firewall/KeywordListActivity;->startQuery()V
    invoke-static {v6}, Lcom/miui/antispam/firewall/KeywordListActivity;->access$200(Lcom/miui/antispam/firewall/KeywordListActivity;)V

    .line 80
    .end local v2           #array:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method
