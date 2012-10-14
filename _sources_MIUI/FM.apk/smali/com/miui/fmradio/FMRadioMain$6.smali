.class Lcom/miui/fmradio/FMRadioMain$6;
.super Ljava/lang/Object;
.source "FMRadioMain.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


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
    .line 420
    iput-object p1, p0, Lcom/miui/fmradio/FMRadioMain$6;->this$0:Lcom/miui/fmradio/FMRadioMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 10
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const v9, 0x7f050023

    const v8, 0x7f050020

    const v7, 0x7f05001f

    const/4 v6, 0x0

    .line 423
    invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V

    .line 424
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3
    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 425
    .local v0, index:I
    iget-object v1, p0, Lcom/miui/fmradio/FMRadioMain$6;->this$0:Lcom/miui/fmradio/FMRadioMain;

    const v2, 0x7f05001a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/fmradio/FMRadioMain$6;->this$0:Lcom/miui/fmradio/FMRadioMain;

    #getter for: Lcom/miui/fmradio/FMRadioMain;->mListAdapter:Lcom/miui/fmradio/StationListAdapter;
    invoke-static {v4}, Lcom/miui/fmradio/FMRadioMain;->access$500(Lcom/miui/fmradio/FMRadioMain;)Lcom/miui/fmradio/StationListAdapter;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/miui/fmradio/StationListAdapter;->getItemCursor(I)Landroid/database/Cursor;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/miui/fmradio/FMRadioMain;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 427
    invoke-interface {p1, v6, v9, v6, v9}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 428
    invoke-interface {p1, v6, v7, v6, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 429
    invoke-interface {p1, v6, v8, v6, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 430
    return-void
.end method
