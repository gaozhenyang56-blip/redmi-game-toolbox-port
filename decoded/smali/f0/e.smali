.class public final Lf0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf0/e$a;,
        Lf0/e$c;,
        Lf0/e$b;
    }
.end annotation


# instance fields
.field private final a:Lf0/e$c;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ClipDescription;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_0

    new-instance v0, Lf0/e$a;

    invoke-direct {v0, p1, p2, p3}, Lf0/e$a;-><init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lf0/e$b;

    invoke-direct {v0, p1, p2, p3}, Lf0/e$b;-><init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V

    :goto_0
    iput-object v0, p0, Lf0/e;->a:Lf0/e$c;

    return-void
.end method

.method private constructor <init>(Lf0/e$c;)V
    .locals 0
    .param p1    # Lf0/e$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf0/e;->a:Lf0/e$c;

    return-void
.end method

.method public static f(Ljava/lang/Object;)Lf0/e;
    .locals 3
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-ge v1, v2, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Lf0/e;

    new-instance v1, Lf0/e$a;

    invoke-direct {v1, p0}, Lf0/e$a;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lf0/e;-><init>(Lf0/e$c;)V

    return-object v0
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lf0/e;->a:Lf0/e$c;

    invoke-interface {v0}, Lf0/e$c;->b()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public b()Landroid/content/ClipDescription;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lf0/e;->a:Lf0/e$c;

    invoke-interface {v0}, Lf0/e$c;->e()Landroid/content/ClipDescription;

    move-result-object v0

    return-object v0
.end method

.method public c()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lf0/e;->a:Lf0/e$c;

    invoke-interface {v0}, Lf0/e$c;->d()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lf0/e;->a:Lf0/e$c;

    invoke-interface {v0}, Lf0/e$c;->c()V

    return-void
.end method

.method public e()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lf0/e;->a:Lf0/e$c;

    invoke-interface {v0}, Lf0/e$c;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
