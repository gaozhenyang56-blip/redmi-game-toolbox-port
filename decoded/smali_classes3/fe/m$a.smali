.class Lfe/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfe/d$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfe/m;->h(Landroid/content/Context;Lfe/m$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfe/m$c;


# direct methods
.method constructor <init>(Lfe/m$c;)V
    .locals 0

    iput-object p1, p0, Lfe/m$a;->a:Lfe/m$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/securitycenter/memory/MemoryModel;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    invoke-static {}, Lfe/m;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/securitycenter/memory/MemoryModel;

    invoke-virtual {v2}, Lcom/miui/securitycenter/memory/MemoryModel;->getLockState()Landroid/util/SparseBooleanArray;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/miui/securitycenter/memory/MemoryModel;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/miui/securitycenter/memory/MemoryModel;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lfe/m$a;->a:Lfe/m$c;

    invoke-interface {p1, v0}, Lfe/m$c;->a(Ljava/util/List;)V

    return-void
.end method
