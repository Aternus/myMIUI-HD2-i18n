.class Lcom/android/systemui/statusbar/TrackingView$1;
.super Ljava/lang/Object;
.source "TrackingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/TrackingView;->setupTab(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/TrackingView;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/TrackingView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/systemui/statusbar/TrackingView$1;->this$0:Lcom/android/systemui/statusbar/TrackingView;

    iput p2, p0, Lcom/android/systemui/statusbar/TrackingView$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/TrackingView$1;->this$0:Lcom/android/systemui/statusbar/TrackingView;

    iget v1, p0, Lcom/android/systemui/statusbar/TrackingView$1;->val$index:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/TrackingView;->selectTab(II)V

    .line 118
    return-void
.end method
