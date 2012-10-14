.class Lcom/miui/fmradio/FMRadioMain$5;
.super Ljava/lang/Object;
.source "FMRadioMain.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/fmradio/FMRadioMain;->launchStationList()V
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
    .line 408
    iput-object p1, p0, Lcom/miui/fmradio/FMRadioMain$5;->this$0:Lcom/miui/fmradio/FMRadioMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 412
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/miui/fmradio/FMRadioMain$5;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mListAdapter:Lcom/miui/fmradio/StationListAdapter;
    invoke-static {v2}, Lcom/miui/fmradio/FMRadioMain;->access$500(Lcom/miui/fmradio/FMRadioMain;)Lcom/miui/fmradio/StationListAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/miui/fmradio/StationListAdapter;->getItemCursor(I)Landroid/database/Cursor;

    move-result-object v1

    .line 413
    .local v1, cursor:Landroid/database/Cursor;
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    .line 414
    .local v0, chFreq:F
    iget-object v2, p0, Lcom/miui/fmradio/FMRadioMain$5;->this$0:Lcom/miui/fmradio/FMRadioMain;

    const/high16 v3, 0x447a

    mul-float/2addr v3, v0

    float-to-int v3, v3

    #setter for: Lcom/miui/fmradio/FMRadioMain;->mCounter:I
    invoke-static {v2, v3}, Lcom/miui/fmradio/FMRadioMain;->access$602(Lcom/miui/fmradio/FMRadioMain;I)I

    .line 415
    iget-object v2, p0, Lcom/miui/fmradio/FMRadioMain$5;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #calls: Lcom/miui/fmradio/FMRadioMain;->launchFMRadioMain()V
    invoke-static {v2}, Lcom/miui/fmradio/FMRadioMain;->access$700(Lcom/miui/fmradio/FMRadioMain;)V

    .line 416
    return-void
.end method
