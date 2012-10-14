.class Lcom/android/contacts/ui/CallRecordDeleteButtonBar$1;
.super Ljava/lang/Object;
.source "CallRecordDeleteButtonBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ui/CallRecordDeleteButtonBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ui/CallRecordDeleteButtonBar;


# direct methods
.method constructor <init>(Lcom/android/contacts/ui/CallRecordDeleteButtonBar;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    iput-object p1, p0, Lcom/android/contacts/ui/CallRecordDeleteButtonBar$1;->this$0:Lcom/android/contacts/ui/CallRecordDeleteButtonBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/contacts/ui/CallRecordDeleteButtonBar$1;->this$0:Lcom/android/contacts/ui/CallRecordDeleteButtonBar;

    invoke-virtual {v0}, Lcom/android/contacts/ui/CallRecordDeleteButtonBar;->getCurrCheckState()Landroid/widget/EditableListView$EditableListViewCheckable;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/EditableListView$EditableListViewCheckable;->checkAll()V

    .line 21
    return-void
.end method
