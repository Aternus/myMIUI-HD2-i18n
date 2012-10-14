.class Lcom/android/phone/CustomLocationActivity$2$1$1$1;
.super Ljava/lang/Object;
.source "CustomLocationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CustomLocationActivity$2$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/android/phone/CustomLocationActivity$2$1$1;


# direct methods
.method constructor <init>(Lcom/android/phone/CustomLocationActivity$2$1$1;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/phone/CustomLocationActivity$2$1$1$1;->this$3:Lcom/android/phone/CustomLocationActivity$2$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/phone/CustomLocationActivity$2$1$1$1;->this$3:Lcom/android/phone/CustomLocationActivity$2$1$1;

    iget-object v0, v0, Lcom/android/phone/CustomLocationActivity$2$1$1;->this$2:Lcom/android/phone/CustomLocationActivity$2$1;

    iget-object v0, v0, Lcom/android/phone/CustomLocationActivity$2$1;->this$1:Lcom/android/phone/CustomLocationActivity$2;

    iget-object v0, v0, Lcom/android/phone/CustomLocationActivity$2;->this$0:Lcom/android/phone/CustomLocationActivity;

    #getter for: Lcom/android/phone/CustomLocationActivity;->mList:Landroid/widget/EditableListView;
    invoke-static {v0}, Lcom/android/phone/CustomLocationActivity;->access$000(Lcom/android/phone/CustomLocationActivity;)Landroid/widget/EditableListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditableListView;->exitEditMode()V

    .line 101
    return-void
.end method
