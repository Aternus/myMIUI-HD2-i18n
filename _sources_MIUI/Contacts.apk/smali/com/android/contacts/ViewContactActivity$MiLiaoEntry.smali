.class Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;
.super Ljava/lang/Object;
.source "ViewContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ViewContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MiLiaoEntry"
.end annotation


# instance fields
.field public account:Ljava/lang/String;

.field public isOnline:Z

.field public name:Ljava/lang/String;

.field public number:Ljava/lang/String;

.field public onlineStatus:Ljava/lang/String;

.field public signature:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/contacts/ViewContactActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/ViewContactActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;->this$0:Lcom/android/contacts/ViewContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/ViewContactActivity;Lcom/android/contacts/ViewContactActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 285
    invoke-direct {p0, p1}, Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;-><init>(Lcom/android/contacts/ViewContactActivity;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v4, 0x0

    .line 295
    instance-of v2, p1, Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;

    if-nez v2, :cond_0

    move v2, v4

    .line 301
    :goto_0
    return v2

    .line 299
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;

    move-object v1, v0

    .line 301
    .local v1, entry:Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;
    iget-object v2, p0, Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;->account:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;->account:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;->number:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;->number:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;->name:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_0
.end method
