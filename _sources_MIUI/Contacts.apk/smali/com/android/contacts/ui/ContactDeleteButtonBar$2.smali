.class Lcom/android/contacts/ui/ContactDeleteButtonBar$2;
.super Ljava/lang/Object;
.source "ContactDeleteButtonBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ui/ContactDeleteButtonBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ui/ContactDeleteButtonBar;


# direct methods
.method constructor <init>(Lcom/android/contacts/ui/ContactDeleteButtonBar;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/contacts/ui/ContactDeleteButtonBar$2;->this$0:Lcom/android/contacts/ui/ContactDeleteButtonBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/contacts/ui/ContactDeleteButtonBar$2;->this$0:Lcom/android/contacts/ui/ContactDeleteButtonBar;

    invoke-virtual {v0}, Lcom/android/contacts/ui/ContactDeleteButtonBar;->getCurrCheckState()Landroid/widget/EditableListView$EditableListViewCheckable;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/EditableListView$EditableListViewCheckable;->checkNothing()V

    .line 98
    return-void
.end method
