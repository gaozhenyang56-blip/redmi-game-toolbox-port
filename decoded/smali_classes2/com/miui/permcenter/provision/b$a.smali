.class public final Lcom/miui/permcenter/provision/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcc/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/provision/b;->n(Lcom/miui/permcenter/provision/f;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lqc/a;

.field final synthetic b:Lcom/miui/permcenter/provision/b;


# direct methods
.method constructor <init>(Lqc/a;Lcom/miui/permcenter/provision/b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/provision/b$a;->a:Lqc/a;

    iput-object p2, p0, Lcom/miui/permcenter/provision/b$a;->b:Lcom/miui/permcenter/provision/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/permcenter/provision/b$a;->a:Lqc/a;

    invoke-virtual {v0}, Lqc/a;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/provision/b$a;->a:Lqc/a;

    invoke-virtual {v0}, Lqc/a;->q()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/permcenter/provision/b$a;->a:Lqc/a;

    invoke-virtual {v0}, Lqc/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/permcenter/provision/b$a;->a:Lqc/a;

    invoke-virtual {v0}, Lqc/a;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lcom/miui/permcenter/provision/b$a;->b:Lcom/miui/permcenter/provision/b;

    invoke-virtual {v2}, Lcom/miui/permcenter/provision/b;->m()Lak/p;

    move-result-object v2

    if-nez p1, :cond_2

    move-object p1, v1

    :cond_2
    invoke-interface {v2, p1, v0}, Lak/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method
