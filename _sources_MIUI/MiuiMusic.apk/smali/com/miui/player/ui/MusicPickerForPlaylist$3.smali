.class Lcom/miui/player/ui/MusicPickerForPlaylist$3;
.super Ljava/lang/Object;
.source "MusicPickerForPlaylist.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/ui/MusicPickerForPlaylist;->initSelectAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/MusicPickerForPlaylist;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/MusicPickerForPlaylist;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/miui/player/ui/MusicPickerForPlaylist$3;->this$0:Lcom/miui/player/ui/MusicPickerForPlaylist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    .line 170
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    move-object v7, v0

    .line 171
    .local v7, view:Landroid/widget/TextView;
    iget-object v8, p0, Lcom/miui/player/ui/MusicPickerForPlaylist$3;->this$0:Lcom/miui/player/ui/MusicPickerForPlaylist;

    #getter for: Lcom/miui/player/ui/MusicPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/MusicPickerAdapter;
    invoke-static {v8}, Lcom/miui/player/ui/MusicPickerForPlaylist;->access$000(Lcom/miui/player/ui/MusicPickerForPlaylist;)Lcom/miui/player/model/MusicPickerAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/miui/player/model/MusicPickerAdapter;->isSelectAll()Z

    move-result v8

    if-nez v8, :cond_3

    .line 172
    iget-object v8, p0, Lcom/miui/player/ui/MusicPickerForPlaylist$3;->this$0:Lcom/miui/player/ui/MusicPickerForPlaylist;

    #getter for: Lcom/miui/player/ui/MusicPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/MusicPickerAdapter;
    invoke-static {v8}, Lcom/miui/player/ui/MusicPickerForPlaylist;->access$000(Lcom/miui/player/ui/MusicPickerForPlaylist;)Lcom/miui/player/model/MusicPickerAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/miui/player/model/MusicPickerAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v4

    .line 173
    .local v4, cursor:Landroid/database/Cursor;
    if-nez v4, :cond_0

    .line 197
    .end local v4           #cursor:Landroid/database/Cursor;
    :goto_0
    return-void

    .line 177
    .restart local v4       #cursor:Landroid/database/Cursor;
    :cond_0
    invoke-interface {v4}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    .line 178
    .local v5, position:I
    iget-object v8, p0, Lcom/miui/player/ui/MusicPickerForPlaylist$3;->this$0:Lcom/miui/player/ui/MusicPickerForPlaylist;

    #getter for: Lcom/miui/player/ui/MusicPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/MusicPickerAdapter;
    invoke-static {v8}, Lcom/miui/player/ui/MusicPickerForPlaylist;->access$000(Lcom/miui/player/ui/MusicPickerForPlaylist;)Lcom/miui/player/model/MusicPickerAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/miui/player/model/MusicPickerAdapter;->getPrevAudioList()Ljava/util/HashSet;

    move-result-object v6

    .line 179
    .local v6, prevAudioList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-direct {v3, v8}, Ljava/util/HashSet;-><init>(I)V

    .line 180
    .local v3, audioList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_2

    .line 181
    const/4 v8, 0x0

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 182
    .local v1, audioId:J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 183
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 186
    .end local v1           #audioId:J
    :cond_2
    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 188
    iget-object v8, p0, Lcom/miui/player/ui/MusicPickerForPlaylist$3;->this$0:Lcom/miui/player/ui/MusicPickerForPlaylist;

    #getter for: Lcom/miui/player/ui/MusicPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/MusicPickerAdapter;
    invoke-static {v8}, Lcom/miui/player/ui/MusicPickerForPlaylist;->access$000(Lcom/miui/player/ui/MusicPickerForPlaylist;)Lcom/miui/player/model/MusicPickerAdapter;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/miui/player/model/MusicPickerAdapter;->setSelectAudioList(Ljava/util/HashSet;)V

    .line 189
    const v8, 0x7f08009b

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 195
    .end local v3           #audioList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v4           #cursor:Landroid/database/Cursor;
    .end local v5           #position:I
    .end local v6           #prevAudioList:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :goto_2
    iget-object v8, p0, Lcom/miui/player/ui/MusicPickerForPlaylist$3;->this$0:Lcom/miui/player/ui/MusicPickerForPlaylist;

    #getter for: Lcom/miui/player/ui/MusicPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/MusicPickerAdapter;
    invoke-static {v8}, Lcom/miui/player/ui/MusicPickerForPlaylist;->access$000(Lcom/miui/player/ui/MusicPickerForPlaylist;)Lcom/miui/player/model/MusicPickerAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/miui/player/model/MusicPickerAdapter;->updateBottomView()V

    .line 196
    iget-object v8, p0, Lcom/miui/player/ui/MusicPickerForPlaylist$3;->this$0:Lcom/miui/player/ui/MusicPickerForPlaylist;

    #getter for: Lcom/miui/player/ui/MusicPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/MusicPickerAdapter;
    invoke-static {v8}, Lcom/miui/player/ui/MusicPickerForPlaylist;->access$000(Lcom/miui/player/ui/MusicPickerForPlaylist;)Lcom/miui/player/model/MusicPickerAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/miui/player/model/MusicPickerAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 191
    :cond_3
    iget-object v8, p0, Lcom/miui/player/ui/MusicPickerForPlaylist$3;->this$0:Lcom/miui/player/ui/MusicPickerForPlaylist;

    #getter for: Lcom/miui/player/ui/MusicPickerForPlaylist;->mTrackAdapter:Lcom/miui/player/model/MusicPickerAdapter;
    invoke-static {v8}, Lcom/miui/player/ui/MusicPickerForPlaylist;->access$000(Lcom/miui/player/ui/MusicPickerForPlaylist;)Lcom/miui/player/model/MusicPickerAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/miui/player/model/MusicPickerAdapter;->clearSelectAudioList()V

    .line 192
    const v8, 0x7f08009a

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method
