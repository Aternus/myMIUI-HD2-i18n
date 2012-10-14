.class public Lcom/miui/milk/common/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# instance fields
.field public checked:Z

.field public dataDir:Ljava/lang/String;

.field public display:Ljava/lang/String;

.field public error:Z

.field public id:I

.field public name:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public packagePath:Ljava/lang/String;

.field public summary:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput v1, p0, Lcom/miui/milk/common/AppInfo;->id:I

    .line 5
    iput-object v0, p0, Lcom/miui/milk/common/AppInfo;->name:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/miui/milk/common/AppInfo;->packagePath:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/miui/milk/common/AppInfo;->dataDir:Ljava/lang/String;

    .line 9
    iput v1, p0, Lcom/miui/milk/common/AppInfo;->type:I

    .line 10
    iput-object v0, p0, Lcom/miui/milk/common/AppInfo;->display:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/miui/milk/common/AppInfo;->summary:Ljava/lang/String;

    .line 12
    iput-boolean v2, p0, Lcom/miui/milk/common/AppInfo;->checked:Z

    .line 13
    iput-boolean v2, p0, Lcom/miui/milk/common/AppInfo;->error:Z

    return-void
.end method
