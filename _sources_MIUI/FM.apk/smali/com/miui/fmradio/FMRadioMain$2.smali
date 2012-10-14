.class Lcom/miui/fmradio/FMRadioMain$2;
.super Ljava/lang/Object;
.source "FMRadioMain.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/fmradio/FMRadioMain;->showNoticeDialog(II)V
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
    .line 239
    iput-object p1, p0, Lcom/miui/fmradio/FMRadioMain$2;->this$0:Lcom/miui/fmradio/FMRadioMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain$2;->this$0:Lcom/miui/fmradio/FMRadioMain;

    invoke-virtual {v0}, Lcom/miui/fmradio/FMRadioMain;->finish()V

    .line 244
    return-void
.end method
