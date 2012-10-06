.class Lcom/miui/uac/AppListActivity$AppViewHolder;
.super Ljava/lang/Object;
.source "AppListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/uac/AppListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppViewHolder"
.end annotation


# instance fields
.field appname:Landroid/widget/TextView;

.field icon:Landroid/widget/ImageView;

.field permissionAllowed:Landroid/widget/TextView;

.field permissionDenied:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
