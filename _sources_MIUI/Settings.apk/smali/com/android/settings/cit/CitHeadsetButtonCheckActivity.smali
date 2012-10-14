.class public Lcom/android/settings/cit/CitHeadsetButtonCheckActivity;
.super Lcom/android/settings/cit/CitHeadSetCheckActivity;
.source "CitHeadsetButtonCheckActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/android/settings/cit/CitHeadSetCheckActivity;-><init>()V

    return-void
.end method

.method public static getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 14
    const v0, 0x7f090517

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/android/settings/cit/CitHeadsetButtonCheckActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 19
    const v0, 0x7f090529

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onHeadSetPlugIn()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/cit/CitBaseActivity;->mTestPanelTextView:Landroid/widget/TextView;

    const v1, 0x7f090548

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 57
    return-void
.end method

.method protected onHeadSetPullOut()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/cit/CitBaseActivity;->mTestPanelTextView:Landroid/widget/TextView;

    const v1, 0x7f090543

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 53
    return-void
.end method

.method protected onMediaButtonPressed(Landroid/view/KeyEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 24
    const v0, 0x7f090547

    .line 25
    .local v0, keyCodeStringId:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 48
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/cit/CitBaseActivity;->mTestPanelTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 49
    return-void

    .line 27
    :pswitch_1
    const v0, 0x7f09054a

    .line 28
    goto :goto_0

    .line 31
    :pswitch_2
    const v0, 0x7f090549

    .line 32
    goto :goto_0

    .line 34
    :pswitch_3
    const v0, 0x7f09054b

    .line 35
    goto :goto_0

    .line 37
    :pswitch_4
    const v0, 0x7f09054c

    .line 38
    goto :goto_0

    .line 40
    :pswitch_5
    const v0, 0x7f09054d

    .line 41
    goto :goto_0

    .line 43
    :pswitch_6
    const v0, 0x7f09054e

    .line 44
    goto :goto_0

    .line 25
    :pswitch_data_0
    .packed-switch 0x4f
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
