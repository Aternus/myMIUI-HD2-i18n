.class Lcom/android/browser/controller/SuggestionAdapter$OnlineDelayLoadSuggestionHandler;
.super Landroid/os/Handler;
.source "SuggestionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/controller/SuggestionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnlineDelayLoadSuggestionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/controller/SuggestionAdapter;


# direct methods
.method private constructor <init>(Lcom/android/browser/controller/SuggestionAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/browser/controller/SuggestionAdapter$OnlineDelayLoadSuggestionHandler;->this$0:Lcom/android/browser/controller/SuggestionAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/controller/SuggestionAdapter;Lcom/android/browser/controller/SuggestionAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/browser/controller/SuggestionAdapter$OnlineDelayLoadSuggestionHandler;-><init>(Lcom/android/browser/controller/SuggestionAdapter;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 53
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 93
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 94
    return-void

    .line 55
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "constraint"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, constraint:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "mode"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 58
    .local v2, mode:I
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 60
    iget-object v3, p0, Lcom/android/browser/controller/SuggestionAdapter$OnlineDelayLoadSuggestionHandler;->this$0:Lcom/android/browser/controller/SuggestionAdapter;

    #getter for: Lcom/android/browser/controller/SuggestionAdapter;->mTitleView:Lcom/android/browser/ui/TitleView;
    invoke-static {v3}, Lcom/android/browser/controller/SuggestionAdapter;->access$000(Lcom/android/browser/controller/SuggestionAdapter;)Lcom/android/browser/ui/TitleView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/browser/ui/TitleView;->getMode()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 62
    iget-object v3, p0, Lcom/android/browser/controller/SuggestionAdapter$OnlineDelayLoadSuggestionHandler;->this$0:Lcom/android/browser/controller/SuggestionAdapter;

    #getter for: Lcom/android/browser/controller/SuggestionAdapter;->mAutoCompleteTextView:Lcom/android/browser/ui/MiRenAutoCompleteTextView;
    invoke-static {v3}, Lcom/android/browser/controller/SuggestionAdapter;->access$100(Lcom/android/browser/controller/SuggestionAdapter;)Lcom/android/browser/ui/MiRenAutoCompleteTextView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/browser/ui/MiRenAutoCompleteTextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 65
    iget-object v3, p0, Lcom/android/browser/controller/SuggestionAdapter$OnlineDelayLoadSuggestionHandler;->this$0:Lcom/android/browser/controller/SuggestionAdapter;

    #getter for: Lcom/android/browser/controller/SuggestionAdapter;->mAutoCompleteTextView:Lcom/android/browser/ui/MiRenAutoCompleteTextView;
    invoke-static {v3}, Lcom/android/browser/controller/SuggestionAdapter;->access$100(Lcom/android/browser/controller/SuggestionAdapter;)Lcom/android/browser/ui/MiRenAutoCompleteTextView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/browser/ui/MiRenAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, currentQuery:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 69
    iget-object v3, p0, Lcom/android/browser/controller/SuggestionAdapter$OnlineDelayLoadSuggestionHandler;->this$0:Lcom/android/browser/controller/SuggestionAdapter;

    #calls: Lcom/android/browser/controller/SuggestionAdapter;->stopOnlineLoadingAsyncTask()V
    invoke-static {v3}, Lcom/android/browser/controller/SuggestionAdapter;->access$200(Lcom/android/browser/controller/SuggestionAdapter;)V

    .line 70
    iget-object v3, p0, Lcom/android/browser/controller/SuggestionAdapter$OnlineDelayLoadSuggestionHandler;->this$0:Lcom/android/browser/controller/SuggestionAdapter;

    new-instance v4, Lcom/android/browser/controller/SuggestionAdapter$OnlineDelayLoadSuggestionHandler$1;

    invoke-direct {v4, p0, v1}, Lcom/android/browser/controller/SuggestionAdapter$OnlineDelayLoadSuggestionHandler$1;-><init>(Lcom/android/browser/controller/SuggestionAdapter$OnlineDelayLoadSuggestionHandler;Ljava/lang/String;)V

    #calls: Lcom/android/browser/controller/SuggestionAdapter;->assignAndExecuteNewAsyncTask(Landroid/os/AsyncTask;)V
    invoke-static {v3, v4}, Lcom/android/browser/controller/SuggestionAdapter;->access$300(Lcom/android/browser/controller/SuggestionAdapter;Landroid/os/AsyncTask;)V

    goto :goto_0

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
