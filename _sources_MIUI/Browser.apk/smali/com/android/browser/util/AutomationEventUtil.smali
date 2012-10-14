.class public Lcom/android/browser/util/AutomationEventUtil;
.super Ljava/lang/Object;
.source "AutomationEventUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/util/AutomationEventUtil$DoubleTapInstrumentation;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static simulateDoubleTap(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 10
    new-instance v0, Lcom/android/browser/util/AutomationEventUtil$DoubleTapInstrumentation;

    invoke-direct {v0, p0, p1}, Lcom/android/browser/util/AutomationEventUtil$DoubleTapInstrumentation;-><init>(II)V

    .line 11
    .local v0, instr:Lcom/android/browser/util/AutomationEventUtil$DoubleTapInstrumentation;
    invoke-virtual {v0}, Lcom/android/browser/util/AutomationEventUtil$DoubleTapInstrumentation;->start()V

    .line 12
    return-void
.end method
