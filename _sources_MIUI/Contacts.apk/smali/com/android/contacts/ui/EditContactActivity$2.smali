.class Lcom/android/contacts/ui/EditContactActivity$2;
.super Ljava/lang/Object;
.source "EditContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/ui/EditContactActivity;->onSaveCompleted(ZILandroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ui/EditContactActivity;

.field final synthetic val$contactLookupUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/contacts/ui/EditContactActivity;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1259
    iput-object p1, p0, Lcom/android/contacts/ui/EditContactActivity$2;->this$0:Lcom/android/contacts/ui/EditContactActivity;

    iput-object p2, p0, Lcom/android/contacts/ui/EditContactActivity$2;->val$contactLookupUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/android/contacts/ui/EditContactActivity$2;->this$0:Lcom/android/contacts/ui/EditContactActivity;

    iget-object v1, p0, Lcom/android/contacts/ui/EditContactActivity$2;->val$contactLookupUri:Landroid/net/Uri;

    #calls: Lcom/android/contacts/ui/EditContactActivity;->updateMmsThreadContactInfo(Landroid/net/Uri;)V
    invoke-static {v0, v1}, Lcom/android/contacts/ui/EditContactActivity;->access$1200(Lcom/android/contacts/ui/EditContactActivity;Landroid/net/Uri;)V

    .line 1262
    iget-object v0, p0, Lcom/android/contacts/ui/EditContactActivity$2;->this$0:Lcom/android/contacts/ui/EditContactActivity;

    #getter for: Lcom/android/contacts/ui/EditContactActivity;->isInsert:Z
    invoke-static {v0}, Lcom/android/contacts/ui/EditContactActivity;->access$1300(Lcom/android/contacts/ui/EditContactActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1263
    iget-object v0, p0, Lcom/android/contacts/ui/EditContactActivity$2;->this$0:Lcom/android/contacts/ui/EditContactActivity;

    iget-object v1, p0, Lcom/android/contacts/ui/EditContactActivity$2;->val$contactLookupUri:Landroid/net/Uri;

    #calls: Lcom/android/contacts/ui/EditContactActivity;->updateCallLogs(Landroid/net/Uri;)V
    invoke-static {v0, v1}, Lcom/android/contacts/ui/EditContactActivity;->access$1400(Lcom/android/contacts/ui/EditContactActivity;Landroid/net/Uri;)V

    .line 1265
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ui/EditContactActivity$2;->this$0:Lcom/android/contacts/ui/EditContactActivity;

    iget-object v1, p0, Lcom/android/contacts/ui/EditContactActivity$2;->val$contactLookupUri:Landroid/net/Uri;

    #calls: Lcom/android/contacts/ui/EditContactActivity;->updateRingtone(Landroid/net/Uri;)V
    invoke-static {v0, v1}, Lcom/android/contacts/ui/EditContactActivity;->access$1500(Lcom/android/contacts/ui/EditContactActivity;Landroid/net/Uri;)V

    .line 1266
    iget-object v0, p0, Lcom/android/contacts/ui/EditContactActivity$2;->this$0:Lcom/android/contacts/ui/EditContactActivity;

    iget-object v1, p0, Lcom/android/contacts/ui/EditContactActivity$2;->val$contactLookupUri:Landroid/net/Uri;

    #calls: Lcom/android/contacts/ui/EditContactActivity;->saveCallIncomingPhoto(Landroid/net/Uri;)V
    invoke-static {v0, v1}, Lcom/android/contacts/ui/EditContactActivity;->access$1600(Lcom/android/contacts/ui/EditContactActivity;Landroid/net/Uri;)V

    .line 1267
    return-void
.end method
