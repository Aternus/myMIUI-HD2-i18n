.class Lcom/android/mms/ui/NewMessagePopupActivity$MessageEntry;
.super Ljava/lang/Object;
.source "NewMessagePopupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/NewMessagePopupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageEntry"
.end annotation


# instance fields
.field public body:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/ui/NewMessagePopupActivity;

.field public time:J

.field public uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/NewMessagePopupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/mms/ui/NewMessagePopupActivity$MessageEntry;->this$0:Lcom/android/mms/ui/NewMessagePopupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 76
    instance-of v1, p1, Lcom/android/mms/ui/NewMessagePopupActivity$MessageEntry;

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/android/mms/ui/NewMessagePopupActivity$MessageEntry;->uri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/mms/ui/NewMessagePopupActivity$MessageEntry;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/mms/ui/NewMessagePopupActivity$MessageEntry;->uri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/android/mms/ui/NewMessagePopupActivity$MessageEntry;->uri:Landroid/net/Uri;

    check-cast p1, Lcom/android/mms/ui/NewMessagePopupActivity$MessageEntry;

    .end local p1
    iget-object v2, p1, Lcom/android/mms/ui/NewMessagePopupActivity$MessageEntry;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 81
    :goto_0
    return v1

    .restart local p1
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
