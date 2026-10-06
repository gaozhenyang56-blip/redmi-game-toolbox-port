.class public final Lcn/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lym/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/b$a;
    }
.end annotation


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcn/b;->a:Z

    return-void
.end method


# virtual methods
.method public a(Lym/s$a;)Lym/z;
    .locals 11

    check-cast p1, Lcn/g;

    invoke-virtual {p1}, Lcn/g;->i()Lcn/c;

    move-result-object v0

    invoke-virtual {p1}, Lcn/g;->k()Lbn/g;

    move-result-object v1

    invoke-virtual {p1}, Lcn/g;->g()Lym/h;

    move-result-object v2

    check-cast v2, Lbn/c;

    invoke-virtual {p1}, Lcn/g;->b()Lym/x;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1}, Lcn/g;->h()Lym/o;

    move-result-object v6

    invoke-virtual {p1}, Lcn/g;->f()Lym/d;

    move-result-object v7

    invoke-virtual {v6, v7}, Lym/o;->o(Lym/d;)V

    invoke-interface {v0, v3}, Lcn/c;->d(Lym/x;)V

    invoke-virtual {p1}, Lcn/g;->h()Lym/o;

    move-result-object v6

    invoke-virtual {p1}, Lcn/g;->f()Lym/d;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Lym/o;->n(Lym/d;Lym/x;)V

    invoke-virtual {v3}, Lym/x;->f()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcn/f;->b(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Lym/x;->a()Lym/y;

    move-result-object v6

    if-eqz v6, :cond_2

    const-string v6, "Expect"

    invoke-virtual {v3, v6}, Lym/x;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "100-continue"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Lcn/c;->f()V

    invoke-virtual {p1}, Lcn/g;->h()Lym/o;

    move-result-object v6

    invoke-virtual {p1}, Lcn/g;->f()Lym/d;

    move-result-object v7

    invoke-virtual {v6, v7}, Lym/o;->s(Lym/d;)V

    const/4 v6, 0x1

    invoke-interface {v0, v6}, Lcn/c;->e(Z)Lym/z$a;

    move-result-object v7

    :cond_0
    if-nez v7, :cond_1

    invoke-virtual {p1}, Lcn/g;->h()Lym/o;

    move-result-object v2

    invoke-virtual {p1}, Lcn/g;->f()Lym/d;

    move-result-object v6

    invoke-virtual {v2, v6}, Lym/o;->m(Lym/d;)V

    invoke-virtual {v3}, Lym/x;->a()Lym/y;

    move-result-object v2

    invoke-virtual {v2}, Lym/y;->a()J

    move-result-wide v8

    new-instance v2, Lcn/b$a;

    invoke-interface {v0, v3, v8, v9}, Lcn/c;->a(Lym/x;J)Lin/s;

    move-result-object v6

    invoke-direct {v2, v6}, Lcn/b$a;-><init>(Lin/s;)V

    invoke-static {v2}, Lin/l;->a(Lin/s;)Lin/d;

    move-result-object v6

    invoke-virtual {v3}, Lym/x;->a()Lym/y;

    move-result-object v8

    invoke-virtual {v8, v6}, Lym/y;->f(Lin/d;)V

    invoke-interface {v6}, Lin/s;->close()V

    invoke-virtual {p1}, Lcn/g;->h()Lym/o;

    move-result-object v6

    invoke-virtual {p1}, Lcn/g;->f()Lym/d;

    move-result-object v8

    iget-wide v9, v2, Lcn/b$a;->b:J

    invoke-virtual {v6, v8, v9, v10}, Lym/o;->l(Lym/d;J)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lbn/c;->n()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lbn/g;->j()V

    :cond_2
    :goto_0
    invoke-interface {v0}, Lcn/c;->b()V

    const/4 v2, 0x0

    if-nez v7, :cond_3

    invoke-virtual {p1}, Lcn/g;->h()Lym/o;

    move-result-object v6

    invoke-virtual {p1}, Lcn/g;->f()Lym/d;

    move-result-object v7

    invoke-virtual {v6, v7}, Lym/o;->s(Lym/d;)V

    invoke-interface {v0, v2}, Lcn/c;->e(Z)Lym/z$a;

    move-result-object v7

    :cond_3
    invoke-virtual {v7, v3}, Lym/z$a;->p(Lym/x;)Lym/z$a;

    move-result-object v6

    invoke-virtual {v1}, Lbn/g;->d()Lbn/c;

    move-result-object v7

    invoke-virtual {v7}, Lbn/c;->k()Lym/p;

    move-result-object v7

    invoke-virtual {v6, v7}, Lym/z$a;->h(Lym/p;)Lym/z$a;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lym/z$a;->q(J)Lym/z$a;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lym/z$a;->o(J)Lym/z$a;

    move-result-object v6

    invoke-virtual {v6}, Lym/z$a;->c()Lym/z;

    move-result-object v6

    invoke-virtual {v6}, Lym/z;->e()I

    move-result v7

    const/16 v8, 0x64

    if-ne v7, v8, :cond_4

    invoke-interface {v0, v2}, Lcn/c;->e(Z)Lym/z$a;

    move-result-object v2

    invoke-virtual {v2, v3}, Lym/z$a;->p(Lym/x;)Lym/z$a;

    move-result-object v2

    invoke-virtual {v1}, Lbn/g;->d()Lbn/c;

    move-result-object v3

    invoke-virtual {v3}, Lbn/c;->k()Lym/p;

    move-result-object v3

    invoke-virtual {v2, v3}, Lym/z$a;->h(Lym/p;)Lym/z$a;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Lym/z$a;->q(J)Lym/z$a;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lym/z$a;->o(J)Lym/z$a;

    move-result-object v2

    invoke-virtual {v2}, Lym/z$a;->c()Lym/z;

    move-result-object v6

    invoke-virtual {v6}, Lym/z;->e()I

    move-result v7

    :cond_4
    invoke-virtual {p1}, Lcn/g;->h()Lym/o;

    move-result-object v2

    invoke-virtual {p1}, Lcn/g;->f()Lym/d;

    move-result-object p1

    invoke-virtual {v2, p1, v6}, Lym/o;->r(Lym/d;Lym/z;)V

    iget-boolean p1, p0, Lcn/b;->a:Z

    if-eqz p1, :cond_5

    const/16 p1, 0x65

    if-ne v7, p1, :cond_5

    invoke-virtual {v6}, Lym/z;->n()Lym/z$a;

    move-result-object p1

    sget-object v0, Lzm/c;->c:Lym/a0;

    goto :goto_1

    :cond_5
    invoke-virtual {v6}, Lym/z;->n()Lym/z$a;

    move-result-object p1

    invoke-interface {v0, v6}, Lcn/c;->c(Lym/z;)Lym/a0;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, v0}, Lym/z$a;->b(Lym/a0;)Lym/z$a;

    move-result-object p1

    invoke-virtual {p1}, Lym/z$a;->c()Lym/z;

    move-result-object p1

    invoke-virtual {p1}, Lym/z;->s()Lym/x;

    move-result-object v0

    const-string v2, "Connection"

    invoke-virtual {v0, v2}, Lym/x;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "close"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1, v2}, Lym/z;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    invoke-virtual {v1}, Lbn/g;->j()V

    :cond_7
    const/16 v0, 0xcc

    if-eq v7, v0, :cond_8

    const/16 v0, 0xcd

    if-ne v7, v0, :cond_9

    :cond_8
    invoke-virtual {p1}, Lym/z;->c()Lym/a0;

    move-result-object v0

    invoke-virtual {v0}, Lym/a0;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_a

    :cond_9
    return-object p1

    :cond_a
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " had non-zero Content-Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lym/z;->c()Lym/a0;

    move-result-object p1

    invoke-virtual {p1}, Lym/a0;->d()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
