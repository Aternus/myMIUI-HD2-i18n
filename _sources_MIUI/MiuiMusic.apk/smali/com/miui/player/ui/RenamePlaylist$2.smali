.class Lcom/miui/player/ui/RenamePlaylist$2;
.super Ljava/lang/Object;
.source "RenamePlaylist.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/RenamePlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/RenamePlaylist;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/RenamePlaylist;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/miui/player/ui/RenamePlaylist$2;->this$0:Lcom/miui/player/ui/RenamePlaylist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 163
    iget-object v5, p0, Lcom/miui/player/ui/RenamePlaylist$2;->this$0:Lcom/miui/player/ui/RenamePlaylist;

    #getter for: Lcom/miui/player/ui/RenamePlaylist;->mPlaylist:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/miui/player/ui/RenamePlaylist;->access$100(Lcom/miui/player/ui/RenamePlaylist;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, name:Ljava/lang/String;
    const/4 v0, 0x0

    .line 165
    .local v0, confirm:Z
    const/4 v5, -0x1

    if-ne p2, v5, :cond_1

    .line 166
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 167
    iget-object v5, p0, Lcom/miui/player/ui/RenamePlaylist$2;->this$0:Lcom/miui/player/ui/RenamePlaylist;

    #getter for: Lcom/miui/player/ui/RenamePlaylist;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/miui/player/ui/RenamePlaylist;->access$200(Lcom/miui/player/ui/RenamePlaylist;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 168
    .local v3, resolver:Landroid/content/ContentResolver;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, v10}, Landroid/content/ContentValues;-><init>(I)V

    .line 169
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "name"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    sget-object v5, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists;->EXTERNAL_URI:Landroid/net/Uri;

    const-string v6, "_id=?"

    new-array v7, v10, [Ljava/lang/String;

    iget-object v8, p0, Lcom/miui/player/ui/RenamePlaylist$2;->this$0:Lcom/miui/player/ui/RenamePlaylist;

    #getter for: Lcom/miui/player/ui/RenamePlaylist;->mRenameId:J
    invoke-static {v8}, Lcom/miui/player/ui/RenamePlaylist;->access$300(Lcom/miui/player/ui/RenamePlaylist;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 175
    const v1, 0x7f08001c

    .line 176
    .local v1, messageId:I
    iget-object v5, p0, Lcom/miui/player/ui/RenamePlaylist$2;->this$0:Lcom/miui/player/ui/RenamePlaylist;

    #getter for: Lcom/miui/player/ui/RenamePlaylist;->mType:I
    invoke-static {v5}, Lcom/miui/player/ui/RenamePlaylist;->access$400(Lcom/miui/player/ui/RenamePlaylist;)I

    move-result v5

    if-ne v5, v10, :cond_0

    .line 177
    const v1, 0x7f0800a5

    .line 180
    :cond_0
    iget-object v5, p0, Lcom/miui/player/ui/RenamePlaylist$2;->this$0:Lcom/miui/player/ui/RenamePlaylist;

    #getter for: Lcom/miui/player/ui/RenamePlaylist;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/miui/player/ui/RenamePlaylist;->access$200(Lcom/miui/player/ui/RenamePlaylist;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v1, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 181
    const/4 v0, 0x1

    .line 185
    .end local v1           #messageId:I
    .end local v3           #resolver:Landroid/content/ContentResolver;
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_1
    iget-object v5, p0, Lcom/miui/player/ui/RenamePlaylist$2;->this$0:Lcom/miui/player/ui/RenamePlaylist;

    #getter for: Lcom/miui/player/ui/RenamePlaylist;->mCallback:Lcom/miui/player/MusicUtils$OnDialogCallback;
    invoke-static {v5}, Lcom/miui/player/ui/RenamePlaylist;->access$500(Lcom/miui/player/ui/RenamePlaylist;)Lcom/miui/player/MusicUtils$OnDialogCallback;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 186
    iget-object v5, p0, Lcom/miui/player/ui/RenamePlaylist$2;->this$0:Lcom/miui/player/ui/RenamePlaylist;

    #getter for: Lcom/miui/player/ui/RenamePlaylist;->mCallback:Lcom/miui/player/MusicUtils$OnDialogCallback;
    invoke-static {v5}, Lcom/miui/player/ui/RenamePlaylist;->access$500(Lcom/miui/player/ui/RenamePlaylist;)Lcom/miui/player/MusicUtils$OnDialogCallback;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/player/ui/RenamePlaylist$2;->this$0:Lcom/miui/player/ui/RenamePlaylist;

    #getter for: Lcom/miui/player/ui/RenamePlaylist;->mRequestCode:I
    invoke-static {v6}, Lcom/miui/player/ui/RenamePlaylist;->access$600(Lcom/miui/player/ui/RenamePlaylist;)I

    move-result v6

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    invoke-interface {v5, v6, v0, v7}, Lcom/miui/player/MusicUtils$OnDialogCallback;->onDialogResult(IZLandroid/content/Intent;)V

    .line 188
    :cond_2
    return-void
.end method
