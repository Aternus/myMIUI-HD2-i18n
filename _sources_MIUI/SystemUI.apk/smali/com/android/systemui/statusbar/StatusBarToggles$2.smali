.class Lcom/android/systemui/statusbar/StatusBarToggles$2;
.super Ljava/lang/Object;
.source "StatusBarToggles.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/StatusBarToggles;->OnToggleChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/StatusBarToggles;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/StatusBarToggles;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarToggles$2;->this$0:Lcom/android/systemui/statusbar/StatusBarToggles;

    iput p2, p0, Lcom/android/systemui/statusbar/StatusBarToggles$2;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 122
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarToggles$2;->this$0:Lcom/android/systemui/statusbar/StatusBarToggles;

    #getter for: Lcom/android/systemui/statusbar/StatusBarToggles;->mID2Toggle:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/android/systemui/statusbar/StatusBarToggles;->access$000(Lcom/android/systemui/statusbar/StatusBarToggles;)Landroid/util/SparseArray;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarToggles$2;->val$id:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 123
    .local v1, toggle:Landroid/widget/TextView;
    if-nez v1, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarToggles$2;->this$0:Lcom/android/systemui/statusbar/StatusBarToggles;

    #getter for: Lcom/android/systemui/statusbar/StatusBarToggles;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/statusbar/StatusBarToggles;->access$100(Lcom/android/systemui/statusbar/StatusBarToggles;)Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarToggles$2;->val$id:I

    invoke-static {v2, v3}, Landroid/util/ToggleManager;->getImageDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 126
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v4, v0, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 131
    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarToggles$2;->val$id:I

    invoke-static {v0, v2}, Landroid/util/ToggleManager;->initDrawable(Landroid/graphics/drawable/Drawable;I)V

    .line 133
    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarToggles$2;->val$id:I

    if-ne v2, v5, :cond_0

    .line 134
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarToggles$2;->this$0:Lcom/android/systemui/statusbar/StatusBarToggles;

    #getter for: Lcom/android/systemui/statusbar/StatusBarToggles;->mManualBrightnessPanel:Landroid/view/View;
    invoke-static {v2}, Lcom/android/systemui/statusbar/StatusBarToggles;->access$200(Lcom/android/systemui/statusbar/StatusBarToggles;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarToggles$2;->this$0:Lcom/android/systemui/statusbar/StatusBarToggles;

    iget-object v3, v3, Lcom/android/systemui/statusbar/StatusBarToggles;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v3, v3, Lcom/android/systemui/statusbar/StatusBarService;->mToggleManager:Landroid/util/ToggleManager;

    invoke-virtual {v3}, Landroid/util/ToggleManager;->isAutoBrightnessMode()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v5

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 136
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarToggles$2;->this$0:Lcom/android/systemui/statusbar/StatusBarToggles;

    #getter for: Lcom/android/systemui/statusbar/StatusBarToggles;->mManualBrightness:Landroid/widget/SeekBar;
    invoke-static {v2}, Lcom/android/systemui/statusbar/StatusBarToggles;->access$300(Lcom/android/systemui/statusbar/StatusBarToggles;)Landroid/widget/SeekBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarToggles$2;->this$0:Lcom/android/systemui/statusbar/StatusBarToggles;

    iget-object v3, v3, Lcom/android/systemui/statusbar/StatusBarToggles;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    iget-object v3, v3, Lcom/android/systemui/statusbar/StatusBarService;->mToggleManager:Landroid/util/ToggleManager;

    invoke-virtual {v3}, Landroid/util/ToggleManager;->getBrightnessLevel()I

    move-result v3

    const/4 v4, 0x5

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 134
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method
