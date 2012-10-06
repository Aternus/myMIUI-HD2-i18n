.class Lcom/android/browser/ui/BrowserHomepagePreference$1;
.super Ljava/lang/Object;
.source "BrowserHomepagePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ui/BrowserHomepagePreference;->onAddEditTextToDialogView(Landroid/view/View;Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/ui/BrowserHomepagePreference;


# direct methods
.method constructor <init>(Lcom/android/browser/ui/BrowserHomepagePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/browser/ui/BrowserHomepagePreference$1;->this$0:Lcom/android/browser/ui/BrowserHomepagePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 50
    invoke-static {}, Lcom/android/browser/controller/TabController;->getInstance()Lcom/android/browser/controller/TabController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/browser/ui/BrowserHomepagePreference$1;->this$0:Lcom/android/browser/ui/BrowserHomepagePreference;

    invoke-static {}, Lcom/android/browser/controller/TabController;->getInstance()Lcom/android/browser/controller/TabController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/controller/Tab;->getLoadedUrl()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/browser/ui/BrowserHomepagePreference;->mCurrentPage:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/browser/ui/BrowserHomepagePreference;->access$002(Lcom/android/browser/ui/BrowserHomepagePreference;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/android/browser/ui/BrowserHomepagePreference$1;->this$0:Lcom/android/browser/ui/BrowserHomepagePreference;

    invoke-virtual {v0}, Lcom/android/browser/ui/BrowserHomepagePreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/ui/BrowserHomepagePreference$1;->this$0:Lcom/android/browser/ui/BrowserHomepagePreference;

    #getter for: Lcom/android/browser/ui/BrowserHomepagePreference;->mCurrentPage:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/browser/ui/BrowserHomepagePreference;->access$000(Lcom/android/browser/ui/BrowserHomepagePreference;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 54
    return-void
.end method
