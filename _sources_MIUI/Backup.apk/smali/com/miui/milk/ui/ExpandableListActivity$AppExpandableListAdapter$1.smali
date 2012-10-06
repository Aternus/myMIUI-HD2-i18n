.class Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter$1;
.super Ljava/lang/Object;
.source "ExpandableListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;

.field final synthetic val$gPosition:I


# direct methods
.method constructor <init>(Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 403
    iput-object p1, p0, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter$1;->this$1:Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;

    iput p2, p0, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter$1;->val$gPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 406
    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    move-object v1, v0

    .line 407
    .local v1, check:Landroid/widget/CheckBox;
    iget-object v2, p0, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter$1;->this$1:Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;

    iget-object v2, v2, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListActivity;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    iget v4, p0, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter$1;->val$gPosition:I

    #calls: Lcom/miui/milk/ui/ExpandableListActivity;->selectAllChanged(ZI)V
    invoke-static {v2, v3, v4}, Lcom/miui/milk/ui/ExpandableListActivity;->access$300(Lcom/miui/milk/ui/ExpandableListActivity;ZI)V

    .line 408
    return-void
.end method
