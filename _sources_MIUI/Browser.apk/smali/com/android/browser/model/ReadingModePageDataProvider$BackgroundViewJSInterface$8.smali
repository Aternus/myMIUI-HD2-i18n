.class Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface$8;
.super Ljava/lang/Object;
.source "ReadingModePageDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface;->setNextLinkUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface;

.field final synthetic val$nextUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface$8;->this$1:Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface;

    iput-object p2, p0, Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface$8;->val$nextUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface$8;->this$1:Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface;

    iget-object v0, v0, Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface;->this$0:Lcom/android/browser/model/ReadingModePageDataProvider;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface$8;->val$nextUrl:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #setter for: Lcom/android/browser/model/ReadingModePageDataProvider;->mNextUrl:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/browser/model/ReadingModePageDataProvider;->access$1002(Lcom/android/browser/model/ReadingModePageDataProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 347
    iget-object v0, p0, Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface$8;->this$1:Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface;

    iget-object v0, v0, Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface;->this$0:Lcom/android/browser/model/ReadingModePageDataProvider;

    #calls: Lcom/android/browser/model/ReadingModePageDataProvider;->onTaskComplete()V
    invoke-static {v0}, Lcom/android/browser/model/ReadingModePageDataProvider;->access$400(Lcom/android/browser/model/ReadingModePageDataProvider;)V

    .line 348
    return-void
.end method
