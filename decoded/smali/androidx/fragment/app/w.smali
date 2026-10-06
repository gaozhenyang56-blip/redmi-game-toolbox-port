.class Landroidx/fragment/app/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/k;
.implements Lx0/d;
.implements Landroidx/lifecycle/y0;


# instance fields
.field private final a:Landroidx/fragment/app/Fragment;

.field private final b:Landroidx/lifecycle/x0;

.field private c:Landroidx/lifecycle/u0$b;

.field private d:Landroidx/lifecycle/x;

.field private e:Lx0/c;


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/x0;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/x0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/w;->d:Landroidx/lifecycle/x;

    iput-object v0, p0, Landroidx/fragment/app/w;->e:Lx0/c;

    iput-object p1, p0, Landroidx/fragment/app/w;->a:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Landroidx/fragment/app/w;->b:Landroidx/lifecycle/x0;

    return-void
.end method


# virtual methods
.method a(Landroidx/lifecycle/l$a;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/l$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/fragment/app/w;->d:Landroidx/lifecycle/x;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/x;->i(Landroidx/lifecycle/l$a;)V

    return-void
.end method

.method b()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/w;->d:Landroidx/lifecycle/x;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/x;

    invoke-direct {v0, p0}, Landroidx/lifecycle/x;-><init>(Landroidx/lifecycle/v;)V

    iput-object v0, p0, Landroidx/fragment/app/w;->d:Landroidx/lifecycle/x;

    invoke-static {p0}, Lx0/c;->a(Lx0/d;)Lx0/c;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/w;->e:Lx0/c;

    :cond_0
    return-void
.end method

.method c()Z
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/w;->d:Landroidx/lifecycle/x;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method d(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/fragment/app/w;->e:Lx0/c;

    invoke-virtual {v0, p1}, Lx0/c;->d(Landroid/os/Bundle;)V

    return-void
.end method

.method e(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/fragment/app/w;->e:Lx0/c;

    invoke-virtual {v0, p1}, Lx0/c;->e(Landroid/os/Bundle;)V

    return-void
.end method

.method f(Landroidx/lifecycle/l$b;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/l$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/fragment/app/w;->d:Landroidx/lifecycle/x;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/x;->n(Landroidx/lifecycle/l$b;)V

    return-void
.end method

.method public synthetic getDefaultViewModelCreationExtras()Lp0/a;
    .locals 1

    invoke-static {p0}, Landroidx/lifecycle/j;->a(Landroidx/lifecycle/k;)Lp0/a;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultViewModelProviderFactory()Landroidx/lifecycle/u0$b;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/fragment/app/w;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/u0$b;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/w;->a:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mDefaultFactory:Landroidx/lifecycle/u0$b;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Landroidx/fragment/app/w;->c:Landroidx/lifecycle/u0$b;

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/w;->c:Landroidx/lifecycle/u0$b;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/fragment/app/w;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    :goto_0
    instance-of v2, v1, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_2

    instance-of v2, v1, Landroid/app/Application;

    if-eqz v2, :cond_1

    move-object v0, v1

    check-cast v0, Landroid/app/Application;

    goto :goto_1

    :cond_1
    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_2
    :goto_1
    new-instance v1, Landroidx/lifecycle/p0;

    iget-object v2, p0, Landroidx/fragment/app/w;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v0, p0, v2}, Landroidx/lifecycle/p0;-><init>(Landroid/app/Application;Lx0/d;Landroid/os/Bundle;)V

    iput-object v1, p0, Landroidx/fragment/app/w;->c:Landroidx/lifecycle/u0$b;

    :cond_3
    iget-object v0, p0, Landroidx/fragment/app/w;->c:Landroidx/lifecycle/u0$b;

    return-object v0
.end method

.method public getLifecycle()Landroidx/lifecycle/l;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/w;->b()V

    iget-object v0, p0, Landroidx/fragment/app/w;->d:Landroidx/lifecycle/x;

    return-object v0
.end method

.method public getSavedStateRegistry()Landroidx/savedstate/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/w;->b()V

    iget-object v0, p0, Landroidx/fragment/app/w;->e:Lx0/c;

    invoke-virtual {v0}, Lx0/c;->b()Landroidx/savedstate/a;

    move-result-object v0

    return-object v0
.end method

.method public getViewModelStore()Landroidx/lifecycle/x0;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/w;->b()V

    iget-object v0, p0, Landroidx/fragment/app/w;->b:Landroidx/lifecycle/x0;

    return-object v0
.end method
