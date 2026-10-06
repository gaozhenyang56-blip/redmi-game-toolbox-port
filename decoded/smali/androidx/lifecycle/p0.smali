.class public final Landroidx/lifecycle/p0;
.super Landroidx/lifecycle/u0$d;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/u0$b;


# instance fields
.field private a:Landroid/app/Application;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final b:Landroidx/lifecycle/u0$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private c:Landroid/os/Bundle;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:Landroidx/lifecycle/l;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:Landroidx/savedstate/a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;Lx0/d;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lx0/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LambdaLast"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/lifecycle/u0$d;-><init>()V

    invoke-interface {p2}, Lx0/d;->getSavedStateRegistry()Landroidx/savedstate/a;

    move-result-object v0

    iput-object v0, p0, Landroidx/lifecycle/p0;->e:Landroidx/savedstate/a;

    invoke-interface {p2}, Landroidx/lifecycle/v;->getLifecycle()Landroidx/lifecycle/l;

    move-result-object p2

    iput-object p2, p0, Landroidx/lifecycle/p0;->d:Landroidx/lifecycle/l;

    iput-object p3, p0, Landroidx/lifecycle/p0;->c:Landroid/os/Bundle;

    iput-object p1, p0, Landroidx/lifecycle/p0;->a:Landroid/app/Application;

    if-eqz p1, :cond_0

    sget-object p2, Landroidx/lifecycle/u0$a;->e:Landroidx/lifecycle/u0$a$a;

    invoke-virtual {p2, p1}, Landroidx/lifecycle/u0$a$a;->b(Landroid/app/Application;)Landroidx/lifecycle/u0$a;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Landroidx/lifecycle/u0$a;

    invoke-direct {p1}, Landroidx/lifecycle/u0$a;-><init>()V

    :goto_0
    iput-object p1, p0, Landroidx/lifecycle/p0;->b:Landroidx/lifecycle/u0$b;

    return-void
.end method


# virtual methods
.method public a(Landroidx/lifecycle/r0;)V
    .locals 2
    .param p1    # Landroidx/lifecycle/r0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$a;->b:Landroidx/annotation/RestrictTo$a;
        }
    .end annotation

    const-string v0, "viewModel"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/lifecycle/p0;->d:Landroidx/lifecycle/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/lifecycle/p0;->e:Landroidx/savedstate/a;

    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/lifecycle/p0;->d:Landroidx/lifecycle/l;

    invoke-static {v1}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-static {p1, v0, v1}, Landroidx/lifecycle/LegacySavedStateHandleController;->a(Landroidx/lifecycle/r0;Landroidx/savedstate/a;Landroidx/lifecycle/l;)V

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/r0;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/r0;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelClass"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/lifecycle/p0;->d:Landroidx/lifecycle/l;

    if-eqz v0, :cond_4

    const-class v1, Landroidx/lifecycle/a;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroidx/lifecycle/p0;->a:Landroid/app/Application;

    if-eqz v2, :cond_0

    invoke-static {}, Landroidx/lifecycle/q0;->a()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/lifecycle/q0;->b()Ljava/util/List;

    move-result-object v2

    :goto_0
    invoke-static {p2, v2}, Landroidx/lifecycle/q0;->c(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object p1, p0, Landroidx/lifecycle/p0;->a:Landroid/app/Application;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/lifecycle/p0;->b:Landroidx/lifecycle/u0$b;

    invoke-interface {p1, p2}, Landroidx/lifecycle/u0$b;->create(Ljava/lang/Class;)Landroidx/lifecycle/r0;

    move-result-object p1

    goto :goto_1

    :cond_1
    sget-object p1, Landroidx/lifecycle/u0$c;->a:Landroidx/lifecycle/u0$c$a;

    invoke-virtual {p1}, Landroidx/lifecycle/u0$c$a;->a()Landroidx/lifecycle/u0$c;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/lifecycle/u0$c;->create(Ljava/lang/Class;)Landroidx/lifecycle/r0;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_2
    iget-object v3, p0, Landroidx/lifecycle/p0;->e:Landroidx/savedstate/a;

    invoke-static {v3}, Lbk/m;->b(Ljava/lang/Object;)V

    iget-object v4, p0, Landroidx/lifecycle/p0;->c:Landroid/os/Bundle;

    invoke-static {v3, v0, p1, v4}, Landroidx/lifecycle/LegacySavedStateHandleController;->b(Landroidx/savedstate/a;Landroidx/lifecycle/l;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/lifecycle/SavedStateHandleController;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/lifecycle/p0;->a:Landroid/app/Application;

    if-eqz v1, :cond_3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Lbk/m;->b(Ljava/lang/Object;)V

    aput-object v1, v4, v0

    invoke-virtual {p1}, Landroidx/lifecycle/SavedStateHandleController;->c()Landroidx/lifecycle/l0;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-static {p2, v2, v4}, Landroidx/lifecycle/q0;->d(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/r0;

    move-result-object p2

    goto :goto_2

    :cond_3
    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroidx/lifecycle/SavedStateHandleController;->c()Landroidx/lifecycle/l0;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {p2, v2, v1}, Landroidx/lifecycle/q0;->d(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/r0;

    move-result-object p2

    :goto_2
    const-string v0, "androidx.lifecycle.savedstate.vm.tag"

    invoke-virtual {p2, v0, p1}, Landroidx/lifecycle/r0;->setTagIfAbsent(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    :cond_4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "SavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras)."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public create(Ljava/lang/Class;)Landroidx/lifecycle/r0;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/r0;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Landroidx/lifecycle/p0;->b(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/r0;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public create(Ljava/lang/Class;Lp0/a;)Landroidx/lifecycle/r0;
    .locals 5
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lp0/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/r0;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lp0/a;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/lifecycle/u0$c;->c:Lp0/a$b;

    invoke-virtual {p2, v0}, Lp0/a;->a(Lp0/a$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v1, Landroidx/lifecycle/m0;->a:Lp0/a$b;

    invoke-virtual {p2, v1}, Lp0/a;->a(Lp0/a$b;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v1, Landroidx/lifecycle/m0;->b:Lp0/a$b;

    invoke-virtual {p2, v1}, Lp0/a;->a(Lp0/a$b;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v0, Landroidx/lifecycle/u0$a;->g:Lp0/a$b;

    invoke-virtual {p2, v0}, Lp0/a;->a(Lp0/a$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    const-class v1, Landroidx/lifecycle/a;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-static {}, Landroidx/lifecycle/q0;->a()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/lifecycle/q0;->b()Ljava/util/List;

    move-result-object v2

    :goto_0
    invoke-static {p1, v2}, Landroidx/lifecycle/q0;->c(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v0, p0, Landroidx/lifecycle/p0;->b:Landroidx/lifecycle/u0$b;

    invoke-interface {v0, p1, p2}, Landroidx/lifecycle/u0$b;->create(Ljava/lang/Class;Lp0/a;)Landroidx/lifecycle/r0;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-static {p2}, Landroidx/lifecycle/m0;->a(Lp0/a;)Landroidx/lifecycle/l0;

    move-result-object p2

    aput-object p2, v1, v4

    invoke-static {p1, v2, v1}, Landroidx/lifecycle/q0;->d(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/r0;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p2}, Landroidx/lifecycle/m0;->a(Lp0/a;)Landroidx/lifecycle/l0;

    move-result-object p2

    aput-object p2, v0, v3

    invoke-static {p1, v2, v0}, Landroidx/lifecycle/q0;->d(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/r0;

    move-result-object p1

    goto :goto_1

    :cond_3
    iget-object p2, p0, Landroidx/lifecycle/p0;->d:Landroidx/lifecycle/l;

    if-eqz p2, :cond_4

    invoke-virtual {p0, v0, p1}, Landroidx/lifecycle/p0;->b(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/r0;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "SAVED_STATE_REGISTRY_OWNER_KEY andVIEW_MODEL_STORE_OWNER_KEY must be provided in the creation extras tosuccessfully create a ViewModel."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "VIEW_MODEL_KEY must always be provided by ViewModelProvider"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
