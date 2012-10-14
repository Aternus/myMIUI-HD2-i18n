.class Lcom/android/systemui/statusbar/TrackingView$2;
.super Ljava/lang/Object;
.source "TrackingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/TrackingView;->OnToggleChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/TrackingView;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/TrackingView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/systemui/statusbar/TrackingView$2;->this$0:Lcom/android/systemui/statusbar/TrackingView;

    iput p2, p0, Lcom/android/systemui/statusbar/TrackingView$2;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 154
    iget-object v2, p0, Lcom/android/systemui/statusbar/TrackingView$2;->this$0:Lcom/android/systemui/statusbar/TrackingView;

    #getter for: Lcom/android/systemui/statusbar/TrackingView;->mToggles:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/android/systemui/statusbar/TrackingView;->access$000(Lcom/android/systemui/statusbar/TrackingView;)Landroid/util/SparseArray;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/TrackingView$2;->val$id:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 155
    .local v1, toggle:Landroid/widget/ImageView;
    if-nez v1, :cond_0

    .line 159
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/TrackingView$2;->this$0:Lcom/android/systemui/statusbar/TrackingView;

    #getter for: Lcom/android/systemui/statusbar/TrackingView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/statusbar/TrackingView;->access$100(Lcom/android/systemui/statusbar/TrackingView;)Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/TrackingView$2;->val$id:I

    invoke-static {v2, v3}, Landroid/util/ToggleManager;->getImageDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 157
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 158
    iget v2, p0, Lcom/android/systemui/statusbar/TrackingView$2;->val$id:I

    invoke-static {v0, v2}, Landroid/util/ToggleManager;->initDrawable(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0
.end method
