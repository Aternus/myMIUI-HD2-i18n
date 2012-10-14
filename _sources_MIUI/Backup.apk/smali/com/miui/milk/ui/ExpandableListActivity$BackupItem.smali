.class public Lcom/miui/milk/ui/ExpandableListActivity$BackupItem;
.super Ljava/lang/Object;
.source "ExpandableListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/ui/ExpandableListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BackupItem"
.end annotation


# instance fields
.field public backupTime:Ljava/lang/String;

.field public cloudCount:Ljava/lang/String;

.field public localCount:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/milk/ui/ExpandableListActivity;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/milk/ui/ExpandableListActivity;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 427
    iput-object p1, p0, Lcom/miui/milk/ui/ExpandableListActivity$BackupItem;->this$0:Lcom/miui/milk/ui/ExpandableListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    iput-object v0, p0, Lcom/miui/milk/ui/ExpandableListActivity$BackupItem;->title:Ljava/lang/String;

    .line 429
    iput-object v0, p0, Lcom/miui/milk/ui/ExpandableListActivity$BackupItem;->localCount:Ljava/lang/String;

    .line 430
    iput-object v0, p0, Lcom/miui/milk/ui/ExpandableListActivity$BackupItem;->cloudCount:Ljava/lang/String;

    return-void
.end method
