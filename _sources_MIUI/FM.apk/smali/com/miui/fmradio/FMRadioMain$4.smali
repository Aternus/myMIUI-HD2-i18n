.class Lcom/miui/fmradio/FMRadioMain$4;
.super Ljava/lang/Object;
.source "FMRadioMain.java"

# interfaces
.implements Lcom/miui/fmradio/StationListAdapter$OnDatasetChangedListener;


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
    .line 392
    iput-object p1, p0, Lcom/miui/fmradio/FMRadioMain$4;->this$0:Lcom/miui/fmradio/FMRadioMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDatasetChanged(I)V
    .locals 3
    .parameter "count"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 396
    if-lez p1, :cond_0

    .line 397
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain$4;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioMain;->access$300(Lcom/miui/fmradio/FMRadioMain;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 398
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain$4;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mEmptyView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioMain;->access$400(Lcom/miui/fmradio/FMRadioMain;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 403
    :goto_0
    return-void

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain$4;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioMain;->access$300(Lcom/miui/fmradio/FMRadioMain;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 401
    iget-object v0, p0, Lcom/miui/fmradio/FMRadioMain$4;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mEmptyView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/miui/fmradio/FMRadioMain;->access$400(Lcom/miui/fmradio/FMRadioMain;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
