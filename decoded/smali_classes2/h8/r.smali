.class public Lh8/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh8/r$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh8/r;->a:Ljava/lang/String;

    iput-object p2, p0, Lh8/r;->b:Ljava/lang/String;

    iput-object p3, p0, Lh8/r;->c:Ljava/lang/String;

    iput p4, p0, Lh8/r;->d:I

    iput-boolean p5, p0, Lh8/r;->e:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh8/r;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh8/r;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lh8/r;->d:I

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lh8/r;->f:Z

    return v0
.end method

.method public e(Lh8/r;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lh8/r;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lh8/r;->b()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lh8/r;->c()I

    move-result v1

    invoke-virtual {p0}, Lh8/r;->c()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lh8/r;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lh8/r;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lh8/r;->e:Z

    return v0
.end method

.method public g(Z)V
    .locals 0

    iput-boolean p1, p0, Lh8/r;->f:Z

    return-void
.end method

.method public h(Z)V
    .locals 0

    iput-boolean p1, p0, Lh8/r;->e:Z

    return-void
.end method
