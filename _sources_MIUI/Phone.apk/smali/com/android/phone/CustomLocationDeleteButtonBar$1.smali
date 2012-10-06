.class Lcom/android/phone/CustomLocationDeleteButtonBar$1;
.super Ljava/lang/Object;
.source "CustomLocationDeleteButtonBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CustomLocationDeleteButtonBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CustomLocationDeleteButtonBar;


# direct methods
.method constructor <init>(Lcom/android/phone/CustomLocationDeleteButtonBar;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/phone/CustomLocationDeleteButtonBar$1;->this$0:Lcom/android/phone/CustomLocationDeleteButtonBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/phone/CustomLocationDeleteButtonBar$1;->this$0:Lcom/android/phone/CustomLocationDeleteButtonBar;

    invoke-virtual {v0}, Lcom/android/phone/CustomLocationDeleteButtonBar;->getCurrCheckState()Landroid/widget/EditableListView$EditableListViewCheckable;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/EditableListView$EditableListViewCheckable;->checkAll()V

    .line 50
    return-void
.end method
