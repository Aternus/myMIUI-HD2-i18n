.class final enum Lcom/android/contacts/TwelveKeyDialer$FilterState;
.super Ljava/lang/Enum;
.source "TwelveKeyDialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/TwelveKeyDialer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FilterState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/contacts/TwelveKeyDialer$FilterState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/contacts/TwelveKeyDialer$FilterState;

.field public static final enum Accepted:Lcom/android/contacts/TwelveKeyDialer$FilterState;

.field public static final enum Called:Lcom/android/contacts/TwelveKeyDialer$FilterState;

.field public static final enum Missed:Lcom/android/contacts/TwelveKeyDialer$FilterState;

.field public static final enum None:Lcom/android/contacts/TwelveKeyDialer$FilterState;

.field public static final enum Stranger:Lcom/android/contacts/TwelveKeyDialer$FilterState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 203
    new-instance v0, Lcom/android/contacts/TwelveKeyDialer$FilterState;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/TwelveKeyDialer$FilterState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/TwelveKeyDialer$FilterState;->None:Lcom/android/contacts/TwelveKeyDialer$FilterState;

    .line 204
    new-instance v0, Lcom/android/contacts/TwelveKeyDialer$FilterState;

    const-string v1, "Missed"

    invoke-direct {v0, v1, v3}, Lcom/android/contacts/TwelveKeyDialer$FilterState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/TwelveKeyDialer$FilterState;->Missed:Lcom/android/contacts/TwelveKeyDialer$FilterState;

    .line 205
    new-instance v0, Lcom/android/contacts/TwelveKeyDialer$FilterState;

    const-string v1, "Called"

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/TwelveKeyDialer$FilterState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/TwelveKeyDialer$FilterState;->Called:Lcom/android/contacts/TwelveKeyDialer$FilterState;

    .line 206
    new-instance v0, Lcom/android/contacts/TwelveKeyDialer$FilterState;

    const-string v1, "Accepted"

    invoke-direct {v0, v1, v5}, Lcom/android/contacts/TwelveKeyDialer$FilterState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/TwelveKeyDialer$FilterState;->Accepted:Lcom/android/contacts/TwelveKeyDialer$FilterState;

    .line 207
    new-instance v0, Lcom/android/contacts/TwelveKeyDialer$FilterState;

    const-string v1, "Stranger"

    invoke-direct {v0, v1, v6}, Lcom/android/contacts/TwelveKeyDialer$FilterState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/TwelveKeyDialer$FilterState;->Stranger:Lcom/android/contacts/TwelveKeyDialer$FilterState;

    .line 202
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/contacts/TwelveKeyDialer$FilterState;

    sget-object v1, Lcom/android/contacts/TwelveKeyDialer$FilterState;->None:Lcom/android/contacts/TwelveKeyDialer$FilterState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/contacts/TwelveKeyDialer$FilterState;->Missed:Lcom/android/contacts/TwelveKeyDialer$FilterState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/contacts/TwelveKeyDialer$FilterState;->Called:Lcom/android/contacts/TwelveKeyDialer$FilterState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/contacts/TwelveKeyDialer$FilterState;->Accepted:Lcom/android/contacts/TwelveKeyDialer$FilterState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/contacts/TwelveKeyDialer$FilterState;->Stranger:Lcom/android/contacts/TwelveKeyDialer$FilterState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/contacts/TwelveKeyDialer$FilterState;->$VALUES:[Lcom/android/contacts/TwelveKeyDialer$FilterState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 202
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getFilterMenuTextId()I
    .locals 1

    .prologue
    .line 210
    const v0, 0x7f060003

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/contacts/TwelveKeyDialer$FilterState;
    .locals 1
    .parameter

    .prologue
    .line 202
    const-class v0, Lcom/android/contacts/TwelveKeyDialer$FilterState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/contacts/TwelveKeyDialer$FilterState;

    return-object p0
.end method

.method public static values()[Lcom/android/contacts/TwelveKeyDialer$FilterState;
    .locals 1

    .prologue
    .line 202
    sget-object v0, Lcom/android/contacts/TwelveKeyDialer$FilterState;->$VALUES:[Lcom/android/contacts/TwelveKeyDialer$FilterState;

    invoke-virtual {v0}, [Lcom/android/contacts/TwelveKeyDialer$FilterState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/contacts/TwelveKeyDialer$FilterState;

    return-object v0
.end method


# virtual methods
.method public getDeleteMenuTextId()I
    .locals 2

    .prologue
    .line 234
    sget-object v0, Lcom/android/contacts/TwelveKeyDialer$9;->$SwitchMap$com$android$contacts$TwelveKeyDialer$FilterState:[I

    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer$FilterState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 240
    const v0, 0x7f0b013e

    :goto_0
    return v0

    .line 235
    :pswitch_0
    const v0, 0x7f0b013f

    goto :goto_0

    .line 236
    :pswitch_1
    const v0, 0x7f0b0140

    goto :goto_0

    .line 237
    :pswitch_2
    const v0, 0x7f0b0141

    goto :goto_0

    .line 238
    :pswitch_3
    const v0, 0x7f0b0142

    goto :goto_0

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getFilter()Ljava/lang/String;
    .locals 2

    .prologue
    .line 224
    sget-object v0, Lcom/android/contacts/TwelveKeyDialer$9;->$SwitchMap$com$android$contacts$TwelveKeyDialer$FilterState:[I

    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer$FilterState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 230
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 225
    :pswitch_0
    const-string v0, "type=3"

    goto :goto_0

    .line 226
    :pswitch_1
    const-string v0, "type=2"

    goto :goto_0

    .line 227
    :pswitch_2
    const-string v0, "type=1"

    goto :goto_0

    .line 228
    :pswitch_3
    const-string v0, "contactid<0"

    goto :goto_0

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getIndex()I
    .locals 2

    .prologue
    .line 214
    sget-object v0, Lcom/android/contacts/TwelveKeyDialer$9;->$SwitchMap$com$android$contacts$TwelveKeyDialer$FilterState:[I

    invoke-virtual {p0}, Lcom/android/contacts/TwelveKeyDialer$FilterState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 220
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 215
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 216
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 217
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 218
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
