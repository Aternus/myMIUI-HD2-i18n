.class Lcom/miui/uac/LogActivity$LogItem;
.super Ljava/lang/Object;
.source "LogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/uac/LogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LogItem"
.end annotation


# instance fields
.field mAllowId:I

.field mPackageName:Ljava/lang/String;

.field mPermission:Ljava/lang/String;

.field mUpdateTime:J

.field final synthetic this$0:Lcom/miui/uac/LogActivity;


# direct methods
.method public constructor <init>(Lcom/miui/uac/LogActivity;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 0
    .parameter
    .parameter "packageName"
    .parameter "permission"
    .parameter "updateTime"
    .parameter "allowId"

    .prologue
    .line 194
    iput-object p1, p0, Lcom/miui/uac/LogActivity$LogItem;->this$0:Lcom/miui/uac/LogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p2, p0, Lcom/miui/uac/LogActivity$LogItem;->mPackageName:Ljava/lang/String;

    .line 196
    iput-object p3, p0, Lcom/miui/uac/LogActivity$LogItem;->mPermission:Ljava/lang/String;

    .line 197
    iput-wide p4, p0, Lcom/miui/uac/LogActivity$LogItem;->mUpdateTime:J

    .line 198
    iput p6, p0, Lcom/miui/uac/LogActivity$LogItem;->mAllowId:I

    .line 199
    return-void
.end method
