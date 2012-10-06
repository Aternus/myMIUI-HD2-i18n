.class Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread$2;
.super Ljava/lang/Object;
.source "PreviewVcardListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;


# direct methods
.method constructor <init>(Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;)V
    .locals 0
    .parameter

    .prologue
    .line 375
    iput-object p1, p0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread$2;->this$1:Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread$2;->this$1:Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    #calls: Lcom/android/contacts/PreviewVcardListActivity;->showImportSuccessToast()V
    invoke-static {v0}, Lcom/android/contacts/PreviewVcardListActivity;->access$1100(Lcom/android/contacts/PreviewVcardListActivity;)V

    .line 378
    return-void
.end method
