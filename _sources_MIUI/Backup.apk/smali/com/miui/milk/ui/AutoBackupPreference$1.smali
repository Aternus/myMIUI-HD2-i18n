.class Lcom/miui/milk/ui/AutoBackupPreference$1;
.super Ljava/lang/Object;
.source "AutoBackupPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/milk/ui/AutoBackupPreference;->setNextBackup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/milk/ui/AutoBackupPreference;


# direct methods
.method constructor <init>(Lcom/miui/milk/ui/AutoBackupPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/miui/milk/ui/AutoBackupPreference$1;->this$0:Lcom/miui/milk/ui/AutoBackupPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/miui/milk/ui/AutoBackupPreference$1;->this$0:Lcom/miui/milk/ui/AutoBackupPreference;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/milk/common/AutoBackup;->setNextBackup(Landroid/content/Context;Z)V

    .line 107
    return-void
.end method
