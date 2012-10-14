.class public Lcom/android/bluetooth/opp/BluetoothOppPreference;
.super Ljava/lang/Object;
.source "BluetoothOppPreference.java"


# static fields
.field private static INSTANCE:Lcom/android/bluetooth/opp/BluetoothOppPreference;

.field private static INSTANCE_LOCK:Ljava/lang/Object;


# instance fields
.field private mChannelPreference:Landroid/content/SharedPreferences;

.field private mChannels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInitialized:Z

.field private mNamePreference:Landroid/content/SharedPreferences;

.field private mNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->INSTANCE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mChannels:Ljava/util/HashMap;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mNames:Ljava/util/HashMap;

    return-void
.end method

.method private getChannelKey(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;
    .locals 2
    .parameter "remoteDevice"
    .parameter "uuid"

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppPreference;
    .locals 2
    .parameter "context"

    .prologue
    .line 70
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 71
    :try_start_0
    sget-object v1, Lcom/android/bluetooth/opp/BluetoothOppPreference;->INSTANCE:Lcom/android/bluetooth/opp/BluetoothOppPreference;

    if-nez v1, :cond_0

    .line 72
    new-instance v1, Lcom/android/bluetooth/opp/BluetoothOppPreference;

    invoke-direct {v1}, Lcom/android/bluetooth/opp/BluetoothOppPreference;-><init>()V

    sput-object v1, Lcom/android/bluetooth/opp/BluetoothOppPreference;->INSTANCE:Lcom/android/bluetooth/opp/BluetoothOppPreference;

    .line 74
    :cond_0
    sget-object v1, Lcom/android/bluetooth/opp/BluetoothOppPreference;->INSTANCE:Lcom/android/bluetooth/opp/BluetoothOppPreference;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/opp/BluetoothOppPreference;->init(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 75
    const/4 v1, 0x0

    monitor-exit v0

    move-object v0, v1

    .line 77
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lcom/android/bluetooth/opp/BluetoothOppPreference;->INSTANCE:Lcom/android/bluetooth/opp/BluetoothOppPreference;

    monitor-exit v0

    move-object v0, v1

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private init(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 82
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mInitialized:Z

    if-eqz v0, :cond_0

    move v0, v2

    .line 96
    :goto_0
    return v0

    .line 84
    :cond_0
    iput-boolean v2, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mInitialized:Z

    .line 86
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mContext:Landroid/content/Context;

    .line 88
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mContext:Landroid/content/Context;

    const-string v1, "btopp_names"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mNamePreference:Landroid/content/SharedPreferences;

    .line 90
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mContext:Landroid/content/Context;

    const-string v1, "btopp_channels"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mChannelPreference:Landroid/content/SharedPreferences;

    .line 93
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mNamePreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mNames:Ljava/util/HashMap;

    .line 94
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mChannelPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mChannels:Ljava/util/HashMap;

    move v0, v2

    .line 96
    goto :goto_0
.end method


# virtual methods
.method public getChannel(Landroid/bluetooth/BluetoothDevice;I)I
    .locals 3
    .parameter "remoteDevice"
    .parameter "uuid"

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/opp/BluetoothOppPreference;->getChannelKey(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, key:Ljava/lang/String;
    const/4 v0, 0x0

    .line 120
    .local v0, channel:Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mChannels:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 121
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mChannels:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #channel:Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .line 125
    .restart local v0       #channel:Ljava/lang/Integer;
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    return v2

    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 3
    .parameter "remoteDevice"

    .prologue
    .line 104
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FF:FF:FF:00:00:00"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    const-string v1, "localhost"

    .line 113
    :goto_0
    return-object v1

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mNames:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mNames:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 109
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 110
    goto :goto_0

    .line 113
    .end local v0           #name:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeChannel(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 3
    .parameter "remoteDevice"
    .parameter "uuid"

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/opp/BluetoothOppPreference;->getChannelKey(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, key:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mChannelPreference:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 153
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 154
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 155
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mChannels:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    return-void
.end method

.method public setChannel(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 4
    .parameter "remoteDevice"
    .parameter "uuid"
    .parameter "channel"

    .prologue
    .line 141
    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/opp/BluetoothOppPreference;->getChannel(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v2

    if-eq p3, v2, :cond_0

    .line 142
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/opp/BluetoothOppPreference;->getChannelKey(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, key:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mChannelPreference:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 144
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 145
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 146
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mChannels:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    .end local v1           #key:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setName(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    .locals 3
    .parameter "remoteDevice"
    .parameter "name"

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppPreference;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mNamePreference:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 132
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 133
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 134
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppPreference;->mNames:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method
