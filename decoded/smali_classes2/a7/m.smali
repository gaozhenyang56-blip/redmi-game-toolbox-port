.class public La7/m;
.super La7/c;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Landroid/content/Context;

.field private c:Lcom/miui/gamebooster/service/w;

.field private d:Z

.field private e:Lt7/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/gamebooster/service/w;)V
    .locals 0

    invoke-direct {p0}, La7/c;-><init>()V

    iput-object p1, p0, La7/m;->b:Landroid/content/Context;

    iput-object p2, p0, La7/m;->c:Lcom/miui/gamebooster/service/w;

    invoke-static {}, La8/b;->d()La8/b;

    move-result-object p1

    invoke-virtual {p1}, La8/b;->v()Z

    move-result p1

    iput-boolean p1, p0, La7/m;->d:Z

    return-void
.end method

.method private f()I
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/gamebooster/ui/touch/a;->g(Z)I

    move-result v0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-boolean v0, p0, La7/m;->a:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, La7/m;->d:Z

    if-eqz v0, :cond_5

    const-string v0, "GameBoosterService"

    const-string v1, "smotion...stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, La7/m;->f()I

    move-result v0

    invoke-static {}, Lt7/b;->d()Lt7/b;

    move-result-object v1

    invoke-virtual {v1}, Lt7/b;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, La8/b;->d()La8/b;

    move-result-object v1

    sget v2, La8/b;->i:I

    invoke-virtual {v1, v0, v2}, La8/b;->w(II)Z

    :cond_0
    invoke-static {}, Lt7/b;->d()Lt7/b;

    move-result-object v1

    invoke-virtual {v1}, Lt7/b;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, La8/b;->d()La8/b;

    move-result-object v1

    sget v2, La8/b;->j:I

    invoke-virtual {v1, v0, v2}, La8/b;->w(II)Z

    :cond_1
    invoke-static {}, Lt7/b;->d()Lt7/b;

    move-result-object v1

    invoke-virtual {v1}, Lt7/b;->m()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, La8/b;->d()La8/b;

    move-result-object v1

    sget v2, La8/b;->k:I

    invoke-virtual {v1, v0, v2}, La8/b;->w(II)Z

    :cond_2
    invoke-static {}, Lt7/b;->d()Lt7/b;

    move-result-object v1

    invoke-virtual {v1}, Lt7/b;->j()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, La8/b;->d()La8/b;

    move-result-object v1

    sget v2, La8/b;->l:I

    invoke-virtual {v1, v0, v2}, La8/b;->w(II)Z

    :cond_3
    invoke-static {}, Lt7/b;->d()Lt7/b;

    move-result-object v1

    invoke-virtual {v1}, Lt7/b;->n()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, La8/b;->d()La8/b;

    move-result-object v1

    sget v2, La8/b;->m:I

    invoke-virtual {v1, v0, v2}, La8/b;->w(II)Z

    :cond_4
    const-string v0, "no valid app"

    invoke-static {v0}, La8/b;->z(Ljava/lang/String;)V

    :cond_5
    invoke-static {}, Lt7/b;->d()Lt7/b;

    move-result-object v0

    invoke-virtual {v0}, Lt7/b;->q()V

    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c()V
    .locals 5

    iget-boolean v0, p0, La7/m;->a:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, La7/m;->d:Z

    if-eqz v0, :cond_9

    const-string v0, "GameBoosterService"

    const-string v1, "smotion...start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, La7/m;->c:Lcom/miui/gamebooster/service/w;

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/w;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La8/b;->z(Ljava/lang/String;)V

    invoke-static {}, Lt7/b;->d()Lt7/b;

    move-result-object v0

    iget-object v1, p0, La7/m;->c:Lcom/miui/gamebooster/service/w;

    invoke-virtual {v1}, Lcom/miui/gamebooster/service/w;->y()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, La7/m;->c:Lcom/miui/gamebooster/service/w;

    invoke-virtual {v2}, Lcom/miui/gamebooster/service/w;->E()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lt7/b;->e(Ljava/lang/String;I)Lt7/d;

    move-result-object v0

    iput-object v0, p0, La7/m;->e:Lt7/d;

    invoke-direct {p0}, La7/m;->f()I

    move-result v0

    invoke-static {}, Lt7/b;->d()Lt7/b;

    move-result-object v1

    invoke-virtual {v1}, Lt7/b;->l()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    invoke-static {}, La8/b;->d()La8/b;

    move-result-object v1

    sget v3, La8/b;->i:I

    iget-object v4, p0, La7/m;->e:Lt7/d;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lt7/d;->b()I

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v1, v0, v3, v4}, La8/b;->A(III)Z

    :cond_1
    invoke-static {}, Lt7/b;->d()Lt7/b;

    move-result-object v1

    invoke-virtual {v1}, Lt7/b;->k()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, La8/b;->d()La8/b;

    move-result-object v1

    sget v3, La8/b;->j:I

    iget-object v4, p0, La7/m;->e:Lt7/d;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lt7/d;->a()I

    move-result v4

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    invoke-virtual {v1, v0, v3, v4}, La8/b;->A(III)Z

    :cond_3
    invoke-static {}, Lt7/b;->d()Lt7/b;

    move-result-object v1

    invoke-virtual {v1}, Lt7/b;->m()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, La8/b;->d()La8/b;

    move-result-object v1

    sget v3, La8/b;->k:I

    iget-object v4, p0, La7/m;->e:Lt7/d;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lt7/d;->c()I

    move-result v4

    goto :goto_2

    :cond_4
    move v4, v2

    :goto_2
    invoke-virtual {v1, v0, v3, v4}, La8/b;->A(III)Z

    :cond_5
    invoke-static {}, Lt7/b;->d()Lt7/b;

    move-result-object v1

    invoke-virtual {v1}, Lt7/b;->j()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, La8/b;->d()La8/b;

    move-result-object v1

    sget v3, La8/b;->l:I

    iget-object v4, p0, La7/m;->e:Lt7/d;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lt7/d;->e()I

    move-result v4

    goto :goto_3

    :cond_6
    move v4, v2

    :goto_3
    invoke-virtual {v1, v0, v3, v4}, La8/b;->A(III)Z

    :cond_7
    invoke-static {}, Lt7/b;->d()Lt7/b;

    move-result-object v1

    invoke-virtual {v1}, Lt7/b;->n()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, La8/b;->d()La8/b;

    move-result-object v1

    sget v3, La8/b;->m:I

    iget-object v4, p0, La7/m;->e:Lt7/d;

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lt7/d;->d()I

    move-result v2

    :cond_8
    invoke-virtual {v1, v0, v3, v2}, La8/b;->A(III)Z

    :cond_9
    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, La7/m;->a:Z

    return-void
.end method

.method public e()I
    .locals 1

    const/16 v0, 0xd

    return v0
.end method
