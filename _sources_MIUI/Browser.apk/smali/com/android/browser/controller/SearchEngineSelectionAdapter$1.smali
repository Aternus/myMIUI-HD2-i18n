.class Lcom/android/browser/controller/SearchEngineSelectionAdapter$1;
.super Ljava/lang/Object;
.source "SearchEngineSelectionAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/controller/SearchEngineSelectionAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/controller/SearchEngineSelectionAdapter;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/android/browser/controller/SearchEngineSelectionAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/browser/controller/SearchEngineSelectionAdapter$1;->this$0:Lcom/android/browser/controller/SearchEngineSelectionAdapter;

    iput p2, p0, Lcom/android/browser/controller/SearchEngineSelectionAdapter$1;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 128
    iget v0, p0, Lcom/android/browser/controller/SearchEngineSelectionAdapter$1;->val$pos:I

    sget v1, Lcom/android/browser/controller/SearchEngineSelectionAdapter;->POSITION_BAIDU:I

    if-ne v0, v1, :cond_0

    .line 129
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/controller/SearchEngineSelectionAdapter$1;->this$0:Lcom/android/browser/controller/SearchEngineSelectionAdapter;

    #getter for: Lcom/android/browser/controller/SearchEngineSelectionAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/browser/controller/SearchEngineSelectionAdapter;->access$000(Lcom/android/browser/controller/SearchEngineSelectionAdapter;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/controller/BrowserSettings;->setDefaultSearchEngine(Landroid/content/Context;I)V

    .line 137
    :goto_0
    iget-object v0, p0, Lcom/android/browser/controller/SearchEngineSelectionAdapter$1;->this$0:Lcom/android/browser/controller/SearchEngineSelectionAdapter;

    invoke-virtual {v0}, Lcom/android/browser/controller/SearchEngineSelectionAdapter;->notifyDataSetChanged()V

    .line 138
    return-void

    .line 130
    :cond_0
    iget v0, p0, Lcom/android/browser/controller/SearchEngineSelectionAdapter$1;->val$pos:I

    sget v1, Lcom/android/browser/controller/SearchEngineSelectionAdapter;->POSITION_GOOGLE:I

    if-ne v0, v1, :cond_1

    .line 131
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/controller/SearchEngineSelectionAdapter$1;->this$0:Lcom/android/browser/controller/SearchEngineSelectionAdapter;

    #getter for: Lcom/android/browser/controller/SearchEngineSelectionAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/browser/controller/SearchEngineSelectionAdapter;->access$000(Lcom/android/browser/controller/SearchEngineSelectionAdapter;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/controller/BrowserSettings;->setDefaultSearchEngine(Landroid/content/Context;I)V

    goto :goto_0

    .line 132
    :cond_1
    iget v0, p0, Lcom/android/browser/controller/SearchEngineSelectionAdapter$1;->val$pos:I

    sget v1, Lcom/android/browser/controller/SearchEngineSelectionAdapter;->POSITION_BING:I

    if-ne v0, v1, :cond_2

    .line 133
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/controller/SearchEngineSelectionAdapter$1;->this$0:Lcom/android/browser/controller/SearchEngineSelectionAdapter;

    #getter for: Lcom/android/browser/controller/SearchEngineSelectionAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/browser/controller/SearchEngineSelectionAdapter;->access$000(Lcom/android/browser/controller/SearchEngineSelectionAdapter;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/controller/BrowserSettings;->setDefaultSearchEngine(Landroid/content/Context;I)V

    goto :goto_0

    .line 135
    :cond_2
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/controller/SearchEngineSelectionAdapter$1;->this$0:Lcom/android/browser/controller/SearchEngineSelectionAdapter;

    #getter for: Lcom/android/browser/controller/SearchEngineSelectionAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/browser/controller/SearchEngineSelectionAdapter;->access$000(Lcom/android/browser/controller/SearchEngineSelectionAdapter;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/controller/BrowserSettings;->setDefaultSearchEngine(Landroid/content/Context;I)V

    goto :goto_0
.end method
