.class Lcom/miui/player/ui/MusicInfoEditDialog$OnDialogButtonClick;
.super Ljava/lang/Object;
.source "MusicInfoEditDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/MusicInfoEditDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnDialogButtonClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/MusicInfoEditDialog;


# direct methods
.method private constructor <init>(Lcom/miui/player/ui/MusicInfoEditDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/miui/player/ui/MusicInfoEditDialog$OnDialogButtonClick;->this$0:Lcom/miui/player/ui/MusicInfoEditDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/ui/MusicInfoEditDialog;Lcom/miui/player/ui/MusicInfoEditDialog$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/miui/player/ui/MusicInfoEditDialog$OnDialogButtonClick;-><init>(Lcom/miui/player/ui/MusicInfoEditDialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v6, 0x0

    const-string v7, "raw_path"

    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, confirm:Z
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 194
    .local v2, intent:Landroid/content/Intent;
    const/4 v4, -0x1

    if-ne p2, v4, :cond_0

    .line 195
    iget-object v4, p0, Lcom/miui/player/ui/MusicInfoEditDialog$OnDialogButtonClick;->this$0:Lcom/miui/player/ui/MusicInfoEditDialog;

    invoke-virtual {v4}, Lcom/miui/player/ui/MusicInfoEditDialog;->isModifyId3Invalid()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/miui/player/ui/MusicInfoEditDialog$OnDialogButtonClick;->this$0:Lcom/miui/player/ui/MusicInfoEditDialog;

    #getter for: Lcom/miui/player/ui/MusicInfoEditDialog;->mId3EditCheckBox:Landroid/widget/CheckBox;
    invoke-static {v4}, Lcom/miui/player/ui/MusicInfoEditDialog;->access$200(Lcom/miui/player/ui/MusicInfoEditDialog;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 196
    iget-object v4, p0, Lcom/miui/player/ui/MusicInfoEditDialog$OnDialogButtonClick;->this$0:Lcom/miui/player/ui/MusicInfoEditDialog;

    #getter for: Lcom/miui/player/ui/MusicInfoEditDialog;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/miui/player/ui/MusicInfoEditDialog;->access$100(Lcom/miui/player/ui/MusicInfoEditDialog;)Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0800bf

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 198
    iget-object v4, p0, Lcom/miui/player/ui/MusicInfoEditDialog$OnDialogButtonClick;->this$0:Lcom/miui/player/ui/MusicInfoEditDialog;

    #getter for: Lcom/miui/player/ui/MusicInfoEditDialog;->mId3EditCheckBox:Landroid/widget/CheckBox;
    invoke-static {v4}, Lcom/miui/player/ui/MusicInfoEditDialog;->access$200(Lcom/miui/player/ui/MusicInfoEditDialog;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 232
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/miui/player/ui/MusicInfoEditDialog$OnDialogButtonClick;->this$0:Lcom/miui/player/ui/MusicInfoEditDialog;

    #getter for: Lcom/miui/player/ui/MusicInfoEditDialog;->mCallback:Lcom/miui/player/MusicUtils$OnDialogCallback;
    invoke-static {v4}, Lcom/miui/player/ui/MusicInfoEditDialog;->access$1500(Lcom/miui/player/ui/MusicInfoEditDialog;)Lcom/miui/player/MusicUtils$OnDialogCallback;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 233
    iget-object v4, p0, Lcom/miui/player/ui/MusicInfoEditDialog$OnDialogButtonClick;->this$0:Lcom/miui/player/ui/MusicInfoEditDialog;

    #getter for: Lcom/miui/player/ui/MusicInfoEditDialog;->mCallback:Lcom/miui/player/MusicUtils$OnDialogCallback;
    invoke-static {v4}, Lcom/miui/player/ui/MusicInfoEditDialog;->access$1500(Lcom/miui/player/ui/MusicInfoEditDialog;)Lcom/miui/player/MusicUtils$OnDialogCallback;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/player/ui/MusicInfoEditDialog$OnDialogButtonClick;->this$0:Lcom/miui/player/ui/MusicInfoEditDialog;

    #getter for: Lcom/miui/player/ui/MusicInfoEditDialog;->mRequestCode:I
    invoke-static {v5}, Lcom/miui/player/ui/MusicInfoEditDialog;->access$1600(Lcom/miui/player/ui/MusicInfoEditDialog;)I

    move-result v5

    invoke-interface {v4, v5, v0, v2}, Lcom/miui/player/MusicUtils$OnDialogCallback;->onDialogResult(IZLandroid/content/Intent;)V

    .line 235
    :cond_1
    return-void

    .line 199
    :cond_2
    iget-object v4, p0, Lcom/miui/player/ui/MusicInfoEditDialog$OnDialogButtonClick;->this$0:Lcom/miui/player/ui/MusicInfoEditDialog;

    #calls: Lcom/miui/player/ui/MusicInfoEditDialog;->isTextChanged()Z
    invoke-static {v4}, Lcom/miui/player/ui/MusicInfoEditDialog;->access$300(Lcom/miui/player/ui/MusicInfoEditDialog;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 200
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 201
    .restart local v2       #intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/miui/player/ui/MusicInfoEditDialog$OnDialogButtonClick;->this$0:Lcom/miui/player/ui/MusicInfoEditDialog;

    #getter for: Lcom/miui/player/ui/MusicInfoEditDialog;->mTrackEditText:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/miui/player/ui/MusicInfoEditDialog;->access$400(Lcom/miui/player/ui/MusicInfoEditDialog;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, input:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/miui/player/ui/MusicInfoEditDialog$OnDialogButtonClick;->this$0:Lcom/miui/player/ui/MusicInfoEditDialog;

    #getter for: Lcom/miui/player/ui/MusicInfoEditDialog;->mUnknownAlbum:Ljava/lang/String;
    invoke-static {v4}, Lcom/miui/player/ui/MusicInfoEditDialog;->access$500(Lcom/miui/player/ui/MusicInfoEditDialog;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 203
    :cond_3
    const-string v1, ""

    .line 205
    :cond_4
    const-string v4, "search_track_name"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    iget-object v4, p0, Lcom/miui/player/ui/MusicInfoEditDialog$OnDialogButtonClick;->this$0:Lcom/miui/player/ui/MusicInfoEditDialog;

    #getter for: Lcom/miui/player/ui/MusicInfoEditDialog;->mAlbumEditText:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/miui/player/ui/MusicInfoEditDialog;->access$600(Lcom/miui/player/ui/MusicInfoEditDialog;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 208
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/miui/player/ui/MusicInfoEditDialog$OnDialogButtonClick;->this$0:Lcom/miui/player/ui/MusicInfoEditDialog;

    #getter for: Lcom/miui/player/ui/MusicInfoEditDialog;->mUnknownAlbum:Ljava/lang/String;
    invoke-static {v4}, Lcom/miui/player/ui/MusicInfoEditDialog;->access$500(Lcom/miui/player/ui/MusicInfoEditDialog;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 209
    :cond_5
    const-string v1, ""

    .line 211
    :cond_6
    const-string v4, "search_album_name"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    iget-object v4, p0, Lcom/miui/player/ui/MusicInfoEditDialog$OnDialogButtonClick;->this$0:Lcom/miui/player/ui/MusicInfoEditDialog;

    #getter for: Lcom/miui/player/ui/MusicInfoEditDialog;->mArtistEditText:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/miui/player/ui/MusicInfoEditDialog;->access$700(Lcom/miui/player/ui/MusicInfoEditDialog;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/miui/player/ui/MusicInfoEditDialog$OnDialogButtonClick;->this$0:Lcom/miui/player/ui/MusicInfoEditDialog;

    #getter for: Lcom/miui/player/ui/MusicInfoEditDialog;->mUnknownArtist:Ljava/lang/String;
    invoke-static {v4}, Lcom/miui/player/ui/MusicInfoEditDialog;->access$800(Lcom/miui/player/ui/MusicInfoEditDialog;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 215
    :cond_7
    const-string v1, ""

    .line 217
    :cond_8
    const-string v4, "search_artist_name"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    iget-object v4, p0, Lcom/miui/player/ui/MusicInfoEditDialog$OnDialogButtonClick;->this$0:Lcom/miui/player/ui/MusicInfoEditDialog;

    #getter for: Lcom/miui/player/ui/MusicInfoEditDialog;->mId3EditCheckBox:Landroid/widget/CheckBox;
    invoke-static {v4}, Lcom/miui/player/ui/MusicInfoEditDialog;->access$200(Lcom/miui/player/ui/MusicInfoEditDialog;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    .line 219
    .local v3, needModifyId3:Z
    const-string v4, "modify_id3"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 221
    const-string v4, "raw_track_name"

    iget-object v5, p0, Lcom/miui/player/ui/MusicInfoEditDialog$OnDialogButtonClick;->this$0:Lcom/miui/player/ui/MusicInfoEditDialog;

    #getter for: Lcom/miui/player/ui/MusicInfoEditDialog;->mRawTrackName:Ljava/lang/String;
    invoke-static {v5}, Lcom/miui/player/ui/MusicInfoEditDialog;->access$900(Lcom/miui/player/ui/MusicInfoEditDialog;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    const-string v4, "raw_album_name"

    iget-object v5, p0, Lcom/miui/player/ui/MusicInfoEditDialog$OnDialogButtonClick;->this$0:Lcom/miui/player/ui/MusicInfoEditDialog;

    #getter for: Lcom/miui/player/ui/MusicInfoEditDialog;->mRawAlbumName:Ljava/lang/String;
    invoke-static {v5}, Lcom/miui/player/ui/MusicInfoEditDialog;->access$1000(Lcom/miui/player/ui/MusicInfoEditDialog;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const-string v4, "raw_artist_name"

    iget-object v5, p0, Lcom/miui/player/ui/MusicInfoEditDialog$OnDialogButtonClick;->this$0:Lcom/miui/player/ui/MusicInfoEditDialog;

    #getter for: Lcom/miui/player/ui/MusicInfoEditDialog;->mRawArtistName:Ljava/lang/String;
    invoke-static {v5}, Lcom/miui/player/ui/MusicInfoEditDialog;->access$1100(Lcom/miui/player/ui/MusicInfoEditDialog;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const-string v4, "raw_path"

    iget-object v4, p0, Lcom/miui/player/ui/MusicInfoEditDialog$OnDialogButtonClick;->this$0:Lcom/miui/player/ui/MusicInfoEditDialog;

    #getter for: Lcom/miui/player/ui/MusicInfoEditDialog;->mBundle:Landroid/os/Bundle;
    invoke-static {v4}, Lcom/miui/player/ui/MusicInfoEditDialog;->access$1200(Lcom/miui/player/ui/MusicInfoEditDialog;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "raw_path"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string v4, "track_id"

    iget-object v5, p0, Lcom/miui/player/ui/MusicInfoEditDialog$OnDialogButtonClick;->this$0:Lcom/miui/player/ui/MusicInfoEditDialog;

    #getter for: Lcom/miui/player/ui/MusicInfoEditDialog;->mTrackId:J
    invoke-static {v5}, Lcom/miui/player/ui/MusicInfoEditDialog;->access$1300(Lcom/miui/player/ui/MusicInfoEditDialog;)J

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 227
    const-string v4, "album_id"

    iget-object v5, p0, Lcom/miui/player/ui/MusicInfoEditDialog$OnDialogButtonClick;->this$0:Lcom/miui/player/ui/MusicInfoEditDialog;

    #getter for: Lcom/miui/player/ui/MusicInfoEditDialog;->mAlbumId:J
    invoke-static {v5}, Lcom/miui/player/ui/MusicInfoEditDialog;->access$1400(Lcom/miui/player/ui/MusicInfoEditDialog;)J

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 228
    const/4 v0, 0x1

    goto/16 :goto_0
.end method
