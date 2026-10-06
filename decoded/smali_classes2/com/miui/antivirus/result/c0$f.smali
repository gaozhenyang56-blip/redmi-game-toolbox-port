.class Lcom/miui/antivirus/result/c0$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsf/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antivirus/result/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/antivirus/result/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/antivirus/result/c0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/miui/antivirus/result/c0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/antivirus/result/a;",
            ">;",
            "Lcom/miui/antivirus/result/c0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/antivirus/result/c0$f;->a:Ljava/util/ArrayList;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/miui/antivirus/result/c0$f;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public m(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/antivirus/result/c0$f;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/result/c0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/antivirus/result/c0$f;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/antivirus/result/a;

    instance-of v3, v2, Lcom/miui/antivirus/result/b;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/miui/antivirus/result/b;

    invoke-virtual {v2}, Lcom/miui/antivirus/result/b;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/miui/antivirus/result/c0;->i()V

    :cond_2
    return-void
.end method
