.class public final Ljc/m;
.super Landroidx/lifecycle/r0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljc/m$a;
    }
.end annotation


# static fields
.field public static final w:Ljc/m$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Landroid/app/Application;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Z

.field private final d:Landroidx/lifecycle/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/c0<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:Landroidx/lifecycle/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/c0<",
            "Ljava/util/List<",
            "Ljc/g;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final f:Landroidx/lifecycle/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/c0<",
            "Ljava/util/List<",
            "Ljc/g;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final g:Landroidx/lifecycle/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/c0<",
            "Ljava/util/List<",
            "Ljc/g;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final h:Landroidx/lifecycle/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/c0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private i:Z

.field private j:I

.field private final k:J

.field private l:Ljc/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private m:Ljc/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private n:Ljc/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private o:Ljc/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private p:Ljc/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private q:Z

.field private r:I

.field private s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private t:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private u:Llk/s1;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final v:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Ljava/util/List<",
            "Ljc/f;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljc/m$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljc/m$a;-><init>(Lbk/g;)V

    sput-object v0, Ljc/m;->w:Ljc/m$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Landroidx/lifecycle/r0;-><init>()V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-string v1, "getInstance()"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Ljc/m;->a:Landroid/app/Application;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljc/m;->b:Ljava/lang/String;

    new-instance v0, Landroidx/lifecycle/c0;

    const/16 v1, 0x7e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/c0;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ljc/m;->d:Landroidx/lifecycle/c0;

    new-instance v0, Landroidx/lifecycle/c0;

    invoke-direct {v0}, Landroidx/lifecycle/c0;-><init>()V

    iput-object v0, p0, Ljc/m;->e:Landroidx/lifecycle/c0;

    new-instance v0, Landroidx/lifecycle/c0;

    invoke-direct {v0}, Landroidx/lifecycle/c0;-><init>()V

    iput-object v0, p0, Ljc/m;->f:Landroidx/lifecycle/c0;

    new-instance v0, Landroidx/lifecycle/c0;

    invoke-direct {v0}, Landroidx/lifecycle/c0;-><init>()V

    iput-object v0, p0, Ljc/m;->g:Landroidx/lifecycle/c0;

    new-instance v0, Landroidx/lifecycle/c0;

    invoke-direct {v0}, Landroidx/lifecycle/c0;-><init>()V

    iput-object v0, p0, Ljc/m;->h:Landroidx/lifecycle/c0;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljc/m;->i:Z

    new-instance v1, Ljc/b;

    iget-wide v2, p0, Ljc/m;->k:J

    const/4 v4, 0x0

    invoke-direct {v1, v0, v4, v2, v3}, Ljc/b;-><init>(ZIJ)V

    iput-object v1, p0, Ljc/m;->l:Ljc/b;

    new-instance v1, Ljc/b;

    iget-wide v2, p0, Ljc/m;->k:J

    invoke-direct {v1, v0, v4, v2, v3}, Ljc/b;-><init>(ZIJ)V

    iput-object v1, p0, Ljc/m;->m:Ljc/b;

    new-instance v1, Ljc/b;

    iget-wide v2, p0, Ljc/m;->k:J

    invoke-direct {v1, v0, v4, v2, v3}, Ljc/b;-><init>(ZIJ)V

    iput-object v1, p0, Ljc/m;->n:Ljc/b;

    new-instance v1, Ljc/b;

    iget-wide v2, p0, Ljc/m;->k:J

    invoke-direct {v1, v0, v4, v2, v3}, Ljc/b;-><init>(ZIJ)V

    iput-object v1, p0, Ljc/m;->o:Ljc/b;

    new-instance v1, Ljc/b;

    iget-wide v2, p0, Ljc/m;->k:J

    invoke-direct {v1, v0, v4, v2, v3}, Ljc/b;-><init>(ZIJ)V

    iput-object v1, p0, Ljc/m;->p:Ljc/b;

    iput-boolean v0, p0, Ljc/m;->q:Z

    const/4 v0, -0x1

    iput v0, p0, Ljc/m;->r:I

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Ljc/m;->s:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Ljc/m;->t:Ljava/util/Set;

    new-instance v0, Ljc/m$e;

    invoke-direct {v0, p0}, Ljc/m$e;-><init>(Ljc/m;)V

    iput-object v0, p0, Ljc/m;->v:Landroidx/lifecycle/a0;

    return-void
.end method

.method public static synthetic A(Ljc/m;Ljava/lang/String;IZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ljc/m;->z(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static synthetic C(Ljc/m;ZIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Ljc/m;->B(ZI)V

    return-void
.end method

.method public static synthetic E(Ljc/m;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    :cond_1
    invoke-virtual {p0, p1, p2}, Ljc/m;->D(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method private final I(ILjc/b;)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    iput-object p2, p0, Ljc/m;->l:Ljc/b;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Ljc/m;->p:Ljc/b;

    goto :goto_0

    :cond_1
    iput-object p2, p0, Ljc/m;->o:Ljc/b;

    goto :goto_0

    :cond_2
    iput-object p2, p0, Ljc/m;->n:Ljc/b;

    goto :goto_0

    :cond_3
    iput-object p2, p0, Ljc/m;->m:Ljc/b;

    :goto_0
    return-void
.end method

.method public static final synthetic a(Ljc/m;)Landroidx/lifecycle/c0;
    .locals 0

    iget-object p0, p0, Ljc/m;->f:Landroidx/lifecycle/c0;

    return-object p0
.end method

.method public static final synthetic b(Ljc/m;)Landroid/app/Application;
    .locals 0

    iget-object p0, p0, Ljc/m;->a:Landroid/app/Application;

    return-object p0
.end method

.method public static final synthetic c(Ljc/m;)Landroidx/lifecycle/c0;
    .locals 0

    iget-object p0, p0, Ljc/m;->e:Landroidx/lifecycle/c0;

    return-object p0
.end method

.method public static final synthetic d(Ljc/m;)Landroidx/lifecycle/c0;
    .locals 0

    iget-object p0, p0, Ljc/m;->d:Landroidx/lifecycle/c0;

    return-object p0
.end method

.method public static final synthetic e(Ljc/m;)Landroidx/lifecycle/c0;
    .locals 0

    iget-object p0, p0, Ljc/m;->g:Landroidx/lifecycle/c0;

    return-object p0
.end method

.method public static final synthetic f(Ljc/m;I)Ljc/b;
    .locals 0

    invoke-direct {p0, p1}, Ljc/m;->u(I)Ljc/b;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic g(Ljc/m;Ljava/util/List;)I
    .locals 0

    invoke-direct {p0, p1}, Ljc/m;->v(Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public static final synthetic h(Ljc/m;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Ljc/m;->t:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic i(Ljc/m;)I
    .locals 0

    iget p0, p0, Ljc/m;->j:I

    return p0
.end method

.method public static final synthetic j(Ljc/m;)Z
    .locals 0

    iget-boolean p0, p0, Ljc/m;->i:Z

    return p0
.end method

.method public static final synthetic k(Ljc/m;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Ljc/m;->s:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic l(Ljc/m;ILjc/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljc/m;->I(ILjc/b;)V

    return-void
.end method

.method public static final synthetic m(Ljc/m;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Ljc/m;->t:Ljava/util/Set;

    return-void
.end method

.method public static final synthetic n(Ljc/m;I)V
    .locals 0

    iput p1, p0, Ljc/m;->j:I

    return-void
.end method

.method public static final synthetic o(Ljc/m;Z)V
    .locals 0

    iput-boolean p1, p0, Ljc/m;->c:Z

    return-void
.end method

.method public static final synthetic p(Ljc/m;Z)V
    .locals 0

    iput-boolean p1, p0, Ljc/m;->i:Z

    return-void
.end method

.method public static final synthetic q(Ljc/m;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Ljc/m;->s:Ljava/util/Set;

    return-void
.end method

.method private final s()V
    .locals 6

    iget-object v0, p0, Ljc/m;->u:Llk/s1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0, v2, v1, v2}, Llk/s1$a;->a(Llk/s1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljc/m;->c:Z

    new-instance v3, Ljc/b;

    iget-wide v4, p0, Ljc/m;->k:J

    invoke-direct {v3, v1, v0, v4, v5}, Ljc/b;-><init>(ZIJ)V

    iput-object v3, p0, Ljc/m;->l:Ljc/b;

    new-instance v3, Ljc/b;

    iget-wide v4, p0, Ljc/m;->k:J

    invoke-direct {v3, v1, v0, v4, v5}, Ljc/b;-><init>(ZIJ)V

    iput-object v3, p0, Ljc/m;->m:Ljc/b;

    new-instance v3, Ljc/b;

    iget-wide v4, p0, Ljc/m;->k:J

    invoke-direct {v3, v1, v0, v4, v5}, Ljc/b;-><init>(ZIJ)V

    iput-object v3, p0, Ljc/m;->n:Ljc/b;

    new-instance v3, Ljc/b;

    iget-wide v4, p0, Ljc/m;->k:J

    invoke-direct {v3, v1, v0, v4, v5}, Ljc/b;-><init>(ZIJ)V

    iput-object v3, p0, Ljc/m;->o:Ljc/b;

    new-instance v3, Ljc/b;

    iget-wide v4, p0, Ljc/m;->k:J

    invoke-direct {v3, v1, v0, v4, v5}, Ljc/b;-><init>(ZIJ)V

    iput-object v3, p0, Ljc/m;->p:Ljc/b;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Ljc/m;->s:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Ljc/m;->t:Ljava/util/Set;

    iget-object v0, p0, Ljc/m;->d:Landroidx/lifecycle/c0;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/16 v1, 0x7e

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Ljc/m;->f:Landroidx/lifecycle/c0;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/c0;->m(Ljava/lang/Object;)V

    iget-object v0, p0, Ljc/m;->e:Landroidx/lifecycle/c0;

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Ljc/m;->e:Landroidx/lifecycle/c0;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/c0;->m(Ljava/lang/Object;)V

    iget-object v0, p0, Ljc/m;->f:Landroidx/lifecycle/c0;

    :goto_1
    invoke-virtual {v0, v2}, Landroidx/lifecycle/c0;->m(Ljava/lang/Object;)V

    return-void
.end method

.method private final u(I)Ljc/b;
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Ljc/m;->l:Ljc/b;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ljc/m;->p:Ljc/b;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Ljc/m;->o:Ljc/b;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Ljc/m;->n:Ljc/b;

    goto :goto_0

    :cond_3
    iget-object p1, p0, Ljc/m;->m:Ljc/b;

    :goto_0
    return-object p1
.end method

.method private final v(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljc/g;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Ljc/m;->d:Landroidx/lifecycle/c0;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    const/16 v1, 0x7e

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljc/g;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljc/g;->d(I)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method


# virtual methods
.method public final B(ZI)V
    .locals 7

    const/4 v0, 0x2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    if-ne p2, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Ljc/m;->s()V

    :cond_1
    invoke-virtual {p0}, Ljc/m;->F()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    if-ne p2, v0, :cond_3

    iget-object v0, p0, Ljc/m;->h:Landroidx/lifecycle/c0;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c0;->m(Ljava/lang/Object;)V

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljc/m;->c:Z

    invoke-static {p0}, Landroidx/lifecycle/s0;->a(Landroidx/lifecycle/r0;)Llk/i0;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Ljc/m$c;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Ljc/m$c;-><init>(Ljc/m;ZILtj/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    move-result-object p1

    iput-object p1, p0, Ljc/m;->u:Llk/s1;

    return-void
.end method

.method public final D(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 26
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Ljc/m;->a:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.miui.permcenter.privacycenter"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "privacy_provider_get_using"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Long;

    const-wide/16 v6, 0x1000

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-wide/32 v8, 0x20000

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const-wide/16 v9, 0x20

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v9, 0x2

    aput-object v6, v5, v9

    if-eqz v2, :cond_5

    const-string v6, "DATA"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    if-eqz v2, :cond_5

    instance-of v6, v2, Ljava/util/List;

    if-eqz v6, :cond_5

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    xor-int/2addr v6, v8

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ltc/h;

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {v6}, Ltc/h;->b()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v6}, Ltc/h;->c()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eq v10, v9, :cond_1

    goto :goto_0

    :cond_1
    move v9, v7

    :goto_1
    if-ge v9, v4, :cond_0

    aget-object v10, v5, v9

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-virtual {v6}, Ltc/h;->a()J

    move-result-wide v10

    and-long v10, v16, v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_4

    new-instance v10, Ljc/g;

    iget-object v12, v0, Ljc/m;->a:Landroid/app/Application;

    invoke-virtual {v6}, Ltc/h;->b()Ljava/lang/String;

    move-result-object v13

    const-string v11, "item.pkgName"

    invoke-static {v13, v11}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v15, 0x0

    const/16 v18, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    if-eqz v1, :cond_3

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-nez v11, :cond_2

    goto :goto_2

    :cond_2
    move v11, v7

    goto :goto_3

    :cond_3
    :goto_2
    move v11, v8

    :goto_3
    xor-int/lit8 v24, v11, 0x1

    const/16 v25, 0x1

    const-string v14, "null"

    const-string v19, ""

    const-string v20, ""

    move-object v11, v10

    invoke-direct/range {v11 .. v25}, Ljc/g;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJZLjava/lang/String;Ljava/lang/String;IIIIZ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljc/g;->r(J)V

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_5
    iget-object v1, v0, Ljc/m;->g:Landroidx/lifecycle/c0;

    invoke-virtual {v1, v3}, Landroidx/lifecycle/c0;->m(Ljava/lang/Object;)V

    return-void
.end method

.method public final F()Z
    .locals 1

    iget-boolean v0, p0, Ljc/m;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ljc/m;->d:Landroidx/lifecycle/c0;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Ljc/m;->u(I)Ljc/b;

    move-result-object v0

    invoke-virtual {v0}, Ljc/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final G()Z
    .locals 1

    iget-boolean v0, p0, Ljc/m;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ljc/m;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final H(Ljava/lang/String;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "deviceId"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljc/m;->G()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljc/m;->c:Z

    invoke-static {p0}, Landroidx/lifecycle/s0;->a(Landroidx/lifecycle/r0;)Llk/i0;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Ljc/m$d;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Ljc/m$d;-><init>(Ljc/m;Ljava/lang/String;Ltj/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    return-void
.end method

.method public final r(Landroid/os/Bundle;)Z
    .locals 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Ljc/m;->b:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, p1, v4, v2, v3}, Ljk/f;->m(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object p1, p0, Ljc/m;->b:Ljava/lang/String;

    return v0

    :cond_1
    return v4
.end method

.method public final t(I)V
    .locals 4

    iget v0, p0, Ljc/m;->r:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Ljc/m;->r:I

    iget-boolean v0, p0, Ljc/m;->q:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Ljc/m;->q:Z

    iget-object v0, p0, Ljc/m;->d:Landroidx/lifecycle/c0;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/c0;->o(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Ljc/m;->u:Llk/s1;

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3}, Llk/s1$a;->a(Llk/s1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_2
    iput-boolean v1, p0, Ljc/m;->c:Z

    iget-object v0, p0, Ljc/m;->d:Landroidx/lifecycle/c0;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c0;->o(Ljava/lang/Object;)V

    const/16 v0, 0x7e

    if-eq p1, v0, :cond_3

    iget-object v1, p0, Ljc/m;->e:Landroidx/lifecycle/c0;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object p1, p0, Ljc/m;->e:Landroidx/lifecycle/c0;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/lifecycle/c0;->o(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    if-ne p1, v0, :cond_4

    iget-object p1, p0, Ljc/m;->f:Landroidx/lifecycle/c0;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_4

    iget-object p1, p0, Ljc/m;->f:Landroidx/lifecycle/c0;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public final w()Landroidx/lifecycle/c0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/c0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Ljc/m;->h:Landroidx/lifecycle/c0;

    return-object v0
.end method

.method public final x()Landroidx/lifecycle/a0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/a0<",
            "Ljava/util/List<",
            "Ljc/f;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Ljc/m;->v:Landroidx/lifecycle/a0;

    return-object v0
.end method

.method public final y()I
    .locals 1

    iget-object v0, p0, Ljc/m;->d:Landroidx/lifecycle/c0;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/16 v0, 0x7e

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final z(Ljava/lang/String;IZ)V
    .locals 11
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Ljc/m;->c:Z

    iput v1, p0, Ljc/m;->j:I

    iput-boolean v0, p0, Ljc/m;->i:Z

    :cond_0
    invoke-virtual {p0}, Ljc/m;->G()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iput-boolean v0, p0, Ljc/m;->c:Z

    invoke-static {p0}, Landroidx/lifecycle/s0;->a(Landroidx/lifecycle/r0;)Llk/i0;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v0, Ljc/m$b;

    const/4 v10, 0x0

    move-object v5, v0

    move-object v6, p0

    move v7, p3

    move-object v8, p1

    move v9, p2

    invoke-direct/range {v5 .. v10}, Ljc/m$b;-><init>(Ljc/m;ZLjava/lang/String;ILtj/d;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    return-void
.end method
