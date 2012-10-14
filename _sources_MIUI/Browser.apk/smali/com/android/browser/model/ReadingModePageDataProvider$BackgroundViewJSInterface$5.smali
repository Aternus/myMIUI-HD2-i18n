.class Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface$5;
.super Ljava/lang/Object;
.source "ReadingModePageDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface;->setCommentsHTML(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface;

.field final synthetic val$commentsHTML:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface$5;->this$1:Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface;

    iput-object p2, p0, Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface$5;->val$commentsHTML:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface$5;->this$1:Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface;

    iget-object v0, v0, Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface;->this$0:Lcom/android/browser/model/ReadingModePageDataProvider;

    iget-object v1, p0, Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface$5;->val$commentsHTML:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/browser/util/JavaScriptUtils;->preprocessJSParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/browser/model/ReadingModePageDataProvider;->mComments:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/browser/model/ReadingModePageDataProvider;->access$702(Lcom/android/browser/model/ReadingModePageDataProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 313
    iget-object v0, p0, Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface$5;->this$1:Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface;

    iget-object v0, v0, Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface;->this$0:Lcom/android/browser/model/ReadingModePageDataProvider;

    #calls: Lcom/android/browser/model/ReadingModePageDataProvider;->onTaskComplete()V
    invoke-static {v0}, Lcom/android/browser/model/ReadingModePageDataProvider;->access$400(Lcom/android/browser/model/ReadingModePageDataProvider;)V

    .line 314
    return-void
.end method
