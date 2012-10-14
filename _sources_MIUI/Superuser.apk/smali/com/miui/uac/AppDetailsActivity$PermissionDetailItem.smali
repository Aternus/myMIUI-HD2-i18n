.class Lcom/miui/uac/AppDetailsActivity$PermissionDetailItem;
.super Ljava/lang/Object;
.source "AppDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/uac/AppDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PermissionDetailItem"
.end annotation


# instance fields
.field mAllowdId:I

.field mPermission:Ljava/lang/String;

.field mUpdateTime:J

.field final synthetic this$0:Lcom/miui/uac/AppDetailsActivity;


# direct methods
.method public constructor <init>(Lcom/miui/uac/AppDetailsActivity;Ljava/lang/String;JI)V
    .locals 0
    .parameter
    .parameter "permission"
    .parameter "updateTime"
    .parameter "allowId"

    .prologue
    .line 341
    iput-object p1, p0, Lcom/miui/uac/AppDetailsActivity$PermissionDetailItem;->this$0:Lcom/miui/uac/AppDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    iput-object p2, p0, Lcom/miui/uac/AppDetailsActivity$PermissionDetailItem;->mPermission:Ljava/lang/String;

    .line 343
    iput-wide p3, p0, Lcom/miui/uac/AppDetailsActivity$PermissionDetailItem;->mUpdateTime:J

    .line 344
    iput p5, p0, Lcom/miui/uac/AppDetailsActivity$PermissionDetailItem;->mAllowdId:I

    .line 345
    return-void
.end method
