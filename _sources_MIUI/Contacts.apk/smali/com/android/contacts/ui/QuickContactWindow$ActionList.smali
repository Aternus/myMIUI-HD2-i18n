.class Lcom/android/contacts/ui/QuickContactWindow$ActionList;
.super Ljava/util/ArrayList;
.source "QuickContactWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ui/QuickContactWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/contacts/ui/QuickContactWindow$Action;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ui/QuickContactWindow;


# direct methods
.method private constructor <init>(Lcom/android/contacts/ui/QuickContactWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 1475
    iput-object p1, p0, Lcom/android/contacts/ui/QuickContactWindow$ActionList;->this$0:Lcom/android/contacts/ui/QuickContactWindow;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/ui/QuickContactWindow;Lcom/android/contacts/ui/QuickContactWindow$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1475
    invoke-direct {p0, p1}, Lcom/android/contacts/ui/QuickContactWindow$ActionList;-><init>(Lcom/android/contacts/ui/QuickContactWindow;)V

    return-void
.end method
