.class public final Lc3/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc3/u$b;
    }
.end annotation


# static fields
.field public static final e:Lc3/u$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Llk/i0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lak/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lak/a<",
            "Loj/t;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:J

.field private volatile d:Llk/s1;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc3/u$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc3/u$b;-><init>(Lbk/g;)V

    sput-object v0, Lc3/u;->e:Lc3/u$b;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/Runnable;)V
    .locals 8
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "runnable"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lc3/u;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/Runnable;JILbk/g;)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "runnable"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/lifecycle/w;->a(Landroidx/lifecycle/v;)Landroidx/lifecycle/o;

    move-result-object p1

    new-instance v0, Lc3/u$a;

    invoke-direct {v0, p2}, Lc3/u$a;-><init>(Ljava/lang/Runnable;)V

    invoke-direct {p0, p1, v0, p3, p4}, Lc3/u;-><init>(Llk/i0;Lak/a;J)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/Runnable;JILbk/g;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const-wide/16 p3, 0x1f4

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lc3/u;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public constructor <init>(Llk/i0;Lak/a;J)V
    .locals 1
    .param p1    # Llk/i0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lak/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llk/i0;",
            "Lak/a<",
            "Loj/t;",
            ">;J)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "coroutineScope"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc3/u;->a:Llk/i0;

    iput-object p2, p0, Lc3/u;->b:Lak/a;

    iput-wide p3, p0, Lc3/u;->c:J

    return-void
.end method

.method public static final synthetic a(Lc3/u;)Lak/a;
    .locals 0

    iget-object p0, p0, Lc3/u;->b:Lak/a;

    return-object p0
.end method

.method public static final synthetic b(Lc3/u;)J
    .locals 2

    iget-wide v0, p0, Lc3/u;->c:J

    return-wide v0
.end method

.method public static final synthetic c(Lc3/u;)Llk/s1;
    .locals 0

    iget-object p0, p0, Lc3/u;->d:Llk/s1;

    return-object p0
.end method

.method public static final synthetic d(Lc3/u;Llk/s1;)V
    .locals 0

    iput-object p1, p0, Lc3/u;->d:Llk/s1;

    return-void
.end method


# virtual methods
.method public final e(Lak/a;)V
    .locals 7
    .param p1    # Lak/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lak/a<",
            "Loj/t;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cancelAction"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lc3/u;->a:Llk/i0;

    new-instance v4, Lc3/u$c;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lc3/u$c;-><init>(Lc3/u;Lak/a;Ltj/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    return-void
.end method

.method public final f(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "cancelRunnable"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lc3/u$d;

    invoke-direct {v0, p1}, Lc3/u$d;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lc3/u;->e(Lak/a;)V

    return-void
.end method

.method public final g()V
    .locals 6

    iget-object v0, p0, Lc3/u;->a:Llk/i0;

    new-instance v3, Lc3/u$e;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lc3/u$e;-><init>(Lc3/u;Ltj/d;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    move-result-object v0

    iput-object v0, p0, Lc3/u;->d:Llk/s1;

    return-void
.end method
