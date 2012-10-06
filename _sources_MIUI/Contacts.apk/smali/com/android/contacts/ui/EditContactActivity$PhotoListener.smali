.class Lcom/android/contacts/ui/EditContactActivity$PhotoListener;
.super Ljava/lang/Object;
.source "EditContactActivity.java"

# interfaces
.implements Lcom/android/contacts/model/Editor$EditorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ui/EditContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoListener"
.end annotation


# instance fields
.field private mRawContactId:J

.field private mReadOnly:Z

.field final synthetic this$0:Lcom/android/contacts/ui/EditContactActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/ui/EditContactActivity;JZLcom/android/contacts/ui/widget/PhotoEditorView;)V
    .locals 0
    .parameter
    .parameter "rawContactId"
    .parameter "readOnly"
    .parameter "editor"

    .prologue
    .line 697
    iput-object p1, p0, Lcom/android/contacts/ui/EditContactActivity$PhotoListener;->this$0:Lcom/android/contacts/ui/EditContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 698
    iput-wide p2, p0, Lcom/android/contacts/ui/EditContactActivity$PhotoListener;->mRawContactId:J

    .line 699
    iput-boolean p4, p0, Lcom/android/contacts/ui/EditContactActivity$PhotoListener;->mReadOnly:Z

    .line 700
    return-void
.end method


# virtual methods
.method public onDeleted(Lcom/android/contacts/model/Editor;)V
    .locals 0
    .parameter "editor"

    .prologue
    .line 704
    return-void
.end method

.method public onRequest(I)V
    .locals 3
    .parameter "request"

    .prologue
    .line 707
    iget-object v0, p0, Lcom/android/contacts/ui/EditContactActivity$PhotoListener;->this$0:Lcom/android/contacts/ui/EditContactActivity;

    invoke-virtual {v0}, Lcom/android/contacts/ui/EditContactActivity;->hasValidState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 709
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 710
    iget-boolean v0, p0, Lcom/android/contacts/ui/EditContactActivity$PhotoListener;->mReadOnly:Z

    if-nez v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/android/contacts/ui/EditContactActivity$PhotoListener;->this$0:Lcom/android/contacts/ui/EditContactActivity;

    iget-wide v1, p0, Lcom/android/contacts/ui/EditContactActivity$PhotoListener;->mRawContactId:J

    #calls: Lcom/android/contacts/ui/EditContactActivity;->doPickPhotoAction(J)V
    invoke-static {v0, v1, v2}, Lcom/android/contacts/ui/EditContactActivity;->access$700(Lcom/android/contacts/ui/EditContactActivity;J)V

    goto :goto_0
.end method
