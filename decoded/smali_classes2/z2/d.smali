.class public final Lz2/d;
.super Lmiuix/recyclerview/card/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz2/d$a;,
        Lz2/d$b;,
        Lz2/d$c;,
        Lz2/d$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/recyclerview/card/e<",
        "Lz2/d$d;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAppLockMaskAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppLockMaskAdapter.kt\ncom/miui/applicationlock/AppLockMaskAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,165:1\n1855#2,2:166\n*S KotlinDebug\n*F\n+ 1 AppLockMaskAdapter.kt\ncom/miui/applicationlock/AppLockMaskAdapter\n*L\n84#1:166,2\n*E\n"
    }
.end annotation


# static fields
.field public static final c:Lz2/d$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc3/o;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:Lak/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lak/p<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroid/content/Context;",
            "Loj/t;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lz2/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lz2/d$a;-><init>(Lbk/g;)V

    sput-object v0, Lz2/d;->c:Lz2/d$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiuix/recyclerview/card/e;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz2/d;->a:Ljava/util/List;

    new-instance v0, Lz2/d$e;

    invoke-direct {v0, p0}, Lz2/d$e;-><init>(Lz2/d;)V

    iput-object v0, p0, Lz2/d;->b:Lak/p;

    return-void
.end method

.method public static final synthetic k(Lz2/d;Landroid/content/Context;Lc3/b;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lz2/d;->p(Landroid/content/Context;Lc3/b;Z)V

    return-void
.end method

.method private final l(Landroid/content/Context;)V
    .locals 4

    iget-object v0, p0, Lz2/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc3/o;

    invoke-virtual {v1}, Lc3/o;->c()Lc3/p;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v3, Lc3/p;->a:Lc3/p;

    if-ne v2, v3, :cond_1

    const v2, 0x7f121528

    goto :goto_1

    :cond_1
    const v2, 0x7f121529

    :goto_1
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc3/o;->f(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final p(Landroid/content/Context;Lc3/b;Z)V
    .locals 2

    invoke-virtual {p2, p3}, Lc3/b;->h(Z)V

    const-string v0, "security"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type miui.security.SecurityManager"

    invoke-static {v0, v1}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lmiui/security/SecurityManager;

    invoke-virtual {p2}, Lc3/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lc3/b;->d()I

    move-result p2

    invoke-virtual {v0, v1, p3, p2}, Lmiui/security/SecurityManager;->setApplicationMaskNotificationEnabledForUser(Ljava/lang/String;ZI)V

    invoke-direct {p0, p1}, Lz2/d;->l(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 4

    iget-object v0, p0, Lz2/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc3/o;

    invoke-virtual {v2}, Lc3/o;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v2}, Lc3/o;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getItemViewGroup(I)I
    .locals 3

    invoke-virtual {p0, p1}, Lz2/d;->getItemViewType(I)I

    move-result p1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    const/high16 v0, -0x80000000

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "viewType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", group = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AppLockMaskAdapter"

    invoke-static {v1, p1}, Lmiui/yellowpage/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lz2/d;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc3/o;

    invoke-virtual {v0}, Lc3/o;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0xb

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p1, 0xa

    :goto_1
    return p1
.end method

.method public final m(I)Lc3/b;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance p1, Lc3/b;

    iget-object v1, p0, Lz2/d;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc3/o;

    invoke-virtual {v1}, Lc3/o;->c()Lc3/p;

    move-result-object v1

    invoke-direct {p1, v1}, Lc3/b;-><init>(Lc3/p;)V

    iget-object v1, p0, Lz2/d;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc3/o;

    invoke-virtual {v0}, Lc3/o;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc3/b;->g(Ljava/lang/String;)V

    return-object p1

    :cond_0
    iget-object v1, p0, Lz2/d;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc3/o;

    invoke-virtual {v1}, Lc3/o;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    if-ne p1, v1, :cond_1

    new-instance p1, Lc3/b;

    iget-object v0, p0, Lz2/d;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc3/o;

    invoke-virtual {v0}, Lc3/o;->c()Lc3/p;

    move-result-object v0

    invoke-direct {p1, v0}, Lc3/b;-><init>(Lc3/p;)V

    iget-object v0, p0, Lz2/d;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc3/o;

    invoke-virtual {v0}, Lc3/o;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc3/b;->g(Ljava/lang/String;)V

    return-object p1

    :cond_1
    iget-object v1, p0, Lz2/d;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc3/o;

    invoke-virtual {v1}, Lc3/o;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v2

    if-ge p1, v1, :cond_2

    iget-object v1, p0, Lz2/d;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc3/o;

    invoke-virtual {v0}, Lc3/o;->a()Ljava/util/List;

    move-result-object v0

    sub-int/2addr p1, v2

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "mGroups[0].appInfos[position - 1]"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lc3/b;

    return-object p1

    :cond_2
    iget-object v1, p0, Lz2/d;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc3/o;

    invoke-virtual {v0}, Lc3/o;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lz2/d;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc3/o;

    invoke-virtual {v1}, Lc3/o;->a()Ljava/util/List;

    move-result-object v1

    sub-int/2addr p1, v0

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "mGroups[1].appInfos[position - secondHeaderIndex]"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lc3/b;

    return-object p1
.end method

.method public n(Lz2/d$d;I)V
    .locals 1
    .param p1    # Lz2/d$d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lmiuix/recyclerview/card/e;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V

    invoke-virtual {p0, p2}, Lz2/d;->m(I)Lc3/b;

    move-result-object p2

    invoke-virtual {p1, p2}, Lz2/d$d;->a(Lc3/b;)V

    return-void
.end method

.method public o(Landroid/view/ViewGroup;I)Lz2/d$d;
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

    const/16 v1, 0xa

    if-ne p2, v1, :cond_0

    new-instance p2, Lz2/d$c;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e042f

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "from(parent.context).inf\u2026ader_view, parent, false)"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lz2/d$c;-><init>(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lz2/d$b;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e0056

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "from(parent.context).inf\u2026ps_unlock, parent, false)"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lz2/d;->b:Lak/p;

    invoke-direct {p2, p1, v0}, Lz2/d$b;-><init>(Landroid/view/View;Lak/p;)V

    :goto_0
    return-object p2
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0

    check-cast p1, Lz2/d$d;

    invoke-virtual {p0, p1, p2}, Lz2/d;->n(Lz2/d$d;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lz2/d;->o(Landroid/view/ViewGroup;I)Lz2/d$d;

    move-result-object p1

    return-object p1
.end method

.method public final setData(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lc3/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lz2/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lz2/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public setHasStableIds()V
    .locals 0

    return-void
.end method
