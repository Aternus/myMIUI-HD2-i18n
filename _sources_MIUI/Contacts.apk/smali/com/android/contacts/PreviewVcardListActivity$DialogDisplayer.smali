.class Lcom/android/contacts/PreviewVcardListActivity$DialogDisplayer;
.super Ljava/lang/Object;
.source "PreviewVcardListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/PreviewVcardListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogDisplayer"
.end annotation


# instance fields
.field private final mResId:I

.field final synthetic this$0:Lcom/android/contacts/PreviewVcardListActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/PreviewVcardListActivity;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "errorMessage"

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/contacts/PreviewVcardListActivity$DialogDisplayer;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    const v0, 0x7f070015

    iput v0, p0, Lcom/android/contacts/PreviewVcardListActivity$DialogDisplayer;->mResId:I

    .line 235
    #setter for: Lcom/android/contacts/PreviewVcardListActivity;->mErrorMessage:Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/android/contacts/PreviewVcardListActivity;->access$202(Lcom/android/contacts/PreviewVcardListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 236
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/contacts/PreviewVcardListActivity$DialogDisplayer;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    iget v1, p0, Lcom/android/contacts/PreviewVcardListActivity$DialogDisplayer;->mResId:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/PreviewVcardListActivity;->showDialog(I)V

    .line 240
    return-void
.end method
