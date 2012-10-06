.class Lcom/miui/backup/ui/LocalBackupMain$5;
.super Ljava/lang/Object;
.source "LocalBackupMain.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/backup/ui/LocalBackupMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/util/Hashtable",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field collator:Ljava/text/RuleBasedCollator;

.field final synthetic this$0:Lcom/miui/backup/ui/LocalBackupMain;


# direct methods
.method constructor <init>(Lcom/miui/backup/ui/LocalBackupMain;)V
    .locals 1
    .parameter

    .prologue
    .line 450
    iput-object p1, p0, Lcom/miui/backup/ui/LocalBackupMain$5;->this$0:Lcom/miui/backup/ui/LocalBackupMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    check-cast v0, Ljava/text/RuleBasedCollator;

    iput-object v0, p0, Lcom/miui/backup/ui/LocalBackupMain$5;->collator:Ljava/text/RuleBasedCollator;

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 450
    check-cast p1, Ljava/util/Hashtable;

    .end local p1
    check-cast p2, Ljava/util/Hashtable;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/miui/backup/ui/LocalBackupMain$5;->compare(Ljava/util/Hashtable;Ljava/util/Hashtable;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/util/Hashtable;Ljava/util/Hashtable;)I
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, object1:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, object2:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "title"

    .line 456
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupMain$5;->collator:Ljava/text/RuleBasedCollator;

    const-string v1, "title"

    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {p2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/RuleBasedCollator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    neg-int v0, v0

    return v0
.end method
