.class Lcom/miui/antivirus/result/c0$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsf/e$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antivirus/result/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
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

    iput-object p1, p0, Lcom/miui/antivirus/result/c0$g;->a:Ljava/util/ArrayList;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/miui/antivirus/result/c0$g;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public i(Ljava/lang/String;II)V
    .locals 2

    iget-object p2, p0, Lcom/miui/antivirus/result/c0$g;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/antivirus/result/c0;

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Lcom/miui/antivirus/result/c0$g;->a:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/result/a;

    instance-of v1, v0, Lcom/miui/antivirus/result/b;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/miui/antivirus/result/b;

    invoke-virtual {v0}, Lcom/miui/antivirus/result/b;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/miui/antivirus/result/c0;->i()V

    :cond_2
    return-void
.end method
