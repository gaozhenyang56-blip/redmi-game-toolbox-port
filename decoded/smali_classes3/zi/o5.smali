.class Lzi/o5;
.super Lcom/xiaomi/push/service/a1$a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lzi/n5;


# direct methods
.method constructor <init>(Lzi/n5;)V
    .locals 0

    iput-object p1, p0, Lzi/o5;->a:Lzi/n5;

    invoke-direct {p0}, Lcom/xiaomi/push/service/a1$a;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lzi/c4;)V
    .locals 1

    invoke-virtual {p1}, Lzi/c4;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lzi/n5;->f()Lzi/n5;

    move-result-object v0

    invoke-virtual {p1}, Lzi/c4;->v()I

    move-result p1

    invoke-virtual {v0, p1}, Lzi/n5;->h(I)V

    :cond_0
    return-void
.end method
