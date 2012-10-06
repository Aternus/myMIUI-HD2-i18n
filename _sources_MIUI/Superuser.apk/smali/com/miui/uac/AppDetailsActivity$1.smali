.class Lcom/miui/uac/AppDetailsActivity$1;
.super Ljava/lang/Object;
.source "AppDetailsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/uac/AppDetailsActivity;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/uac/AppDetailsActivity;

.field final synthetic val$detailItem:Lcom/miui/uac/AppDetailsActivity$PermissionDetailItem;


# direct methods
.method constructor <init>(Lcom/miui/uac/AppDetailsActivity;Lcom/miui/uac/AppDetailsActivity$PermissionDetailItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/miui/uac/AppDetailsActivity$1;->this$0:Lcom/miui/uac/AppDetailsActivity;

    iput-object p2, p0, Lcom/miui/uac/AppDetailsActivity$1;->val$detailItem:Lcom/miui/uac/AppDetailsActivity$PermissionDetailItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 84
    iget-object v2, p0, Lcom/miui/uac/AppDetailsActivity$1;->this$0:Lcom/miui/uac/AppDetailsActivity;

    #getter for: Lcom/miui/uac/AppDetailsActivity;->mSelectValue:I
    invoke-static {v2}, Lcom/miui/uac/AppDetailsActivity;->access$000(Lcom/miui/uac/AppDetailsActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/uac/AppDetailsActivity$1;->val$detailItem:Lcom/miui/uac/AppDetailsActivity$PermissionDetailItem;

    iget v3, v3, Lcom/miui/uac/AppDetailsActivity$PermissionDetailItem;->mAllowdId:I

    if-eq v2, v3, :cond_6

    .line 85
    iget-object v2, p0, Lcom/miui/uac/AppDetailsActivity$1;->val$detailItem:Lcom/miui/uac/AppDetailsActivity$PermissionDetailItem;

    iget-object v2, v2, Lcom/miui/uac/AppDetailsActivity$PermissionDetailItem;->mPermission:Ljava/lang/String;

    const-string v3, "android.permission.superuser.ROOT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 86
    iget-object v2, p0, Lcom/miui/uac/AppDetailsActivity$1;->this$0:Lcom/miui/uac/AppDetailsActivity;

    #getter for: Lcom/miui/uac/AppDetailsActivity;->mSelectValue:I
    invoke-static {v2}, Lcom/miui/uac/AppDetailsActivity;->access$000(Lcom/miui/uac/AppDetailsActivity;)I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 87
    iget-object v2, p0, Lcom/miui/uac/AppDetailsActivity$1;->val$detailItem:Lcom/miui/uac/AppDetailsActivity$PermissionDetailItem;

    iget-object v2, v2, Lcom/miui/uac/AppDetailsActivity$PermissionDetailItem;->mPermission:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/uac/AppDetailsActivity$1;->this$0:Lcom/miui/uac/AppDetailsActivity;

    #getter for: Lcom/miui/uac/AppDetailsActivity;->mPackagename:Ljava/lang/String;
    invoke-static {v3}, Lcom/miui/uac/AppDetailsActivity;->access$100(Lcom/miui/uac/AppDetailsActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/uac/Util;->removeComfirmedBehaviors(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/miui/uac/AppDetailsActivity$1;->this$0:Lcom/miui/uac/AppDetailsActivity;

    #getter for: Lcom/miui/uac/AppDetailsActivity;->mPermissionNum:I
    invoke-static {v2}, Lcom/miui/uac/AppDetailsActivity;->access$200(Lcom/miui/uac/AppDetailsActivity;)I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 102
    iget-object v2, p0, Lcom/miui/uac/AppDetailsActivity$1;->this$0:Lcom/miui/uac/AppDetailsActivity;

    #getter for: Lcom/miui/uac/AppDetailsActivity;->mPermissionDetailList:Ljava/util/List;
    invoke-static {v2}, Lcom/miui/uac/AppDetailsActivity;->access$300(Lcom/miui/uac/AppDetailsActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/uac/AppDetailsActivity$PermissionDetailItem;

    iget-object v2, v2, Lcom/miui/uac/AppDetailsActivity$PermissionDetailItem;->mPermission:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/uac/AppDetailsActivity$1;->val$detailItem:Lcom/miui/uac/AppDetailsActivity$PermissionDetailItem;

    iget-object v3, v3, Lcom/miui/uac/AppDetailsActivity$PermissionDetailItem;->mPermission:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    iget-object v2, p0, Lcom/miui/uac/AppDetailsActivity$1;->this$0:Lcom/miui/uac/AppDetailsActivity;

    #getter for: Lcom/miui/uac/AppDetailsActivity;->mPermissionDetailList:Ljava/util/List;
    invoke-static {v2}, Lcom/miui/uac/AppDetailsActivity;->access$300(Lcom/miui/uac/AppDetailsActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/uac/AppDetailsActivity$PermissionDetailItem;

    iget-object v3, p0, Lcom/miui/uac/AppDetailsActivity$1;->this$0:Lcom/miui/uac/AppDetailsActivity;

    #getter for: Lcom/miui/uac/AppDetailsActivity;->mSelectValue:I
    invoke-static {v3}, Lcom/miui/uac/AppDetailsActivity;->access$000(Lcom/miui/uac/AppDetailsActivity;)I

    move-result v3

    iput v3, v2, Lcom/miui/uac/AppDetailsActivity$PermissionDetailItem;->mAllowdId:I

    .line 101
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 89
    .end local v1           #i:I
    :cond_1
    iget-object v2, p0, Lcom/miui/uac/AppDetailsActivity$1;->val$detailItem:Lcom/miui/uac/AppDetailsActivity$PermissionDetailItem;

    iget-object v2, v2, Lcom/miui/uac/AppDetailsActivity$PermissionDetailItem;->mPermission:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/uac/AppDetailsActivity$1;->this$0:Lcom/miui/uac/AppDetailsActivity;

    #getter for: Lcom/miui/uac/AppDetailsActivity;->mPackagename:Ljava/lang/String;
    invoke-static {v3}, Lcom/miui/uac/AppDetailsActivity;->access$100(Lcom/miui/uac/AppDetailsActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/uac/AppDetailsActivity$1;->this$0:Lcom/miui/uac/AppDetailsActivity;

    #getter for: Lcom/miui/uac/AppDetailsActivity;->mSelectValue:I
    invoke-static {v4}, Lcom/miui/uac/AppDetailsActivity;->access$000(Lcom/miui/uac/AppDetailsActivity;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/miui/uac/Util;->putConfirmedBehaviors(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 92
    :cond_2
    new-instance v0, Lcom/miui/uac/DBHelper;

    iget-object v2, p0, Lcom/miui/uac/AppDetailsActivity$1;->this$0:Lcom/miui/uac/AppDetailsActivity;

    invoke-direct {v0, v2}, Lcom/miui/uac/DBHelper;-><init>(Landroid/content/Context;)V

    .line 93
    .local v0, dbHelper:Lcom/miui/uac/DBHelper;
    iget-object v2, p0, Lcom/miui/uac/AppDetailsActivity$1;->this$0:Lcom/miui/uac/AppDetailsActivity;

    #getter for: Lcom/miui/uac/AppDetailsActivity;->mSelectValue:I
    invoke-static {v2}, Lcom/miui/uac/AppDetailsActivity;->access$000(Lcom/miui/uac/AppDetailsActivity;)I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 94
    iget-object v2, p0, Lcom/miui/uac/AppDetailsActivity$1;->this$0:Lcom/miui/uac/AppDetailsActivity;

    #getter for: Lcom/miui/uac/AppDetailsActivity;->mPackagename:Ljava/lang/String;
    invoke-static {v2}, Lcom/miui/uac/AppDetailsActivity;->access$100(Lcom/miui/uac/AppDetailsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/uac/DBHelper;->deleteByPackageName(Ljava/lang/String;)V

    .line 95
    iget-object v2, p0, Lcom/miui/uac/AppDetailsActivity$1;->this$0:Lcom/miui/uac/AppDetailsActivity;

    invoke-virtual {v2}, Lcom/miui/uac/AppDetailsActivity;->finish()V

    .line 99
    :goto_2
    invoke-virtual {v0}, Lcom/miui/uac/DBHelper;->close()V

    goto :goto_0

    .line 97
    :cond_3
    iget-object v2, p0, Lcom/miui/uac/AppDetailsActivity$1;->this$0:Lcom/miui/uac/AppDetailsActivity;

    #getter for: Lcom/miui/uac/AppDetailsActivity;->mPackagename:Ljava/lang/String;
    invoke-static {v2}, Lcom/miui/uac/AppDetailsActivity;->access$100(Lcom/miui/uac/AppDetailsActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/uac/AppDetailsActivity$1;->this$0:Lcom/miui/uac/AppDetailsActivity;

    #getter for: Lcom/miui/uac/AppDetailsActivity;->mSelectValue:I
    invoke-static {v3}, Lcom/miui/uac/AppDetailsActivity;->access$000(Lcom/miui/uac/AppDetailsActivity;)I

    move-result v3

    if-ne v3, v4, :cond_4

    move v3, v4

    :goto_3
    invoke-virtual {v0, v2, v3}, Lcom/miui/uac/DBHelper;->changeState(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    .line 107
    .end local v0           #dbHelper:Lcom/miui/uac/DBHelper;
    .restart local v1       #i:I
    :cond_5
    iget-object v2, p0, Lcom/miui/uac/AppDetailsActivity$1;->this$0:Lcom/miui/uac/AppDetailsActivity;

    #getter for: Lcom/miui/uac/AppDetailsActivity;->mAdapter:Lcom/miui/uac/AppDetailsActivity$PermissionDetailAdapter;
    invoke-static {v2}, Lcom/miui/uac/AppDetailsActivity;->access$400(Lcom/miui/uac/AppDetailsActivity;)Lcom/miui/uac/AppDetailsActivity$PermissionDetailAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/uac/AppDetailsActivity$PermissionDetailAdapter;->notifyDataSetChanged()V

    .line 109
    .end local v1           #i:I
    :cond_6
    return-void
.end method
