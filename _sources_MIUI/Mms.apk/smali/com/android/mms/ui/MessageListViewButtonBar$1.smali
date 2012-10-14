.class Lcom/android/mms/ui/MessageListViewButtonBar$1;
.super Ljava/lang/Object;
.source "MessageListViewButtonBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListViewButtonBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListViewButtonBar;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListViewButtonBar;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    iput-object p1, p0, Lcom/android/mms/ui/MessageListViewButtonBar$1;->this$0:Lcom/android/mms/ui/MessageListViewButtonBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/mms/ui/MessageListViewButtonBar$1;->this$0:Lcom/android/mms/ui/MessageListViewButtonBar;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListViewButtonBar;->getCurrCheckState()Landroid/widget/EditableListView$EditableListViewCheckable;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/EditableListView$EditableListViewCheckable;->checkAll()V

    .line 21
    return-void
.end method
