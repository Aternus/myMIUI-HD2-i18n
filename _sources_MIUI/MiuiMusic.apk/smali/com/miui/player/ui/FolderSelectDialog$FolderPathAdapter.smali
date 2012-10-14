.class public Lcom/miui/player/ui/FolderSelectDialog$FolderPathAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FolderSelectDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/FolderSelectDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FolderPathAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mPathArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/player/ui/FolderSelectDialog;


# direct methods
.method public constructor <init>(Lcom/miui/player/ui/FolderSelectDialog;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p4, pathArr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/miui/player/ui/FolderSelectDialog$FolderPathAdapter;->this$0:Lcom/miui/player/ui/FolderSelectDialog;

    .line 102
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 104
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/FolderSelectDialog$FolderPathAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 105
    iput-object p4, p0, Lcom/miui/player/ui/FolderSelectDialog$FolderPathAdapter;->mPathArr:Ljava/util/ArrayList;

    .line 106
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/miui/player/ui/FolderSelectDialog$FolderPathAdapter;->mPathArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x0

    .line 115
    const/4 v5, 0x0

    .line 116
    .local v5, view:Landroid/view/View;
    if-eqz p2, :cond_0

    .line 117
    move-object v5, p2

    .line 122
    :goto_0
    iget-object v6, p0, Lcom/miui/player/ui/FolderSelectDialog$FolderPathAdapter;->mPathArr:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 123
    .local v1, folderPath:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 124
    const/4 v6, 0x0

    .line 143
    :goto_1
    return-object v6

    .line 119
    .end local v1           #folderPath:Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/miui/player/ui/FolderSelectDialog$FolderPathAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030009

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    goto :goto_0

    .line 127
    .restart local v1       #folderPath:Ljava/lang/String;
    :cond_1
    const v6, 0x7f0c001e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 128
    .local v2, folderPathView:Landroid/widget/TextView;
    const-string v4, "/mnt"

    .line 129
    .local v4, prefix:Ljava/lang/String;
    move-object v3, v1

    .line 130
    .local v3, folderPathWithoutPrefix:Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 131
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 133
    :cond_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    const v6, 0x7f0c001f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 136
    .local v0, folderCheck:Landroid/widget/CheckBox;
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 137
    iget-object v6, p0, Lcom/miui/player/ui/FolderSelectDialog$FolderPathAdapter;->this$0:Lcom/miui/player/ui/FolderSelectDialog;

    #getter for: Lcom/miui/player/ui/FolderSelectDialog;->mSelectFolder:Ljava/util/HashSet;
    invoke-static {v6}, Lcom/miui/player/ui/FolderSelectDialog;->access$100(Lcom/miui/player/ui/FolderSelectDialog;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 138
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 142
    :goto_2
    iget-object v6, p0, Lcom/miui/player/ui/FolderSelectDialog$FolderPathAdapter;->this$0:Lcom/miui/player/ui/FolderSelectDialog;

    #getter for: Lcom/miui/player/ui/FolderSelectDialog;->mFolderCheckedChangeListener:Lcom/miui/player/ui/FolderSelectDialog$FolderCheckedChangeListener;
    invoke-static {v6}, Lcom/miui/player/ui/FolderSelectDialog;->access$200(Lcom/miui/player/ui/FolderSelectDialog;)Lcom/miui/player/ui/FolderSelectDialog$FolderCheckedChangeListener;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    move-object v6, v5

    .line 143
    goto :goto_1

    .line 140
    :cond_3
    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2
.end method
