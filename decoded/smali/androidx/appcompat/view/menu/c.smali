.class abstract Landroidx/appcompat/view/menu/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/content/Context;

.field private b:Lm/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/g<",
            "Lw/b;",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lm/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm/g<",
            "Lw/c;",
            "Landroid/view/SubMenu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/c;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method final a(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 2

    instance-of v0, p1, Lw/b;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lw/b;

    iget-object v1, p0, Landroidx/appcompat/view/menu/c;->b:Lm/g;

    if-nez v1, :cond_0

    new-instance v1, Lm/g;

    invoke-direct {v1}, Lm/g;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/view/menu/c;->b:Lm/g;

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/c;->b:Lm/g;

    invoke-virtual {v1, p1}, Lm/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    if-nez p1, :cond_1

    new-instance p1, Landroidx/appcompat/view/menu/i;

    iget-object v1, p0, Landroidx/appcompat/view/menu/c;->a:Landroid/content/Context;

    invoke-direct {p1, v1, v0}, Landroidx/appcompat/view/menu/i;-><init>(Landroid/content/Context;Lw/b;)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/c;->b:Lm/g;

    invoke-virtual {v1, v0, p1}, Lm/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p1
.end method

.method final b(Landroid/view/SubMenu;)Landroid/view/SubMenu;
    .locals 2

    instance-of v0, p1, Lw/c;

    if-eqz v0, :cond_2

    check-cast p1, Lw/c;

    iget-object v0, p0, Landroidx/appcompat/view/menu/c;->c:Lm/g;

    if-nez v0, :cond_0

    new-instance v0, Lm/g;

    invoke-direct {v0}, Lm/g;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/c;->c:Lm/g;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/c;->c:Lm/g;

    invoke-virtual {v0, p1}, Lm/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/appcompat/view/menu/r;

    iget-object v1, p0, Landroidx/appcompat/view/menu/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/view/menu/r;-><init>(Landroid/content/Context;Lw/c;)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/c;->c:Lm/g;

    invoke-virtual {v1, p1, v0}, Lm/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0

    :cond_2
    return-object p1
.end method

.method final c()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/c;->b:Lm/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lm/g;->clear()V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/c;->c:Lm/g;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lm/g;->clear()V

    :cond_1
    return-void
.end method

.method final d(I)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/c;->b:Lm/g;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/c;->b:Lm/g;

    invoke-virtual {v1}, Lm/g;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroidx/appcompat/view/menu/c;->b:Lm/g;

    invoke-virtual {v1, v0}, Lm/g;->i(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw/b;

    invoke-interface {v1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v1

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Landroidx/appcompat/view/menu/c;->b:Lm/g;

    invoke-virtual {v1, v0}, Lm/g;->k(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method final e(I)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/c;->b:Lm/g;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/c;->b:Lm/g;

    invoke-virtual {v1}, Lm/g;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroidx/appcompat/view/menu/c;->b:Lm/g;

    invoke-virtual {v1, v0}, Lm/g;->i(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw/b;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, p1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/view/menu/c;->b:Lm/g;

    invoke-virtual {p1, v0}, Lm/g;->k(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
