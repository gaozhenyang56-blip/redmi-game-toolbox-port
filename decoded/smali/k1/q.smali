.class public Lk1/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk1/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk1/q$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lk1/q$a;

.field private final c:Lj1/b;

.field private final d:Lj1/b;

.field private final e:Lj1/b;

.field private final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lk1/q$a;Lj1/b;Lj1/b;Lj1/b;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk1/q;->a:Ljava/lang/String;

    iput-object p2, p0, Lk1/q;->b:Lk1/q$a;

    iput-object p3, p0, Lk1/q;->c:Lj1/b;

    iput-object p4, p0, Lk1/q;->d:Lj1/b;

    iput-object p5, p0, Lk1/q;->e:Lj1/b;

    iput-boolean p6, p0, Lk1/q;->f:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/LottieDrawable;Ll1/a;)Lf1/c;
    .locals 0

    new-instance p1, Lf1/s;

    invoke-direct {p1, p2, p0}, Lf1/s;-><init>(Ll1/a;Lk1/q;)V

    return-object p1
.end method

.method public b()Lj1/b;
    .locals 1

    iget-object v0, p0, Lk1/q;->d:Lj1/b;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lk1/q;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lj1/b;
    .locals 1

    iget-object v0, p0, Lk1/q;->e:Lj1/b;

    return-object v0
.end method

.method public e()Lj1/b;
    .locals 1

    iget-object v0, p0, Lk1/q;->c:Lj1/b;

    return-object v0
.end method

.method public f()Lk1/q$a;
    .locals 1

    iget-object v0, p0, Lk1/q;->b:Lk1/q$a;

    return-object v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lk1/q;->f:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trim Path: {start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk1/q;->c:Lj1/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", end: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk1/q;->d:Lj1/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk1/q;->e:Lj1/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
