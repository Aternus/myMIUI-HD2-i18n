.class Lcom/android/browser/ui/BrowserHomepagePreference$2;
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
    .line 58
    iput-object p1, p0, Lcom/android/browser/ui/BrowserHomepagePreference$2;->this$0:Lcom/android/browser/ui/BrowserHomepagePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/browser/ui/BrowserHomepagePreference$2;->this$0:Lcom/android/browser/ui/BrowserHomepagePreference;

    invoke-virtual {v0}, Lcom/android/browser/ui/BrowserHomepagePreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "miui:home"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method
