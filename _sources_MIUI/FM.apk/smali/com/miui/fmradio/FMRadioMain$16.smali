.class Lcom/miui/fmradio/FMRadioMain$16;
.super Ljava/lang/Object;
.source "FMRadioMain.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/fmradio/FMRadioMain;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/fmradio/FMRadioMain;


# direct methods
.method constructor <init>(Lcom/miui/fmradio/FMRadioMain;)V
    .locals 0
    .parameter

    .prologue
    .line 1364
    iput-object p1, p0, Lcom/miui/fmradio/FMRadioMain$16;->this$0:Lcom/miui/fmradio/FMRadioMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1366
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain$16;->this$0:Lcom/miui/fmradio/FMRadioMain;

    invoke-static {v0}, Lcom/miui/fmradio/FMRadioUtils;->clearDB(Landroid/content/Context;)V

    .line 1367
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain$16;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #calls: Lcom/miui/fmradio/FMRadioMain;->scanFMStation()V
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioMain;->access$1700(Lcom/miui/fmradio/FMRadioMain;)V

    .line 1368
    return-void
.end method
