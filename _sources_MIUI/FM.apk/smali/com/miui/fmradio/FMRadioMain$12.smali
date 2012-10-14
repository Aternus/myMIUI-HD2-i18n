.class Lcom/miui/fmradio/FMRadioMain$12;
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
    .line 1331
    iput-object p1, p0, Lcom/miui/fmradio/FMRadioMain$12;->this$0:Lcom/miui/fmradio/FMRadioMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain$12;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mScanningDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioMain;->access$1100(Lcom/miui/fmradio/FMRadioMain;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 1334
    return-void
.end method
