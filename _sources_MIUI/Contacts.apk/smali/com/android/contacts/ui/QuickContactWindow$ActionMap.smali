.class Lcom/android/contacts/ui/QuickContactWindow$ActionMap;
.super Ljava/util/HashMap;
.source "QuickContactWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ui/QuickContactWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/android/contacts/ui/QuickContactWindow$ActionList;",
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
    .line 1482
    iput-object p1, p0, Lcom/android/contacts/ui/QuickContactWindow$ActionMap;->this$0:Lcom/android/contacts/ui/QuickContactWindow;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/ui/QuickContactWindow;Lcom/android/contacts/ui/QuickContactWindow$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1482
    invoke-direct {p0, p1}, Lcom/android/contacts/ui/QuickContactWindow$ActionMap;-><init>(Lcom/android/contacts/ui/QuickContactWindow;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/contacts/ui/QuickContactWindow$ActionMap;Ljava/lang/String;Lcom/android/contacts/ui/QuickContactWindow$Action;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1482
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/ui/QuickContactWindow$ActionMap;->collect(Ljava/lang/String;Lcom/android/contacts/ui/QuickContactWindow$Action;)V

    return-void
.end method

.method private collect(Ljava/lang/String;Lcom/android/contacts/ui/QuickContactWindow$Action;)V
    .locals 3
    .parameter "mimeType"
    .parameter "info"

    .prologue
    .line 1485
    invoke-virtual {p0, p1}, Lcom/android/contacts/ui/QuickContactWindow$ActionMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ui/QuickContactWindow$ActionList;

    .line 1486
    .local v0, collectList:Lcom/android/contacts/ui/QuickContactWindow$ActionList;
    if-nez v0, :cond_0

    .line 1487
    new-instance v0, Lcom/android/contacts/ui/QuickContactWindow$ActionList;

    .end local v0           #collectList:Lcom/android/contacts/ui/QuickContactWindow$ActionList;
    iget-object v1, p0, Lcom/android/contacts/ui/QuickContactWindow$ActionMap;->this$0:Lcom/android/contacts/ui/QuickContactWindow;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/ui/QuickContactWindow$ActionList;-><init>(Lcom/android/contacts/ui/QuickContactWindow;Lcom/android/contacts/ui/QuickContactWindow$1;)V

    .line 1488
    .restart local v0       #collectList:Lcom/android/contacts/ui/QuickContactWindow$ActionList;
    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/ui/QuickContactWindow$ActionMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1490
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/contacts/ui/QuickContactWindow$ActionList;->add(Ljava/lang/Object;)Z

    .line 1491
    return-void
.end method
