.class Lcom/miui/powercenter/provider/PowerSaveService$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfe/d$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/provider/PowerSaveService;->C()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/provider/PowerSaveService;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/provider/PowerSaveService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/provider/PowerSaveService$h;->a:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/provider/PowerSaveService$h;->a:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-static {v0}, Lcom/miui/powercenter/provider/PowerSaveService;->j(Lcom/miui/powercenter/provider/PowerSaveService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/miui/powercenter/provider/PowerSaveService$h;->a:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-static {v0}, Lcom/miui/powercenter/provider/PowerSaveService;->j(Lcom/miui/powercenter/provider/PowerSaveService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cloud data update "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/powercenter/provider/PowerSaveService$h;->a:Lcom/miui/powercenter/provider/PowerSaveService;

    invoke-static {v0}, Lcom/miui/powercenter/provider/PowerSaveService;->j(Lcom/miui/powercenter/provider/PowerSaveService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PowerSaveService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
