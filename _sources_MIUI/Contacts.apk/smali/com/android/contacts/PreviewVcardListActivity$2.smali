.class Lcom/android/contacts/PreviewVcardListActivity$2;
.super Ljava/lang/Object;
.source "PreviewVcardListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/PreviewVcardListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/PreviewVcardListActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/PreviewVcardListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/contacts/PreviewVcardListActivity$2;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/contacts/PreviewVcardListActivity$2;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    const v1, 0x7f070017

    invoke-virtual {v0, v1}, Lcom/android/contacts/PreviewVcardListActivity;->showDialog(I)V

    .line 178
    return-void
.end method
