.class final Lcom/google/android/apps/uploader/C;
.super Landroid/widget/ResourceCursorAdapter;


# instance fields
.field private a:Ljava/util/HashMap;

.field private synthetic b:Lcom/google/android/apps/uploader/ManagerActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/uploader/ManagerActivity;Landroid/database/Cursor;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/apps/uploader/C;->b:Lcom/google/android/apps/uploader/ManagerActivity;

    const v0, 0x7f030003

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/C;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(J)Lcom/google/android/apps/uploader/r;
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/uploader/C;->a:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/uploader/r;

    return-object p0
.end method

.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10

    invoke-static {p3}, Lcom/google/android/apps/uploader/H;->a(Landroid/database/Cursor;)Lcom/google/android/apps/uploader/r;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/apps/uploader/C;->a:Ljava/util/HashMap;

    invoke-virtual {v5}, Lcom/google/android/apps/uploader/r;->j()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7f080009

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const v0, 0x7f080010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v0, 0x7f080011

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f080012

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f080013

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f080014

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f080015

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    const v6, 0x7f080016

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/google/android/apps/uploader/C;->b:Lcom/google/android/apps/uploader/ManagerActivity;

    invoke-static {v6}, Lcom/google/android/apps/uploader/ManagerActivity;->a(Lcom/google/android/apps/uploader/ManagerActivity;)Lcom/google/android/apps/uploader/UploaderApplication;

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/android/apps/uploader/r;->j()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/google/android/apps/uploader/UploaderApplication;->a(J)Landroid/graphics/Bitmap;

    move-result-object v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Lcom/google/android/apps/uploader/r;->l()[B

    move-result-object v6

    const/4 v7, 0x0

    array-length v8, v6

    invoke-static {v6, v7, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/uploader/C;->b:Lcom/google/android/apps/uploader/ManagerActivity;

    invoke-static {v7}, Lcom/google/android/apps/uploader/ManagerActivity;->a(Lcom/google/android/apps/uploader/ManagerActivity;)Lcom/google/android/apps/uploader/UploaderApplication;

    move-result-object v7

    invoke-virtual {v5}, Lcom/google/android/apps/uploader/r;->j()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9, v6}, Lcom/google/android/apps/uploader/UploaderApplication;->a(JLandroid/graphics/Bitmap;)V

    :cond_0
    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5}, Lcom/google/android/apps/uploader/r;->k()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Lcom/google/android/apps/uploader/r;->i()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/apps/uploader/C;->b:Lcom/google/android/apps/uploader/ManagerActivity;

    invoke-virtual {v5}, Lcom/google/android/apps/uploader/r;->m()J

    move-result-wide v6

    invoke-static {v0, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v5}, Lcom/google/android/apps/uploader/r;->a()Lcom/google/android/apps/uploader/F;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/F;->b()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/uploader/C;->b:Lcom/google/android/apps/uploader/ManagerActivity;

    invoke-static {v1}, Lcom/google/android/apps/uploader/ManagerActivity;->b(Lcom/google/android/apps/uploader/ManagerActivity;)Lcom/google/android/apps/uploader/UploadService;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/apps/uploader/C;->b:Lcom/google/android/apps/uploader/ManagerActivity;

    invoke-static {v1}, Lcom/google/android/apps/uploader/ManagerActivity;->b(Lcom/google/android/apps/uploader/ManagerActivity;)Lcom/google/android/apps/uploader/UploadService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/UploadService;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v5}, Lcom/google/android/apps/uploader/r;->r()Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f060025

    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v5}, Lcom/google/android/apps/uploader/r;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    invoke-virtual {v5}, Lcom/google/android/apps/uploader/r;->a()Lcom/google/android/apps/uploader/F;

    move-result-object v1

    sget-object v6, Lcom/google/android/apps/uploader/F;->b:Lcom/google/android/apps/uploader/F;

    if-ne v1, v6, :cond_1

    invoke-virtual {v5}, Lcom/google/android/apps/uploader/r;->o()I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "%"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/android/apps/uploader/C;->b:Lcom/google/android/apps/uploader/ManagerActivity;

    invoke-static {v1, v4}, Lcom/google/android/apps/uploader/ManagerActivity;->a(Lcom/google/android/apps/uploader/ManagerActivity;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/google/android/apps/uploader/C;->b:Lcom/google/android/apps/uploader/ManagerActivity;

    invoke-static {v1, p1}, Lcom/google/android/apps/uploader/ManagerActivity;->a(Lcom/google/android/apps/uploader/ManagerActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    goto :goto_0
.end method
