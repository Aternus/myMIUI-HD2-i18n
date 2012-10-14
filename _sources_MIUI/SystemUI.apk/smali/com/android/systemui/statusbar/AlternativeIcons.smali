.class public Lcom/android/systemui/statusbar/AlternativeIcons;
.super Ljava/lang/Object;
.source "AlternativeIcons.java"


# static fields
.field private static sMapping:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/Integer;Z)I
    .locals 9
    .parameter "originalId"
    .parameter "enableAlternative"

    .prologue
    const v8, 0x7f020045

    const v7, 0x7f02002a

    const v6, 0x7f020028

    const v5, 0x7f020026

    const v4, 0x7f020023

    .line 27
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    .line 29
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f02001a

    const v3, 0x7f02001b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 35
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f02001d

    const v3, 0x7f02001e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 37
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f02001f

    const v3, 0x7f020020

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 39
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020027

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 41
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020049

    const v3, 0x7f02004a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 43
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f02005e

    const v3, 0x7f02005f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 45
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020054

    const v3, 0x7f020055

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 47
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f02002f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 49
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020035

    const v3, 0x7f02004a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020041

    const v3, 0x7f02005f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f02003b

    const v3, 0x7f020055

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020022

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020044

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020059

    const v3, 0x7f02005a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f02004f

    const v3, 0x7f020050

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 63
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f02002c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 65
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020032

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f02003e

    const v3, 0x7f02005a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 69
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020038

    const v3, 0x7f020050

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020025

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020047

    const v3, 0x7f020048

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f02005c

    const v3, 0x7f02005d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020052

    const v3, 0x7f020053

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f02002e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020034

    const v3, 0x7f020048

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 83
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020040

    const v3, 0x7f02005d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 85
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f02003a

    const v3, 0x7f020053

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 87
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020029

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 89
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f02004b

    const v3, 0x7f02004c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 91
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020060

    const v3, 0x7f020061

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020056

    const v3, 0x7f020057

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020030

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 97
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020036

    const v3, 0x7f02004c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 99
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020042

    const v3, 0x7f020061

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 101
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f02003c

    const v3, 0x7f020057

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 103
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020078

    const v3, 0x7f020079

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f02007b

    const v3, 0x7f02007c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 107
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f02008c

    const v3, 0x7f02008d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 109
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f02008e

    const v3, 0x7f02008f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 111
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f02007d

    const v3, 0x7f02007e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 113
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020080

    const v3, 0x7f020081

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 115
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020083

    const v3, 0x7f020084

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 117
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020086

    const v3, 0x7f020087

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 119
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020089

    const v3, 0x7f02008a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 121
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f02007f

    const v3, 0x7f02007e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 123
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020082

    const v3, 0x7f020081

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 125
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020085

    const v3, 0x7f020084

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 127
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020088

    const v3, 0x7f020087

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 129
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f02008b

    const v3, 0x7f02008a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 131
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020094

    const v3, 0x7f020095

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 133
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020097

    const v3, 0x7f020098

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 135
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f02009a

    const v3, 0x7f02009b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 137
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f02009d

    const v3, 0x7f02009e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 139
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200a0

    const v3, 0x7f0200a1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 141
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020096

    const v3, 0x7f020095

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 143
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020099

    const v3, 0x7f020098

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 145
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f02009c

    const v3, 0x7f02009b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 147
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f02009f

    const v3, 0x7f02009e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 149
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200a2

    const v3, 0x7f0200a1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 151
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200a3

    const v3, 0x7f0200a4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 153
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200a5

    const v3, 0x7f0200a6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 157
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200a9

    const v3, 0x7f0200aa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 159
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200ab

    const v3, 0x7f0200ac

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 161
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200ae

    const v3, 0x7f0200af

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 163
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200b1

    const v3, 0x7f0200b2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 165
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200b4

    const v3, 0x7f0200b5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 167
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200ad

    const v3, 0x7f0200ac

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 169
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200b0

    const v3, 0x7f0200af

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 171
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200b3

    const v3, 0x7f0200b2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 173
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200b6

    const v3, 0x7f0200b5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 183
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x10805e7

    const v3, 0x7f02007a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 191
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f02006c

    const v3, 0x7f02006d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 193
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f02006e

    const v3, 0x7f02006f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 195
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020070

    const v3, 0x7f020071

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 197
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020072

    const v3, 0x7f020073

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 199
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f020074

    const v3, 0x7f020075

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 201
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200b7

    const v3, 0x7f0200b8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 203
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200b9

    const v3, 0x7f0200ba

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 205
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200bb

    const v3, 0x7f0200bc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 207
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200bd

    const v3, 0x7f0200be

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 209
    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    const v2, 0x7f0200bf

    const v3, 0x7f0200c0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 213
    :cond_0
    if-eqz p1, :cond_1

    sget-object v1, Lcom/android/systemui/statusbar/AlternativeIcons;->sMapping:Landroid/util/SparseArray;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    move-object v0, p0

    .line 214
    .local v0, resultId:Ljava/lang/Integer;
    :goto_0
    if-nez v0, :cond_2

    const/4 v1, 0x0

    :goto_1
    return v1

    .end local v0           #resultId:Ljava/lang/Integer;
    .restart local p0
    :cond_1
    move-object v0, p0

    .line 213
    goto :goto_0

    .line 214
    .end local p0
    .restart local v0       #resultId:Ljava/lang/Integer;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1
.end method
