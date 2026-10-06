.class public Lcom/miui/dock/drag/DockShortCutMenu;
.super Landroidx/cardview/widget/CardView;
.source "SourceFile"

# interfaces
.implements Lcom/miui/dock/drag/a$a;


# instance fields
.field private a:Lcom/miui/dock/drag/a$a;

.field private b:Lg5/j;

.field private c:Lmiuix/recyclerview/widget/RecyclerView;

.field private d:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private e:Lq6/f;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg5/n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/dock/drag/DockShortCutMenu;->f:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/miui/dock/drag/DockShortCutMenu;->c(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/miui/dock/drag/DockShortCutMenu;Lg5/n;Lg5/n;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/dock/drag/DockShortCutMenu;->d(Lg5/n;Lg5/n;)V

    return-void
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lcom/miui/dock/drag/DockShortCutMenu;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Lg5/g;

    iget-object v1, p0, Lcom/miui/dock/drag/DockShortCutMenu;->b:Lg5/j;

    invoke-direct {v0, v1}, Lg5/g;-><init>(Lg5/j;)V

    const v1, 0x7f0808ca

    iput v1, v0, Lg5/n;->c:I

    const v1, 0x7f120b2c

    iput v1, v0, Lg5/n;->d:I

    iget-object v1, p0, Lcom/miui/dock/drag/DockShortCutMenu;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lg5/p;

    iget-object v2, p0, Lcom/miui/dock/drag/DockShortCutMenu;->b:Lg5/j;

    invoke-direct {v1, v2}, Lg5/p;-><init>(Lg5/j;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, La8/k2;->K(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0808cc

    goto :goto_0

    :cond_0
    const v2, 0x7f0808cd

    :goto_0
    iput v2, v1, Lg5/n;->c:I

    const v2, 0x7f120b2d

    iput v2, v1, Lg5/n;->d:I

    iget-object v2, p0, Lcom/miui/dock/drag/DockShortCutMenu;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v2

    new-instance v3, Le5/m;

    invoke-direct {v3, p0, v0, v1}, Le5/m;-><init>(Lcom/miui/dock/drag/DockShortCutMenu;Lg5/n;Lg5/n;)V

    invoke-virtual {v2, v3}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f0e0292

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0b0968

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/miui/dock/drag/DockShortCutMenu;->c:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance p1, Lcom/miui/dock/drag/DockShortCutMenu$a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1, v1}, Lcom/miui/dock/drag/DockShortCutMenu$a;-><init>(Lcom/miui/dock/drag/DockShortCutMenu;Landroid/content/Context;IZ)V

    iput-object p1, p0, Lcom/miui/dock/drag/DockShortCutMenu;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/miui/dock/drag/DockShortCutMenu;->c:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    new-instance p1, Lq6/f;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lq6/f;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/dock/drag/DockShortCutMenu;->e:Lq6/f;

    new-instance v0, Lcom/miui/dock/drag/a;

    new-instance v1, Le5/l;

    invoke-direct {v1, p0}, Le5/l;-><init>(Lcom/miui/dock/drag/DockShortCutMenu;)V

    invoke-direct {v0, v1}, Lcom/miui/dock/drag/a;-><init>(Lcom/miui/dock/drag/a$a;)V

    invoke-virtual {p1, v0}, Lq6/f;->o(Lq6/b;)Lq6/f;

    iget-object p1, p0, Lcom/miui/dock/drag/DockShortCutMenu;->c:Lmiuix/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/miui/dock/drag/DockShortCutMenu;->e:Lq6/f;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    return-void
.end method

.method private synthetic d(Lg5/n;Lg5/n;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lg5/n;->e()Ljava/lang/String;

    move-result-object p1

    iget-boolean p2, p2, Lg5/n;->e:Z

    invoke-static {v0, p1, p2}, Ll5/b;->m(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public e(Lg5/j;)V
    .locals 6

    iput-object p1, p0, Lcom/miui/dock/drag/DockShortCutMenu;->b:Lg5/j;

    invoke-static {}, Lx4/p1;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 v1, 0x73000000

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0703ab

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    int-to-float v3, p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0709f6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    int-to-float v4, p1

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lx4/p1;->b(Landroid/view/View;IFFFF)V

    goto :goto_0

    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070979

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setElevation(F)V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/miui/dock/drag/DockShortCutMenu;->b()V

    iget-object p1, p0, Lcom/miui/dock/drag/DockShortCutMenu;->e:Lq6/f;

    iget-object v0, p0, Lcom/miui/dock/drag/DockShortCutMenu;->f:Ljava/util/List;

    invoke-virtual {p1, v0}, Lq6/f;->F(Ljava/util/List;)V

    iget-object p1, p0, Lcom/miui/dock/drag/DockShortCutMenu;->e:Lq6/f;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/dock/drag/DockShortCutMenu;->a:Lcom/miui/dock/drag/a$a;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/miui/dock/drag/a$a;->onClick(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setOnShortcutClickListener(Lcom/miui/dock/drag/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/dock/drag/DockShortCutMenu;->a:Lcom/miui/dock/drag/a$a;

    return-void
.end method
