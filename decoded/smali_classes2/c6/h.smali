.class public Lc6/h;
.super Lc6/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc6/h$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private c:Lc6/h$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Lc6/h$a;Z)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lc6/h$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "descRes"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modelValue"

    invoke-static {p3, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lc6/a;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lc6/h;->a:I

    const-string v0, ""

    iput-object v0, p0, Lc6/h;->b:Ljava/lang/String;

    sget-object v0, Lc6/h$a;->b:Lc6/h$a;

    iput p1, p0, Lc6/h;->a:I

    iput-object p2, p0, Lc6/h;->b:Ljava/lang/String;

    iput-object p3, p0, Lc6/h;->c:Lc6/h$a;

    iput-boolean p4, p0, Lc6/h;->d:Z

    iget-boolean p1, p0, Lc6/h;->e:Z

    iput-boolean p1, p0, Lc6/h;->e:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lc6/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lc6/h;->e:Z

    return v0
.end method

.method public final c()Lc6/h$a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lc6/h;->c:Lc6/h$a;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lc6/h;->d:Z

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lc6/h;->a:I

    return v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g(Lc6/a;)Z
    .locals 2
    .param p1    # Lc6/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "model"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lc6/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc6/h;->c:Lc6/h$a;

    check-cast p1, Lc6/h;

    iget-object p1, p1, Lc6/h;->c:Lc6/h$a;

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final h(Z)V
    .locals 0

    iput-boolean p1, p0, Lc6/h;->e:Z

    return-void
.end method

.method public i(Z)V
    .locals 0

    return-void
.end method

.method public final j(Z)V
    .locals 0

    iput-boolean p1, p0, Lc6/h;->d:Z

    return-void
.end method
