.class Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface$1;
.super Ljava/lang/Object;
.source "ReadingModePageDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface;->contentPathNotFound(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface;


# direct methods
.method constructor <init>(Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface;)V
    .locals 0
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface$1;->this$1:Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface$1;->this$1:Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface;

    iget-object v0, v0, Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface;->this$0:Lcom/android/browser/model/ReadingModePageDataProvider;

    #calls: Lcom/android/browser/model/ReadingModePageDataProvider;->tryNextContentPath()V
    invoke-static {v0}, Lcom/android/browser/model/ReadingModePageDataProvider;->access$300(Lcom/android/browser/model/ReadingModePageDataProvider;)V

    .line 267
    iget-object v0, p0, Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface$1;->this$1:Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface;

    iget-object v0, v0, Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface;->this$0:Lcom/android/browser/model/ReadingModePageDataProvider;

    #calls: Lcom/android/browser/model/ReadingModePageDataProvider;->onTaskComplete()V
    invoke-static {v0}, Lcom/android/browser/model/ReadingModePageDataProvider;->access$400(Lcom/android/browser/model/ReadingModePageDataProvider;)V

    .line 268
    return-void
.end method
