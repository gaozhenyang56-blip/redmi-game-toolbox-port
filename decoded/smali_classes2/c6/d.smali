.class public final Lc6/d;
.super Lc6/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc6/d$a;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private d:I

.field private e:Lc6/d$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private f:Z


# direct methods
.method public constructor <init>(ILc6/d$a;ZI)V
    .locals 1
    .param p2    # Lc6/d$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "modelValue"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lc6/a;-><init>()V

    iput p4, p0, Lc6/d;->a:I

    const/4 p4, 0x1

    iput p4, p0, Lc6/d;->b:I

    const/4 p4, 0x2

    iput p4, p0, Lc6/d;->c:I

    const/4 p4, -0x1

    iput p4, p0, Lc6/d;->d:I

    sget-object p4, Lc6/d$a;->b:Lc6/d$a;

    iput p1, p0, Lc6/d;->d:I

    iput-object p2, p0, Lc6/d;->e:Lc6/d$a;

    iput-boolean p3, p0, Lc6/d;->f:Z

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lc6/d;->a:I

    return v0
.end method

.method public final b()Lc6/d$a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lc6/d;->e:Lc6/d$a;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lc6/d;->f:Z

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lc6/d;->d:I

    return v0
.end method

.method public e(Lc6/a;)Z
    .locals 2
    .param p1    # Lc6/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "model"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lc6/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc6/d;->e:Lc6/d$a;

    check-cast p1, Lc6/d;

    iget-object p1, p1, Lc6/d;->e:Lc6/d$a;

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final f(Z)V
    .locals 0

    iput-boolean p1, p0, Lc6/d;->f:Z

    return-void
.end method
