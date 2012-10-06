.class public Lcom/android/settings/cit/CitHeadsetPullDetectActivity;
.super Lcom/android/settings/cit/CitHeadSetCheckActivity;
.source "CitHeadsetPullDetectActivity.java"


# instance fields
.field private mButtonPass:Landroid/widget/Button;

.field private mOnPlugIn:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/android/settings/cit/CitHeadSetCheckActivity;-><init>()V

    return-void
.end method

.method public static getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    const v0, 0x7f090519

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/android/settings/cit/CitHeadsetPullDetectActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 45
    const v0, 0x7f09052a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 15
    invoke-super {p0, p1}, Lcom/android/settings/cit/CitHeadSetCheckActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const v0, 0x7f0c003d

    invoke-virtual {p0, v0}, Lcom/android/settings/cit/CitHeadsetPullDetectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/cit/CitHeadsetPullDetectActivity;->mButtonPass:Landroid/widget/Button;

    .line 17
    iget-object v0, p0, Lcom/android/settings/cit/CitHeadsetPullDetectActivity;->mButtonPass:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 18
    iget-object v0, p0, Lcom/android/settings/cit/CitBaseActivity;->mTestPanelTextView:Landroid/widget/TextView;

    const v1, 0x7f090544

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 19
    iput-boolean v2, p0, Lcom/android/settings/cit/CitHeadsetPullDetectActivity;->mOnPlugIn:Z

    .line 20
    return-void
.end method

.method protected onHeadSetPlugIn()V
    .locals 2

    .prologue
    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/cit/CitHeadsetPullDetectActivity;->mOnPlugIn:Z

    .line 24
    iget-object v0, p0, Lcom/android/settings/cit/CitBaseActivity;->mTestPanelTextView:Landroid/widget/TextView;

    const v1, 0x7f090544

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 25
    return-void
.end method

.method protected onHeadSetPullOut()V
    .locals 2

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/android/settings/cit/CitHeadsetPullDetectActivity;->mOnPlugIn:Z

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/android/settings/cit/CitHeadsetPullDetectActivity;->mButtonPass:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/android/settings/cit/CitBaseActivity;->mTestPanelTextView:Landroid/widget/TextView;

    const v1, 0x7f090546

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 32
    return-void
.end method
