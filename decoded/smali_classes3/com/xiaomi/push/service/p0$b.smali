.class Lcom/xiaomi/push/service/p0$b;
.super Lzi/e2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lzi/d2;Lzi/e2$b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lzi/e2;-><init>(Landroid/content/Context;Lzi/d2;Lzi/e2$b;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected c(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lzi/n5;->f()Lzi/n5;

    move-result-object v0

    invoke-virtual {v0}, Lzi/n5;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/push/service/a1;->c()Ljava/lang/String;

    move-result-object p3

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lzi/e2;->c(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    sget-object p2, Lzi/e2;->j:Landroid/content/Context;

    invoke-static {p2}, Lzi/h0;->w(Landroid/content/Context;)Z

    move-result p2

    const/4 p3, 0x0

    sget-object p4, Lzi/e5;->v:Lzi/e5;

    invoke-virtual {p4}, Lzi/e5;->a()I

    move-result p4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p3, p4, v0, v1, p2}, Lzi/p5;->d(IIILjava/lang/String;I)V

    throw p1
.end method
