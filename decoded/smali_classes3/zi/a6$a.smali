.class Lzi/a6$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzi/h6;
.implements Lzi/q6;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzi/a6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field private b:Z

.field final synthetic c:Lzi/a6;


# direct methods
.method constructor <init>(Lzi/a6;Z)V
    .locals 0

    iput-object p1, p0, Lzi/a6$a;->c:Lzi/a6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lzi/a6$a;->b:Z

    if-eqz p2, :cond_0

    const-string p1, " RCV "

    goto :goto_0

    :cond_0
    const-string p1, " Sent "

    :goto_0
    iput-object p1, p0, Lzi/a6$a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lzi/u6;)V
    .locals 3

    sget-boolean v0, Lzi/a6;->g:Z

    const-string v1, "[Slim] "

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzi/a6$a;->c:Lzi/a6;

    invoke-static {v1}, Lzi/a6;->a(Lzi/a6;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzi/a6$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " PKT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lzi/u6;->c()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzi/a6$a;->c:Lzi/a6;

    invoke-static {v1}, Lzi/a6;->a(Lzi/a6;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzi/a6$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " PKT ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lzi/u6;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lzi/u6;->l()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lpi/c;->B(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lzi/u6;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public b(Lzi/r5;)V
    .locals 5

    sget-boolean v0, Lzi/a6;->g:Z

    const-string v1, "[Slim] "

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzi/a6$a;->c:Lzi/a6;

    invoke-static {v1}, Lzi/a6;->a(Lzi/a6;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzi/a6$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lzi/r5;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzi/a6$a;->c:Lzi/a6;

    invoke-static {v1}, Lzi/a6;->a(Lzi/a6;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzi/a6$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Blob ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lzi/r5;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lzi/r5;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lzi/r5;->D()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/push/service/h0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpi/c;->B(Ljava/lang/String;)V

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lzi/r5;->a()I

    move-result v0

    const v1, 0x1869f

    if-ne v0, v1, :cond_5

    invoke-virtual {p1}, Lzi/r5;->c()Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lzi/a6$a;->b:Z

    const/4 v3, 0x0

    if-nez v2, :cond_3

    const-string v2, "BIND"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, "build binded result for loopback."

    invoke-static {v0}, Lpi/c;->n(Ljava/lang/String;)V

    new-instance v0, Lzi/e4;

    invoke-direct {v0}, Lzi/e4;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lzi/e4;->m(Z)Lzi/e4;

    const-string v4, "login success."

    invoke-virtual {v0, v4}, Lzi/e4;->t(Ljava/lang/String;)Lzi/e4;

    const-string v4, "success"

    invoke-virtual {v0, v4}, Lzi/e4;->q(Ljava/lang/String;)Lzi/e4;

    invoke-virtual {v0, v4}, Lzi/e4;->k(Ljava/lang/String;)Lzi/e4;

    new-instance v4, Lzi/r5;

    invoke-direct {v4}, Lzi/r5;-><init>()V

    invoke-virtual {v0}, Lzi/c3;->h()[B

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lzi/r5;->n([BLjava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Lzi/r5;->m(S)V

    invoke-virtual {v4, v1}, Lzi/r5;->h(I)V

    invoke-virtual {v4, v2, v3}, Lzi/r5;->l(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lzi/r5;->D()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lzi/r5;->k(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lzi/r5;->v(Ljava/lang/String;)V

    invoke-virtual {p1}, Lzi/r5;->F()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lzi/r5;->B(Ljava/lang/String;)V

    move-object v3, v4

    goto :goto_1

    :cond_1
    const-string v2, "UBND"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v2, "SECMSG"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lzi/r5;

    invoke-direct {v0}, Lzi/r5;-><init>()V

    invoke-virtual {v0, v1}, Lzi/r5;->h(I)V

    invoke-virtual {v0, v2, v3}, Lzi/r5;->l(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lzi/r5;->F()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lzi/r5;->B(Ljava/lang/String;)V

    invoke-virtual {p1}, Lzi/r5;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lzi/r5;->k(Ljava/lang/String;)V

    invoke-virtual {p1}, Lzi/r5;->g()S

    move-result v2

    invoke-virtual {v0, v2}, Lzi/r5;->m(S)V

    invoke-virtual {p1}, Lzi/r5;->E()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lzi/r5;->v(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/push/service/k0;->c()Lcom/xiaomi/push/service/k0;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lzi/r5;->F()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lcom/xiaomi/push/service/k0;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/k0$b;

    move-result-object v1

    iget-object v1, v1, Lcom/xiaomi/push/service/k0$b;->i:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lzi/r5;->q(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1, v3}, Lzi/r5;->n([BLjava/lang/String;)V

    move-object v3, v0

    :cond_3
    :goto_1
    if-eqz v3, :cond_5

    iget-object p1, p0, Lzi/a6$a;->c:Lzi/a6;

    invoke-static {p1}, Lzi/a6;->c(Lzi/a6;)Lzi/c6;

    move-result-object p1

    invoke-virtual {p1}, Lzi/c6;->e()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lzi/a6$a;->c:Lzi/a6;

    invoke-static {v1}, Lzi/a6;->b(Lzi/a6;)Lzi/a6$a;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eq v1, v2, :cond_4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzi/c6$a;

    invoke-virtual {v0, v3}, Lzi/c6$a;->a(Lzi/r5;)V

    goto :goto_2

    :cond_5
    return-void
.end method
