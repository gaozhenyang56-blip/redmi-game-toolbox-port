.class public final Lcom/miui/gamebooster/aihelper/a;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/aihelper/a$a;,
        Lcom/miui/gamebooster/aihelper/a$b;,
        Lcom/miui/gamebooster/aihelper/a$c;,
        Lcom/miui/gamebooster/aihelper/a$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$h<",
        "Landroidx/recyclerview/widget/RecyclerView$c0;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAIHelperAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AIHelperAdapter.kt\ncom/miui/gamebooster/aihelper/AIHelperAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,244:1\n1#2:245\n1855#3,2:246\n*S KotlinDebug\n*F\n+ 1 AIHelperAdapter.kt\ncom/miui/gamebooster/aihelper/AIHelperAdapter\n*L\n221#1:246,2\n*E\n"
    }
.end annotation


# static fields
.field public static final c:Lcom/miui/gamebooster/aihelper/a$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Lcom/miui/gamebooster/aihelper/a$d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:Lcom/miui/gamebooster/aihelper/GameAISettingsDTO;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/gamebooster/aihelper/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/gamebooster/aihelper/a$a;-><init>(Lbk/g;)V

    sput-object v0, Lcom/miui/gamebooster/aihelper/a;->c:Lcom/miui/gamebooster/aihelper/a$a;

    return-void
.end method

.method public constructor <init>(Lcom/miui/gamebooster/aihelper/a$d;)V
    .locals 1
    .param p1    # Lcom/miui/gamebooster/aihelper/a$d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "onChangeListener"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/aihelper/a;->a:Lcom/miui/gamebooster/aihelper/a$d;

    return-void
.end method

.method public static final synthetic k(Lcom/miui/gamebooster/aihelper/a;)Lcom/miui/gamebooster/aihelper/a$d;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/aihelper/a;->a:Lcom/miui/gamebooster/aihelper/a$d;

    return-object p0
.end method

.method public static final synthetic l(Lcom/miui/gamebooster/aihelper/a;ZLandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/gamebooster/aihelper/a;->m(ZLandroid/view/View;)V

    return-void
.end method

.method private final m(ZLandroid/view/View;)V
    .locals 3

    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p2, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-static {v0, v1}, Lgk/g;->h(II)Lgk/c;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lqj/b0;

    invoke-virtual {v1}, Lqj/b0;->nextInt()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "parent.getChildAt(it)"

    invoke-static {v1, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/miui/gamebooster/aihelper/a;->m(ZLandroid/view/View;)V

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/aihelper/a;->b:Lcom/miui/gamebooster/aihelper/GameAISettingsDTO;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/gamebooster/aihelper/GameAISettingsDTO;->getSettings()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/miui/gamebooster/aihelper/a;->b:Lcom/miui/gamebooster/aihelper/GameAISettingsDTO;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/gamebooster/aihelper/GameAISettingsDTO;->getNoticeText()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/aihelper/a;->b:Lcom/miui/gamebooster/aihelper/GameAISettingsDTO;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gamebooster/aihelper/GameAISettingsDTO;->getSettings()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    move v1, p1

    :cond_0
    return v1
.end method

.method public final n(Lcom/miui/gamebooster/aihelper/GameAISettingsDTO;)V
    .locals 1
    .param p1    # Lcom/miui/gamebooster/aihelper/GameAISettingsDTO;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/gamebooster/aihelper/a;->b:Lcom/miui/gamebooster/aihelper/GameAISettingsDTO;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/miui/gamebooster/aihelper/a$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/aihelper/a;->b:Lcom/miui/gamebooster/aihelper/GameAISettingsDTO;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/gamebooster/aihelper/GameAISettingsDTO;->getSettings()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/gamebooster/aihelper/AISettingDTO;

    if-eqz p2, :cond_1

    check-cast p1, Lcom/miui/gamebooster/aihelper/a$c;

    invoke-virtual {p1, p2}, Lcom/miui/gamebooster/aihelper/a$c;->d(Lcom/miui/gamebooster/aihelper/AISettingDTO;)V

    goto :goto_0

    :cond_0
    instance-of p2, p1, Lcom/miui/gamebooster/aihelper/a$b;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/miui/gamebooster/aihelper/a;->b:Lcom/miui/gamebooster/aihelper/GameAISettingsDTO;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/miui/gamebooster/aihelper/GameAISettingsDTO;->getNoticeText()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    check-cast p1, Lcom/miui/gamebooster/aihelper/a$b;

    invoke-virtual {p1, p2}, Lcom/miui/gamebooster/aihelper/a$b;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
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

    if-nez p2, :cond_0

    new-instance p2, Lcom/miui/gamebooster/aihelper/a$c;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e01a1

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "from(parent.context)\n   \u2026lper_item, parent, false)"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/miui/gamebooster/aihelper/a$c;-><init>(Lcom/miui/gamebooster/aihelper/a;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/miui/gamebooster/aihelper/a$b;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e01a0

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "from(parent.context)\n   \u2026er_footer, parent, false)"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/miui/gamebooster/aihelper/a$b;-><init>(Lcom/miui/gamebooster/aihelper/a;Landroid/view/View;)V

    :goto_0
    return-object p2
.end method
