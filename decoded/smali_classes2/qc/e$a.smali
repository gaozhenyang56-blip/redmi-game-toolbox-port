.class public final Lqc/e$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqc/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nProvisionHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProvisionHelper.kt\ncom/miui/permcenter/provision/ProvisionHelper$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,481:1\n1855#2,2:482\n*S KotlinDebug\n*F\n+ 1 ProvisionHelper.kt\ncom/miui/permcenter/provision/ProvisionHelper$1\n*L\n163#1:482,2\n*E\n"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    sget-object p1, Lqc/e;->a:Lqc/e;

    invoke-static {p1}, Lqc/e;->c(Lqc/e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lqc/e;->f(Lqc/e;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {p1}, Lqc/e;->c(Lqc/e;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p1}, Lqc/e;->w()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ProvisionExtra"

    const-string v1, "grant permission by CTA"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lqc/e;->q()Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqc/a;

    invoke-virtual {v0}, Lqc/a;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lxc/e;->a:Lxc/e;

    invoke-virtual {v0}, Lqc/a;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lqc/a;->e()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lxc/e;->c(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0}, Lqc/a;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lqc/a;->d()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lxc/e;->c(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lqc/e;->a:Lqc/e;

    invoke-static {p1}, Lqc/e;->d(Lqc/e;)Llk/i0;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lqc/e$a$a;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lqc/e$a$a;-><init>(Ltj/d;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    invoke-virtual {p1}, Lqc/e;->q()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_2
    return-void
.end method
