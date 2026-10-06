.class public final Ld3/b;
.super Landroidx/lifecycle/r0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld3/b$a;
    }
.end annotation


# static fields
.field public static final d:Ld3/b$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field static final synthetic e:[Lhk/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lhk/h<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lc3/t;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lc3/t;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lc3/t;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Ld3/b;

    const/4 v1, 0x3

    new-array v1, v1, [Lhk/h;

    new-instance v2, Lbk/p;

    const-string v3, "isHandleFingerprintDialog"

    const-string v4, "isHandleFingerprintDialog()Ljava/lang/Boolean;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lbk/p;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lbk/z;->d(Lbk/o;)Lhk/e;

    move-result-object v2

    aput-object v2, v1, v5

    new-instance v2, Lbk/p;

    const-string v3, "isPasswordConfirm"

    const-string v4, "isPasswordConfirm()Ljava/lang/Boolean;"

    invoke-direct {v2, v0, v3, v4, v5}, Lbk/p;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lbk/z;->d(Lbk/o;)Lhk/e;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lbk/p;

    const-string v3, "isNeedPass"

    const-string v4, "isNeedPass()Ljava/lang/Boolean;"

    invoke-direct {v2, v0, v3, v4, v5}, Lbk/p;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lbk/z;->d(Lbk/o;)Lhk/e;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Ld3/b;->e:[Lhk/h;

    new-instance v0, Ld3/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ld3/b$a;-><init>(Lbk/g;)V

    sput-object v0, Ld3/b;->d:Ld3/b$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/lifecycle/r0;-><init>()V

    new-instance v0, Lc3/t;

    sget-object v1, Ld3/b$b;->a:Ld3/b$b;

    invoke-direct {v0, v1}, Lc3/t;-><init>(Lak/a;)V

    iput-object v0, p0, Ld3/b;->a:Lc3/t;

    new-instance v0, Lc3/t;

    sget-object v1, Ld3/b$d;->a:Ld3/b$d;

    invoke-direct {v0, v1}, Lc3/t;-><init>(Lak/a;)V

    iput-object v0, p0, Ld3/b;->b:Lc3/t;

    new-instance v0, Lc3/t;

    sget-object v1, Ld3/b$c;->a:Ld3/b$c;

    invoke-direct {v0, v1}, Lc3/t;-><init>(Lak/a;)V

    iput-object v0, p0, Ld3/b;->c:Lc3/t;

    return-void
.end method

.method public static final a(Landroidx/lifecycle/y0;)Ld3/b;
    .locals 1
    .param p0    # Landroidx/lifecycle/y0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Ld3/b;->d:Ld3/b$a;

    invoke-virtual {v0, p0}, Ld3/b$a;->a(Landroidx/lifecycle/y0;)Ld3/b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b()Ljava/lang/Boolean;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Ld3/b;->a:Lc3/t;

    sget-object v1, Ld3/b;->e:[Lhk/h;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lc3/t;->a(Ljava/lang/Object;Lhk/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final c()Ljava/lang/Boolean;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Ld3/b;->c:Lc3/t;

    sget-object v1, Ld3/b;->e:[Lhk/h;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lc3/t;->a(Ljava/lang/Object;Lhk/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final d()Ljava/lang/Boolean;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Ld3/b;->b:Lc3/t;

    sget-object v1, Ld3/b;->e:[Lhk/h;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lc3/t;->a(Ljava/lang/Object;Lhk/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final e(Ljava/lang/Boolean;)V
    .locals 3
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Ld3/b;->a:Lc3/t;

    sget-object v1, Ld3/b;->e:[Lhk/h;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lc3/t;->b(Ljava/lang/Object;Lhk/h;Ljava/lang/Object;)V

    return-void
.end method

.method public final f(Ljava/lang/Boolean;)V
    .locals 3
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Ld3/b;->c:Lc3/t;

    sget-object v1, Ld3/b;->e:[Lhk/h;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lc3/t;->b(Ljava/lang/Object;Lhk/h;Ljava/lang/Object;)V

    return-void
.end method

.method public final g(Ljava/lang/Boolean;)V
    .locals 3
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Ld3/b;->b:Lc3/t;

    sget-object v1, Ld3/b;->e:[Lhk/h;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lc3/t;->b(Ljava/lang/Object;Lhk/h;Ljava/lang/Object;)V

    return-void
.end method
