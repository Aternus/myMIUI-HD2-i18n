.class public Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;
.super Ljava/lang/Object;
.source "GroupsBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ui/GroupsBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

.field public zIcon:Landroid/view/View;

.field public zItemIcons:[Landroid/widget/ImageView;

.field public zMoveButton:Landroid/widget/ImageView;

.field public zName:Landroid/widget/TextView;

.field public zNameEdit:Landroid/widget/TextView;

.field public zRight:Landroid/view/View;

.field public zSummary:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/contacts/ui/GroupsBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 659
    iput-object p1, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
