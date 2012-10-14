.class public Lcom/android/contacts/ui/widget/PhotoEditorView;
.super Landroid/widget/LinearLayout;
.source "PhotoEditorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/contacts/model/Editor;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

.field private mHasSetPhoto:Z

.field private mListener:Lcom/android/contacts/model/Editor$EditorListener;

.field private mPhoto:Landroid/widget/ImageView;

.field private mReadOnly:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/ui/widget/PhotoEditorView;->mHasSetPhoto:Z

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/ui/widget/PhotoEditorView;->mHasSetPhoto:Z

    .line 64
    return-void
.end method


# virtual methods
.method public getPhoto()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/contacts/ui/widget/PhotoEditorView;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public hasSetPhoto()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/contacts/ui/widget/PhotoEditorView;->mHasSetPhoto:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/contacts/ui/widget/PhotoEditorView;->mListener:Lcom/android/contacts/model/Editor$EditorListener;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/contacts/ui/widget/PhotoEditorView;->mListener:Lcom/android/contacts/model/Editor$EditorListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/contacts/model/Editor$EditorListener;->onRequest(I)V

    .line 79
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 70
    const v0, 0x7f070099

    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/widget/PhotoEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/ui/widget/PhotoEditorView;->mPhoto:Landroid/widget/ImageView;

    .line 71
    iget-object v0, p0, Lcom/android/contacts/ui/widget/PhotoEditorView;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-void
.end method

.method protected resetDefault()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 185
    iget-object v0, p0, Lcom/android/contacts/ui/widget/PhotoEditorView;->mPhoto:Landroid/widget/ImageView;

    const v1, 0x10803b6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 186
    iget-object v0, p0, Lcom/android/contacts/ui/widget/PhotoEditorView;->mPhoto:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/contacts/ui/widget/PhotoEditorView;->mReadOnly:Z

    if-nez v1, :cond_0

    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 187
    iput-boolean v2, p0, Lcom/android/contacts/ui/widget/PhotoEditorView;->mHasSetPhoto:Z

    .line 188
    iget-object v0, p0, Lcom/android/contacts/ui/widget/PhotoEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->setFromTemplate(Z)V

    .line 189
    return-void

    :cond_0
    move v1, v2

    .line 186
    goto :goto_0
.end method

.method public setEditorListener(Lcom/android/contacts/model/Editor$EditorListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/contacts/ui/widget/PhotoEditorView;->mListener:Lcom/android/contacts/model/Editor$EditorListener;

    .line 194
    return-void
.end method

.method public setPhotoBitmap(Landroid/graphics/Bitmap;)V
    .locals 7
    .parameter "photo"

    .prologue
    const-string v5, "data15"

    const-string v6, "PhotoEditorView"

    .line 138
    if-nez p1, :cond_0

    .line 140
    iget-object v4, p0, Lcom/android/contacts/ui/widget/PhotoEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v3, "data15"

    const/4 v3, 0x0

    check-cast v3, [B

    invoke-virtual {v4, v5, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;[B)V

    .line 141
    invoke-virtual {p0}, Lcom/android/contacts/ui/widget/PhotoEditorView;->resetDefault()V

    .line 170
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    mul-int/lit8 v2, v3, 0x4

    .line 146
    .local v2, size:I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 149
    .local v1, out:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 150
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 151
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 153
    iget-object v3, p0, Lcom/android/contacts/ui/widget/PhotoEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v4, "data15"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;[B)V

    .line 154
    iget-object v3, p0, Lcom/android/contacts/ui/widget/PhotoEditorView;->mPhoto:Landroid/widget/ImageView;

    const/4 v4, 0x7

    const/4 v5, 0x7

    invoke-static {p1, v4, v5}, Lcom/android/internal/util/GraphicsUtils;->makeRoundImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 156
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 157
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 158
    const-string v3, "PhotoEditorView"

    const-string v4, "bitmap after make round image recycle"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/ui/widget/PhotoEditorView;->mPhoto:Landroid/widget/ImageView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 162
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/contacts/ui/widget/PhotoEditorView;->mHasSetPhoto:Z

    .line 163
    iget-object v3, p0, Lcom/android/contacts/ui/widget/PhotoEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->setFromTemplate(Z)V

    .line 166
    iget-object v3, p0, Lcom/android/contacts/ui/widget/PhotoEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    const-string v4, "is_super_primary"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 167
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 168
    .local v0, e:Ljava/io/IOException;
    const-string v3, "PhotoEditorView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to serialize photo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setValues(Lcom/android/contacts/model/ContactsSource$DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/ui/ViewIdGenerator;)V
    .locals 8
    .parameter "kind"
    .parameter "values"
    .parameter "state"
    .parameter "readOnly"
    .parameter "vig"

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v7, "PhotoEditorView"

    .line 89
    iput-object p2, p0, Lcom/android/contacts/ui/widget/PhotoEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 90
    iput-boolean p4, p0, Lcom/android/contacts/ui/widget/PhotoEditorView;->mReadOnly:Z

    .line 91
    invoke-virtual {p5, p3, p1, p2, v4}, Lcom/android/contacts/ui/ViewIdGenerator;->getId(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/ContactsSource$DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/contacts/ui/widget/PhotoEditorView;->setId(I)V

    .line 93
    if-eqz p2, :cond_3

    .line 95
    const-string v2, "data15"

    invoke-virtual {p2, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 96
    .local v0, photoBytes:[B
    if-eqz v0, :cond_3

    .line 97
    array-length v2, v0

    invoke-static {v0, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 101
    .local v1, src:Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    .line 102
    const-string v2, "PhotoEditorView"

    const-string v2, "decode photo failed"

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .end local v0           #photoBytes:[B
    .end local v1           #src:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 106
    .restart local v0       #photoBytes:[B
    .restart local v1       #src:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/ui/widget/PhotoEditorView;->mPhoto:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 107
    invoke-static {v1, v6, v6}, Lcom/android/internal/util/GraphicsUtils;->makeRoundImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/ui/widget/PhotoEditorView;->mBitmap:Landroid/graphics/Bitmap;

    .line 108
    iget-object v2, p0, Lcom/android/contacts/ui/widget/PhotoEditorView;->mPhoto:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/contacts/ui/widget/PhotoEditorView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 110
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 111
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 112
    const-string v2, "PhotoEditorView"

    const-string v2, "bitmap after make round image recycle"

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/contacts/ui/widget/PhotoEditorView;->setEnabled(Z)V

    .line 116
    iput-boolean v5, p0, Lcom/android/contacts/ui/widget/PhotoEditorView;->mHasSetPhoto:Z

    .line 117
    iget-object v2, p0, Lcom/android/contacts/ui/widget/PhotoEditorView;->mEntry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v2, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->setFromTemplate(Z)V

    .line 121
    .end local v0           #photoBytes:[B
    .end local v1           #src:Landroid/graphics/Bitmap;
    :cond_3
    iget-boolean v2, p0, Lcom/android/contacts/ui/widget/PhotoEditorView;->mHasSetPhoto:Z

    if-nez v2, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/android/contacts/ui/widget/PhotoEditorView;->resetDefault()V

    goto :goto_0
.end method
