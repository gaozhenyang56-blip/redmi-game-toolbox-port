.class Lu3/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La4/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu3/h;->N0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lu3/h;


# direct methods
.method constructor <init>(Lu3/h;)V
    .locals 0

    iput-object p1, p0, Lu3/h$b;->a:Lu3/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lu3/h$b;->a:Lu3/h;

    invoke-static {v0}, Lu3/h;->k(Lu3/h;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object p1, p0, Lu3/h$b;->a:Lu3/h;

    invoke-static {p1}, Lu3/h;->k(Lu3/h;)Ljava/util/Set;

    move-result-object p1

    const-string v0, "com.tencent.map"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lu3/h$b;->a:Lu3/h;

    invoke-static {p1}, Lu3/h;->k(Lu3/h;)Ljava/util/Set;

    move-result-object p1

    const-string v0, "com.baidu.BaiduMap"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lu3/h$b;->a:Lu3/h;

    invoke-static {p1}, Lu3/h;->k(Lu3/h;)Ljava/util/Set;

    move-result-object p1

    const-string v0, "com.autonavi.minimap"

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
