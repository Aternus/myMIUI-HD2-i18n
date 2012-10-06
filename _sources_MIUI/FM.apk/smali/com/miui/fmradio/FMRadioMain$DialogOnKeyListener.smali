.class Lcom/miui/fmradio/FMRadioMain$DialogOnKeyListener;
.super Ljava/lang/Object;
.source "FMRadioMain.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmradio/FMRadioMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogOnKeyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/fmradio/FMRadioMain;


# direct methods
.method private constructor <init>(Lcom/miui/fmradio/FMRadioMain;)V
    .locals 0
    .parameter

    .prologue
    .line 1380
    iput-object p1, p0, Lcom/miui/fmradio/FMRadioMain$DialogOnKeyListener;->this$0:Lcom/miui/fmradio/FMRadioMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/fmradio/FMRadioMain;Lcom/miui/fmradio/FMRadioMain$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1380
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FMRadioMain$DialogOnKeyListener;-><init>(Lcom/miui/fmradio/FMRadioMain;)V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1384
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 1385
    .local v0, action:I
    if-nez v0, :cond_0

    .line 1386
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$DialogOnKeyListener;->this$0:Lcom/miui/fmradio/FMRadioMain;

    invoke-virtual {v1, p2, p3}, Lcom/miui/fmradio/FMRadioMain;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 1390
    :goto_0
    return v1

    .line 1387
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1388
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$DialogOnKeyListener;->this$0:Lcom/miui/fmradio/FMRadioMain;

    invoke-virtual {v1, p2, p3}, Lcom/miui/fmradio/FMRadioMain;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 1390
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
