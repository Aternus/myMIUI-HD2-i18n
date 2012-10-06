.class Lcom/android/contacts/ui/ContactDeleteButtonBar$3;
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
    .line 101
    iput-object p1, p0, Lcom/android/contacts/ui/ContactDeleteButtonBar$3;->this$0:Lcom/android/contacts/ui/ContactDeleteButtonBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/contacts/ui/ContactDeleteButtonBar$3;->this$0:Lcom/android/contacts/ui/ContactDeleteButtonBar;

    #getter for: Lcom/android/contacts/ui/ContactDeleteButtonBar;->mList:Landroid/widget/EditableListView;
    invoke-static {v0}, Lcom/android/contacts/ui/ContactDeleteButtonBar;->access$000(Lcom/android/contacts/ui/ContactDeleteButtonBar;)Landroid/widget/EditableListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditableListView;->exitEditMode()V

    .line 104
    return-void
.end method
