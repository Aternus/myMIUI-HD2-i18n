.class Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$5;
.super Ljava/lang/Object;
.source "ForumDataDetectorShell.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;->onForumsDetected(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;

.field final synthetic val$forumsString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$5;->this$1:Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;

    iput-object p2, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$5;->val$forumsString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 296
    iget-object v6, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$5;->val$forumsString:Ljava/lang/String;

    const-string v7, "=Forum="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 297
    .local v2, forums:[Ljava/lang/String;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    .line 298
    .local v5, oneForum:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 297
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 300
    :cond_0
    const-string v6, "\'"

    const-string v7, "\\\\\'"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 301
    const-string v6, "=Field="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, fields:[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$5;->this$1:Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;

    iget-object v6, v6, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;->this$0:Lcom/android/browser/controller/ForumDataDetectorShell;

    #getter for: Lcom/android/browser/controller/ForumDataDetectorShell;->mController:Lcom/android/browser/controller/ForumController;
    invoke-static {v6}, Lcom/android/browser/controller/ForumDataDetectorShell;->access$100(Lcom/android/browser/controller/ForumDataDetectorShell;)Lcom/android/browser/controller/ForumController;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, v1, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v1, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v9, v1, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    aget-object v10, v1, v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/browser/controller/ForumController;->insertNewForum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 305
    .end local v1           #fields:[Ljava/lang/String;
    .end local v5           #oneForum:Ljava/lang/String;
    :cond_1
    return-void
.end method
