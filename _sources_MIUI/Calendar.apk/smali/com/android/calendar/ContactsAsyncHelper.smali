.class public Lcom/android/calendar/ContactsAsyncHelper;
.super Landroid/os/Handler;
.source "ContactsAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/ContactsAsyncHelper$1;,
        Lcom/android/calendar/ContactsAsyncHelper$WorkerHandler;,
        Lcom/android/calendar/ContactsAsyncHelper$WorkerArgs;,
        Lcom/android/calendar/ContactsAsyncHelper$OnImageLoadCompleteListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DEFAULT_TOKEN:I = -0x1

.field private static final EVENT_LOAD_IMAGE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "ContactsAsyncHelper"

.field private static sInstance:Lcom/android/calendar/ContactsAsyncHelper;

.field private static sThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/android/calendar/ContactsAsyncHelper;

    invoke-direct {v0}, Lcom/android/calendar/ContactsAsyncHelper;-><init>()V

    sput-object v0, Lcom/android/calendar/ContactsAsyncHelper;->sInstance:Lcom/android/calendar/ContactsAsyncHelper;

    .line 64
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 123
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 124
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ContactsAsyncWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 126
    new-instance v1, Lcom/android/calendar/ContactsAsyncHelper$WorkerHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/calendar/ContactsAsyncHelper$WorkerHandler;-><init>(Lcom/android/calendar/ContactsAsyncHelper;Landroid/os/Looper;)V

    sput-object v1, Lcom/android/calendar/ContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    .line 127
    return-void
.end method

.method public static final updateImageViewWithContactPhotoAsync(Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V
    .locals 5
    .parameter "context"
    .parameter "imageView"
    .parameter "person"
    .parameter "placeholderImageResource"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 140
    if-nez p2, :cond_0

    .line 142
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 176
    :goto_0
    return-void

    .line 151
    :cond_0
    new-instance v0, Lcom/android/calendar/ContactsAsyncHelper$WorkerArgs;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/calendar/ContactsAsyncHelper$WorkerArgs;-><init>(Lcom/android/calendar/ContactsAsyncHelper$1;)V

    .line 152
    .local v0, args:Lcom/android/calendar/ContactsAsyncHelper$WorkerArgs;
    iput-object p0, v0, Lcom/android/calendar/ContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    .line 153
    iput-object p1, v0, Lcom/android/calendar/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    .line 154
    iput-object p2, v0, Lcom/android/calendar/ContactsAsyncHelper$WorkerArgs;->uri:Landroid/net/Uri;

    .line 155
    iput p3, v0, Lcom/android/calendar/ContactsAsyncHelper$WorkerArgs;->defaultResource:I

    .line 158
    sget-object v2, Lcom/android/calendar/ContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 159
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 160
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 167
    if-eq p3, v3, :cond_1

    .line 168
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 169
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 175
    :goto_1
    sget-object v2, Lcom/android/calendar/ContactsAsyncHelper;->sThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 171
    :cond_1
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 183
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/calendar/ContactsAsyncHelper$WorkerArgs;

    .line 184
    .local v0, args:Lcom/android/calendar/ContactsAsyncHelper$WorkerArgs;
    iget v2, p1, Landroid/os/Message;->arg1:I

    packed-switch v2, :pswitch_data_0

    .line 201
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 186
    .restart local p0
    :pswitch_0
    const/4 v1, 0x0

    .line 190
    .local v1, imagePresent:Z
    iget-object v2, v0, Lcom/android/calendar/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 191
    iget-object v2, v0, Lcom/android/calendar/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 192
    iget-object v2, v0, Lcom/android/calendar/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    iget-object p0, v0, Lcom/android/calendar/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 193
    const/4 v1, 0x1

    goto :goto_0

    .line 194
    .restart local p0
    :cond_1
    iget v2, v0, Lcom/android/calendar/ContactsAsyncHelper$WorkerArgs;->defaultResource:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 195
    iget-object v2, v0, Lcom/android/calendar/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 196
    iget-object v2, v0, Lcom/android/calendar/ContactsAsyncHelper$WorkerArgs;->view:Landroid/widget/ImageView;

    iget v3, v0, Lcom/android/calendar/ContactsAsyncHelper$WorkerArgs;->defaultResource:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 184
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
