.class Landroidx/fragment/app/b$k;
.super Landroidx/fragment/app/b$l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "k"
.end annotation


# instance fields
.field private c:Z

.field private d:Z

.field private e:Landroidx/fragment/app/e$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/fragment/app/z$e;Lz/c;Z)V
    .locals 0
    .param p1    # Landroidx/fragment/app/z$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lz/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/b$l;-><init>(Landroidx/fragment/app/z$e;Lz/c;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/fragment/app/b$k;->d:Z

    iput-boolean p3, p0, Landroidx/fragment/app/b$k;->c:Z

    return-void
.end method


# virtual methods
.method e(Landroid/content/Context;)Landroidx/fragment/app/e$a;
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-boolean v0, p0, Landroidx/fragment/app/b$k;->d:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Landroidx/fragment/app/b$k;->e:Landroidx/fragment/app/e$a;

    return-object p1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/b$l;->b()Landroidx/fragment/app/z$e;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/z$e;->f()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/b$l;->b()Landroidx/fragment/app/z$e;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/z$e;->e()Landroidx/fragment/app/z$e$c;

    move-result-object v1

    sget-object v2, Landroidx/fragment/app/z$e$c;->b:Landroidx/fragment/app/z$e$c;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-boolean v2, p0, Landroidx/fragment/app/b$k;->c:Z

    invoke-static {p1, v0, v1, v2}, Landroidx/fragment/app/e;->b(Landroid/content/Context;Landroidx/fragment/app/Fragment;ZZ)Landroidx/fragment/app/e$a;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/b$k;->e:Landroidx/fragment/app/e$a;

    iput-boolean v3, p0, Landroidx/fragment/app/b$k;->d:Z

    return-object p1
.end method
