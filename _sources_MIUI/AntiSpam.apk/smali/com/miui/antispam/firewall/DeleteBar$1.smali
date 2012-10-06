.class Lcom/miui/antispam/firewall/DeleteBar$1;
.super Ljava/lang/Object;
.source "DeleteBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antispam/firewall/DeleteBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/antispam/firewall/DeleteBar;


# direct methods
.method constructor <init>(Lcom/miui/antispam/firewall/DeleteBar;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/miui/antispam/firewall/DeleteBar$1;->this$0:Lcom/miui/antispam/firewall/DeleteBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/antispam/firewall/DeleteBar$1;->this$0:Lcom/miui/antispam/firewall/DeleteBar;

    invoke-virtual {v0}, Lcom/miui/antispam/firewall/DeleteBar;->getCurrCheckState()Landroid/widget/EditableListView$EditableListViewCheckable;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/EditableListView$EditableListViewCheckable;->isAllChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/miui/antispam/firewall/DeleteBar$1;->this$0:Lcom/miui/antispam/firewall/DeleteBar;

    invoke-virtual {v0}, Lcom/miui/antispam/firewall/DeleteBar;->getCurrCheckState()Landroid/widget/EditableListView$EditableListViewCheckable;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/EditableListView$EditableListViewCheckable;->checkAll()V

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/firewall/DeleteBar$1;->this$0:Lcom/miui/antispam/firewall/DeleteBar;

    invoke-virtual {v0}, Lcom/miui/antispam/firewall/DeleteBar;->getCurrCheckState()Landroid/widget/EditableListView$EditableListViewCheckable;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/EditableListView$EditableListViewCheckable;->checkNothing()V

    goto :goto_0
.end method
