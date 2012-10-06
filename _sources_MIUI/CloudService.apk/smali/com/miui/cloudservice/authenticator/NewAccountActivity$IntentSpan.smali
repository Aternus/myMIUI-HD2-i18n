.class Lcom/miui/cloudservice/authenticator/NewAccountActivity$IntentSpan;
.super Landroid/text/style/ClickableSpan;
.source "NewAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/cloudservice/authenticator/NewAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IntentSpan"
.end annotation


# instance fields
.field private mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/cloudservice/authenticator/NewAccountActivity;


# direct methods
.method public constructor <init>(Lcom/miui/cloudservice/authenticator/NewAccountActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "url"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity$IntentSpan;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountActivity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 124
    iput-object p2, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity$IntentSpan;->mUrl:Ljava/lang/String;

    .line 125
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "widget"

    .prologue
    .line 135
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MIUI_LICENSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/android/internal/app/MiuiLicenseActivity;->EXTRA_MIUI_DOC_URL:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity$IntentSpan;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    iget-object v1, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity$IntentSpan;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountActivity;

    invoke-virtual {v1, v0}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->startActivity(Landroid/content/Intent;)V

    .line 138
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2
    .parameter "ds"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/miui/cloudservice/authenticator/NewAccountActivity$IntentSpan;->this$0:Lcom/miui/cloudservice/authenticator/NewAccountActivity;

    invoke-virtual {v0}, Lcom/miui/cloudservice/authenticator/NewAccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 130
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 131
    return-void
.end method
