.class Lcom/android/browser/model/ReadingModePageDataProvider$1;
.super Ljava/lang/Object;
.source "ReadingModePageDataProvider.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/model/ReadingModePageDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/model/ReadingModePageDataProvider;


# direct methods
.method constructor <init>(Lcom/android/browser/model/ReadingModePageDataProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/browser/model/ReadingModePageDataProvider$1;->this$0:Lcom/android/browser/model/ReadingModePageDataProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 45
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 50
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 47
    :pswitch_0
    iget-object v0, p0, Lcom/android/browser/model/ReadingModePageDataProvider$1;->this$0:Lcom/android/browser/model/ReadingModePageDataProvider;

    #calls: Lcom/android/browser/model/ReadingModePageDataProvider;->executeQuery()V
    invoke-static {v0}, Lcom/android/browser/model/ReadingModePageDataProvider;->access$000(Lcom/android/browser/model/ReadingModePageDataProvider;)V

    .line 48
    const/4 v0, 0x1

    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
