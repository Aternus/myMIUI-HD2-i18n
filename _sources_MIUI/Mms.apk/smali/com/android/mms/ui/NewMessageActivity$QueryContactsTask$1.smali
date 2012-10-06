.class Lcom/android/mms/ui/NewMessageActivity$QueryContactsTask$1;
.super Ljava/lang/Object;
.source "NewMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/NewMessageActivity$QueryContactsTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/NewMessageActivity$QueryContactsTask;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/NewMessageActivity$QueryContactsTask;)V
    .locals 0
    .parameter

    .prologue
    .line 952
    iput-object p1, p0, Lcom/android/mms/ui/NewMessageActivity$QueryContactsTask$1;->this$1:Lcom/android/mms/ui/NewMessageActivity$QueryContactsTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 955
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity$QueryContactsTask$1;->this$1:Lcom/android/mms/ui/NewMessageActivity$QueryContactsTask;

    #getter for: Lcom/android/mms/ui/NewMessageActivity$QueryContactsTask;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/NewMessageActivity$QueryContactsTask;->access$2500(Lcom/android/mms/ui/NewMessageActivity$QueryContactsTask;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->delayShow()V

    .line 956
    return-void
.end method
