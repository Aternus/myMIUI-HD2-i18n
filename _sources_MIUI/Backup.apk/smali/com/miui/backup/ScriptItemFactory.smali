.class Lcom/miui/backup/ScriptItemFactory;
.super Ljava/lang/Object;
.source "BackupRestoreStrategy.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createItem(ILjava/lang/String;Ljava/lang/String;)Lcom/miui/backup/ScriptItem;
    .locals 1
    .parameter "cmd"
    .parameter "opt1"
    .parameter "opt2"

    .prologue
    .line 489
    const/4 v0, 0x0

    .line 491
    .local v0, item:Lcom/miui/backup/ScriptItem;
    packed-switch p0, :pswitch_data_0

    .line 535
    const/4 v0, 0x0

    .line 538
    :goto_0
    return-object v0

    .line 493
    :pswitch_0
    new-instance v0, Lcom/miui/backup/ScriptCpItem;

    .end local v0           #item:Lcom/miui/backup/ScriptItem;
    invoke-direct {v0, p1, p2}, Lcom/miui/backup/ScriptCpItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    .restart local v0       #item:Lcom/miui/backup/ScriptItem;
    goto :goto_0

    .line 496
    :pswitch_1
    new-instance v0, Lcom/miui/backup/ScriptCpDirItem;

    .end local v0           #item:Lcom/miui/backup/ScriptItem;
    invoke-direct {v0, p1, p2}, Lcom/miui/backup/ScriptCpDirItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    .restart local v0       #item:Lcom/miui/backup/ScriptItem;
    goto :goto_0

    .line 499
    :pswitch_2
    new-instance v0, Lcom/miui/backup/ScriptRmItem;

    .end local v0           #item:Lcom/miui/backup/ScriptItem;
    invoke-direct {v0, p1}, Lcom/miui/backup/ScriptRmItem;-><init>(Ljava/lang/String;)V

    .line 500
    .restart local v0       #item:Lcom/miui/backup/ScriptItem;
    goto :goto_0

    .line 502
    :pswitch_3
    new-instance v0, Lcom/miui/backup/ScriptRmDirItem;

    .end local v0           #item:Lcom/miui/backup/ScriptItem;
    invoke-direct {v0, p1}, Lcom/miui/backup/ScriptRmDirItem;-><init>(Ljava/lang/String;)V

    .line 503
    .restart local v0       #item:Lcom/miui/backup/ScriptItem;
    goto :goto_0

    .line 505
    :pswitch_4
    new-instance v0, Lcom/miui/backup/ScriptChmodItem;

    .end local v0           #item:Lcom/miui/backup/ScriptItem;
    invoke-direct {v0, p1, p2}, Lcom/miui/backup/ScriptChmodItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    .restart local v0       #item:Lcom/miui/backup/ScriptItem;
    goto :goto_0

    .line 508
    :pswitch_5
    new-instance v0, Lcom/miui/backup/ScriptChgrpItem;

    .end local v0           #item:Lcom/miui/backup/ScriptItem;
    invoke-direct {v0, p1, p2}, Lcom/miui/backup/ScriptChgrpItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    .restart local v0       #item:Lcom/miui/backup/ScriptItem;
    goto :goto_0

    .line 511
    :pswitch_6
    new-instance v0, Lcom/miui/backup/ScriptChownItem;

    .end local v0           #item:Lcom/miui/backup/ScriptItem;
    invoke-direct {v0, p1, p2}, Lcom/miui/backup/ScriptChownItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    .restart local v0       #item:Lcom/miui/backup/ScriptItem;
    goto :goto_0

    .line 514
    :pswitch_7
    new-instance v0, Lcom/miui/backup/ScriptChmodRecurseItem;

    .end local v0           #item:Lcom/miui/backup/ScriptItem;
    invoke-direct {v0, p1, p2}, Lcom/miui/backup/ScriptChmodRecurseItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    .restart local v0       #item:Lcom/miui/backup/ScriptItem;
    goto :goto_0

    .line 517
    :pswitch_8
    new-instance v0, Lcom/miui/backup/ScriptChgrpRecurseItem;

    .end local v0           #item:Lcom/miui/backup/ScriptItem;
    invoke-direct {v0, p1, p2}, Lcom/miui/backup/ScriptChgrpRecurseItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    .restart local v0       #item:Lcom/miui/backup/ScriptItem;
    goto :goto_0

    .line 520
    :pswitch_9
    new-instance v0, Lcom/miui/backup/ScriptChownRecurseItem;

    .end local v0           #item:Lcom/miui/backup/ScriptItem;
    invoke-direct {v0, p1, p2}, Lcom/miui/backup/ScriptChownRecurseItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    .restart local v0       #item:Lcom/miui/backup/ScriptItem;
    goto :goto_0

    .line 523
    :pswitch_a
    new-instance v0, Lcom/miui/backup/ScriptMkdirsItem;

    .end local v0           #item:Lcom/miui/backup/ScriptItem;
    invoke-direct {v0, p1}, Lcom/miui/backup/ScriptMkdirsItem;-><init>(Ljava/lang/String;)V

    .line 524
    .restart local v0       #item:Lcom/miui/backup/ScriptItem;
    goto :goto_0

    .line 526
    :pswitch_b
    new-instance v0, Lcom/miui/backup/ScriptMvItem;

    .end local v0           #item:Lcom/miui/backup/ScriptItem;
    invoke-direct {v0, p1, p2}, Lcom/miui/backup/ScriptMvItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    .restart local v0       #item:Lcom/miui/backup/ScriptItem;
    goto :goto_0

    .line 529
    :pswitch_c
    new-instance v0, Lcom/miui/backup/ScriptDuItem;

    .end local v0           #item:Lcom/miui/backup/ScriptItem;
    invoke-direct {v0, p1}, Lcom/miui/backup/ScriptDuItem;-><init>(Ljava/lang/String;)V

    .line 530
    .restart local v0       #item:Lcom/miui/backup/ScriptItem;
    goto :goto_0

    .line 532
    :pswitch_d
    new-instance v0, Lcom/miui/backup/ScriptCpDataItem;

    .end local v0           #item:Lcom/miui/backup/ScriptItem;
    invoke-direct {v0, p1, p2}, Lcom/miui/backup/ScriptCpDataItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    .restart local v0       #item:Lcom/miui/backup/ScriptItem;
    goto :goto_0

    .line 491
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
