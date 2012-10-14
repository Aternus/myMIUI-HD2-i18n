.class public Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;
.super Lcom/google/android/apps/uploader/clients/SettingsActivity;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/RadioButton;

.field private i:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->d:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->c:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const v1, 0x7f020006

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_0
    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    const v1, 0x7f020007

    goto :goto_1
.end method

.method static synthetic b(Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->j()V

    return-void
.end method

.method static synthetic c(Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->i:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private j()V
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->h:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f060040

    :goto_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_0
    const v2, 0x7f060041

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_1
    const v0, 0x7f06003d

    goto :goto_0

    :pswitch_2
    const v0, 0x7f050006

    goto :goto_0

    :pswitch_3
    const v0, 0x7f06004c

    goto :goto_0

    :pswitch_4
    const v0, 0x7f06004f

    goto :goto_0

    :pswitch_5
    const v0, 0x7f060050

    goto :goto_0

    :pswitch_6
    const v0, 0x7f060051

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected final a()Landroid/view/View;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030004

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f080008

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->a:Landroid/widget/TextView;

    const v0, 0x7f080017

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->b:Landroid/widget/TextView;

    const v0, 0x7f080018

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->e:Landroid/widget/EditText;

    const v0, 0x7f080019

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f08001a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->c:Landroid/widget/ImageView;

    const v0, 0x7f08001b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->d:Landroid/view/View;

    const v0, 0x7f08001f

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->f:Landroid/widget/EditText;

    const v0, 0x7f08001c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->g:Landroid/widget/EditText;

    const v0, 0x7f08001d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->h:Landroid/widget/RadioButton;

    const v0, 0x7f08001e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    const v1, 0x7f080020

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->i:Landroid/widget/CheckBox;

    const v1, 0x7f080021

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->g()I

    move-result v1

    if-le v1, v8, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->a:Landroid/widget/TextView;

    const v4, 0x7f06003f

    invoke-virtual {p0, v4}, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->g()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-direct {p0}, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->j()V

    invoke-virtual {p0, v7}, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "details_expanded"

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->a(Z)V

    new-instance v4, Lcom/google/android/apps/uploader/clients/youtube/e;

    invoke-direct {v4, p0}, Lcom/google/android/apps/uploader/clients/youtube/e;-><init>(Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->h:Landroid/widget/RadioButton;

    const-string v4, "last_public"

    invoke-interface {v1, v4, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v3, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->h:Landroid/widget/RadioButton;

    new-instance v4, Lcom/google/android/apps/uploader/clients/youtube/d;

    invoke-direct {v4, p0, v1}, Lcom/google/android/apps/uploader/clients/youtube/d;-><init>(Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;Landroid/content/SharedPreferences;)V

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v3, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->h:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v8

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->i:Landroid/widget/CheckBox;

    const-string v3, "last_location"

    invoke-interface {v1, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->i:Landroid/widget/CheckBox;

    new-instance v3, Lcom/google/android/apps/uploader/clients/youtube/c;

    invoke-direct {v3, p0, v1}, Lcom/google/android/apps/uploader/clients/youtube/c;-><init>(Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object v2

    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->a:Landroid/widget/TextView;

    const v4, 0x7f06003e

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    move v3, v7

    goto :goto_1
.end method

.method protected final a(Lcom/google/android/apps/uploader/E;)Ljava/lang/String;
    .locals 10

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/E;->e()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/E;->e()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f050001

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3, v1}, Lcom/google/android/apps/uploader/clients/youtube/a;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f050004

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const v3, 0x7f050005

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const v4, 0x7f050003

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const v5, 0x7f06004b

    invoke-virtual {p0, v5}, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/apps/uploader/clients/youtube/a;->a(Ljava/lang/String;IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f050002

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const v2, 0x7f06004a

    invoke-virtual {p0, v2}, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/google/android/apps/uploader/clients/youtube/a;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->i:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/E;->a()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "latitude"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "longitude"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const-string v2, "latitude"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "longitude"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v1, Landroid/location/Location;

    const-string v4, "VideoColumns"

    invoke-direct {v1, v4}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3f50624dd2f1a9fcL

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3f50624dd2f1a9fcL

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    move-object v0, v1

    :goto_0
    const-string v1, "MediaUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got video location "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    if-eqz v0, :cond_3

    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    :goto_1
    const-string v1, "MediaUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got current location "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez v0, :cond_2

    new-instance v1, Lcom/google/android/apps/uploader/clients/youtube/b;

    invoke-direct {v1, p0}, Lcom/google/android/apps/uploader/clients/youtube/b;-><init>(Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;)V

    invoke-virtual {p0, v1}, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    move-object v6, v0

    :goto_2
    invoke-virtual {p1}, Lcom/google/android/apps/uploader/E;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/E;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->h:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v5

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/uploader/clients/youtube/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const-string v0, "MediaUploader"

    const-string v1, "No location manager"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_0

    :cond_6
    move-object v6, v0

    goto :goto_2
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    const-string v0, "http://uploads.gdata.youtube.com/feeds/api/users/default/uploads"

    return-object v0
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    const-string v0, "youtube"

    return-object v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 5

    const v0, 0x7f06003d

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const v2, 0x7f06001a

    invoke-virtual {p0, v2}, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected final e()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "details_expanded"

    iget-object v2, p0, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method protected final f()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->f()V

    invoke-direct {p0}, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->j()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/google/android/apps/uploader/clients/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v1, "kr"

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->getApplication()Landroid/app/Application;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v3, v6

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/UploaderApplication;

    const-string v4, "phone"

    invoke-virtual {v0, v4}, Lcom/google/android/apps/uploader/UploaderApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v6

    :goto_2
    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    const-string v1, "MediaUploader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Country restricted "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    :goto_3
    if-eqz v0, :cond_0

    const v0, 0x7f06004d

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/clients/youtube/YouTubeSettingsActivity;->finish()V

    :cond_0
    return-void

    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    move v1, v5

    goto :goto_2

    :cond_4
    move v0, v5

    goto :goto_3
.end method
