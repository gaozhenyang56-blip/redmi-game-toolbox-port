.class public final Ld3/a;
.super Landroidx/lifecycle/r0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld3/a$a;
    }
.end annotation


# static fields
.field public static final i:Ld3/a$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field static final synthetic j:[Lhk/h;
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

.field private final d:Lc3/t;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:Lc3/t;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final f:Lc3/t;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final g:Lc3/t;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final h:Lc3/t;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Ld3/a;

    const/16 v1, 0x8

    new-array v1, v1, [Lhk/h;

    new-instance v2, Lbk/p;

    const-string v3, "isModifyPassword"

    const-string v4, "isModifyPassword()Ljava/lang/Boolean;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lbk/p;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lbk/z;->d(Lbk/o;)Lhk/e;

    move-result-object v2

    aput-object v2, v1, v5

    new-instance v2, Lbk/p;

    const-string v3, "externalPkgName"

    const-string v4, "getExternalPkgName()Ljava/lang/String;"

    invoke-direct {v2, v0, v3, v4, v5}, Lbk/p;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lbk/z;->d(Lbk/o;)Lhk/e;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lbk/p;

    const-string v3, "firstPwd"

    const-string v4, "getFirstPwd()Ljava/lang/String;"

    invoke-direct {v2, v0, v3, v4, v5}, Lbk/p;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lbk/z;->d(Lbk/o;)Lhk/e;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lbk/p;

    const-string v3, "secondPwd"

    const-string v4, "getSecondPwd()Landroid/text/Editable;"

    invoke-direct {v2, v0, v3, v4, v5}, Lbk/p;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lbk/z;->d(Lbk/o;)Lhk/e;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lbk/p;

    const-string v3, "passwordType"

    const-string v4, "getPasswordType()Ljava/lang/String;"

    invoke-direct {v2, v0, v3, v4, v5}, Lbk/p;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lbk/z;->d(Lbk/o;)Lhk/e;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lbk/p;

    const-string v3, "passwordConfirmed"

    const-string v4, "getPasswordConfirmed()Ljava/lang/Boolean;"

    invoke-direct {v2, v0, v3, v4, v5}, Lbk/p;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lbk/z;->d(Lbk/o;)Lhk/e;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    new-instance v2, Lbk/p;

    const-string v3, "isFirst"

    const-string v4, "isFirst()Ljava/lang/Boolean;"

    invoke-direct {v2, v0, v3, v4, v5}, Lbk/p;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lbk/z;->d(Lbk/o;)Lhk/e;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    new-instance v2, Lbk/p;

    const-string v3, "choosePasswordTypeVisible"

    const-string v4, "getChoosePasswordTypeVisible()Ljava/lang/Boolean;"

    invoke-direct {v2, v0, v3, v4, v5}, Lbk/p;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lbk/z;->d(Lbk/o;)Lhk/e;

    move-result-object v0

    const/4 v2, 0x7

    aput-object v0, v1, v2

    sput-object v1, Ld3/a;->j:[Lhk/h;

    new-instance v0, Ld3/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ld3/a$a;-><init>(Lbk/g;)V

    sput-object v0, Ld3/a;->i:Ld3/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/lifecycle/r0;-><init>()V

    new-instance v0, Lc3/t;

    sget-object v1, Ld3/a$f;->a:Ld3/a$f;

    invoke-direct {v0, v1}, Lc3/t;-><init>(Lak/a;)V

    iput-object v0, p0, Ld3/a;->a:Lc3/t;

    new-instance v0, Lc3/t;

    sget-object v1, Ld3/a$c;->a:Ld3/a$c;

    invoke-direct {v0, v1}, Lc3/t;-><init>(Lak/a;)V

    iput-object v0, p0, Ld3/a;->b:Lc3/t;

    new-instance v0, Lc3/t;

    sget-object v1, Ld3/a$d;->a:Ld3/a$d;

    invoke-direct {v0, v1}, Lc3/t;-><init>(Lak/a;)V

    iput-object v0, p0, Ld3/a;->c:Lc3/t;

    new-instance v0, Lc3/t;

    sget-object v1, Ld3/a$i;->a:Ld3/a$i;

    invoke-direct {v0, v1}, Lc3/t;-><init>(Lak/a;)V

    iput-object v0, p0, Ld3/a;->d:Lc3/t;

    new-instance v0, Lc3/t;

    sget-object v1, Ld3/a$h;->a:Ld3/a$h;

    invoke-direct {v0, v1}, Lc3/t;-><init>(Lak/a;)V

    iput-object v0, p0, Ld3/a;->e:Lc3/t;

    new-instance v0, Lc3/t;

    sget-object v1, Ld3/a$g;->a:Ld3/a$g;

    invoke-direct {v0, v1}, Lc3/t;-><init>(Lak/a;)V

    iput-object v0, p0, Ld3/a;->f:Lc3/t;

    new-instance v0, Lc3/t;

    sget-object v1, Ld3/a$e;->a:Ld3/a$e;

    invoke-direct {v0, v1}, Lc3/t;-><init>(Lak/a;)V

    iput-object v0, p0, Ld3/a;->g:Lc3/t;

    new-instance v0, Lc3/t;

    sget-object v1, Ld3/a$b;->a:Ld3/a$b;

    invoke-direct {v0, v1}, Lc3/t;-><init>(Lak/a;)V

    iput-object v0, p0, Ld3/a;->h:Lc3/t;

    return-void
.end method

.method public static final d(Landroidx/lifecycle/y0;)Ld3/a;
    .locals 1
    .param p0    # Landroidx/lifecycle/y0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Ld3/a;->i:Ld3/a$a;

    invoke-virtual {v0, p0}, Ld3/a$a;->a(Landroidx/lifecycle/y0;)Ld3/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Ld3/a;->h:Lc3/t;

    sget-object v1, Ld3/a;->j:[Lhk/h;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lc3/t;->a(Ljava/lang/Object;Lhk/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Ld3/a;->b:Lc3/t;

    sget-object v1, Ld3/a;->j:[Lhk/h;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lc3/t;->a(Ljava/lang/Object;Lhk/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Ld3/a;->c:Lc3/t;

    sget-object v1, Ld3/a;->j:[Lhk/h;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lc3/t;->a(Ljava/lang/Object;Lhk/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/Boolean;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Ld3/a;->f:Lc3/t;

    sget-object v1, Ld3/a;->j:[Lhk/h;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lc3/t;->a(Ljava/lang/Object;Lhk/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Ld3/a;->e:Lc3/t;

    sget-object v1, Ld3/a;->j:[Lhk/h;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lc3/t;->a(Ljava/lang/Object;Lhk/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final g()Landroid/text/Editable;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Ld3/a;->d:Lc3/t;

    sget-object v1, Ld3/a;->j:[Lhk/h;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lc3/t;->a(Ljava/lang/Object;Lhk/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    return-object v0
.end method

.method public final h()Ljava/lang/Boolean;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Ld3/a;->g:Lc3/t;

    sget-object v1, Ld3/a;->j:[Lhk/h;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lc3/t;->a(Ljava/lang/Object;Lhk/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final i()Ljava/lang/Boolean;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Ld3/a;->a:Lc3/t;

    sget-object v1, Ld3/a;->j:[Lhk/h;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lc3/t;->a(Ljava/lang/Object;Lhk/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public final j(Ljava/lang/Boolean;)V
    .locals 3
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Ld3/a;->h:Lc3/t;

    sget-object v1, Ld3/a;->j:[Lhk/h;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lc3/t;->b(Ljava/lang/Object;Lhk/h;Ljava/lang/Object;)V

    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Ld3/a;->b:Lc3/t;

    sget-object v1, Ld3/a;->j:[Lhk/h;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lc3/t;->b(Ljava/lang/Object;Lhk/h;Ljava/lang/Object;)V

    return-void
.end method

.method public final l(Ljava/lang/Boolean;)V
    .locals 3
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Ld3/a;->g:Lc3/t;

    sget-object v1, Ld3/a;->j:[Lhk/h;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lc3/t;->b(Ljava/lang/Object;Lhk/h;Ljava/lang/Object;)V

    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Ld3/a;->c:Lc3/t;

    sget-object v1, Ld3/a;->j:[Lhk/h;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lc3/t;->b(Ljava/lang/Object;Lhk/h;Ljava/lang/Object;)V

    return-void
.end method

.method public final n(Ljava/lang/Boolean;)V
    .locals 3
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Ld3/a;->a:Lc3/t;

    sget-object v1, Ld3/a;->j:[Lhk/h;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lc3/t;->b(Ljava/lang/Object;Lhk/h;Ljava/lang/Object;)V

    return-void
.end method

.method public final o(Ljava/lang/Boolean;)V
    .locals 3
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Ld3/a;->f:Lc3/t;

    sget-object v1, Ld3/a;->j:[Lhk/h;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lc3/t;->b(Ljava/lang/Object;Lhk/h;Ljava/lang/Object;)V

    return-void
.end method

.method public final p(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Ld3/a;->e:Lc3/t;

    sget-object v1, Ld3/a;->j:[Lhk/h;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lc3/t;->b(Ljava/lang/Object;Lhk/h;Ljava/lang/Object;)V

    return-void
.end method

.method public final q(Landroid/text/Editable;)V
    .locals 3
    .param p1    # Landroid/text/Editable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Ld3/a;->d:Lc3/t;

    sget-object v1, Ld3/a;->j:[Lhk/h;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lc3/t;->b(Ljava/lang/Object;Lhk/h;Ljava/lang/Object;)V

    return-void
.end method
