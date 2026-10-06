.class public final Lcom/miui/warningcenter/mijia/AlertWindowAdapter;
.super Landroidx/recyclerview/widget/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/warningcenter/mijia/AlertWindowAdapter$Companion;,
        Lcom/miui/warningcenter/mijia/AlertWindowAdapter$Diff;,
        Lcom/miui/warningcenter/mijia/AlertWindowAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/p<",
        "Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;",
        "Lcom/miui/warningcenter/mijia/AlertWindowAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/warningcenter/mijia/AlertWindowAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final ITEM_TYPE_MULTI:I = 0x1

.field private static final ITEM_TYPE_SINGLE:I

.field private static final formatter:Ljava/text/SimpleDateFormat;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private tinyScreen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/miui/warningcenter/mijia/AlertWindowAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/warningcenter/mijia/AlertWindowAdapter$Companion;-><init>(Lbk/g;)V

    sput-object v0, Lcom/miui/warningcenter/mijia/AlertWindowAdapter;->Companion:Lcom/miui/warningcenter/mijia/AlertWindowAdapter$Companion;

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "HH:mm"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/miui/warningcenter/mijia/AlertWindowAdapter;->formatter:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/miui/warningcenter/mijia/AlertWindowAdapter$Diff;

    invoke-direct {v0}, Lcom/miui/warningcenter/mijia/AlertWindowAdapter$Diff;-><init>()V

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/p;-><init>(Landroidx/recyclerview/widget/h$f;)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lx4/g;->g(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/warningcenter/mijia/AlertWindowAdapter;->tinyScreen:Z

    return-void
.end method

.method public static final synthetic access$getFormatter$cp()Ljava/text/SimpleDateFormat;
    .locals 1

    sget-object v0, Lcom/miui/warningcenter/mijia/AlertWindowAdapter;->formatter:Ljava/text/SimpleDateFormat;

    return-object v0
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/p;->getItemCount()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0

    check-cast p1, Lcom/miui/warningcenter/mijia/AlertWindowAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/warningcenter/mijia/AlertWindowAdapter;->onBindViewHolder(Lcom/miui/warningcenter/mijia/AlertWindowAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/warningcenter/mijia/AlertWindowAdapter$ViewHolder;I)V
    .locals 1
    .param p1    # Lcom/miui/warningcenter/mijia/AlertWindowAdapter$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/p;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "getItem(position)"

    invoke-static {p2, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;

    invoke-virtual {p1, p2}, Lcom/miui/warningcenter/mijia/AlertWindowAdapter$ViewHolder;->bind(Lcom/miui/warningcenter/mijia/pojo/MijiaAlertWarning;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/miui/warningcenter/mijia/AlertWindowAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/warningcenter/mijia/AlertWindowAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/warningcenter/mijia/AlertWindowAdapter$ViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    new-instance p2, Lcom/miui/warningcenter/mijia/AlertWindowAdapter$ViewHolder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-boolean v2, p0, Lcom/miui/warningcenter/mijia/AlertWindowAdapter;->tinyScreen:Z

    if-eqz v2, :cond_0

    const v2, 0x7f0e02e3

    goto :goto_0

    :cond_0
    const v2, 0x7f0e02e2

    :goto_0
    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "from(parent.context)\n   \u2026ulti_item, parent, false)"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/miui/warningcenter/mijia/AlertWindowAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown item type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p2, Lcom/miui/warningcenter/mijia/AlertWindowAdapter$ViewHolder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-boolean v2, p0, Lcom/miui/warningcenter/mijia/AlertWindowAdapter;->tinyScreen:Z

    if-eqz v2, :cond_3

    const v2, 0x7f0e02e5

    goto :goto_1

    :cond_3
    const v2, 0x7f0e02e4

    :goto_1
    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "from(parent.context)\n   \u2026ngle_item, parent, false)"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/miui/warningcenter/mijia/AlertWindowAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    :goto_2
    return-object p2
.end method
