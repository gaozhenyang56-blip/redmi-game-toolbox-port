.class public final Ld6/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld6/a$a;
    }
.end annotation


# static fields
.field public static final d:Ld6/a$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ld6/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ld6/a$a;-><init>(Lbk/g;)V

    sput-object v0, Ld6/a;->d:Ld6/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ld6/a$d;->a:Ld6/a$d;

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Ld6/a;->a:Loj/f;

    new-instance v0, Ld6/a$b;

    invoke-direct {v0, p0}, Ld6/a$b;-><init>(Ld6/a;)V

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Ld6/a;->b:Loj/f;

    new-instance v0, Ld6/a$c;

    invoke-direct {v0, p0}, Ld6/a$c;-><init>(Ld6/a;)V

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Ld6/a;->c:Loj/f;

    return-void
.end method

.method public static final a()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Ld6/a;->d:Ld6/a$a;

    invoke-virtual {v0}, Ld6/a$a;->a()Z

    move-result v0

    return v0
.end method

.method public static final d()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Ld6/a;->d:Ld6/a$a;

    invoke-virtual {v0}, Ld6/a$a;->b()Z

    move-result v0

    return v0
.end method

.method public static final e()I
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Ld6/a;->d:Ld6/a$a;

    invoke-virtual {v0}, Ld6/a$a;->c()I

    move-result v0

    return v0
.end method

.method public static final f()I
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Ld6/a;->d:Ld6/a$a;

    invoke-virtual {v0}, Ld6/a$a;->d()I

    move-result v0

    return v0
.end method

.method private final j()Z
    .locals 2

    sget-object v0, Ld6/a;->d:Ld6/a$a;

    invoke-virtual {v0}, Ld6/a$a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ld6/a$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ld6/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final l(Z)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Ld6/a;->d:Ld6/a$a;

    invoke-virtual {v0, p0}, Ld6/a$a;->f(Z)V

    return-void
.end method

.method public static final n(Z)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Ld6/a;->d:Ld6/a$a;

    invoke-virtual {v0, p0}, Ld6/a$a;->g(Z)V

    return-void
.end method

.method private final r(ZIIZ)V
    .locals 3

    add-int/lit8 p2, p2, 0x1

    shl-int/lit8 v0, p4, 0x10

    shl-int/lit8 v1, p3, 0xc

    add-int/2addr v0, v1

    shl-int/lit8 v1, p2, 0x1

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePhysicalLightEnhanceProp - open : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", light : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", color : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", support : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", value = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ConversationLightEnhanceUtils"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "persist.vendor.vcf.enable"

    invoke-static {p2, p1}, Lx4/v1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic s(Ld6/a;ZIIZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x1

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Ld6/a;->r(ZIIZ)V

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    invoke-virtual {p0}, Ld6/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lw5/f;->o()I

    move-result v0

    goto :goto_0

    :cond_0
    sget-object v0, Ld6/a;->d:Ld6/a$a;

    invoke-virtual {v0}, Ld6/a$a;->d()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final c()I
    .locals 1

    invoke-virtual {p0}, Ld6/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lw5/f;->r()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0xff

    :goto_0
    return v0
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, Ld6/a;->b:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final h()Z
    .locals 1

    iget-object v0, p0, Ld6/a;->c:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 1

    iget-object v0, p0, Ld6/a;->a:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final k()V
    .locals 2

    sget-object v0, Ld6/a;->d:Ld6/a$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ld6/a$a;->g(Z)V

    invoke-virtual {p0}, Ld6/a;->p()V

    return-void
.end method

.method public final m(I)V
    .locals 1

    invoke-virtual {p0}, Ld6/a;->i()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_screen_light_value"

    invoke-static {v0, p1}, Lr4/a;->p(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public final o()V
    .locals 8

    invoke-virtual {p0}, Ld6/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0}, Ld6/a;->b()I

    move-result v3

    sget-object v0, Ld6/a;->d:Ld6/a$a;

    invoke-virtual {v0}, Ld6/a$a;->c()I

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Ld6/a;->s(Ld6/a;ZIIZILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lw5/b;->d()Lw5/b;

    move-result-object v0

    invoke-virtual {v0}, Lw5/b;->i()V

    :goto_0
    return-void
.end method

.method public final p()V
    .locals 8

    invoke-virtual {p0}, Ld6/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0}, Ld6/a;->b()I

    move-result v3

    sget-object v0, Ld6/a;->d:Ld6/a$a;

    invoke-virtual {v0}, Ld6/a$a;->c()I

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Ld6/a;->s(Ld6/a;ZIIZILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lw5/b;->d()Lw5/b;

    move-result-object v0

    invoke-virtual {v0}, Lw5/b;->c()V

    :goto_0
    return-void
.end method

.method public final q(II)V
    .locals 8

    invoke-virtual {p0}, Ld6/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move v3, p1

    move v4, p2

    invoke-static/range {v1 .. v7}, Ld6/a;->s(Ld6/a;ZIIZILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lw5/b;->d()Lw5/b;

    move-result-object p1

    invoke-virtual {p1}, Lw5/b;->i()V

    :goto_0
    return-void
.end method

.method public final t()V
    .locals 1

    invoke-direct {p0}, Ld6/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object v0

    invoke-virtual {v0}, Lx5/p;->d1()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object v0

    invoke-virtual {v0}, Lx5/p;->M1()V

    :goto_0
    return-void
.end method
