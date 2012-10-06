.class Lcom/android/contacts/NickNameEditActivity$1;
.super Ljava/lang/Object;
.source "NickNameEditActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/NickNameEditActivity;->initResourceRefs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/NickNameEditActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/NickNameEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/contacts/NickNameEditActivity$1;->this$0:Lcom/android/contacts/NickNameEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/contacts/NickNameEditActivity$1;->this$0:Lcom/android/contacts/NickNameEditActivity;

    #getter for: Lcom/android/contacts/NickNameEditActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/contacts/NickNameEditActivity;->access$000(Lcom/android/contacts/NickNameEditActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearFocus()V

    .line 79
    iget-object v0, p0, Lcom/android/contacts/NickNameEditActivity$1;->this$0:Lcom/android/contacts/NickNameEditActivity;

    #calls: Lcom/android/contacts/NickNameEditActivity;->hideSoftInput()V
    invoke-static {v0}, Lcom/android/contacts/NickNameEditActivity;->access$100(Lcom/android/contacts/NickNameEditActivity;)V

    .line 80
    const/4 v0, 0x0

    return v0
.end method
